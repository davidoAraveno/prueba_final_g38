# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

MarkerCategory.destroy_all
Marker.destroy_all
Category.destroy_all

Marker.create(
    [
        {
            url: 'www.vida.com'
        },
        {
            url: 'www.nada.com'
        },
        {
            url: 'www.hastacuando.com'
        },
        {
            url: 'www.renuncia.com'
        },
        {
            url: 'www.nenas.com'
        }
    ]
)

Category.create(
    [
        {
            name: 'salud'
        },
        {
            name: 'nihilismo'
        },
        {
            name: 'quejas'
        },
        {
            name: 'reclamos laborales'
        },
        {
            name: 'pornografia'
        }
    ]
)


Marker.all.each do |i|
    MarkerCategory.create(
        [
            {
            marker_id: i.id,
            category_id: i.id,
            type_relation: 'programa de tv'
            }
        ]
    )
end