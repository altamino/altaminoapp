package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import com.google.android.exoplayer2.C;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ry, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class ViewOnClickListenerC0867Ry implements View.OnClickListener {
    private static byte[] A01;
    public final /* synthetic */ C0868Rz A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 82);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{7, 4, 9, 19, 18, 92, 4, 10, 7, 8, 13, 29, 18, 24, 14, 19, 21, 24, 82, 21, 18, 8, 25, 18, 8, 82, 29, 31, 8, 21, 19, 18, 82, 42, 53, 57, 43};
    }

    public ViewOnClickListenerC0867Ry(C0868Rz c0868Rz) {
        this.A00 = c0868Rz;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ViewOnClickListenerC0867Ry viewOnClickListenerC0867Ry = this;
        char c = !TextUtils.isEmpty(viewOnClickListenerC0867Ry.A00.A04) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    viewOnClickListenerC0867Ry = viewOnClickListenerC0867Ry;
                    if (!A00(0, 11, 52).equals(viewOnClickListenerC0867Ry.A00.A04)) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return;
                case 4:
                    viewOnClickListenerC0867Ry = viewOnClickListenerC0867Ry;
                    Intent intent = new Intent(A00(11, 26, 46), Uri.parse(viewOnClickListenerC0867Ry.A00.A04));
                    intent.addFlags(C.ENCODING_PCM_MU_LAW);
                    viewOnClickListenerC0867Ry.A00.getContext().startActivity(intent);
                    c = 3;
                    break;
            }
        }
    }
}
