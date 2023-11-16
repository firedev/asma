# README

```
rails db:setup
```
```
$ rails db:setup
Created database 'storage/development.sqlite3'
Created database 'storage/test.sqlite3'
Assets: 1
Cars: 1
Transactions: 1
```
```
Transaction.first.asset.car # car_id
Transaction.first.asset.assetable # polymorphic
```
