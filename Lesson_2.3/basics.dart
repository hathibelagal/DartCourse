void main() {
  print("Dogs are nice!");

  var numberOfDogsIHave = 4;
  String myFavoriteBreed = "Beagle";

  const myFirstDog = "Pug";

  var agesOfMyDogs = <int>[3, 6, 1, 2];

  var myDogs = <String, String>{
    "youngest": "Beagle",
    "oldest": "Pug"
  };

  int i = 0;
  while(i<agesOfMyDogs.length) {
    print(agesOfMyDogs[i]);
    i++;
  }

  i = 0;
  do {
    print(agesOfMyDogs[i]);
    i++;
  } while(i<agesOfMyDogs.length);

  for(int j=0; j<agesOfMyDogs.length;j++) {
    print(agesOfMyDogs[j]);
  }

  for(int age in agesOfMyDogs) {
    print(age);
  }

  agesOfMyDogs.forEach((age) {
    if(age >= 4) {
      print(age);
    }
  });

  describeDog("Max", 5);
  describeDog("Ren");

  feedDog(name: "Max", food: "a biscuit");
}

void describeDog(String name, [int age = 2]) {
  print(name + " is " + age.toString() + " years old");
}

void feedDog({String name, String food}) {
  print(name + " just ate " + food);
}

String patDog(String name) => name + "wags tail";