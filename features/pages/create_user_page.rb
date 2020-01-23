class User < SitePrism::Page
    set_url 'users/new'
    element :nome, '#user_name'
    element :sobrenome, '#user_lastname'
    element :email, '#user_email'
    element :endereco, '#user_address'
    element :universidade, '#user_university'
    element :profissao, '#user_profile'
    element :genero, '#user_gender'
    element :idade, '#user_age'

    element :criar, 'input[value="Criar"]'

    def preencher_usuario
        nome.set 'Lucas'
        sobrenome.set 'Miranda'
        email.set 'lucas@gmail.com'
        endereco.set 'rua link'
        universidade.set 'bandtec'
        profissao.set 'analista'
        genero.set 'Masculino'
        idade.set '28'
        criar.click     
    end
end