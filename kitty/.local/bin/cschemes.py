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

def print_line(scheme_name=None, colors=None, name_width=15, color_width=9, lines=2, header=False):
    if header:
        pr = ["\33[1m{0:^{w}.{w}}\33m".format("Colour Scheme", w=name_width)]
        pr += ["\33[1m{0:^{w}.{w}}\33m".format(cn, w=color_width) for cn in color_names]
        pr = "".join(pr) + "\n"
    else:
        name = ["\33[1m{0:<{w}.{w}}\33m".format(" " + scheme_name, w=name_width)]
        pr = []
        for color in colors:
            pr.append(
                    "\33[48;2;{c[0]};{c[1]};{c[2]}m{f:<{w}.{w}}\33[m".format(
                        c=hex_rgb(color), w=color_width, f="")
                    )
        pr = "\n".join(
                ["".join(name + pr)]+
                (lines-1)*["".join([name_width*" "] + pr)])
    return pr

def read_schemes(path):
    colors = {}
    for root, path, fnames in os.walk(path):
        fnames = [f.split('.') for f in fnames]
        for name, *ext in fnames:
            colors[name] = (read_file(name, root=root) if ext[-1] == "Kcolor" else None)

    return root, {k:v for k,v in colors.items() if v}


if __name__ == '__main__':

    dname = sys.argv[1]
    root, colors = read_schemes(dname)

    scheme_names = sorted(list(colors.keys()))

    print(print_line(header=True))
    for name in scheme_names:
        if colors[name]:
            print(print_line(name, colors[name]))

