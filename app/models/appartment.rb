class Appartment < ApplicationRecord
    def self.search(search)
        if search
            blok = Appartment.where(block_name: search)
            if blok
                return blok
            else
                Appartment.all
            end
        else
            Appartment.all
        end
    end
end