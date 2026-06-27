package com.narvii.util;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.FrameLayout;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: WebMediaExtractor.kt */
/* loaded from: classes3.dex */
final class WMEAttachView extends FrameLayout {
    private HashMap _$_findViewCache;
    private final int h;
    private final View v;
    private final int w;

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WMEAttachView(Context context, View view) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(view, "view");
        Resources resources = context.getResources();
        Intrinsics.checkExpressionValueIsNotNull(resources, "context.resources");
        this.w = resources.getDisplayMetrics().widthPixels;
        Resources resources2 = context.getResources();
        Intrinsics.checkExpressionValueIsNotNull(resources2, "context.resources");
        this.h = resources2.getDisplayMetrics().heightPixels;
        this.v = view;
        addView(this.v);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.v.measure(View.MeasureSpec.makeMeasureSpec(this.w, 1073741824), View.MeasureSpec.makeMeasureSpec(this.h, 1073741824));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.v.layout(0, 0, this.w, this.h);
    }
}
