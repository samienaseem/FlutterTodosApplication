class Todo {
  int _id;
  String _title;
  String _description;
  String _date;
  int _priority;

  Todo(this._title, this._date, this._priority,[this._description]);//for creating new to_dos

  Todo.WithId(this._id,this._title, this._date, this._priority,[this._description]);

  int get priority => _priority;

  set priority(int value) {
    _priority = value;
  }

  String get date => _date;

  set date(String value) {
    _date = value;
  }

  String get description => _description;

  set description(String value) {
    _description = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  Map<String, dynamic> tomap(){
    var map=new Map<String,dynamic>();
    map['title']=_title;
    map['desc']=_description;
    map['prior']=_priority;
    map['date']=_date;

    if(_id!=null){
      map['id']=_id;
    }

    return map;


  }

  Todo.fromObject(dynamic o){
    this._id=o['id'];
    this._title=o['title'];
    this._description=o['desc'];
    this._priority=o['prior'];
    this._date=o['date'];

  }


}