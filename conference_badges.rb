def badge_maker(name)
  badge = "Hello, my name is #{name}."
end

def batch_badge_creator(names)
  badges = []
  names.each do
  |name|
    badges.push(badge_maker(name))
  end
  return badges
end

def assign_rooms(speakers)
  assignments = []

  speakers.each_with_index do
    |speaker, idx|
    assignments.push("Hello, #{speaker}! You'll be assigned to room #{idx+1}!")
  end
  return assignments
end

def printer(attendees)
  greet = batch_badge_creator(attendees)

  greet.each do
    |name|
    puts name
  end

  room = assign_rooms(attendees)

  room.each do
    |room|
    puts room
  end


end