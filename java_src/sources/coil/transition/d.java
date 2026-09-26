package coil.transition;

import android.graphics.drawable.Drawable;
import androidx.annotation.MainThread;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public interface d extends f0.a {
    @Nullable
    Drawable d();

    public static final class a {
        @MainThread
        public static void a(@NotNull d dVar, @Nullable Drawable drawable) {
            f0.a.C0377a.a(dVar, drawable);
        }

        @MainThread
        public static void b(@NotNull d dVar, @Nullable Drawable drawable) {
            f0.a.C0377a.b(dVar, drawable);
        }

        @MainThread
        public static void c(@NotNull d dVar, @NotNull Drawable drawable) {
            f0.a.C0377a.c(dVar, drawable);
        }
    }
}
