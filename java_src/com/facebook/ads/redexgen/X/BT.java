package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import android.view.MotionEvent;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class BT {
    private final Context A00;
    private final BM A01;
    private final EnumC0525Ep A02;

    public BT(Context context, BM bm, EnumC0525Ep enumC0525Ep) {
        this.A01 = bm;
        this.A00 = context;
        this.A02 = enumC0525Ep;
    }

    public final void A00(MotionEvent motionEvent) {
        int toolType;
        int toolType2;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        F8 f8 = this.A02 == EnumC0525Ep.A0F ? null : new F8(this.A00 == null ? "" : this.A00.getPackageName());
        switch (motionEvent.getActionMasked()) {
            case 0:
            case 1:
            case 3:
            case 5:
            case 6:
                int actionIndex = motionEvent.getActionIndex();
                int pointerId = motionEvent.getPointerId(actionIndex);
                int i = Build.VERSION.SDK_INT;
                if (i >= 14) {
                    toolType = motionEvent.getToolType(actionIndex);
                } else {
                    toolType = -1;
                }
                this.A01.A02(new FB(jElapsedRealtime, f8, new BY(motionEvent.getActionMasked(), pointerId, toolType, new float[]{motionEvent.getRawX(), motionEvent.getRawY()}, motionEvent.getSize(actionIndex), Math.min(motionEvent.getPressure(actionIndex), 1.0f), motionEvent.getOrientation(actionIndex))), BL.A0D);
                break;
            case 2:
            case 4:
                for (int i2 = 0; i2 < motionEvent.getPointerCount(); i2++) {
                    int pointerId2 = motionEvent.getPointerId(i2);
                    int i3 = Build.VERSION.SDK_INT;
                    if (i3 >= 14) {
                        toolType2 = motionEvent.getToolType(i2);
                    } else {
                        toolType2 = -1;
                    }
                    this.A01.A02(new FB(jElapsedRealtime, f8, new BY(motionEvent.getActionMasked(), pointerId2, toolType2, new float[]{motionEvent.getRawX(), motionEvent.getRawY()}, motionEvent.getSize(i2), Math.min(motionEvent.getPressure(i2), 1.0f), motionEvent.getOrientation(i2))), BL.A0D);
                }
                break;
        }
    }
}
