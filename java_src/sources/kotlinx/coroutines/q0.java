package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public enum q0 {
    DEFAULT,
    LAZY,
    ATOMIC,
    UNDISPATCHED;

    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[q0.values().length];
            try {
                iArr[q0.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[q0.ATOMIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[q0.UNDISPATCHED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[q0.LAZY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final boolean c() {
        return this == LAZY;
    }

    public final <R, T> void b(@NotNull e8.p<? super R, ? super kotlin.coroutines.d<? super T>, ? extends Object> pVar, R r, @NotNull kotlin.coroutines.d<? super T> dVar) throws Throwable {
        int i10 = a.$EnumSwitchMapping$0[ordinal()];
        if (i10 == 1) {
            l8.a.d(pVar, r, dVar, null, 4, null);
            return;
        }
        if (i10 == 2) {
            kotlin.coroutines.f.b(pVar, r, dVar);
        } else if (i10 == 3) {
            l8.b.a(pVar, r, dVar);
        } else if (i10 != 4) {
            throw new w7.s();
        }
    }
}
