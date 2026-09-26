package w7;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public class o {

    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[q.values().length];
            try {
                iArr[q.SYNCHRONIZED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[q.PUBLICATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[q.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @NotNull
    public static <T> m<T> a(@NotNull e8.a<? extends T> initializer) {
        kotlin.jvm.internal.t.j(initializer, "initializer");
        kotlin.jvm.internal.k kVar = null;
        return new y(initializer, kVar, 2, kVar);
    }

    @NotNull
    public static <T> m<T> b(@NotNull q mode, @NotNull e8.a<? extends T> initializer) {
        kotlin.jvm.internal.t.j(mode, "mode");
        kotlin.jvm.internal.t.j(initializer, "initializer");
        int i10 = a.$EnumSwitchMapping$0[mode.ordinal()];
        int i11 = 2;
        if (i10 == 1) {
            kotlin.jvm.internal.k kVar = null;
            return new y(initializer, kVar, i11, kVar);
        }
        if (i10 == 2) {
            return new x(initializer);
        }
        if (i10 == 3) {
            return new m0(initializer);
        }
        throw new s();
    }
}
