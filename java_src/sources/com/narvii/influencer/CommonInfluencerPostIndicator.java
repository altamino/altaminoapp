package com.narvii.influencer;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.widget.TextView;
import com.narvii.lib.R;
import com.narvii.widget.TintButton;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class CommonInfluencerPostIndicator extends InfluencerPostIndicator {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CommonInfluencerPostIndicator(@NotNull Context context) {
        this(context, null, 0, 6, null);
        t.j(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CommonInfluencerPostIndicator(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        t.j(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommonInfluencerPostIndicator(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        t.j(context, "context");
    }

    @Override // com.narvii.influencer.InfluencerPostIndicator
    public void setIsFansOnly(boolean z6) {
        int i10;
        int i11;
        int i12;
        int i13;
        TintButton lockIndicator = getLockIndicator();
        if (z6) {
            i10 = R.drawable.ic_influencer_post_lock;
        } else {
            i10 = R.drawable.ic_influencer_post_unlock;
        }
        lockIndicator.setImageResource(i10);
        TintButton lockIndicator2 = getLockIndicator();
        if (z6) {
            i11 = R.color.selector_influencer_post_lock;
        } else {
            i11 = R.color.selector_influencer_post_unlock;
        }
        lockIndicator2.setTintColorStateList(i11);
        TextView tvFansOnly = getTvFansOnly();
        Resources resources = getContext().getResources();
        if (z6) {
            i12 = R.color.selector_influencer_post_lock;
        } else {
            i12 = R.color.selector_influencer_post_unlock;
        }
        tvFansOnly.setTextColor(resources.getColorStateList(i12));
        TextView tvFansOnly2 = getTvFansOnly();
        if (z6) {
            i13 = R.string.fans_only;
        } else {
            i13 = R.string.free;
        }
        tvFansOnly2.setText(i13);
    }

    public /* synthetic */ CommonInfluencerPostIndicator(Context context, AttributeSet attributeSet, int i10, int i11, k kVar) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}
