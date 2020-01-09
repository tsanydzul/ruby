5.times do 
    DataPegawai.create({
        nama: Faker::Book.author,
        nik: Faker::Number.between(from: 1, to: 10)
    })
end
