package com.narvii.influencer;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.lib.R;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: StoryInfluencerPostIndicator.kt */
/* loaded from: classes2.dex */
public final class StoryInfluencerPostIndicator extends InfluencerPostIndicator {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(StoryInfluencerPostIndicator.class), "check", "getCheck()Landroid/widget/ImageView;"))};
    private HashMap _$_findViewCache;
    private final Lazy check$delegate;
    private int switchOffColor;
    private int switchOnColor;

    public StoryInfluencerPostIndicator(Context context) {
        this(context, null, 0, 6, null);
    }

    public StoryInfluencerPostIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    private final ImageView getCheck() {
        Lazy lazy = this.check$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (ImageView) lazy.getValue();
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
    public StoryInfluencerPostIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.check$delegate = bind(this, R.id.check);
        this.switchOnColor = R.drawable.switch_on;
        this.switchOffColor = R.drawable.switch_off;
    }

    public /* synthetic */ StoryInfluencerPostIndicator(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    public final int getSwitchOnColor() {
        return this.switchOnColor;
    }

    public final void setSwitchOnColor(int i) {
        this.switchOnColor = i;
        invalidate();
    }

    public final int getSwitchOffColor() {
        return this.switchOffColor;
    }

    public final void setSwitchOffColor(int i) {
        this.switchOffColor = i;
        invalidate();
    }

    @Override // com.narvii.influencer.InfluencerPostIndicator
    public void setIsFansOnly(boolean z) {
        if (z) {
            getLockIndicator().setImageResource(R.drawable.ic_influencer_post_lock);
            getLockIndicator().setTintColorStateList(R.color.selector_influencer_post_lock);
            TextView tvFansOnly = getTvFansOnly();
            Context context = getContext();
            Intrinsics.checkExpressionValueIsNotNull(context, "context");
            tvFansOnly.setTextColor(context.getResources().getColorStateList(R.color.selector_influencer_post_lock));
            getTvFansOnly().setText(R.string.fans_only);
            getCheck().setImageResource(this.switchOnColor);
            return;
        }
        getLockIndicator().setImageResource(R.drawable.ic_influencer_post_lock);
        getLockIndicator().setTintColor(getDefaultColor());
        getTvFansOnly().setTextColor(getDefaultColor());
        getTvFansOnly().setText(R.string.fans_only);
        getCheck().setImageResource(this.switchOffColor);
    }
}
