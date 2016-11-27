def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(names)
  new_arr = []
  names.each do |name|
    new_arr.push(badge_maker(name))
  end
  new_arr
end

def assign_rooms(speakers)
  speaker_room_arr = []
  speakers.each_with_index do |name, index|
    speaker_room_arr.push("Hello, #{name}! You'll be assigned to room #{index+1}!")
  end
  speaker_room_arr
end

def printer(attendees)
  batch_badge_creator(attendees).each do |attendee|
    puts attendee
  end

  assign_rooms(attendees).each do |attendee_room|
    puts attendee_room
  end
end
