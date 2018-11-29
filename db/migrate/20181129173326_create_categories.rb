class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :icon

      t.timestamps
    end

    Category.create(name: 'Pratos Principais', icon: 'prato-principal.svg')
    Category.create(name: 'Entradas', icon: 'entrada.svg')
    Category.create(name: 'Sobremesas', icon: 'sobremesa.svg')
    Category.create(name: 'Perguntas', icon: 'pergunta.svg')

  end
end
