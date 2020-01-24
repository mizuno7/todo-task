class TaskMailer < ApplicationMailer
  default from: 'taskleag@example.com'
  def creation_email(task)
    @task = task
    mail(
      subject: 'タスク完了メール'
      to: 'mizu6031.a@gmail.com'
    )
  end
end
