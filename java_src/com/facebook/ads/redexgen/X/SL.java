package com.facebook.ads.redexgen.X;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.support.annotation.IntRange;
import android.support.annotation.Nullable;
import android.support.v4.media.MediaDescriptionCompat;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class SL extends Drawable {
    private static byte[] A0G;
    private int A00;
    private int A01;
    private int A02;
    private long A03;
    private String A04;
    private String A05;

    @Nullable
    private String A06;

    @Nullable
    private WeakReference<C6K> A07;
    private boolean A08;
    private final Paint A09 = new Paint();
    private final Paint A0A = new Paint();
    private final Path A0C = new Path();
    private final TextPaint A0E = new TextPaint();
    private final Paint A0B = new Paint();
    private final Handler A0D = new Handler();
    private final Runnable A0F = new SK(this);

    static {
        A04();
    }

    private static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0G, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 107);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A0G = new byte[]{72, 119, 123, 105, 127, 124, 119, 114, 119, 106, 103, 62, 93, 118, 123, 125, 117, 123, 108, 62, 112, 113, 106, 62, 109, 123, 106, 107, 56, 121, 127, 119, 24, 3, 27, 3, 29, 12, 55, 50, 55, 54, 46, 55, 20, 54, 37, 51, 119, 34, 62, 9, 6, 77, 109, 74, 77, 80, 77, 69, 72, 77, 94, 77, 74, 67, 10, 10, 10, 125, 50, 59, 125, 41, 37, 73, 106, 100, 97, 96, 97, 37, 112, 61, 3, 95, 96, 108, 126, 51, 41, 35, 107};
    }

    public SL() {
        this.A09.setColor(Color.argb(127, 36, 36, 36));
        this.A09.setStyle(Paint.Style.FILL_AND_STROKE);
        this.A0A.setAntiAlias(true);
        this.A0A.setColor(Color.argb(191, 0, 255, 0));
        this.A0A.setStrokeWidth(20.0f);
        this.A0A.setStyle(Paint.Style.STROKE);
        this.A0E.setAntiAlias(true);
        this.A0E.setColor(-1);
        this.A0E.setStyle(Paint.Style.FILL_AND_STROKE);
        this.A0E.setTextSize(30.0f);
        this.A0B.setColor(Color.argb(212, 0, 0, 0));
        this.A0B.setStyle(Paint.Style.FILL_AND_STROKE);
        A07();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A03() {
        SL sl = this;
        int i = 0;
        int length = 0;
        int i2 = 0;
        String[] strArrSplit = null;
        int i3 = 0;
        int seconds = 0;
        float fMax = 0.0f;
        StringBuilder sb = new StringBuilder();
        int hours = sl.A00 <= 0 ? 2 : 21;
        while (true) {
            switch (hours) {
                case 2:
                    sl = sl;
                    String line = sl.A06;
                    if (!TextUtils.isEmpty(line)) {
                        hours = 3;
                        break;
                    } else {
                        hours = 4;
                        break;
                    }
                case 3:
                    sl = sl;
                    sb = sb;
                    String line2 = sl.A06;
                    sb.append(line2);
                    String line3 = A02(49, 1, 67);
                    sb.append(line3);
                    hours = 4;
                    break;
                case 4:
                    sl = sl;
                    String line4 = sl.A04;
                    if (!TextUtils.isEmpty(line4)) {
                        hours = 5;
                        break;
                    } else {
                        hours = 6;
                        break;
                    }
                case 5:
                    sl = sl;
                    sb = sb;
                    String line5 = sl.A04;
                    sb.append(line5);
                    String line6 = A02(49, 1, 67);
                    sb.append(line6);
                    hours = 6;
                    break;
                case 6:
                    sl = sl;
                    sb = sb;
                    String line7 = A02(50, 4, 6);
                    sb.append(line7);
                    String line8 = A02(32, 5, 70);
                    sb.append(line8);
                    String line9 = A02(73, 9, 110);
                    sb.append(line9);
                    if (sl.A03 <= 0) {
                        hours = 20;
                        break;
                    } else {
                        hours = 7;
                        break;
                    }
                case 7:
                    sl = sl;
                    long jMax = Math.max(0L, System.currentTimeMillis() - sl.A03);
                    i3 = (int) (jMax / 3600000);
                    long j = jMax % 3600000;
                    i2 = (int) (j / DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS);
                    i = (int) ((j % DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS) / 1000);
                    if (i3 <= 0) {
                        hours = 9;
                        break;
                    } else {
                        hours = 8;
                        break;
                    }
                case 8:
                    sb = sb;
                    sb.append(i3);
                    String line10 = A02(91, 2, 32);
                    sb.append(line10);
                    hours = 9;
                    break;
                case 9:
                    if (i3 > 0) {
                        hours = 11;
                        break;
                    } else {
                        hours = 10;
                        break;
                    }
                case 10:
                    if (i2 <= 0) {
                        hours = 12;
                        break;
                    } else {
                        hours = 11;
                        break;
                    }
                case 11:
                    sb = sb;
                    sb.append(i2);
                    sb.append(A02(82, 2, 118));
                    hours = 12;
                    break;
                case 12:
                    sb = sb;
                    sb.append(i);
                    sb.append(A02(27, 5, 115));
                    hours = 13;
                    break;
                case 13:
                    sl = sl;
                    sb = sb;
                    sb.append(A02(84, 7, 98));
                    if (sl.A07 == null) {
                        hours = 15;
                        break;
                    } else {
                        hours = 14;
                        break;
                    }
                case 14:
                    sl = sl;
                    if (sl.A07.get() != null) {
                        hours = 19;
                        break;
                    } else {
                        hours = 15;
                        break;
                    }
                case 15:
                    sb = sb;
                    sb.append(A02(0, 27, 117));
                    hours = 16;
                    break;
                case 16:
                    sl = sl;
                    sb = sb;
                    sl.A05 = sb.toString();
                    fMax = -2.14748365E9f;
                    strArrSplit = sl.A05.split(A02(49, 1, 67));
                    length = strArrSplit.length;
                    seconds = 0;
                    hours = 17;
                    break;
                case 17:
                    if (seconds >= length) {
                        hours = 22;
                        break;
                    } else {
                        hours = 18;
                        break;
                    }
                case 18:
                    sl = sl;
                    strArrSplit = strArrSplit;
                    String str = strArrSplit[seconds];
                    fMax = Math.max(fMax, sl.A0E.measureText(str, 0, str.length()));
                    seconds++;
                    hours = 17;
                    break;
                case 19:
                    sl = sl;
                    sb = sb;
                    String line11 = sl.A07.get().A0R();
                    sb.append(line11);
                    hours = 16;
                    break;
                case 20:
                    sb = sb;
                    sb.append(A02(37, 7, 50));
                    hours = 13;
                    break;
                case 21:
                    sl = sl;
                    sb = sb;
                    sb.append(A02(44, 5, 60));
                    sb.append(sl.A01 + 1);
                    sb.append(A02(69, 4, 54));
                    sb.append(sl.A00);
                    hours = 13;
                    break;
                case 22:
                    SL sl2 = sl;
                    sl2.A02 = (int) (0.5f + fMax);
                    sl2.invalidateSelf();
                    return;
            }
        }
    }

    public final void A07() {
        this.A00 = 0;
        this.A01 = -1;
        this.A05 = A02(54, 15, 79);
        this.A02 = 100;
        this.A06 = null;
        this.A03 = -1L;
        this.A07 = null;
        A0D(false);
    }

    public final void A08(int i, int i2) {
        this.A00 = i;
        this.A01 = i2;
        A03();
    }

    public final void A09(long j) {
        this.A03 = j;
        A03();
    }

    public final void A0A(C6K c6k) {
        this.A07 = new WeakReference<>(c6k);
        A03();
    }

    public final void A0B(String str) {
        this.A04 = str;
        A03();
    }

    public final void A0C(String str) {
        this.A06 = str;
        A03();
    }

    public final void A0D(boolean z) {
        SL sl = this;
        sl.A08 = z;
        char c = sl.A08 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    sl = sl;
                    sl.A0D.post(sl.A0F);
                    c = 3;
                    break;
                case 3:
                    sl.invalidateSelf();
                    return;
                case 4:
                    sl = sl;
                    sl.A0D.removeCallbacks(sl.A0F);
                    c = 3;
                    break;
            }
        }
    }

    public final boolean A0E() {
        return this.A08;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (!this.A08) {
            return;
        }
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        canvas.drawRect(0.0f, 0.0f, width, height, this.A09);
        String str = this.A05;
        TextPaint textPaint = this.A0E;
        int canvasHeight = this.A02;
        StaticLayout staticLayout = new StaticLayout(str, textPaint, canvasHeight, Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
        float f = width / 2.0f;
        float f2 = height / 2.0f;
        float width2 = staticLayout.getWidth() / 2.0f;
        float height2 = staticLayout.getHeight() / 2.0f;
        float textMiddleY = f - width2;
        float canvasMiddleX = 40.0f + f + width2;
        canvas.drawRect(textMiddleY - 40.0f, (f2 - height2) - 40.0f, canvasMiddleX, 40.0f + f2 + height2, this.A0B);
        canvas.save();
        canvas.translate(f - width2, f2 - height2);
        staticLayout.draw(canvas);
        canvas.restore();
        this.A0C.reset();
        this.A0C.moveTo(0.0f, 0.0f);
        this.A0C.lineTo(width, 0.0f);
        this.A0C.lineTo(width, height);
        this.A0C.lineTo(0.0f, height);
        this.A0C.lineTo(0.0f, 0.0f);
        canvas.drawPath(this.A0C, this.A0A);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(@IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED, to = IjkMediaMeta.AV_CH_LAYOUT_7POINT1_WIDE_BACK) int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(@Nullable ColorFilter colorFilter) {
    }
}
