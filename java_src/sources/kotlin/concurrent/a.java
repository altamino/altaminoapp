package kotlin.concurrent;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
public final class a {

    /* JADX INFO: renamed from: kotlin.concurrent.a$a, reason: collision with other inner class name */
    public static final class C0425a extends Thread {
        final /* synthetic */ e8.a<l0> $block;

        C0425a(e8.a<l0> aVar) {
            this.$block = aVar;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            this.$block.invoke();
        }
    }

    @NotNull
    public static final Thread a(boolean z6, boolean z10, @Nullable ClassLoader classLoader, @Nullable String str, int i10, @NotNull e8.a<l0> block) {
        t.j(block, "block");
        C0425a c0425a = new C0425a(block);
        if (z10) {
            c0425a.setDaemon(true);
        }
        if (i10 > 0) {
            c0425a.setPriority(i10);
        }
        if (str != null) {
            c0425a.setName(str);
        }
        if (classLoader != null) {
            c0425a.setContextClassLoader(classLoader);
        }
        if (z6) {
            c0425a.start();
        }
        return c0425a;
    }

    public static /* synthetic */ Thread b(boolean z6, boolean z10, ClassLoader classLoader, String str, int i10, e8.a aVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z6 = true;
        }
        boolean z11 = z6;
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        boolean z12 = z10;
        ClassLoader classLoader2 = (i11 & 4) != 0 ? null : classLoader;
        String str2 = (i11 & 8) != 0 ? null : str;
        if ((i11 & 16) != 0) {
            i10 = -1;
        }
        return a(z11, z12, classLoader2, str2, i10, aVar);
    }
}
