# README

## reviewersテーブル
|Column|Type|Options|
|------|----|-------|
|company-name|string|null: false|
|reviewer-name|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|
### Association
- has_many :reviews

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|user-name|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|
### Association
- has_many :comments

## reviewsテーブル
|Column|Type|Options|
|------|----|-------|
|beer-name|string|null: false|
|beer-style|string|null: false|
|brewery-name|string|null: false|
|brewery-country|string|null: false|
|brewery-city|string|null: false|
|text|text|null: false|
|image|text|null: false|
|rate|float|null: false|
|abv|float|
|ibu|float|
|ec-goodbeer|text|
|ec-amazon|text|
|ec-rakuten|text|
|reviewer_id|integer|null: false, foreign_key:true|

### Association
- has_many :comments
- belongs_to :review
- belongs_to :beer-spot

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|string|null: false|
|rate|float|null: false|
|review_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :review
- belongs_to :user
- belongs_to :beer-spot

## beer-spotsテーブル
|Column|Type|Options|
|------|----|-------|
|spot-name|string|null: false|
|street-address|string|null: false|
|url|text|null: false|
|review_id|integer|foreign_key: true|
|comment_id|integer|foreign_key: true|
### Association
- has_many :reviews
- has_many :comments
