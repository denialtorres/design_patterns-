class UserDecorator
  attr_reader :user, :view_context

  delegate :first_name, :last_name, to: :user

  def initialize(user, view_context)
    @user = user
    @view_context = view_context
  end

  def name
    "#{first_name} #{last_name}"
  end

  def staff_badge
    view_context.content_tag :i, '',class: 'far fa-id-badge'
  end
end
