FROM ruby:3.2.2
FROM --platform=linux/amd64 sinatra-pokedev

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie os arquivos necessários para o contêiner
COPY . ./

# Instale as dependências do Ruby
RUN bundle install

# Defina a porta em que o aplicativo Sinatra será executado
EXPOSE 4567

# Comando para iniciar o servidor Sinatra
# CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "4567"]