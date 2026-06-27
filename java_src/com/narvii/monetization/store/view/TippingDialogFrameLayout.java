package com.narvii.monetization.store.view;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TippingDialogFrameLayout.kt */
/* loaded from: classes3.dex */
public final class TippingDialogFrameLayout extends FrameLayout {
    private HashMap _$_findViewCache;

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
    public TippingDialogFrameLayout(Context context) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        setFitsSystemWindows(true);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TippingDialogFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkParameterIsNotNull(context, "context");
        setFitsSystemWindows(true);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TippingDialogFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
        setFitsSystemWindows(true);
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        if (rect != null) {
            rect.top = 0;
        }
        return super.fitSystemWindows(rect);
    }
}
