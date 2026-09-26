package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public abstract class Outline {

    public static final class Generic extends Outline {

        @NotNull
        private final Path path;

        @NotNull
        public final Path a() {
            return this.path;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Generic) && kotlin.jvm.internal.t.e(this.path, ((Generic) obj).path);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Generic(@NotNull Path path) {
            super(null);
            kotlin.jvm.internal.t.j(path, "path");
            this.path = path;
        }

        public int hashCode() {
            return this.path.hashCode();
        }
    }

    @Immutable
    public static final class Rectangle extends Outline {

        @NotNull
        private final Rect rect;

        @NotNull
        public final Rect a() {
            return this.rect;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Rectangle) && kotlin.jvm.internal.t.e(this.rect, ((Rectangle) obj).rect);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Rectangle(@NotNull Rect rect) {
            super(null);
            kotlin.jvm.internal.t.j(rect, "rect");
            this.rect = rect;
        }

        public int hashCode() {
            return this.rect.hashCode();
        }
    }

    @Immutable
    public static final class Rounded extends Outline {

        @NotNull
        private final RoundRect roundRect;

        @Nullable
        private final Path roundRectPath;

        @NotNull
        public final RoundRect a() {
            return this.roundRect;
        }

        @Nullable
        public final Path b() {
            return this.roundRectPath;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Rounded) && kotlin.jvm.internal.t.e(this.roundRect, ((Rounded) obj).roundRect);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public Rounded(@NotNull RoundRect roundRect) {
            super(0 == true ? 1 : 0);
            kotlin.jvm.internal.t.j(roundRect, "roundRect");
            Path pathA = null;
            this.roundRect = roundRect;
            if (!OutlineKt.g(roundRect)) {
                pathA = AndroidPath_androidKt.a();
                pathA.e(roundRect);
            }
            this.roundRectPath = pathA;
        }

        public int hashCode() {
            return this.roundRect.hashCode();
        }
    }

    public /* synthetic */ Outline(kotlin.jvm.internal.k kVar) {
        this();
    }

    private Outline() {
    }
}
