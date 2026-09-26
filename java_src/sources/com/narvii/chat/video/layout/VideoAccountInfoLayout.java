package com.narvii.chat.video.layout;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.util.Utils;
import com.narvii.widget.VolumeIndicator;

/* JADX INFO: loaded from: classes8.dex */
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
        View.inflate(context, R.layout.account_info_in_video, this);
    }

    public void setLayoutPosition(int i10) {
        this.curPos = i10;
        this.topOffset.setVisibility(i10 == 1 ? 0 : 8);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            ((FrameLayout.LayoutParams) layoutParams).gravity = this.curPos == 2 ? 81 : 49;
        }
        this.volumeIndicatorTop.setVisibility(i10 == 2 ? 0 : 8);
        this.volumeIndicatorBottom.setVisibility(i10 == 2 ? 0 : 8);
    }

    public void setStatus(boolean z6, boolean z10, String str, int i10, boolean z11, boolean z12) {
        int i11 = 8;
        this.muteIndicator.setVisibility((z6 && z10) ? 0 : 8);
        float f = i10 / 4.0f;
        this.volumeIndicatorTop.setValue(f, true);
        this.volumeIndicatorBottom.setValue(f, true);
        this.volumeIndicatorTop.setVisibility((z11 && this.curPos == 2) ? 0 : 8);
        VolumeIndicator volumeIndicator = this.volumeIndicatorBottom;
        if (z11 && this.curPos != 2) {
            i11 = 0;
        }
        volumeIndicator.setVisibility(i11);
        this.tvNickname.setText(str);
        CommunityConfigHelper communityConfigHelper = new CommunityConfigHelper(Utils.getNVContext(getContext()));
        if (!z12 || !communityConfigHelper.isPremiumFeatureEnabled()) {
            this.tvNickname.setCompoundDrawablePadding(0);
            this.tvNickname.setCompoundDrawables(null, null, null, null);
        } else if (Utils.isRtl()) {
            this.tvNickname.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, getResources().getDrawable(R.drawable.ic_badge_membership), (Drawable) null);
            this.tvNickname.setCompoundDrawablePadding((int) Utils.dpToPx(getContext(), 8.0f));
        } else {
            this.tvNickname.setCompoundDrawablesWithIntrinsicBounds(getResources().getDrawable(R.drawable.ic_badge_membership), (Drawable) null, (Drawable) null, (Drawable) null);
            this.tvNickname.setCompoundDrawablePadding((int) Utils.dpToPx(getContext(), 8.0f));
        }
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
}
