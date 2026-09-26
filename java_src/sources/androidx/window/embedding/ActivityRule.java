package androidx.window.embedding;

import androidx.compose.foundation.c;
import androidx.window.core.ExperimentalWindowApi;
import java.util.Set;
import kotlin.collections.d0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
@ExperimentalWindowApi
public final class ActivityRule extends EmbeddingRule {
    private final boolean alwaysExpand;

    @NotNull
    private final Set<ActivityFilter> filters;

    public /* synthetic */ ActivityRule(Set set, boolean z6, int i10, k kVar) {
        this(set, (i10 & 2) != 0 ? false : z6);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActivityRule)) {
            return false;
        }
        ActivityRule activityRule = (ActivityRule) obj;
        return t.e(this.filters, activityRule.filters) && this.alwaysExpand == activityRule.alwaysExpand;
    }

    public ActivityRule(@NotNull Set<ActivityFilter> filters, boolean z6) {
        t.j(filters, "filters");
        this.alwaysExpand = z6;
        this.filters = d0.Y0(filters);
    }

    public int hashCode() {
        return (this.filters.hashCode() * 31) + c.a(this.alwaysExpand);
    }
}
