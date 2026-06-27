package com.facebook.ads.redexgen.X;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import java.util.Arrays;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@TargetApi(19)
/* renamed from: com.facebook.ads.redexgen.X.Rz, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0868Rz extends LinearLayout {
    private static byte[] A05;
    private static final int A06;
    private static final int A07;
    private static final Uri A08;
    private static final View.OnTouchListener A09;
    private ImageView A00;
    private ImageView A01;
    private PM A02;
    private S5 A03;
    private String A04;

    private static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 88);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A05 = new byte[]{126, 81, 82, 78, 88, 34, 33, 44, 54, 55, 121, 33, 47, 34, 45, 40, 118, 122, 120, 59, 116, 123, 113, 103, 122, 124, 113, 59, 118, 125, 103, 122, 120, 112, 64, 92, 92, 88, 18, 7, 7, 95, 95, 95, 6, 78, 73, 75, 77, 74, 71, 71, 67, 6, 75, 71, 69, 71, 120, 109, 102, 40, 102, 105, 124, 97, 126, 109, 40, 106, 122, 103, 127, 123, 109, 122, 0, 15, 5, 19, 14, 8, 5, 79, 8, 15, 21, 4, 15, 21, 79, 0, 2, 21, 8, 14, 15, 79, 55, 40, 36, 54};
    }

    static {
        A04();
        A06 = Color.rgb(224, 224, 224);
        A08 = Uri.parse(A02(34, 23, 112));
        A09 = new ViewOnTouchListenerC0865Rw();
        A07 = Color.argb(34, 0, 0, 0);
    }

    public C0868Rz(Context context) {
        super(context);
        A05(context);
    }

    private void A05(Context context) {
        float f = getResources().getDisplayMetrics().density;
        int i = (int) (50.0f * f);
        int i2 = (int) (4.0f * f);
        OY.A0P(this, -1);
        setGravity(16);
        this.A00 = new ImageView(context);
        this.A00.setContentDescription(A02(0, 5, 101));
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(i, i);
        this.A00.setScaleType(ImageView.ScaleType.CENTER);
        this.A00.setImageBitmap(C0769Oe.A01(EnumC0768Od.BROWSER_CLOSE));
        this.A00.setOnTouchListener(A09);
        this.A00.setOnClickListener(new ViewOnClickListenerC0866Rx(this));
        addView(this.A00, layoutParams);
        this.A03 = new S5(context);
        LinearLayout.LayoutParams titleViewParams = new LinearLayout.LayoutParams(0, -2);
        titleViewParams.weight = 1.0f;
        this.A03.setPadding(0, i2, 0, i2);
        addView(this.A03, titleViewParams);
        this.A01 = new ImageView(context);
        ViewGroup.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(i, i);
        this.A01.setContentDescription(A02(57, 19, 80));
        this.A01.setScaleType(ImageView.ScaleType.CENTER);
        this.A01.setOnTouchListener(A09);
        this.A01.setOnClickListener(new ViewOnClickListenerC0867Ry(this));
        addView(this.A01, layoutParams2);
        setupDefaultNativeBrowser(context);
    }

    public void setListener(PM pm) {
        this.A02 = pm;
    }

    public void setTitle(String str) {
        this.A03.setTitle(str);
    }

    public void setUrl(String str) {
        C0868Rz c0868Rz = this;
        c0868Rz.A04 = str;
        char c = !TextUtils.isEmpty(str) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    str = str;
                    if (!A02(5, 11, 27).equals(str)) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0868Rz = c0868Rz;
                    c0868Rz.A03.setSubtitle(null);
                    c0868Rz.A01.setEnabled(false);
                    c0868Rz.A01.setColorFilter(new PorterDuffColorFilter(A06, PorterDuff.Mode.SRC_IN));
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    c0868Rz = c0868Rz;
                    str = str;
                    c0868Rz.A03.setSubtitle(str);
                    c0868Rz.A01.setEnabled(true);
                    c0868Rz.A01.setColorFilter((ColorFilter) null);
                    c = 4;
                    break;
            }
        }
    }

    private void setupDefaultNativeBrowser(Context context) {
        C0868Rz c0868Rz = this;
        Bitmap bitmapA01 = null;
        List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(new Intent(A02(76, 26, 57), A08), 65536);
        char c = listQueryIntentActivities.size() == 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0868Rz = c0868Rz;
                    c0868Rz.A01.setVisibility(8);
                    bitmapA01 = null;
                    c = 3;
                    break;
                case 3:
                    c0868Rz.A01.setImageBitmap(bitmapA01);
                    return;
                case 4:
                    listQueryIntentActivities = listQueryIntentActivities;
                    if (listQueryIntentActivities.size() != 1) {
                        c = 7;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    listQueryIntentActivities = listQueryIntentActivities;
                    if (!A02(16, 18, 77).equals(listQueryIntentActivities.get(0).activityInfo.packageName)) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    bitmapA01 = C0769Oe.A01(EnumC0768Od.BROWSER_LAUNCH_CHROME);
                    c = 3;
                    break;
                case 7:
                    bitmapA01 = C0769Oe.A01(EnumC0768Od.BROWSER_LAUNCH_NATIVE);
                    c = 3;
                    break;
            }
        }
    }
}
