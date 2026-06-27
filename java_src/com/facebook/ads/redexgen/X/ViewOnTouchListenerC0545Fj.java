package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Fj, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class ViewOnTouchListenerC0545Fj extends AbstractC0692Lc implements View.OnTouchListener {
    private final C9T A00;
    private final C9P A01;
    private final C9N A02;
    private final C9L A03;
    private final BZ A04;

    public ViewOnTouchListenerC0545Fj(Context context) {
        this(context, null);
    }

    private ViewOnTouchListenerC0545Fj(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private ViewOnTouchListenerC0545Fj(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.A03 = new HV(this);
        this.A01 = new C0551Fp(this);
        this.A02 = new C0548Fm(this);
        this.A00 = new C0547Fl(this);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.A04 = new BZ(context);
        this.A04.setChecked(true);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (displayMetrics.density * 25.0f), (int) (displayMetrics.density * 25.0f));
        setVisibility(8);
        addView(this.A04, layoutParams);
        setClickable(true);
        setFocusable(true);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0692Lc
    public final void A09() {
        super.A09();
        this.A04.setOnTouchListener(this);
        setOnTouchListener(this);
        if (getVideoView() != null) {
            getVideoView().getEventBus().A03(this.A03, this.A00, this.A01, this.A02);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0692Lc
    public final void A0A() {
        if (getVideoView() != null) {
            getVideoView().getEventBus().A04(this.A02, this.A01, this.A00, this.A03);
        }
        setOnTouchListener(null);
        this.A04.setOnTouchListener(null);
        super.A0A();
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        ViewOnTouchListenerC0545Fj viewOnTouchListenerC0545Fj = this;
        QL videoView = null;
        boolean z = false;
        char c = motionEvent.getAction() != 1 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return z;
                case 3:
                    viewOnTouchListenerC0545Fj = viewOnTouchListenerC0545Fj;
                    videoView = viewOnTouchListenerC0545Fj.getVideoView();
                    if (videoView == null) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    videoView = videoView;
                    if (videoView.getState() == EnumC03216q.A07) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    videoView = videoView;
                    if (videoView.getState() == EnumC03216q.A05) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    videoView = videoView;
                    if (videoView.getState() != EnumC03216q.A06) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    videoView = videoView;
                    videoView.A0P(EnumC0697Lh.A05);
                    z = true;
                    c = 2;
                    break;
                case '\b':
                    videoView = videoView;
                    if (videoView.getState() != EnumC03216q.A0A) {
                        c = 2;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    videoView = videoView;
                    videoView.A0S(true);
                    c = 2;
                    break;
            }
        }
    }
}
