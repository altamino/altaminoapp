package androidx.window.embedding;

import android.content.Intent;
import androidx.window.core.ExperimentalWindowApi;
import java.util.Set;
import kotlin.collections.d0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@ExperimentalWindowApi
public final class SplitPlaceholderRule extends SplitRule {

    @NotNull
    private final Set<ActivityFilter> filters;

    @NotNull
    private final Intent placeholderIntent;

    public /* synthetic */ SplitPlaceholderRule(Set set, Intent intent, int i10, int i11, float f, int i12, int i13, k kVar) {
        this(set, intent, (i13 & 4) != 0 ? 0 : i10, (i13 & 8) != 0 ? 0 : i11, (i13 & 16) != 0 ? 0.5f : f, (i13 & 32) != 0 ? 3 : i12);
    }

    @Override // androidx.window.embedding.SplitRule
    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SplitPlaceholderRule) || !super.equals(obj) || !super.equals(obj)) {
            return false;
        }
        SplitPlaceholderRule splitPlaceholderRule = (SplitPlaceholderRule) obj;
        return t.e(this.filters, splitPlaceholderRule.filters) && t.e(this.placeholderIntent, splitPlaceholderRule.placeholderIntent);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SplitPlaceholderRule(@NotNull Set<ActivityFilter> filters, @NotNull Intent placeholderIntent, int i10, int i11, float f, int i12) {
        super(i10, i11, f, i12);
        t.j(filters, "filters");
        t.j(placeholderIntent, "placeholderIntent");
        this.placeholderIntent = placeholderIntent;
        this.filters = d0.Y0(filters);
    }

    @Override // androidx.window.embedding.SplitRule
    public int hashCode() {
        return (((super.hashCode() * 31) + this.filters.hashCode()) * 31) + this.placeholderIntent.hashCode();
    }
}
