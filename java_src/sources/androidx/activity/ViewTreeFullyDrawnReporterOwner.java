package androidx.activity;

import android.view.View;
import kotlin.jvm.internal.t;
import kotlin.sequences.m;
import kotlin.sequences.o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class ViewTreeFullyDrawnReporterOwner {
    @Nullable
    public static final FullyDrawnReporterOwner a(@NotNull View view) {
        t.j(view, "<this>");
        return (FullyDrawnReporterOwner) o.o(o.v(m.f(view, ViewTreeFullyDrawnReporterOwner$findViewTreeFullyDrawnReporterOwner$1.INSTANCE), ViewTreeFullyDrawnReporterOwner$findViewTreeFullyDrawnReporterOwner$2.INSTANCE));
    }

    public static final void b(@NotNull View view, @NotNull FullyDrawnReporterOwner fullyDrawnReporterOwner) {
        t.j(view, "<this>");
        t.j(fullyDrawnReporterOwner, "fullyDrawnReporterOwner");
        view.setTag(R.id.report_drawn, fullyDrawnReporterOwner);
    }
}
