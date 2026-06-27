package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.narvii.util.Constants;

/* loaded from: classes3.dex */
public class BubbleBackground extends View {
    private static final int[] colors = {Color.rgb(150, Constants.ADMIN_SET_USER_MEMBERSHIP_TITLE, 232), Color.rgb(106, 210, 146), Color.rgb(238, 175, io.agora.rtc.Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED), Color.rgb(166, 158, 214), Color.rgb(184, io.agora.rtc.Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED, 147), Color.rgb(221, 218, 138)};
    private String id;
    private Paint paint;

    public BubbleBackground(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.paint = new Paint();
        this.paint.setAntiAlias(true);
    }

    public void set(String str) {
        this.id = str;
        invalidate();
    }

    public String getUserId() {
        return this.id;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        String str = this.id;
        if (str == null) {
            return;
        }
        int i = colors[Math.abs(str.hashCode() % colors.length)];
        int iRed = Color.red(i) + 52;
        if (iRed > 255) {
            iRed = 255;
        }
        int iGreen = Color.green(i) + 52;
        if (iGreen > 255) {
            iGreen = 255;
        }
        int iBlue = Color.blue(i) + 52;
        int iRgb = Color.rgb(iRed, iGreen, iBlue <= 255 ? iBlue : 255);
        this.paint.setColor(i);
        canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), this.paint);
        this.paint.setColor(iRgb);
        int i2 = (int) (getResources().getDisplayMetrics().density * 32.0f);
        int height = (((getHeight() / 2) + i2) / i2) / 2;
        int width = (((getWidth() / 2) + (i2 * 2)) / i2) / 4;
        for (int i3 = -height; i3 <= height; i3++) {
            int height2 = (i3 * i2 * 2) + (getHeight() / 2);
            for (int i4 = -width; i4 <= width; i4++) {
                canvas.drawCircle(((i3 % 2 == 0 ? -1 : 1) * i2) + (i4 * i2 * 4) + (getWidth() / 2), height2, i2, this.paint);
            }
        }
    }
}
