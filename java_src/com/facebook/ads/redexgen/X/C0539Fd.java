package com.facebook.ads.redexgen.X;

import android.view.MotionEvent;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Fd, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0539Fd {
    private static byte[] A0D;
    private final AtomicReference<C0538Fc> A0C = new AtomicReference<>();
    private long A0A = 0;
    private long A09 = 0;
    private int A07 = -1;
    private int A06 = 0;
    private float A02 = 0.0f;
    private float A03 = 0.0f;
    private float A04 = 0.0f;
    private float A05 = 0.0f;
    private float A00 = 0.0f;
    private float A01 = 0.0f;
    private int A08 = 0;
    private boolean A0B = false;

    static {
        A02();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 23);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A0D = new byte[]{101, 78, 67, 69, 77, 86, 73, 79, 72, 82, 6, 19};
    }

    private void A01() {
        this.A0B = false;
        this.A06 = 0;
        this.A02 = 0.0f;
        this.A03 = 1.0f;
    }

    private void A03(float f) {
        this.A02 = Math.max(f, this.A02);
        this.A03 = Math.min(f, this.A02);
    }

    public final JSONObject A04() {
        C0539Fd c0539Fd = this;
        JSONObject jSONObject = null;
        char c = c0539Fd.A0C.get() == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    jSONObject = new JSONObject();
                    c = 3;
                    break;
                case 3:
                    return jSONObject;
                case 4:
                    c0539Fd = c0539Fd;
                    jSONObject = c0539Fd.A0C.get().A02();
                    c = 3;
                    break;
            }
        }
    }

    public final boolean A05(MotionEvent motionEvent) {
        MotionEvent motionEvent2 = motionEvent;
        C0539Fd c0539Fd = this;
        boolean z = false;
        int actionMasked = 0;
        int currentAction = motionEvent2 == null ? 2 : 4;
        while (true) {
            switch (currentAction) {
                case 2:
                    z = false;
                    currentAction = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    motionEvent2 = motionEvent2;
                    actionMasked = motionEvent2.getActionMasked();
                    if (actionMasked != 0) {
                        currentAction = 6;
                        break;
                    } else {
                        currentAction = 5;
                        break;
                    }
                case 5:
                    c0539Fd = c0539Fd;
                    motionEvent2 = motionEvent2;
                    c0539Fd.A01();
                    c0539Fd.A0B = true;
                    c0539Fd.A04 = motionEvent2.getRawX();
                    c0539Fd.A05 = motionEvent2.getRawY();
                    c0539Fd.A0A = motionEvent2.getDownTime();
                    int currentAction2 = motionEvent2.getDeviceId();
                    c0539Fd.A07 = currentAction2;
                    currentAction = 6;
                    break;
                case 6:
                    c0539Fd = c0539Fd;
                    if (!c0539Fd.A0B) {
                        currentAction = 7;
                        break;
                    } else {
                        currentAction = 8;
                        break;
                    }
                case 7:
                    z = false;
                    currentAction = 3;
                    break;
                case 8:
                    c0539Fd = c0539Fd;
                    motionEvent2 = motionEvent2;
                    c0539Fd.A06 |= actionMasked;
                    c0539Fd.A03(motionEvent2.getSize());
                    if (actionMasked == 1) {
                        currentAction = 10;
                        break;
                    } else {
                        currentAction = 9;
                        break;
                    }
                case 9:
                    z = false;
                    currentAction = 3;
                    break;
                case 10:
                    c0539Fd = c0539Fd;
                    motionEvent2 = motionEvent2;
                    int currentAction3 = c0539Fd.A08;
                    c0539Fd.A08 = currentAction3 + 1;
                    c0539Fd.A00 = motionEvent2.getRawX();
                    c0539Fd.A01 = motionEvent2.getRawY();
                    c0539Fd.A09 = motionEvent2.getEventTime();
                    c0539Fd.A0C.set(new C0538Fc(c0539Fd.A07, c0539Fd.A06, c0539Fd.A09 - c0539Fd.A0A, c0539Fd.A02, c0539Fd.A03, c0539Fd.A08, c0539Fd.A00 - c0539Fd.A04, c0539Fd.A01 - c0539Fd.A05, motionEvent2.getEventTime()));
                    c0539Fd.A01();
                    System.out.println(A00(0, 12, 49));
                    z = true;
                    currentAction = 3;
                    break;
            }
        }
    }
}
