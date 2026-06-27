package com.narvii.chat.video.layout;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.util.Utils;
import com.narvii.widget.VolumeIndicator;

/* loaded from: classes2.dex */
public class VideoAccountInfoLayout extends FrameLayout {
    public static final int POS_BOTTOM = 2;
    public static final int POS_MIDDLE = 1;
    public static final int POS_TOP = 0;
    View accountInfoLayout;
    private int curPos;
    View muteIndicator;
    View topOffset;
    TextView tvNickname;
    VolumeIndicator volumeIndicatorBottom;
    VolumeIndicator volumeIndicatorTop;

    public VideoAccountInfoLayout(Context context) {
        this(context, null);
    }

    public VideoAccountInfoLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        FrameLayout.inflate(context, R.layout.account_info_in_video, this);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.topOffset = findViewById(R.id.top_offset);
        this.volumeIndicatorTop = (VolumeIndicator) findViewById(R.id.volume_level_indicator_top);
        this.volumeIndicatorBottom = (VolumeIndicator) findViewById(R.id.volume_level_indicator_bottom);
        this.accountInfoLayout = findViewById(R.id.account_info);
        this.muteIndicator = findViewById(R.id.audio_muted);
        this.tvNickname = (TextView) findViewById(R.id.nickname);
    }

    public void setLayoutPosition(int i) {
        this.curPos = i;
        this.topOffset.setVisibility(i == 1 ? 0 : 8);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            ((FrameLayout.LayoutParams) layoutParams).gravity = this.curPos == 2 ? 81 : 49;
        }
        this.volumeIndicatorTop.setVisibility(i == 2 ? 0 : 8);
        this.volumeIndicatorBottom.setVisibility(i != 2 ? 8 : 0);
    }

    public void setStatus(boolean z, boolean z2, String str, int i, boolean z3, boolean z4) {
        int i2 = 8;
        this.muteIndicator.setVisibility((z && z2) ? 0 : 8);
        float f = i / 4.0f;
        this.volumeIndicatorTop.setValue(f, true);
        this.volumeIndicatorBottom.setValue(f, true);
        this.volumeIndicatorTop.setVisibility((z3 && this.curPos == 2) ? 0 : 8);
        VolumeIndicator volumeIndicator = this.volumeIndicatorBottom;
        if (z3 && this.curPos != 2) {
            i2 = 0;
        }
        volumeIndicator.setVisibility(i2);
        this.tvNickname.setText(str);
        CommunityConfigHelper communityConfigHelper = new CommunityConfigHelper(Utils.getNVContext(getContext()));
        if (z4 && communityConfigHelper.isPremiumFeatureEnabled()) {
            if (Utils.isRtl()) {
                this.tvNickname.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, getResources().getDrawable(R.drawable.ic_badge_membership), (Drawable) null);
                this.tvNickname.setCompoundDrawablePadding((int) Utils.dpToPx(getContext(), 8.0f));
                return;
            } else {
                this.tvNickname.setCompoundDrawablesWithIntrinsicBounds(getResources().getDrawable(R.drawable.ic_badge_membership), (Drawable) null, (Drawable) null, (Drawable) null);
                this.tvNickname.setCompoundDrawablePadding((int) Utils.dpToPx(getContext(), 8.0f));
                return;
            }
        }
        this.tvNickname.setCompoundDrawablePadding(0);
        this.tvNickname.setCompoundDrawables(null, null, null, null);
    }
}
