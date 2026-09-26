package ra;

/* JADX INFO: loaded from: classes9.dex */
public final class d {
    public static int a(int i10, int i11) {
        if (i10 < i11) {
            return -1;
        }
        return i10 > i11 ? 1 : 0;
    }

    public static int b(long j6, long j10) {
        if (j6 < j10) {
            return -1;
        }
        return j6 > j10 ? 1 : 0;
    }

    public static boolean c(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        if (obj2 == null) {
            return false;
        }
        return obj.equals(obj2);
    }

    public static int f(int i10, int i11) {
        return ((i10 % i11) + i11) % i11;
    }

    public static int g(long j6, int i10) {
        long j10 = i10;
        return (int) (((j6 % j10) + j10) % j10);
    }

    public static long h(long j6, long j10) {
        return ((j6 % j10) + j10) % j10;
    }

    public static long l(long j6, int i10) {
        if (i10 == -1) {
            if (j6 != Long.MIN_VALUE) {
                return -j6;
            }
            throw new ArithmeticException("Multiplication overflows a long: " + j6 + " * " + i10);
        }
        if (i10 == 0) {
            return 0L;
        }
        if (i10 == 1) {
            return j6;
        }
        long j10 = i10;
        long j11 = j6 * j10;
        if (j11 / j10 == j6) {
            return j11;
        }
        throw new ArithmeticException("Multiplication overflows a long: " + j6 + " * " + i10);
    }

    public static int d(int i10, int i11) {
        return i10 >= 0 ? i10 / i11 : ((i10 + 1) / i11) - 1;
    }

    public static long e(long j6, long j10) {
        return j6 >= 0 ? j6 / j10 : ((j6 + 1) / j10) - 1;
    }

    public static <T> T i(T t5, String str) {
        if (t5 != null) {
            return t5;
        }
        throw new NullPointerException(str + " must not be null");
    }

    public static int j(int i10, int i11) {
        int i12 = i10 + i11;
        if ((i10 ^ i12) >= 0 || (i10 ^ i11) < 0) {
            return i12;
        }
        throw new ArithmeticException("Addition overflows an int: " + i10 + " + " + i11);
    }

    public static long k(long j6, long j10) {
        long j11 = j6 + j10;
        if ((j6 ^ j11) >= 0 || (j6 ^ j10) < 0) {
            return j11;
        }
        throw new ArithmeticException("Addition overflows a long: " + j6 + " + " + j10);
    }

    public static long m(long j6, long j10) {
        if (j10 == 1) {
            return j6;
        }
        if (j6 == 1) {
            return j10;
        }
        if (j6 == 0 || j10 == 0) {
            return 0L;
        }
        long j11 = j6 * j10;
        if (j11 / j10 == j6 && ((j6 != Long.MIN_VALUE || j10 != -1) && (j10 != Long.MIN_VALUE || j6 != -1))) {
            return j11;
        }
        throw new ArithmeticException("Multiplication overflows a long: " + j6 + " * " + j10);
    }

    public static int n(int i10, int i11) {
        int i12 = i10 - i11;
        if ((i10 ^ i12) >= 0 || (i10 ^ i11) >= 0) {
            return i12;
        }
        throw new ArithmeticException("Subtraction overflows an int: " + i10 + " - " + i11);
    }

    public static long o(long j6, long j10) {
        long j11 = j6 - j10;
        if ((j6 ^ j11) >= 0 || (j6 ^ j10) >= 0) {
            return j11;
        }
        throw new ArithmeticException("Subtraction overflows a long: " + j6 + " - " + j10);
    }

    public static int p(long j6) {
        if (j6 <= 2147483647L && j6 >= -2147483648L) {
            return (int) j6;
        }
        throw new ArithmeticException("Calculation overflows an int: " + j6);
    }
}
