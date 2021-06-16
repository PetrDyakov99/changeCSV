module changeCSV
using CSV
using DataFrames

function main()
        inPath = "ex1.csv"
        outPath = "ex2.csv"
        col1 = 1
        col2 = 3

        csv = DataFrame(CSV.File(string(pwd(),"/",inPath)))
        println(csv)
        name1 = names(csv)[col1]
        name2 = names(csv)[col2]

        csv = rename(csv, [col1 => Symbol(name2), col2 => Symbol(name1)])
        println(csv)
        csv[:,col1],csv[:,col2] = csv[:,col2],csv[:,col1]
        print(csv)

        CSV.write(string(pwd(),"/",outPath),csv)
end
#CSV.write(CSV.File(string(pwd(),"/",outPath)),csv)
main()

end # module
