package coil.util;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
final class p extends m {

    @NotNull
    public static final a Companion = new a(null);
    private static final int MIN_SIZE_DIMENSION = 100;

    @Nullable
    private final q logger;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }
    }

    public p(@Nullable q qVar) {
        super(null);
    }

    @Override // coil.util.m
    public boolean b() {
        return l.INSTANCE.b(null);
    }

    @Override // coil.util.m
    public boolean a(@NotNull coil.size.i iVar) {
        coil.size.c cVarB = iVar.b();
        if (!(cVarB instanceof coil.size.c.a) || ((coil.size.c.a) cVarB).px > 100) {
            coil.size.c cVarA = iVar.a();
            if (!(cVarA instanceof coil.size.c.a) || ((coil.size.c.a) cVarA).px > 100) {
                return true;
            }
        }
        return false;
    }
}
