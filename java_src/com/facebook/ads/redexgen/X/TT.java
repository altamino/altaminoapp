package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.widget.RelativeLayout;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public abstract class TT extends AbstractC0888St {
    private RelativeLayout A00;
    private R5 A01;
    private InterfaceC0895Ta A02;
    private UA A03;
    private U2 A04;
    private boolean A05;
    private boolean A06;
    private boolean A07;
    private final Paint A08;
    private final Path A09;
    private final RectF A0A;
    private final C9T A0B;
    private final C9P A0C;
    private final C9N A0D;
    private final C9L A0E;
    private final C9V A0F;
    private final String A0G;
    private static final int A0I = (int) (1.0f * OY.A01);
    private static final int A0J = (int) (4.0f * OY.A01);
    private static final int A0H = (int) (6.0f * OY.A01);

    public abstract void A0c(Context context);

    public TT(T0 t0, C02282y c02282y, boolean z, String str, UA ua) {
        super(t0, c02282y, z);
        this.A09 = new Path();
        this.A0A = new RectF();
        this.A0F = new TV(this);
        this.A0B = new TW(this);
        this.A0D = new TX(this);
        this.A0C = new TY(this);
        this.A0E = new TZ(this);
        this.A03 = ua;
        this.A0G = str;
        setGravity(17);
        setPadding(A0I, 0, A0I, A0I);
        OY.A0P(this, 0);
        setUpView(getContext());
        this.A08 = new Paint();
        this.A08.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.A08.setStyle(Paint.Style.FILL);
        this.A08.setAlpha(16);
        this.A08.setAntiAlias(true);
        if (Build.VERSION.SDK_INT < 18) {
            setLayerType(1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A02() {
        TT tt = this;
        char c = tt.A02 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    tt = tt;
                    if (!tt.A0f()) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    tt = tt;
                    if (!tt.A07) {
                        c = 5;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 5:
                    tt = tt;
                    if (!tt.A0f()) {
                        c = 6;
                        break;
                    } else {
                        c = 2;
                        break;
                    }
                case 6:
                    tt = tt;
                    if (!tt.A06) {
                        c = 2;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    tt = tt;
                    tt.A02.A4u();
                    c = 2;
                    break;
            }
        }
    }

    private void A03(View view) {
        view.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        OY.A0N(view);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0888St
    public boolean A09() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0888St
    public final boolean A0Y() {
        return false;
    }

    public final void A0Z() {
        if (A0f()) {
            this.A04.A01();
        }
    }

    public final void A0a() {
        if (A0f()) {
            A0b();
            this.A04.A05(EnumC0697Lh.A03);
        }
    }

    public final void A0b() {
        TT tt = this;
        float volume = tt.A03.A0Y().getVolume();
        char c = tt.A0f() ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    tt = tt;
                    if (volume == tt.A04.getVolume()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    tt = tt;
                    tt.A04.setVolume(volume);
                    c = 4;
                    break;
                case 4:
                    return;
            }
        }
    }

    public final void A0d(Map<String, String> map) {
        this.A04.A02();
        if (A0f()) {
            this.A04.A04(getAdEventManager(), this.A0G, map);
        }
    }

    public final boolean A0e() {
        TT tt = this;
        boolean z = false;
        char c = tt.A0f() ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    tt = tt;
                    if (!tt.A04.A06()) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = true;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }

    public final boolean A0f() {
        return this.A05;
    }

    public final RelativeLayout getMediaContainer() {
        return this.A00;
    }

    public final U2 getVideoView() {
        return this.A04;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        this.A09.reset();
        this.A0A.set(0.0f, 0.0f, getWidth(), getHeight());
        this.A09.addRoundRect(this.A0A, A0H, A0H, Path.Direction.CW);
        canvas.drawPath(this.A09, this.A08);
        this.A0A.set(A0I, 0.0f, getWidth() - A0I, getHeight() - A0I);
        this.A09.addRoundRect(this.A0A, A0J, A0J, Path.Direction.CW);
        canvas.clipPath(this.A09);
        super.onDraw(canvas);
    }

    public void setAdTitleAndDescription(String str, String str2) {
        getTitleDescContainer().A00(str, str2, null, true, false);
    }

    public void setCTAInfo(C02292z c02292z, Map<String, String> map) {
        getCtaButton().setCta(c02292z, this.A0G, map);
    }

    public void setImageUrl(String str) {
        this.A01.setVisibility(0);
        this.A04.setVisibility(8);
        new SM(this.A01).A04().A06(new C0896Tb(this, null)).A07(str);
    }

    public void setIsVideo(boolean z) {
        this.A05 = z;
    }

    public void setOnAssetsLoadedListener(InterfaceC0895Ta interfaceC0895Ta) {
        this.A02 = interfaceC0895Ta;
    }

    public void setUpImageView(Context context) {
        this.A01 = new R5(context);
        A03(this.A01);
    }

    public void setUpMediaContainer(Context context) {
        this.A00 = new RelativeLayout(context);
        A03(this.A00);
    }

    public void setUpVideoView(Context context) {
        this.A04 = new U2(context, new KX(this.A0G, getAdEventManager()));
        A03(this.A04);
    }

    private void setUpView(Context context) {
        setUpImageView(context);
        setUpVideoView(context);
        setUpMediaContainer(context);
        this.A00.addView(this.A01);
        this.A00.addView(this.A04);
        A0c(context);
    }

    public void setVideoPlaceholderUrl(String str) {
        this.A04.setPlaceholderUrl(str);
    }

    public void setVideoUrl(String str) {
        this.A01.setVisibility(8);
        this.A04.setVisibility(0);
        this.A04.setVideoURI(str);
        this.A04.A03(this.A0F);
        this.A04.A03(this.A0B);
        this.A04.A03(this.A0D);
        this.A04.A03(this.A0C);
        this.A04.A03(this.A0E);
    }
}
