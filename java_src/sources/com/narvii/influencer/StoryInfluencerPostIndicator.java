package com.narvii.influencer;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.narvii.lib.R;
import com.narvii.widget.TintButton;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;

/* JADX INFO: loaded from: classes10.dex */
public final class StoryInfluencerPostIndicator extends InfluencerPostIndicator {

    @NotNull
    private final m check$delegate;
    private int switchOffColor;
    private int switchOnColor;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StoryInfluencerPostIndicator(@NotNull Context context) {
        this(context, null, 0, 6, null);
        t.j(context, "context");
    }

    public final int getSwitchOffColor() {
        return this.switchOffColor;
    }

    public final int getSwitchOnColor() {
        return this.switchOnColor;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StoryInfluencerPostIndicator(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        t.j(context, "context");
    }

    private final ImageView getCheck() {
        return (ImageView) this.check$delegate.getValue();
    }

    @Override // com.narvii.influencer.InfluencerPostIndicator
    public void setIsFansOnly(boolean z6) {
        if (!z6) {
            getLockIndicator().setImageResource(R.drawable.ic_influencer_post_lock);
            getLockIndicator().setTintColor(getDefaultColor());
            getTvFansOnly().setTextColor(getDefaultColor());
            getTvFansOnly().setText(R.string.fans_only);
            getCheck().setImageResource(this.switchOffColor);
            return;
        }
        getLockIndicator().setImageResource(R.drawable.ic_influencer_post_lock);
        TintButton lockIndicator = getLockIndicator();
        int i10 = R.color.selector_influencer_post_lock;
        lockIndicator.setTintColorStateList(i10);
        getTvFansOnly().setTextColor(getContext().getResources().getColorStateList(i10));
        getTvFansOnly().setText(R.string.fans_only);
        getCheck().setImageResource(this.switchOnColor);
    }

    public final void setSwitchOffColor(int i10) {
        this.switchOffColor = i10;
        invalidate();
    }

    public final void setSwitchOnColor(int i10) {
        this.switchOnColor = i10;
        invalidate();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StoryInfluencerPostIndicator(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        t.j(context, "context");
        this.check$delegate = bind(this, R.id.check);
        this.switchOnColor = R.drawable.ic_switch_on;
        this.switchOffColor = R.drawable.ic_switch_off;
    }

    public /* synthetic */ StoryInfluencerPostIndicator(Context context, AttributeSet attributeSet, int i10, int i11, k kVar) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}
