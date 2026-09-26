package coil.decode;

import androidx.annotation.Px;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class h {

    @NotNull
    public static final h INSTANCE = new h();

    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[coil.size.h.values().length];
            iArr[coil.size.h.FILL.ordinal()] = 1;
            iArr[coil.size.h.FIT.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final int a(@Px int i10, @Px int i11, @Px int i12, @Px int i13, @NotNull coil.size.h hVar) {
        int iMin;
        int iHighestOneBit = Integer.highestOneBit(i10 / i12);
        int iHighestOneBit2 = Integer.highestOneBit(i11 / i13);
        int i14 = a.$EnumSwitchMapping$0[hVar.ordinal()];
        if (i14 == 1) {
            iMin = Math.min(iHighestOneBit, iHighestOneBit2);
        } else {
            if (i14 != 2) {
                throw new w7.s();
            }
            iMin = Math.max(iHighestOneBit, iHighestOneBit2);
        }
        return j8.o.e(iMin, 1);
    }

    public static final double b(@Px double d, @Px double d2, @Px double d6, @Px double d7, @NotNull coil.size.h hVar) {
        double d10 = d6 / d;
        double d11 = d7 / d2;
        int i10 = a.$EnumSwitchMapping$0[hVar.ordinal()];
        if (i10 == 1) {
            return Math.max(d10, d11);
        }
        if (i10 == 2) {
            return Math.min(d10, d11);
        }
        throw new w7.s();
    }

    public static final double c(@Px int i10, @Px int i11, @Px int i12, @Px int i13, @NotNull coil.size.h hVar) {
        double d = ((double) i12) / ((double) i10);
        double d2 = ((double) i13) / ((double) i11);
        int i14 = a.$EnumSwitchMapping$0[hVar.ordinal()];
        if (i14 == 1) {
            return Math.max(d, d2);
        }
        if (i14 == 2) {
            return Math.min(d, d2);
        }
        throw new w7.s();
    }

    private h() {
    }
}
