package com.narvii.chat.setting.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.widget.SpinningView;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: WaitListAcceptView.kt */
/* loaded from: classes2.dex */
public final class WaitListAcceptView extends FrameLayout {
    private HashMap _$_findViewCache;
    private boolean isRequesting;

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
    public WaitListAcceptView(Context context) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        LayoutInflater.from(getContext()).inflate(R.layout.wait_list_accept_view, (ViewGroup) this, true);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WaitListAcceptView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkParameterIsNotNull(context, "context");
        LayoutInflater.from(getContext()).inflate(R.layout.wait_list_accept_view, (ViewGroup) this, true);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WaitListAcceptView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
        LayoutInflater.from(getContext()).inflate(R.layout.wait_list_accept_view, (ViewGroup) this, true);
    }

    public final boolean isRequesting() {
        return this.isRequesting;
    }

    public final void setRequesting(boolean z) {
        this.isRequesting = z;
    }

    public final void updateState(boolean z, boolean z2, boolean z3) {
        this.isRequesting = z;
        if (z) {
            TextView accept = (TextView) _$_findCachedViewById(com.narvii.amino.R.id.accept);
            Intrinsics.checkExpressionValueIsNotNull(accept, "accept");
            accept.setVisibility(4);
            TextView cancel = (TextView) _$_findCachedViewById(com.narvii.amino.R.id.cancel);
            Intrinsics.checkExpressionValueIsNotNull(cancel, "cancel");
            cancel.setVisibility(4);
            SpinningView progress = (SpinningView) _$_findCachedViewById(com.narvii.amino.R.id.progress);
            Intrinsics.checkExpressionValueIsNotNull(progress, "progress");
            progress.setVisibility(0);
            return;
        }
        if (z2) {
            TextView accept2 = (TextView) _$_findCachedViewById(com.narvii.amino.R.id.accept);
            Intrinsics.checkExpressionValueIsNotNull(accept2, "accept");
            accept2.setVisibility(0);
            TextView cancel2 = (TextView) _$_findCachedViewById(com.narvii.amino.R.id.cancel);
            Intrinsics.checkExpressionValueIsNotNull(cancel2, "cancel");
            cancel2.setVisibility(4);
            SpinningView progress2 = (SpinningView) _$_findCachedViewById(com.narvii.amino.R.id.progress);
            Intrinsics.checkExpressionValueIsNotNull(progress2, "progress");
            progress2.setVisibility(4);
            return;
        }
        if (z3) {
            TextView accept3 = (TextView) _$_findCachedViewById(com.narvii.amino.R.id.accept);
            Intrinsics.checkExpressionValueIsNotNull(accept3, "accept");
            accept3.setVisibility(4);
            TextView cancel3 = (TextView) _$_findCachedViewById(com.narvii.amino.R.id.cancel);
            Intrinsics.checkExpressionValueIsNotNull(cancel3, "cancel");
            cancel3.setVisibility(0);
            SpinningView progress3 = (SpinningView) _$_findCachedViewById(com.narvii.amino.R.id.progress);
            Intrinsics.checkExpressionValueIsNotNull(progress3, "progress");
            progress3.setVisibility(4);
            return;
        }
        TextView accept4 = (TextView) _$_findCachedViewById(com.narvii.amino.R.id.accept);
        Intrinsics.checkExpressionValueIsNotNull(accept4, "accept");
        accept4.setVisibility(4);
        TextView cancel4 = (TextView) _$_findCachedViewById(com.narvii.amino.R.id.cancel);
        Intrinsics.checkExpressionValueIsNotNull(cancel4, "cancel");
        cancel4.setVisibility(4);
        SpinningView progress4 = (SpinningView) _$_findCachedViewById(com.narvii.amino.R.id.progress);
        Intrinsics.checkExpressionValueIsNotNull(progress4, "progress");
        progress4.setVisibility(4);
    }
}
