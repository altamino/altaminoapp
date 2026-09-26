package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.text.TextRange;
import j8.o;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
@Stable
public final class TextFieldScrollerPosition {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final Saver<TextFieldScrollerPosition, Object> Saver = ListSaverKt.a(TextFieldScrollerPosition$Companion$Saver$1.INSTANCE, TextFieldScrollerPosition$Companion$Saver$2.INSTANCE);

    @NotNull
    private final MutableState maximum$delegate;

    @NotNull
    private final MutableState offset$delegate;

    @NotNull
    private final MutableState orientation$delegate;

    @NotNull
    private Rect previousCursorRect;
    private long previousSelection;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final Saver<TextFieldScrollerPosition, Object> a() {
            return TextFieldScrollerPosition.Saver;
        }
    }

    public TextFieldScrollerPosition(@NotNull Orientation initialOrientation, float f) {
        t.j(initialOrientation, "initialOrientation");
        this.offset$delegate = SnapshotStateKt__SnapshotStateKt.e(Float.valueOf(f), null, 2, null);
        this.maximum$delegate = SnapshotStateKt__SnapshotStateKt.e(Float.valueOf(0.0f), null, 2, null);
        this.previousCursorRect = Rect.Companion.a();
        this.previousSelection = TextRange.Companion.a();
        this.orientation$delegate = SnapshotStateKt.g(initialOrientation, SnapshotStateKt.p());
    }

    public final void i(long j6) {
        this.previousSelection = j6;
    }

    private final void g(float f) {
        this.maximum$delegate.setValue(Float.valueOf(f));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final float c() {
        return ((Number) this.maximum$delegate.getValue()).floatValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final float d() {
        return ((Number) this.offset$delegate.getValue()).floatValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final Orientation f() {
        return (Orientation) this.orientation$delegate.getValue();
    }

    public final void h(float f) {
        this.offset$delegate.setValue(Float.valueOf(f));
    }

    public final void j(@NotNull Orientation orientation, @NotNull Rect cursorRect, int i10, int i11) {
        t.j(orientation, "orientation");
        t.j(cursorRect, "cursorRect");
        float f = i11 - i10;
        g(f);
        if (cursorRect.j() != this.previousCursorRect.j() || cursorRect.m() != this.previousCursorRect.m()) {
            boolean z6 = orientation == Orientation.Vertical;
            b(z6 ? cursorRect.m() : cursorRect.j(), z6 ? cursorRect.e() : cursorRect.k(), i10);
            this.previousCursorRect = cursorRect;
        }
        h(o.m(d(), 0.0f, f));
    }

    public final void b(float f, float f6, int i10) {
        float f7;
        float fD = d();
        float f10 = i10;
        float f11 = fD + f10;
        if (f6 > f11 || (f < fD && f6 - f > f10)) {
            f7 = f6 - f11;
        } else if (f < fD && f6 - f <= f10) {
            f7 = f - fD;
        } else {
            f7 = 0.0f;
        }
        h(d() + f7);
    }

    public final int e(long j6) {
        if (TextRange.n(j6) != TextRange.n(this.previousSelection)) {
            return TextRange.n(j6);
        }
        if (TextRange.i(j6) != TextRange.i(this.previousSelection)) {
            return TextRange.i(j6);
        }
        return TextRange.l(j6);
    }

    public /* synthetic */ TextFieldScrollerPosition(Orientation orientation, float f, int i10, k kVar) {
        this(orientation, (i10 & 2) != 0 ? 0.0f : f);
    }

    public TextFieldScrollerPosition() {
        this(Orientation.Vertical, 0.0f, 2, null);
    }
}
