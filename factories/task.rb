FactoryBot.define do
  factory :task1, class: Task  do
    title { 'タスクのタイトル1' }
    description { 'タスクの内容1' }
    status { 'todo' }
    deadline { '2020-01-01' }
  end
  factory :task2, class: Task  do
    title { 'タスクのタイトル12' }
    description { 'タスクの内容2' }
    status { 'doing' }
    deadline { '2021-01-01' }
  end
  factory :task3, class: Task  do
    title { 'タスクのタイトル3' }
    description { 'タスクの内容3' }
    status { 'done' }
    deadline { '2023-01-01' }
  end
  factory :task4, class: Task  do
    title { 'タスクのタイトル4' }
    description { 'タスクの内容34' }
    status { 'todo' }
    deadline { '2024-01-01' }
  end
  factory :task5, class: Task  do
    title { 'タスクのタイトル5' }
    description { 'タスクの内容5' }
    status { 'doing' }
    deadline { '2025-01-01' }
  end
end
