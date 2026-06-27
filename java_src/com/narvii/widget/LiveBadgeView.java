package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.amino.mastes.R;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LiveBadgeView.kt */
/* loaded from: classes3.dex */
public final class LiveBadgeView extends FrameLayout {
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
    public LiveBadgeView(Context context) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        View.inflate(getContext(), R.layout.user_live_badge_layout, this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LiveBadgeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkParameterIsNotNull(context, "context");
        View.inflate(getContext(), R.layout.user_live_badge_layout, this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LiveBadgeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
        View.inflate(getContext(), R.layout.user_live_badge_layout, this);
    }
}
