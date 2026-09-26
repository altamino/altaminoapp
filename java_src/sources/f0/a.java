package f0;

import android.graphics.drawable.Drawable;
import androidx.annotation.MainThread;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public interface a {

    /* JADX INFO: renamed from: f0.a$a, reason: collision with other inner class name */
    public static final class C0377a {
        @MainThread
        public static void a(@NotNull a aVar, @Nullable Drawable drawable) {
        }

        @MainThread
        public static void b(@NotNull a aVar, @Nullable Drawable drawable) {
        }

        @MainThread
        public static void c(@NotNull a aVar, @NotNull Drawable drawable) {
        }
    }

    @MainThread
    void a(@NotNull Drawable drawable);

    @MainThread
    void b(@Nullable Drawable drawable);

    @MainThread
    void c(@Nullable Drawable drawable);
}
