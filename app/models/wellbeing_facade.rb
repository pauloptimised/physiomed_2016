class WellbeingFacade
  def articles
    @articles ||= Article.displayed.order(date: :desc).limit(4)
  end

  def body_parts
    @body_parts ||= BodyPart.ordered_by_position.displayed
  end

  def team_members
    @team_members ||= TeamMember.displayed.limit(18)
  end
end