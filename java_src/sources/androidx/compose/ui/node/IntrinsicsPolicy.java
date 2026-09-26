package androidx.compose.ui.node;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.layout.MeasurePolicy;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class IntrinsicsPolicy {

    @NotNull
    private static final Companion Companion = new Companion(null);

    @Deprecated
    @NotNull
    private static final String NoPolicyError = "Intrinsic size is queried but there is no measure policy in place.";

    @NotNull
    private final LayoutNode layoutNode;

    @Nullable
    private MutableState<MeasurePolicy> measurePolicyState;

    @Nullable
    private MeasurePolicy pendingMeasurePolicy;

    private static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public IntrinsicsPolicy(@NotNull LayoutNode layoutNode) {
        t.j(layoutNode, "layoutNode");
        this.layoutNode = layoutNode;
    }

    private final MeasurePolicy c() {
        MutableState<MeasurePolicy> mutableStateE = this.measurePolicyState;
        if (mutableStateE == null) {
            MeasurePolicy measurePolicy = this.pendingMeasurePolicy;
            if (measurePolicy == null) {
                throw new IllegalStateException(NoPolicyError.toString());
            }
            mutableStateE = SnapshotStateKt__SnapshotStateKt.e(measurePolicy, null, 2, null);
        }
        this.measurePolicyState = mutableStateE;
        return mutableStateE.getValue();
    }

    public final void f(@NotNull MeasurePolicy measurePolicy) {
        t.j(measurePolicy, "measurePolicy");
        MutableState<MeasurePolicy> mutableState = this.measurePolicyState;
        if (mutableState == null) {
            this.pendingMeasurePolicy = measurePolicy;
        } else {
            t.g(mutableState);
            mutableState.setValue(measurePolicy);
        }
    }

    public final int a(int i10) {
        return c().d(this.layoutNode.k0(), this.layoutNode.S(), i10);
    }

    public final int b(int i10) {
        return c().e(this.layoutNode.k0(), this.layoutNode.S(), i10);
    }

    public final int d(int i10) {
        return c().b(this.layoutNode.k0(), this.layoutNode.S(), i10);
    }

    public final int e(int i10) {
        return c().c(this.layoutNode.k0(), this.layoutNode.S(), i10);
    }
}
