class CreateDataCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :data_categories do |t|
      t.string :name,               null: false
      t.boolean :active,            null: false, default: true
      t.boolean :published,         null: false, default: true
      t.string :en_name
      t.datetime :published_at
      t.text :description

      t.timestamps
    end

    Data::Category.create name: '计算机硬件', en_name: 'Hardware'
    Data::Category.create name: '编程语言', en_name: 'Programming Language'
    Data::Category.create name: '数据结构和算法', en_name: 'Data Structure/Algorithm'
    Data::Category.create name: '操作系统', en_name: 'Operating System'
    Data::Category.create name: '数据库系统', en_name: 'Database'
    Data::Category.create name: '计算机网络', en_name: 'Computer Network'
    Data::Category.create name: '软件工程类', en_name: 'Software Engineering'
    Data::Category.create name: '人工智能', en_name: 'Artificial Intelligence'
    Data::Category.create name: '机器学习', en_name: 'Machine Learning'
    Data::Category.create name: '数据挖掘', en_name: 'Data Mining'
    Data::Category.create name: '信息安全', en_name: 'Information Security'
    Data::Category.create name: '云计算', en_name: 'Cloud Computing'
    Data::Category.create name: '物联网', en_name: 'Internet of things'
    Data::Category.create name: '大数据', en_name: 'Big Data'
    Data::Category.create name: '人机交互', en_name: 'Man-machine Interaction'
    Data::Category.create name: '计算机视觉', en_name: 'Computer Vision'
    Data::Category.create name: '嵌入式系统', en_name: 'Embedded System'
    Data::Category.create name: '机器人', en_name: 'Robot'
    Data::Category.create name: '计算机游戏', en_name: 'Game'
    Data::Category.create name: '分布式系统', en_name: 'Distributed System'
    Data::Category.create name: '计算机生物', en_name: 'Computational Biology'
    Data::Category.create name: '计算机教育', en_name: 'Computater Education'
    Data::Category.create name: '计算机图形图像', en_name: 'Computer Graphics/Images'
  end
end
