module NotificationsHelper
  def notification_message(notification)
    case notification.notifiable_type
    when "BooK"
      "フォローしている#{notification.notifiable.user.name}さんが#{notification.notifiable.title}を投稿しました"
    else
      "投稿した#{notification.notifiable.book.title}が#{notification.notifiable.user.name}さんがいいねされました"
    end
  end
end
