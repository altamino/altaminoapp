package com.narvii.util;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class WMEAttachView extends FrameLayout {
    private final int h;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NotNull
    private final View f2815v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final int f2816w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WMEAttachView(@NotNull Context context, @NotNull View view) {
        super(context);
        t.j(context, "context");
        t.j(view, "view");
        this.f2816w = context.getResources().getDisplayMetrics().widthPixels;
        this.h = context.getResources().getDisplayMetrics().heightPixels;
        this.f2815v = view;
        addView(view);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        this.f2815v.layout(0, 0, this.f2816w, this.h);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        this.f2815v.measure(View.MeasureSpec.makeMeasureSpec(this.f2816w, 1073741824), View.MeasureSpec.makeMeasureSpec(this.h, 1073741824));
    }
}
