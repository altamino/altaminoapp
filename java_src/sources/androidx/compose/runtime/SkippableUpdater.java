package androidx.compose.runtime;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class SkippableUpdater<T> {

    @NotNull
    private final Composer composer;

    public static final /* synthetic */ SkippableUpdater a(Composer composer) {
        return new SkippableUpdater(composer);
    }

    @NotNull
    public static <T> Composer b(@NotNull Composer composer) {
        t.j(composer, "composer");
        return composer;
    }

    public static boolean c(Composer composer, Object obj) {
        return (obj instanceof SkippableUpdater) && t.e(composer, ((SkippableUpdater) obj).f());
    }

    public static int d(Composer composer) {
        return composer.hashCode();
    }

    public static String e(Composer composer) {
        return "SkippableUpdater(composer=" + composer + ')';
    }

    public boolean equals(Object obj) {
        return c(this.composer, obj);
    }

    public final /* synthetic */ Composer f() {
        return this.composer;
    }

    public int hashCode() {
        return d(this.composer);
    }

    public String toString() {
        return e(this.composer);
    }

    private /* synthetic */ SkippableUpdater(Composer composer) {
        this.composer = composer;
    }
}
