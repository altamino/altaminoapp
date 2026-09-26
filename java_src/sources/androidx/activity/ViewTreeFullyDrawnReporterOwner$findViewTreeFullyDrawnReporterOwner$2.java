package androidx.activity;

import android.view.View;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class ViewTreeFullyDrawnReporterOwner$findViewTreeFullyDrawnReporterOwner$2 extends v implements l<View, FullyDrawnReporterOwner> {
    public static final ViewTreeFullyDrawnReporterOwner$findViewTreeFullyDrawnReporterOwner$2 INSTANCE = new ViewTreeFullyDrawnReporterOwner$findViewTreeFullyDrawnReporterOwner$2();

    ViewTreeFullyDrawnReporterOwner$findViewTreeFullyDrawnReporterOwner$2() {
        super(1);
    }

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final FullyDrawnReporterOwner invoke(@NotNull View it) {
        t.j(it, "it");
        Object tag = it.getTag(R.id.report_drawn);
        if (tag instanceof FullyDrawnReporterOwner) {
            return (FullyDrawnReporterOwner) tag;
        }
        return null;
    }
}
