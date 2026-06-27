package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;

/* loaded from: classes3.dex */
public class RtcIndicatorView extends FrameLayout {
    public View rtcIndicator;
    NVImageView rtcIndicatorIcon;
    TextView rtcIndicatorText;

    public RtcIndicatorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        FrameLayout.inflate(getContext(), R.layout.rtc_indicator, this);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.rtcIndicatorIcon = (NVImageView) findViewById(R.id.icon);
        this.rtcIndicatorText = (TextView) findViewById(R.id.indicator_text);
        this.rtcIndicator = findViewById(R.id.rtc_indicator_main);
    }

    public boolean isIndicatorShowing() {
        View view = this.rtcIndicator;
        return view != null && view.getVisibility() == 0;
    }

    public void updateView() {
        View view = this.rtcIndicator;
        if (view != null) {
            view.setVisibility(0);
            this.rtcIndicatorText.setText(R.string.live);
            this.rtcIndicatorIcon.setImageUrl("assets://video_white.webp");
            this.rtcIndicatorIcon.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.rtc_indicator_icon_anim));
        }
    }
}
