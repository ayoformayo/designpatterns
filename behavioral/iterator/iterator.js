// http://eloquentjavascript.net/06_object.html

class Lion {
  constructor(weight, age) {
    this.weight = weight
    this.age = age
  }
}

class Tiger {
  constructor(weight, age) {
    this.weight = weight
    this.age = age
  }
}

class Bear {
  constructor(weight, age) {
    this.weight = weight
    this.age = age
  }
}

class OhMy {
  constructor(weight, age) {
    this.weight = weight
    this.age = age
  }
}

class Zoo {
  constructor(animals) {
    this.animals = animals
  }
}

class Zookeeper {
  constructor(zoo) {
    this.i = 0;
    this.zoo = zoo;
    console.log("")
  }

  next() {
    if (this.i >= this.zoo.animals.length) return {done: true};

    let value = {
      i: this.i,
      value: this.zoo.animals[this.i]
    };

    this.i++;
    return {value, done: false};
  }
}

Zoo.prototype[Symbol.iterator] = function() {
  return new Zookeeper(this);
};

let animals = [
  new Lion(100, 3),
  new Tiger(200, 9),
  new Bear(700, 5),
  new OhMy(300, 2),
]

let zoo = new Zoo(animals);
for (let {i, value} of zoo) {
  console.log(i, value);
}
