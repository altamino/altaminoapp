package com.narvii.checkin;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;

/* loaded from: classes2.dex */
public class CheckInPopUp extends FrameLayout {
    public FrameLayout checkInPopUpLayout;
    public ImageView checkStorke;
    public ImageView rpBG;
    public TextView rpView;
    public TextView text;
    public TextView title;

    public CheckInPopUp(Context context) {
        this(context, null);
    }

    public CheckInPopUp(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CheckInPopUp(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        FrameLayout.inflate(context, R.layout.check_in_pop_up, this);
        this.rpView = (TextView) findViewById(R.id.rp);
        this.title = (TextView) findViewById(R.id.title);
        this.text = (TextView) findViewById(R.id.text);
        this.rpBG = (ImageView) findViewById(R.id.rp_bg);
        this.checkStorke = (ImageView) findViewById(R.id.rp_check_stroke);
        this.checkInPopUpLayout = (FrameLayout) findViewById(R.id.check_in_pop_up);
    }

    public void setCenterInScreen(boolean z) {
        if (z) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.checkInPopUpLayout.getLayoutParams();
            layoutParams.gravity = 17;
            layoutParams.topMargin = 0;
            layoutParams.bottomMargin = 0;
            this.checkInPopUpLayout.setLayoutParams(layoutParams);
        }
    }
}
