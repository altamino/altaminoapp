package androidx.compose.ui.platform;

import androidx.compose.ui.node.OwnerScope;
import androidx.compose.ui.semantics.ScrollAxisRange;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class ScrollObservationScope implements OwnerScope {

    @NotNull
    private final List<ScrollObservationScope> allScopes;

    @Nullable
    private ScrollAxisRange horizontalScrollAxisRange;

    @Nullable
    private Float oldXValue;

    @Nullable
    private Float oldYValue;
    private final int semanticsNodeId;

    @Nullable
    private ScrollAxisRange verticalScrollAxisRange;

    @Nullable
    public final ScrollAxisRange a() {
        return this.horizontalScrollAxisRange;
    }

    @Nullable
    public final Float b() {
        return this.oldXValue;
    }

    @Nullable
    public final Float c() {
        return this.oldYValue;
    }

    public final int d() {
        return this.semanticsNodeId;
    }

    @Nullable
    public final ScrollAxisRange e() {
        return this.verticalScrollAxisRange;
    }

    public final void f(@Nullable ScrollAxisRange scrollAxisRange) {
        this.horizontalScrollAxisRange = scrollAxisRange;
    }

    public final void g(@Nullable Float f) {
        this.oldXValue = f;
    }

    public final void h(@Nullable Float f) {
        this.oldYValue = f;
    }

    public final void i(@Nullable ScrollAxisRange scrollAxisRange) {
        this.verticalScrollAxisRange = scrollAxisRange;
    }

    public ScrollObservationScope(int i10, @NotNull List<ScrollObservationScope> allScopes, @Nullable Float f, @Nullable Float f6, @Nullable ScrollAxisRange scrollAxisRange, @Nullable ScrollAxisRange scrollAxisRange2) {
        kotlin.jvm.internal.t.j(allScopes, "allScopes");
        this.semanticsNodeId = i10;
        this.allScopes = allScopes;
        this.oldXValue = f;
        this.oldYValue = f6;
        this.horizontalScrollAxisRange = scrollAxisRange;
        this.verticalScrollAxisRange = scrollAxisRange2;
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public boolean isValid() {
        return this.allScopes.contains(this);
    }
}
