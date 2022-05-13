puts "🌱 Seeding spices..."

# Seed your database here

puts "✅ Done seeding!"


t1 = Trainer.create(name: "Mike")
t2 = Trainer.create(name: "John")
t3 = Trainer.create(name: "Ruslan")
t4 = Trainer.create(name: "Jacky")
t5 = Trainer.create(name: "Jerry")




w1 = Workout.create(name: "Monday Workout", trainer_id: t1.id )
w2 = Workout.create(name: "Tuesday Workout", trainer_id: t2.id)
w3 = Workout.create(name: "Ilya's Workout", trainer_id: t2.id)



Exercise.create(name: "pushup", target: "chest", mechanics: "push off floor", execution: "not started", workout_id: w1.id )
Exercise.create(name: "pullup", target: "back", mechanics: "pull up on bar", execution: "completed", workout_id: w2.id)