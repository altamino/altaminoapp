package androidx.window.embedding;

import androidx.compose.foundation.c;
import androidx.window.core.ExperimentalWindowApi;
import java.util.Set;
import kotlin.collections.d0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
@ExperimentalWindowApi
public final class SplitPairRule extends SplitRule {
    private final boolean clearTop;

    @NotNull
    private final Set<SplitPairFilter> filters;
    private final boolean finishPrimaryWithSecondary;
    private final boolean finishSecondaryWithPrimary;

    public /* synthetic */ SplitPairRule(Set set, boolean z6, boolean z10, boolean z11, int i10, int i11, float f, int i12, int i13, k kVar) {
        this(set, (i13 & 2) != 0 ? false : z6, (i13 & 4) != 0 ? true : z10, (i13 & 8) != 0 ? false : z11, (i13 & 16) != 0 ? 0 : i10, (i13 & 32) == 0 ? i11 : 0, (i13 & 64) != 0 ? 0.5f : f, (i13 & 128) != 0 ? 3 : i12);
    }

    @Override // androidx.window.embedding.SplitRule
    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SplitPairRule) || !super.equals(obj)) {
            return false;
        }
        SplitPairRule splitPairRule = (SplitPairRule) obj;
        return t.e(this.filters, splitPairRule.filters) && this.finishPrimaryWithSecondary == splitPairRule.finishPrimaryWithSecondary && this.finishSecondaryWithPrimary == splitPairRule.finishSecondaryWithPrimary && this.clearTop == splitPairRule.clearTop;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SplitPairRule(@NotNull Set<SplitPairFilter> filters, boolean z6, boolean z10, boolean z11, int i10, int i11, float f, int i12) {
        super(i10, i11, f, i12);
        t.j(filters, "filters");
        this.finishPrimaryWithSecondary = z6;
        this.finishSecondaryWithPrimary = z10;
        this.clearTop = z11;
        this.filters = d0.Y0(filters);
    }

    @Override // androidx.window.embedding.SplitRule
    public int hashCode() {
        return (((((((super.hashCode() * 31) + this.filters.hashCode()) * 31) + c.a(this.finishPrimaryWithSecondary)) * 31) + c.a(this.finishSecondaryWithPrimary)) * 31) + c.a(this.clearTop);
    }
}
