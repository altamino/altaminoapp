package androidx.compose.ui.graphics;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.geometry.Size;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
@Immutable
public abstract class Brush {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private final long intrinsicSize;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ Brush(kotlin.jvm.internal.k kVar) {
        this();
    }

    public abstract void a(long j6, @NotNull Paint paint, float f);

    public long b() {
        return this.intrinsicSize;
    }

    private Brush() {
        this.intrinsicSize = Size.Companion.a();
    }
}
