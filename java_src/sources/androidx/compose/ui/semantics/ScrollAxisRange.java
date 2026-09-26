package androidx.compose.ui.semantics;

import androidx.compose.runtime.internal.StabilityInferred;
import e8.a;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
@StabilityInferred
public final class ScrollAxisRange {
    public static final int $stable = 0;

    @NotNull
    private final a<Float> maxValue;
    private final boolean reverseScrolling;

    @NotNull
    private final a<Float> value;

    public ScrollAxisRange(@NotNull a<Float> value, @NotNull a<Float> maxValue, boolean z6) {
        t.j(value, "value");
        t.j(maxValue, "maxValue");
        this.value = value;
        this.maxValue = maxValue;
        this.reverseScrolling = z6;
    }

    @NotNull
    public final a<Float> a() {
        return this.maxValue;
    }

    public final boolean b() {
        return this.reverseScrolling;
    }

    @NotNull
    public final a<Float> c() {
        return this.value;
    }

    public /* synthetic */ ScrollAxisRange(a aVar, a aVar2, boolean z6, int i10, k kVar) {
        this(aVar, aVar2, (i10 & 4) != 0 ? false : z6);
    }

    @NotNull
    public String toString() {
        return "ScrollAxisRange(value=" + this.value.invoke().floatValue() + ", maxValue=" + this.maxValue.invoke().floatValue() + ", reverseScrolling=" + this.reverseScrolling + ')';
    }
}
