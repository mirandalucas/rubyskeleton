When("I sign in") do                                                         
    user.load
    user.preencher_usuario
end                                                                          
                                                                               
Then("I check if the user was created") do                                   
    @texto = find('#notice')
    expect(@texto.text). to eql 'Usuário criado com sucesso'
end                                                                          