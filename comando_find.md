# O comando:
```bash
sudo find /etc/systemd -perm /110
```
- Serve para procurar arquivos dentro de /etc/systemd que tenham permissão de execução para o dono (owner) ou para o grupo.

### Vamos dividir para entender melhor.

1. sudo
- Executa o comando com privilégios de administrador.
Isso é usado porque alguns arquivos em /etc/systemd podem não ser acessíveis por usuários normais.

2. find /etc/systemd
- O comando find procura arquivos ou diretórios.
/etc/systemd → é o diretório onde a busca começa.
- O find vai percorrer todos os subdiretórios recursivamente.

3. -perm
- A opção -perm serve para filtrar arquivos pelas permissões.
- Permissões em Linux podem ser representadas em octal:

- Valor 	        Permissão
4	leitura          (r)
2	escrita         (w)
1	execução    (x)

- E elas são divididas em:
owner  group  others

4. O que significa /110
- Aqui está a parte mais importante.
- No find, quando usamos:
- -perm /MODE

Isso significa:
- encontrar arquivos que tenham QUALQUER um dos bits de permissão especificados.
- Ou seja, basta um deles existir.
- Interpretando 110
- 110 em octal representa:

owner  group  others
 1            1            0
 
- Convertendo para permissões:
1 (owner) → execução para o dono
1 (group) → execução para o grupo
0 (others) → não estamos testando others

- Então estamos testando:
--x------ (exec para owner) OU
---x----- (exec para group)

- Significado final
-perm /110

- significa:
encontrar arquivos que tenham execução para o owner OU execução para o grupo.

5. Exemplos de arquivos que seriam encontrados
- Seriam encontrados arquivos com permissões como:
-rwxr--r--  (owner pode executar)
-r-xr-x---  (owner e grupo podem executar)
---x--x---  (owner ou grupo executa)

6. Diferença entre -perm 110, -perm -110 e -perm /110
- Isso é algo que costuma cair em provas:

- Comando	Significado
-perm 110	    permissões exatamente 110
-perm -110	todos os bits 110 devem estar presentes
-perm /110	qualquer bit 110 pode estar presente

- No seu caso:
-perm /110
= owner OU group executável
# Resumo
```bash
sudo find /etc/systemd -perm /110
```
- Procura recursivamente em /etc/systemd arquivos que tenham permissão de execução para o dono ou para o grupo.

find → busca arquivos
/etc/systemd → diretório inicial
-perm → filtra por permissões
/110 → qualquer bit de execução para owner ou group

- Existe um truque visual simples para nunca confundir -perm, -perm - e -perm / no find. Isso aparece muito em exames como LPIC-1 e CompTIA Linux+.


