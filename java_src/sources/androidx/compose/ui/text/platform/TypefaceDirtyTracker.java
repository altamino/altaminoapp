package androidx.compose.ui.text.platform;

import android.graphics.Typeface;
import androidx.compose.runtime.State;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
final class TypefaceDirtyTracker {

    @NotNull
    private final Object initial;

    @NotNull
    private final State<Object> resolveResult;

    public TypefaceDirtyTracker(@NotNull State<? extends Object> resolveResult) {
        t.j(resolveResult, "resolveResult");
        this.resolveResult = resolveResult;
        this.initial = resolveResult.getValue();
    }

    @NotNull
    public final Typeface a() {
        return (Typeface) this.initial;
    }

    public final boolean b() {
        return this.resolveResult.getValue() != this.initial;
    }
}
