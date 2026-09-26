package androidx.compose.runtime;

import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class Updater<T> {

    @NotNull
    private final Composer composer;

    @NotNull
    public static <T> Composer a(@NotNull Composer composer) {
        t.j(composer, "composer");
        return composer;
    }

    public static boolean b(Composer composer, Object obj) {
        return (obj instanceof Updater) && t.e(composer, ((Updater) obj).g());
    }

    public static int c(Composer composer) {
        return composer.hashCode();
    }

    public static String f(Composer composer) {
        return "Updater(composer=" + composer + ')';
    }

    public boolean equals(Object obj) {
        return b(this.composer, obj);
    }

    public final /* synthetic */ Composer g() {
        return this.composer;
    }

    public int hashCode() {
        return c(this.composer);
    }

    public String toString() {
        return f(this.composer);
    }

    public static final void d(Composer composer, @NotNull l<? super T, l0> block) {
        t.j(block, "block");
        if (composer.r()) {
            composer.M(l0.INSTANCE, new Updater$init$1(block));
        }
    }

    public static final <V> void e(Composer composer, V v5, @NotNull p<? super T, ? super V, l0> block) {
        t.j(block, "block");
        if (composer.r() || !t.e(composer.H(), v5)) {
            composer.z(v5);
            composer.M(v5, block);
        }
    }
}
