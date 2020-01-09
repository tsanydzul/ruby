class DataPegawai < ApplicationRecord
    validates :nama, presence: true
    validates :nik, presence: true
end
