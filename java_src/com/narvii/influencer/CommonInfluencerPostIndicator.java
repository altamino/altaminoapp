package com.narvii.influencer;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.narvii.lib.R;
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CommonInfluencerPostIndicator.kt */
/* loaded from: classes2.dex */
public final class CommonInfluencerPostIndicator extends InfluencerPostIndicator {
    private HashMap _$_findViewCache;

    public CommonInfluencerPostIndicator(Context context) {
        this(context, null, 0, 6, null);
    }

    public CommonInfluencerPostIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    @Override // com.narvii.influencer.InfluencerPostIndicator
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.influencer.InfluencerPostIndicator
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
    public CommonInfluencerPostIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
    }

    public /* synthetic */ CommonInfluencerPostIndicator(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    @Override // com.narvii.influencer.InfluencerPostIndicator
    public void setIsFansOnly(boolean z) {
        getLockIndicator().setImageResource(z ? R.drawable.ic_influencer_post_lock : R.drawable.ic_influencer_post_unlock);
        getLockIndicator().setTintColorStateList(z ? R.color.selector_influencer_post_lock : R.color.selector_influencer_post_unlock);
        TextView tvFansOnly = getTvFansOnly();
        Context context = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        tvFansOnly.setTextColor(context.getResources().getColorStateList(z ? R.color.selector_influencer_post_lock : R.color.selector_influencer_post_unlock));
        getTvFansOnly().setText(z ? R.string.fans_only : R.string.free);
    }
}
