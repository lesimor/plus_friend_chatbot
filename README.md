# bot 예제

### Setting

##### 1. Rails setting

```
bundle install
rake db:migrate
```

##### 2. Data setting

```ruby
# rails c 로 콘솔 접속 후
file = File.read('./public/sentence.json')
data = JSON.parse(file)

data.keys().each do |key|
  # key => 질문
  # data[key] => 대답
  Sentence.create(question: key, answer: data[key])
end
```

