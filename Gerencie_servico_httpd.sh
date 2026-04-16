echo "Verifique se o pagote httpd esta instalado com o comando which, se nao estiver instale:"
echo "Retorno do comando which: /usr/sbin/httpd"
echo "O comando para instalar e o sudo dnf install httpd"
read -rp "Digite um parâmetro (start, stop, enable, disable, status ou restart): " action

case "$action" in
    start)
        echo "Iniciando o serviço httpd..."
        sudo systemctl start httpd --now
        sudo systemctl status httpd --no-pager
        ;;
    stop)
        echo "Parando o serviço httpd..."
        sudo systemctl stop httpd
        sudo systemctl status httpd --no-pager
        ;;
    restart)
        echo "Reiniciando o serviço httpd..."
        sudo systemctl restart httpd
        sudo systemctl status httpd --no-pager
        ;;
    enable)
            echo "Habilitando o serviço httpd..."
            sudo systemctl enable httpd
            sudo systemctl status httpd --no-pager
        ;;
    disable)
            echo "Desabilitando o serviço httpd..."
            sudo systemctl disable httpd
            sudo systemctl status httpd --no-pager
        ;;
    status)
            echo "Exibindo o status do serviço httpd..."
            sudo systemctl status httpd --no-pager
        ;;
    *)
        echo "Parâmetro inválido. Use: start, stop ou restart"
        exit 1
        ;;
esac
