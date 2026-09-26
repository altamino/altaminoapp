package androidx.compose.ui.unit;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
@Immutable
public final class Constraints {
    private static final long FocusMask = 3;
    public static final int Infinity = Integer.MAX_VALUE;
    private static final int MaxFocusBits = 18;
    private static final long MaxFocusHeight = 3;
    private static final long MaxFocusWidth = 1;
    private static final int MaxNonFocusBits = 13;
    private static final int MinFocusBits = 16;
    private static final long MinFocusHeight = 2;
    private static final int MinFocusMask = 65535;
    private static final long MinFocusWidth = 0;
    private static final int MinNonFocusBits = 15;
    private final long value;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final int[] MinHeightOffsets = {18, 20, 17, 15};
    private static final int MaxFocusMask = 262143;
    private static final int MinNonFocusMask = 32767;
    private static final int MaxNonFocusMask = 8191;

    @NotNull
    private static final int[] WidthMask = {65535, MaxFocusMask, MinNonFocusMask, MaxNonFocusMask};

    @NotNull
    private static final int[] HeightMask = {MinNonFocusMask, MaxNonFocusMask, 65535, MaxFocusMask};

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        private final int a(int i10) {
            if (i10 < Constraints.MaxNonFocusMask) {
                return 13;
            }
            if (i10 < Constraints.MinNonFocusMask) {
                return 15;
            }
            if (i10 < 65535) {
                return 16;
            }
            if (i10 < Constraints.MaxFocusMask) {
                return 18;
            }
            throw new IllegalArgumentException("Can't represent a size of " + i10 + " in Constraints");
        }

        @Stable
        public final long c(int i10, int i11) {
            if (i10 >= 0 && i11 >= 0) {
                return b(i10, i10, i11, i11);
            }
            throw new IllegalArgumentException(("width(" + i10 + ") and height(" + i11 + ") must be >= 0").toString());
        }

        @Stable
        public final long d(int i10) {
            if (i10 >= 0) {
                return b(0, Integer.MAX_VALUE, i10, i10);
            }
            throw new IllegalArgumentException(("height(" + i10 + ") must be >= 0").toString());
        }

        @Stable
        public final long e(int i10) {
            if (i10 >= 0) {
                return b(i10, i10, 0, Integer.MAX_VALUE);
            }
            throw new IllegalArgumentException(("width(" + i10 + ") must be >= 0").toString());
        }

        public final long b(int i10, int i11, int i12, int i13) {
            int i14;
            int i15;
            long j6;
            int i16;
            if (i13 == Integer.MAX_VALUE) {
                i14 = i12;
            } else {
                i14 = i13;
            }
            int iA = a(i14);
            if (i11 == Integer.MAX_VALUE) {
                i15 = i10;
            } else {
                i15 = i11;
            }
            int iA2 = a(i15);
            if (iA + iA2 <= 31) {
                if (iA2 != 13) {
                    if (iA2 != 18) {
                        if (iA2 != 15) {
                            if (iA2 == 16) {
                                j6 = 0;
                            } else {
                                throw new IllegalStateException("Should only have the provided constants.");
                            }
                        } else {
                            j6 = 2;
                        }
                    } else {
                        j6 = 1;
                    }
                } else {
                    j6 = 3;
                }
                int i17 = 0;
                if (i11 == Integer.MAX_VALUE) {
                    i16 = 0;
                } else {
                    i16 = i11 + 1;
                }
                if (i13 != Integer.MAX_VALUE) {
                    i17 = i13 + 1;
                }
                int i18 = Constraints.MinHeightOffsets[(int) j6];
                return Constraints.c((((long) i16) << 33) | j6 | (((long) i10) << 2) | (((long) i12) << i18) | (((long) i17) << (i18 + 31)));
            }
            throw new IllegalArgumentException("Can't represent a width of " + i15 + " and height of " + i14 + " in Constraints");
        }
    }

    public static final /* synthetic */ Constraints b(long j6) {
        return new Constraints(j6);
    }

    public static long c(long j6) {
        return j6;
    }

    public static boolean f(long j6, Object obj) {
        return (obj instanceof Constraints) && j6 == ((Constraints) obj).t();
    }

    public static final boolean g(long j6, long j10) {
        return j6 == j10;
    }

    private static final int h(long j6) {
        return (int) (j6 & 3);
    }

    public static int q(long j6) {
        return i.a.a(j6);
    }

    public boolean equals(Object obj) {
        return f(this.value, obj);
    }

    public int hashCode() {
        return q(this.value);
    }

    public final /* synthetic */ long t() {
        return this.value;
    }

    public static final long d(long j6, int i10, int i11, int i12, int i13) {
        if (i12 < 0 || i10 < 0) {
            throw new IllegalArgumentException(("minHeight(" + i12 + ") and minWidth(" + i10 + ") must be >= 0").toString());
        }
        if (i11 < i10 && i11 != Integer.MAX_VALUE) {
            throw new IllegalArgumentException(("maxWidth(" + i11 + ") must be >= minWidth(" + i10 + ')').toString());
        }
        if (i13 >= i12 || i13 == Integer.MAX_VALUE) {
            return Companion.b(i10, i11, i12, i13);
        }
        throw new IllegalArgumentException(("maxHeight(" + i13 + ") must be >= minHeight(" + i12 + ')').toString());
    }

    public static /* synthetic */ long e(long j6, int i10, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i10 = p(j6);
        }
        int i15 = i10;
        if ((i14 & 2) != 0) {
            i11 = n(j6);
        }
        int i16 = i11;
        if ((i14 & 4) != 0) {
            i12 = o(j6);
        }
        int i17 = i12;
        if ((i14 & 8) != 0) {
            i13 = m(j6);
        }
        return d(j6, i15, i16, i17, i13);
    }

    public static final boolean j(long j6) {
        return (((int) (j6 >> 33)) & WidthMask[h(j6)]) != 0;
    }

    public static final int n(long j6) {
        int i10 = ((int) (j6 >> 33)) & WidthMask[h(j6)];
        if (i10 == 0) {
            return Integer.MAX_VALUE;
        }
        return i10 - 1;
    }

    public static final int p(long j6) {
        return ((int) (j6 >> 2)) & WidthMask[h(j6)];
    }

    @NotNull
    public String toString() {
        return s(this.value);
    }

    private /* synthetic */ Constraints(long j6) {
        this.value = j6;
    }

    public static final boolean i(long j6) {
        int iH = h(j6);
        if ((((int) (j6 >> (MinHeightOffsets[iH] + 31))) & HeightMask[iH]) != 0) {
            return true;
        }
        return false;
    }

    public static final boolean k(long j6) {
        if (m(j6) == o(j6)) {
            return true;
        }
        return false;
    }

    public static final boolean l(long j6) {
        if (n(j6) == p(j6)) {
            return true;
        }
        return false;
    }

    public static final int m(long j6) {
        int iH = h(j6);
        int i10 = ((int) (j6 >> (MinHeightOffsets[iH] + 31))) & HeightMask[iH];
        if (i10 == 0) {
            return Integer.MAX_VALUE;
        }
        return i10 - 1;
    }

    public static final int o(long j6) {
        int iH = h(j6);
        return ((int) (j6 >> MinHeightOffsets[iH])) & HeightMask[iH];
    }

    public static final boolean r(long j6) {
        if (n(j6) != 0 && m(j6) != 0) {
            return false;
        }
        return true;
    }

    @NotNull
    public static String s(long j6) {
        String strValueOf;
        int iN = n(j6);
        String strValueOf2 = "Infinity";
        if (iN == Integer.MAX_VALUE) {
            strValueOf = "Infinity";
        } else {
            strValueOf = String.valueOf(iN);
        }
        int iM = m(j6);
        if (iM != Integer.MAX_VALUE) {
            strValueOf2 = String.valueOf(iM);
        }
        return "Constraints(minWidth = " + p(j6) + ", maxWidth = " + strValueOf + ", minHeight = " + o(j6) + ", maxHeight = " + strValueOf2 + ')';
    }
}
