package com.facebook.ads.redexgen.X;

import android.media.AudioManager;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ir, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0631Ir extends C9T {
    private static byte[] A01;
    public final /* synthetic */ C0626Im A00;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 47);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{107, 127, 110, 99, 101};
    }

    public C0631Ir(C0626Im c0626Im) {
        this.A00 = c0626Im;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC01971t
    /* renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final void A03(LN ln) {
        C0631Ir c0631Ir = this;
        AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener = null;
        AudioManager audioManager = (AudioManager) c0631Ir.A00.getContext().getApplicationContext().getSystemService(A00(0, 5, 37));
        char c = c0631Ir.A00.A00 == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    onAudioFocusChangeListener = null;
                    c = 3;
                    break;
                case 3:
                    audioManager.abandonAudioFocus(onAudioFocusChangeListener);
                    return;
                case 4:
                    c0631Ir = c0631Ir;
                    onAudioFocusChangeListener = (AudioManager.OnAudioFocusChangeListener) c0631Ir.A00.A00.get();
                    c = 3;
                    break;
            }
        }
    }
}
