#!/usr/bin/env python3
import os
import sys

color_names = ['fgr', 'cur', 'bgr', 'c00', 'c01', 'c02', 'c03', 'c04', 'c05',
         'c06', 'c07', 'c08', 'c09', 'c10', 'c11', 'c12', 'c13', 'c14', 'c15']

def read_file(scheme_name, extension='.Kcolor', root=""):
    with open(root + scheme_name + extension) as f:
        raw_data = f.read()
        data = [i.split() for i in raw_data.split('\n')
                if i and i[0] != '#']
        return [v for n,v in data]

def hex_rgb(hexcolor):
    if hexcolor[0] != "#" or len(hexcolor) != 7:
        raise ValueError
    return tuple(int(hexcolor[i:i+2], 16) for i in (1, 3, 5))


if __name__ == '__main__':
    dname = sys.argv[1]

    colors = {}
    for root, path, fnames in os.walk(dname):
        fnames = [f.split('.') for f in fnames]
        for name, *ext in fnames:
            if ext[-1] != "Kcolor":
                continue
            colors[name] = read_file(name, root=root)

    scheme_names = sorted(list(colors.keys()))

    line = ["\33[1m{:^9}\33m".format(cn) for cn in color_names]
    line.insert(0, "\33[1m{:^15.15}\33m".format("Color Scheme"))
    print("\n","".join(line),"\n")

    for name in scheme_names:
        line_c = [("\33[48;2;{col[0]};{col[1]};{col[2]}m" + 9*" " + "\33[m").
                format(col=hex_rgb(v)) for v in colors[name]]
        line = ["\33[1m{:<15.15}\33m".format(" " + name)]
        print("".join([15*" "] + line_c))
        print("".join(line + line_c))


