package androidx.compose.ui.text.android;

import android.text.BoringLayout;
import android.text.TextPaint;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;
import w7.q;

/* JADX INFO: loaded from: classes9.dex */
@InternalPlatformTextApi
public final class LayoutIntrinsics {

    @NotNull
    private final m boringMetrics$delegate;

    @NotNull
    private final m maxIntrinsicWidth$delegate;

    @NotNull
    private final m minIntrinsicWidth$delegate;

    public LayoutIntrinsics(@NotNull CharSequence charSequence, @NotNull TextPaint textPaint, int i10) {
        t.j(charSequence, "charSequence");
        t.j(textPaint, "textPaint");
        q qVar = q.NONE;
        this.boringMetrics$delegate = o.b(qVar, new LayoutIntrinsics$boringMetrics$2(i10, charSequence, textPaint));
        this.minIntrinsicWidth$delegate = o.b(qVar, new LayoutIntrinsics$minIntrinsicWidth$2(charSequence, textPaint));
        this.maxIntrinsicWidth$delegate = o.b(qVar, new LayoutIntrinsics$maxIntrinsicWidth$2(this, charSequence, textPaint));
    }

    @Nullable
    public final BoringLayout.Metrics a() {
        return (BoringLayout.Metrics) this.boringMetrics$delegate.getValue();
    }

    public final float b() {
        return ((Number) this.maxIntrinsicWidth$delegate.getValue()).floatValue();
    }

    public final float c() {
        return ((Number) this.minIntrinsicWidth$delegate.getValue()).floatValue();
    }
}
