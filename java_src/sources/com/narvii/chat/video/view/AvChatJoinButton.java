package com.narvii.chat.video.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes.dex */
public class AvChatJoinButton extends FrameLayout {
    RippleChildView disableHolder;
    private boolean isEnabled;
    ImageView joinIndicator;
    View joinLoading;
    RippleChildView rippleHolder;
    RippleView rippleView;

    public AvChatJoinButton(@NonNull Context context) {
        this(context, null);
    }

    public boolean isJoinButtonStatusEnabled() {
        return this.isEnabled;
    }

    public AvChatJoinButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isEnabled = true;
        View.inflate(context, R.layout.av_chat_join_button_layout, this);
    }

    public void changeJoinButtonEnableStatus(boolean z6) {
        this.isEnabled = z6;
        this.rippleView.setEnabled(z6);
        this.rippleHolder.setEnabled(z6);
        this.disableHolder.setVisibility(z6 ? 8 : 0);
    }

    public void updateIndicator(boolean z6) {
        int i10;
        ImageView imageView = this.joinIndicator;
        if (z6) {
            i10 = this.isEnabled ? R.drawable.ic_rtc_join_video : R.drawable.ic_rtc_join_video_disable;
        } else {
            i10 = R.drawable.ic_rtc_join_audio;
        }
        imageView.setImageResource(i10);
    }

    public void updateJoinStatus(boolean z6) {
        this.joinIndicator.setVisibility(z6 ? 8 : 0);
        this.joinLoading.setVisibility(z6 ? 0 : 8);
        setClickable(!z6);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.rippleView = (RippleView) findViewById(R.id.ripple_bg);
        this.rippleHolder = (RippleChildView) findViewById(R.id.ripple_holder);
        this.joinIndicator = (ImageView) findViewById(R.id.join_indicator);
        this.joinLoading = findViewById(R.id.join_loading);
        RippleChildView rippleChildView = (RippleChildView) findViewById(R.id.disable_bg);
        this.disableHolder = rippleChildView;
        rippleChildView.setAlpha(0.5f);
        this.disableHolder.setScaleY(1.1f);
        this.disableHolder.setScaleX(1.1f);
        this.disableHolder.setEnabled(false);
    }

    @Override // android.view.View
    public void setClickable(boolean z6) {
        super.setClickable(z6);
    }

    @Override // android.view.View
    public void setEnabled(boolean z6) {
        super.setEnabled(z6);
    }
}
