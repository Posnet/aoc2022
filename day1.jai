main :: () {
    data, _:= read_entire_file("day1.input");
    lines := split(data, "\n");

    most := -1;
    current := 0;

    topN : [3] int;

    for lines {
        if it {
            current += to_integer(it);
        } else {
            for topN {
                if current > it {
                    topN[it_index] = current;
                    quick_sort(topN, x => x);
                    break;
                }
            }
            current = 0;
        }
    }
    total: int;
    for topN total += it;
    print("%\n", total);
}

#import "Basic";
#import "File";
#import "String";
#import "Random";
#import "Sort";