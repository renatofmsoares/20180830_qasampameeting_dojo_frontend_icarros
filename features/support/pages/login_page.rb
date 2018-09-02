class LoginPage < SitePrism::Page
    set_url '/mercurysignon.php'
    element :campo_login, 'input[name*="userName"]'
    element :campo_senha, 'input[name*="password"]'
    element :botao_entrar, 'input[name*="login"]'

    def login(userName, password)
        campo_login.set userName
        campo_senha.set password
        botao_entrar.click
    end

end