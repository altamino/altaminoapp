package com.narvii.chat.video.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.narvii.amino.mastes.R;

/* loaded from: classes2.dex */
public class AvChatJoinButton extends FrameLayout {
    RippleChildView disableHolder;
    private boolean isEnabled;
    ImageView joinIndicator;
    View joinLoading;
    RippleChildView rippleHolder;
    RippleView rippleView;

    public AvChatJoinButton(Context context) {
        this(context, null);
    }

    public AvChatJoinButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isEnabled = true;
        FrameLayout.inflate(context, R.layout.av_chat_join_button_layout, this);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.rippleView = (RippleView) findViewById(R.id.ripple_bg);
        this.rippleHolder = (RippleChildView) findViewById(R.id.ripple_holder);
        this.joinIndicator = (ImageView) findViewById(R.id.join_indicator);
        this.joinLoading = findViewById(R.id.join_loading);
        this.disableHolder = (RippleChildView) findViewById(R.id.disable_bg);
        this.disableHolder.setAlpha(0.5f);
        this.disableHolder.setScaleY(1.1f);
        this.disableHolder.setScaleX(1.1f);
        this.disableHolder.setEnabled(false);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
    }

    public void changeJoinButtonEnableStatus(boolean z) {
        this.isEnabled = z;
        this.rippleView.setEnabled(z);
        this.rippleHolder.setEnabled(z);
        this.disableHolder.setVisibility(z ? 8 : 0);
    }

    public boolean isJoinButtonStatusEnabled() {
        return this.isEnabled;
    }

    public void updateIndicator(boolean z) {
        this.joinIndicator.setImageResource(z ? this.isEnabled ? R.drawable.ic_rtc_join_video : R.drawable.ic_rtc_join_video_disable : R.drawable.ic_rtc_join_audio);
    }

    public void updateJoinStatus(boolean z) {
        this.joinIndicator.setVisibility(z ? 8 : 0);
        this.joinLoading.setVisibility(z ? 0 : 8);
        setClickable(!z);
    }

    @Override // android.view.View
    public void setClickable(boolean z) {
        super.setClickable(z);
    }
}
