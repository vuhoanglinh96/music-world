module ApplicationHelper
  def full_title title = ""
    base_title = "MusicWorld - The world with music"
    title.blank? ? base_title : title + " - " + base_title
  end
end
