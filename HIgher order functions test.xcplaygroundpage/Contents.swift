struct classStruct{
    var name : String
    var regno : Int
    var mobileNo : Int
}

var studentArr : [classStruct] = [classStruct(name: "Akshay", regno: 11400559, mobileNo: 8029478980),
                                  classStruct(name: "Rohit", regno: 11405679, mobileNo: 7129894234),
                                  classStruct(name: "Shanthan", regno: 11504958, mobileNo: 8845620281),
                                  classStruct(name: "Shubham", regno: 11413875, mobileNo: 9983724042),
                                  classStruct(name: "Avinash", regno: 11712098, mobileNo: 7098829575)
]

var simpleArr = ["Akshay","Rohit","Shanthan","Shubham","Avinash"]

//==================================================================================================

var filteredArray = studentArr.filter { (classs) -> Bool in
    return classs.regno == 11400559 || classs.name == "Avinash"
}

var filteredArrayShort = studentArr.filter({$0.name == "Rohit" || $0.mobileNo == 9872404298})

print("Filter using closures\n")
print("Filtered array long method = ",filteredArray)
print("Filtered array short method = ",filteredArrayShort)

//==================================================================================================

var mappedArrayLong = studentArr.map { (classsss) -> String in
   return classsss.name + " This was Mappped"
}

var mappedArrayShort = studentArr.map({$0.name+" This was Mapped"})

print("Mapping using long method = ",mappedArrayLong)
print("Mapping using short method = ",mappedArrayShort)

//==================================================================================================

var reducedArrRegNo = studentArr.reduce(0) { (x, classs) -> Int in
 return x+classs.regno
}

var reducedArrRegNoShort = studentArr.reduce(0) {
    $0 + $1.regno
}

print("Reduce array long method (Added all reg No's)",reducedArrRegNo)
print("Reduce array short method (Added all reg No's)",reducedArrRegNoShort)
