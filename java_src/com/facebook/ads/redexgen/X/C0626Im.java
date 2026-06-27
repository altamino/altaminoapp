package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.media.AudioManager;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Im, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0626Im extends AbstractC0692Lc {
    private static byte[] A04;
    private WeakReference<AudioManager.OnAudioFocusChangeListener> A00;
    private final C9T A01;
    private final C9P A02;
    private final C9N A03;

    static {
        A05();
    }

    private static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        int i4 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    bArrCopyOfRange = bArrCopyOfRange;
                    if (i4 >= bArrCopyOfRange.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArrCopyOfRange = bArrCopyOfRange;
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 87);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A05() {
        A04 = new byte[]{42, 62, 45, 50, 56};
    }

    public C0626Im(Context context) {
        super(context);
        this.A00 = null;
        this.A01 = new C0631Ir(this);
        this.A02 = new C0630Iq(this);
        this.A03 = new C0627In(this);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0692Lc
    public final void A09() {
        super.A09();
        if (getVideoView() != null) {
            getVideoView().getEventBus().A03(this.A03, this.A01, this.A02);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0692Lc
    public final void A0A() {
        if (getVideoView() != null) {
            getVideoView().getEventBus().A04(this.A02, this.A01, this.A03);
        }
        super.A0A();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        C0626Im c0626Im = this;
        AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener = null;
        AudioManager audioManager = (AudioManager) c0626Im.getContext().getApplicationContext().getSystemService(A02(0, 5, 114));
        char c = c0626Im.A00 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    onAudioFocusChangeListener = null;
                    c = 3;
                    break;
                case 3:
                    audioManager.abandonAudioFocus(onAudioFocusChangeListener);
                    super.onDetachedFromWindow();
                    return;
                case 4:
                    c0626Im = c0626Im;
                    onAudioFocusChangeListener = c0626Im.A00.get();
                    c = 3;
                    break;
            }
        }
    }
}
