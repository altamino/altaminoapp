package com.narvii.story.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DispatchEventFrameLayout.kt */
/* loaded from: classes3.dex */
public final class DispatchEventFrameLayout extends FrameLayout {
    private HashMap _$_findViewCache;
    private IDispatchEventListener dispatchEventListener;

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
    public DispatchEventFrameLayout(Context context) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DispatchEventFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkParameterIsNotNull(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DispatchEventFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
    }

    public final IDispatchEventListener getDispatchEventListener() {
        return this.dispatchEventListener;
    }

    public final void setDispatchEventListener(IDispatchEventListener iDispatchEventListener) {
        this.dispatchEventListener = iDispatchEventListener;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        IDispatchEventListener iDispatchEventListener;
        if (motionEvent != null && motionEvent.getAction() == 0 && (iDispatchEventListener = this.dispatchEventListener) != null) {
            iDispatchEventListener.onDispatchDownEvent();
        }
        return super.dispatchTouchEvent(motionEvent);
    }
}
