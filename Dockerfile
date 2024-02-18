FROM ruby:latest

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie os arquivos necessários para o contêiner
COPY . ./

# Instale as dependências do Ruby
RUN bundle install

# Defina a porta em que o aplicativo Sinatra será executado
EXPOSE 3000

# Comando para iniciar o servidor Sinatra
# CMD ["bundle", "exec", "ruby", "app.rb"]