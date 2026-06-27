package com.facebook.ads.redexgen.X;

import android.media.AudioManager;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.In, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0627In extends C9N {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 44);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-107, -87, -104, -99, -93};
    }

    public C0627In(C0626Im c0626Im) {
        this.A00 = c0626Im;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC01971t
    /* renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final void A03(K4 k4) {
        C0627In c0627In = this;
        char c = c0627In.A00.A00 != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c0627In = c0627In;
                    if (c0627In.A00.A00.get() != null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0627In = c0627In;
                    c0627In.A00.A00 = new WeakReference(new C0628Io(c0627In));
                    c = 4;
                    break;
                case 4:
                    C0627In c0627In2 = c0627In;
                    ((AudioManager) c0627In2.A00.getContext().getApplicationContext().getSystemService(A00(0, 5, 8))).requestAudioFocus((AudioManager.OnAudioFocusChangeListener) c0627In2.A00.A00.get(), 3, 1);
                    return;
            }
        }
    }
}
