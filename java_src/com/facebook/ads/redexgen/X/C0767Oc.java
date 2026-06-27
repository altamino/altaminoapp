package com.facebook.ads.redexgen.X;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Build;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RSRuntimeException;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.support.annotation.Nullable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Oc, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0767Oc {
    private C0767Oc() {
    }

    @TargetApi(18)
    private static Bitmap A00(Context context, Bitmap bitmap, int i) throws RSRuntimeException {
        RenderScript rs = null;
        Allocation allocationCreateFromBitmap = null;
        Allocation allocationCreateTyped = null;
        ScriptIntrinsicBlur scriptIntrinsicBlurCreate = null;
        try {
            rs = RenderScript.create(context);
            rs.setMessageHandler(new RenderScript.RSMessageHandler());
            allocationCreateFromBitmap = Allocation.createFromBitmap(rs, bitmap, Allocation.MipmapControl.MIPMAP_NONE, 1);
            allocationCreateTyped = Allocation.createTyped(rs, allocationCreateFromBitmap.getType());
            scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(rs, Element.U8_4(rs));
            scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
            scriptIntrinsicBlurCreate.setRadius(i);
            scriptIntrinsicBlurCreate.forEach(allocationCreateTyped);
            allocationCreateTyped.copyTo(bitmap);
            return bitmap;
        } finally {
            if (rs != null) {
                rs.destroy();
            }
            if (allocationCreateFromBitmap != null) {
                allocationCreateFromBitmap.destroy();
            }
            if (allocationCreateTyped != null) {
                allocationCreateTyped.destroy();
            }
            if (scriptIntrinsicBlurCreate != null) {
                scriptIntrinsicBlurCreate.destroy();
            }
        }
    }

    @Nullable
    public static Bitmap A01(Context context, Bitmap bitmap, int i, int i2) throws InterruptedException {
        Bitmap scaled = null;
        Bitmap bitmapCreateBitmap = null;
        int width = bitmap.getWidth() / i2;
        int height = bitmap.getHeight() / i2;
        int height2 = width != 0 ? 2 : 4;
        while (true) {
            switch (height2) {
                case 2:
                    if (height == 0) {
                        height2 = 4;
                        break;
                    } else {
                        height2 = 3;
                        break;
                    }
                case 3:
                    if (Build.VERSION.SDK_INT >= 18) {
                        height2 = 6;
                        break;
                    } else {
                        height2 = 4;
                        break;
                    }
                case 4:
                    scaled = null;
                    height2 = 5;
                    break;
                case 5:
                    return scaled;
                case 6:
                    bitmap = bitmap;
                    bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(bitmapCreateBitmap);
                    canvas.scale(1.0f / i2, 1.0f / i2);
                    Paint paint = new Paint();
                    paint.setFlags(3);
                    paint.setColorFilter(new PorterDuffColorFilter(0, PorterDuff.Mode.SRC_ATOP));
                    canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
                    height2 = 7;
                    break;
                case 7:
                    try {
                        context = context;
                        bitmapCreateBitmap = bitmapCreateBitmap;
                        scaled = A00(context, bitmapCreateBitmap, i);
                        if (i2 == 1) {
                            height2 = 5;
                            break;
                        } else {
                            height2 = 9;
                            break;
                        }
                    } catch (RSRuntimeException unused) {
                        scaled = new C0771Og().A02(bitmapCreateBitmap, i);
                        height2 = 5;
                        break;
                    }
                case 9:
                    bitmap = bitmap;
                    Bitmap scaled2 = scaled;
                    Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(scaled2, bitmap.getWidth(), bitmap.getHeight(), true);
                    scaled2.recycle();
                    scaled = bitmapCreateScaledBitmap;
                    height2 = 5;
                    break;
            }
        }
    }
}
