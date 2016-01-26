import re
import sys

def main():
    px, py, pe = 0,0,0
    i = 0
    for l in sys.stdin:
        i += 1
        print ";", i
        l = l.strip()
        if l.startswith(';') or not l:
            continue

        m = re.match("G1 X([\d.]+) Y([\d.]+)( F[\d.]+)?( E[\d.]+)?", l)
        if m:
            x, y, f, e = m.groups()
            x = float(x)
            y = float(y)
            x = 90 - x
            y = 90 - y
            if e:
                e = float(e[2:])
            else:
                e = pe

            if f:
                print "G1%s" % f
                f = None

            for d in (.25, .5, .75, 1.0):
                d1 = 1 - d
                print "G1 X%.3f Y%.3f E%.5f ; %.2f" % (d1 * px + d * x, d1 * py + d * y, d1 * pe + d * e, d)
            px, py, pe = x, y, e
        else:

            if l == "G92 E0":
                pe = 0
            print l

if __name__ == "__main__":
    main()
