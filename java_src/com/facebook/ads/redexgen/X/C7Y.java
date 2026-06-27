package com.facebook.ads.redexgen.X;

import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.7Y, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C7Y {
    public final InterfaceC03276w A00;

    public C7Y(InterfaceC03276w interfaceC03276w) {
        this.A00 = interfaceC03276w;
    }

    private int A00(List<C03266v> list) {
        boolean z = false;
        int size = list.size() - 1;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (size < 0) {
                        c = '\b';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    list = list;
                    C03266v op1 = list.get(size);
                    if (op1.A00 != 8) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    if (!z) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    return size;
                case 6:
                    z = true;
                    c = 7;
                    break;
                case 7:
                    size--;
                    c = 2;
                    break;
                case '\b':
                    size = -1;
                    c = 5;
                    break;
            }
        }
    }

    private void A01(List<C03266v> list, int i, int i2) {
        char c;
        List<C03266v> list2 = list;
        C7Y c7y = this;
        C03266v c03266v = list2.get(i);
        C03266v c03266v2 = list2.get(i2);
        switch (c03266v2.A00) {
            case 1:
                c = 4;
                break;
            case 2:
                c = 3;
                break;
            case 3:
                c = 2;
                break;
            case 4:
                c = 5;
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    c7y = c7y;
                    list2 = list2;
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    c7y.A03(list2, i, c03266v, i2, c03266v2);
                    c = 2;
                    break;
                case 4:
                    c7y = c7y;
                    list2 = list2;
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    c7y.A02(list2, i, c03266v, i2, c03266v2);
                    c = 2;
                    break;
                case 5:
                    c7y = c7y;
                    list2 = list2;
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    c7y.A04(list2, i, c03266v, i2, c03266v2);
                    c = 2;
                    break;
            }
        }
    }

    private void A02(List<C03266v> list, int i, C03266v c03266v, int i2, C03266v c03266v2) {
        int i3 = 0;
        char c = c03266v.A01 < c03266v2.A02 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    i3 = 0 - 1;
                    c = 3;
                    break;
                case 3:
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    if (c03266v.A02 >= c03266v2.A02) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    i3++;
                    c = 5;
                    break;
                case 5:
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    if (c03266v2.A02 > c03266v.A02) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    c03266v.A02 += c03266v2.A01;
                    c = 7;
                    break;
                case 7:
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    if (c03266v2.A02 > c03266v.A01) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    c03266v.A01 += c03266v2.A01;
                    c = '\t';
                    break;
                case '\t':
                    List<C03266v> list2 = list;
                    C03266v c03266v3 = c03266v2;
                    c03266v3.A02 += i3;
                    list2.set(i, c03266v3);
                    list2.set(i2, c03266v);
                    return;
            }
        }
    }

    private final void A03(List<C03266v> list, int remaining, C03266v c03266v, int i, C03266v c03266v2) {
        C7Y c7y = this;
        boolean z = false;
        C03266v c03266vA4e = null;
        boolean z2 = false;
        char c = c03266v.A02 < c03266v.A01 ? (char) 2 : ')';
        while (true) {
            switch (c) {
                case 2:
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    z = false;
                    if (c03266v2.A02 != c03266v.A02) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    if (c03266v2.A01 != c03266v.A01 - c03266v.A02) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    z2 = true;
                    c = 5;
                    break;
                case 5:
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    if (c03266v.A01 >= c03266v2.A02) {
                        c = '&';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    c03266v2 = c03266v2;
                    c03266v2.A02--;
                    c = 7;
                    break;
                case 7:
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    if (c03266v.A02 > c03266v2.A02) {
                        c = '$';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    c03266v2 = c03266v2;
                    c03266v2.A02++;
                    c = '\t';
                    break;
                case '\t':
                    if (!z2) {
                        c = '\f';
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    c7y = c7y;
                    list = list;
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    list.set(remaining, c03266v2);
                    list.remove(i);
                    c7y.A00.A6n(c03266v);
                    c = 11;
                    break;
                case 11:
                    return;
                case '\f':
                    if (!z) {
                        c = 27;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    if (c03266vA4e == null) {
                        c = 18;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    c03266v = c03266v;
                    if (c03266v.A02 <= c03266vA4e.A02) {
                        c = 16;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case 15:
                    c03266v = c03266v;
                    c03266v.A02 -= c03266vA4e.A01;
                    c = 16;
                    break;
                case 16:
                    c03266v = c03266v;
                    if (c03266v.A01 <= c03266vA4e.A02) {
                        c = 18;
                        break;
                    } else {
                        c = 17;
                        break;
                    }
                case 17:
                    c03266v = c03266v;
                    c03266v.A01 -= c03266vA4e.A01;
                    c = 18;
                    break;
                case 18:
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    if (c03266v.A02 <= c03266v2.A02) {
                        c = 20;
                        break;
                    } else {
                        c = 19;
                        break;
                    }
                case 19:
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    c03266v.A02 -= c03266v2.A01;
                    c = 20;
                    break;
                case 20:
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    if (c03266v.A01 <= c03266v2.A02) {
                        c = 22;
                        break;
                    } else {
                        c = 21;
                        break;
                    }
                case 21:
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    c03266v.A01 -= c03266v2.A01;
                    c = 22;
                    break;
                case 22:
                    list = list;
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    list.set(remaining, c03266v2);
                    if (c03266v.A02 == c03266v.A01) {
                        c = 26;
                        break;
                    } else {
                        c = 23;
                        break;
                    }
                case 23:
                    list = list;
                    c03266v = c03266v;
                    list.set(i, c03266v);
                    c = 24;
                    break;
                case 24:
                    if (c03266vA4e == null) {
                        c = 11;
                        break;
                    } else {
                        c = 25;
                        break;
                    }
                case 25:
                    list = list;
                    list.add(remaining, c03266vA4e);
                    c = 11;
                    break;
                case 26:
                    list = list;
                    list.remove(i);
                    c = 24;
                    break;
                case 27:
                    if (c03266vA4e == null) {
                        c = ' ';
                        break;
                    } else {
                        c = 28;
                        break;
                    }
                case 28:
                    c03266v = c03266v;
                    if (c03266v.A02 < c03266vA4e.A02) {
                        c = 30;
                        break;
                    } else {
                        c = 29;
                        break;
                    }
                case 29:
                    c03266v = c03266v;
                    c03266v.A02 -= c03266vA4e.A01;
                    c = 30;
                    break;
                case 30:
                    c03266v = c03266v;
                    if (c03266v.A01 < c03266vA4e.A02) {
                        c = ' ';
                        break;
                    } else {
                        c = 31;
                        break;
                    }
                case 31:
                    c03266v = c03266v;
                    c03266v.A01 -= c03266vA4e.A01;
                    c = ' ';
                    break;
                case ' ':
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    if (c03266v.A02 < c03266v2.A02) {
                        c = '\"';
                        break;
                    } else {
                        c = '!';
                        break;
                    }
                case '!':
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    c03266v.A02 -= c03266v2.A01;
                    c = '\"';
                    break;
                case '\"':
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    if (c03266v.A01 < c03266v2.A02) {
                        c = 22;
                        break;
                    } else {
                        c = '#';
                        break;
                    }
                case '#':
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    c03266v.A01 -= c03266v2.A01;
                    c = 22;
                    break;
                case '$':
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    if (c03266v.A02 >= c03266v2.A02 + c03266v2.A01) {
                        c = '\t';
                        break;
                    } else {
                        c = '%';
                        break;
                    }
                case '%':
                    c7y = c7y;
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    c03266vA4e = c7y.A00.A4e(2, c03266v.A02 + 1, (c03266v2.A02 + c03266v2.A01) - c03266v.A02, null);
                    c03266v2.A01 = c03266v.A02 - c03266v2.A02;
                    c = '\t';
                    break;
                case '&':
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    if (c03266v.A01 >= c03266v2.A02 + c03266v2.A01) {
                        c = 7;
                        break;
                    } else {
                        c = '\'';
                        break;
                    }
                case '\'':
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    c03266v2.A01--;
                    c03266v.A00 = 2;
                    c03266v.A01 = 1;
                    if (c03266v2.A01 != 0) {
                        c = 11;
                        break;
                    } else {
                        c = '(';
                        break;
                    }
                case '(':
                    c7y = c7y;
                    list = list;
                    c03266v2 = c03266v2;
                    list.remove(i);
                    c7y.A00.A6n(c03266v2);
                    c = 11;
                    break;
                case ')':
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    z = true;
                    if (c03266v2.A02 != c03266v.A01 + 1) {
                        c = 5;
                        break;
                    } else {
                        c = '*';
                        break;
                    }
                case '*':
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    if (c03266v2.A01 != c03266v.A02 - c03266v.A01) {
                        c = 5;
                        break;
                    } else {
                        c = '+';
                        break;
                    }
                case '+':
                    z2 = true;
                    c = 5;
                    break;
            }
        }
    }

    private final void A04(List<C03266v> list, int remaining, C03266v c03266v, int i, C03266v c03266v2) {
        C7Y c7y = this;
        C03266v c03266vA4e = null;
        C03266v c03266vA4e2 = null;
        char c = c03266v.A01 < c03266v2.A02 ? (char) 2 : (char) 15;
        while (true) {
            switch (c) {
                case 2:
                    c03266v2 = c03266v2;
                    c03266v2.A02--;
                    c = 3;
                    break;
                case 3:
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    if (c03266v.A02 > c03266v2.A02) {
                        c = '\r';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    c03266v2 = c03266v2;
                    c03266v2.A02++;
                    c = 5;
                    break;
                case 5:
                    list = list;
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    list.set(i, c03266v);
                    if (c03266v2.A01 <= 0) {
                        c = '\f';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    list = list;
                    c03266v2 = c03266v2;
                    list.set(remaining, c03266v2);
                    c = 7;
                    break;
                case 7:
                    if (c03266vA4e == null) {
                        c = '\t';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    list = list;
                    list.add(remaining, c03266vA4e);
                    c = '\t';
                    break;
                case '\t':
                    if (c03266vA4e2 == null) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    list = list;
                    list.add(remaining, c03266vA4e2);
                    c = 11;
                    break;
                case 11:
                    return;
                case '\f':
                    c7y = c7y;
                    list = list;
                    c03266v2 = c03266v2;
                    list.remove(remaining);
                    c7y.A00.A6n(c03266v2);
                    c = 7;
                    break;
                case '\r':
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    if (c03266v.A02 >= c03266v2.A02 + c03266v2.A01) {
                        c = 5;
                        break;
                    } else {
                        c = 14;
                        break;
                    }
                case 14:
                    c7y = c7y;
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    int i2 = (c03266v2.A02 + c03266v2.A01) - c03266v.A02;
                    c03266vA4e2 = c7y.A00.A4e(4, c03266v.A02 + 1, i2, c03266v2.A03);
                    c03266v2.A01 -= i2;
                    c = 5;
                    break;
                case 15:
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    if (c03266v.A01 >= c03266v2.A02 + c03266v2.A01) {
                        c = 3;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    c7y = c7y;
                    c03266v = c03266v;
                    c03266v2 = c03266v2;
                    c03266v2.A01--;
                    c03266vA4e = c7y.A00.A4e(4, c03266v.A02, 1, c03266v2.A03);
                    c = 3;
                    break;
            }
        }
    }

    public final void A05(List<C03266v> list) {
        C7Y c7y = this;
        int iA00 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    c7y = c7y;
                    list = list;
                    iA00 = c7y.A00(list);
                    if (iA00 == -1) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c7y = c7y;
                    list = list;
                    c7y.A01(list, iA00, iA00 + 1);
                    c = 2;
                    break;
                case 4:
                    return;
            }
        }
    }
}
