Quando(/^acesso a API dos Correios com o CEP (\d+)$/) do |cep|
  @correios_httparty = CorreiosHttparty.new
  @correios_httparty.get_endereco_api_correios cep
end

Então(/^valido se retorno está com todos os campos$/) do
  @correios_httparty.valida_endereco
end

Então(/^valido se retorno está com a mensagem de erro$/) do
  @correios_httparty.valida_cep_invalido
end