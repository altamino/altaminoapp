package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import androidx.compose.material.TextFieldImplKt;
import io.agora.rtc.Constants;

/* JADX INFO: loaded from: classes5.dex */
public class BubbleBackground extends View {
    private static final int[] colors = {Color.rgb(TextFieldImplKt.AnimationDuration, 207, 232), Color.rgb(106, 210, 146), Color.rgb(238, 175, Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED), Color.rgb(166, 158, 214), Color.rgb(184, Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED, 147), Color.rgb(221, 218, 138)};
    private String id;
    private Paint paint;

    public String getUserId() {
        return this.id;
    }

    public void set(String str) {
        this.id = str;
        invalidate();
    }

    public BubbleBackground(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint();
        this.paint = paint;
        paint.setAntiAlias(true);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i10;
        super.onDraw(canvas);
        String str = this.id;
        if (str == null) {
            return;
        }
        int[] iArr = colors;
        int i11 = iArr[Math.abs(str.hashCode() % iArr.length)];
        int iRed = Color.red(i11) + 52;
        int i12 = 255;
        if (iRed > 255) {
            iRed = 255;
        }
        int iGreen = Color.green(i11) + 52;
        if (iGreen > 255) {
            iGreen = 255;
        }
        int iBlue = Color.blue(i11) + 52;
        if (iBlue <= 255) {
            i12 = iBlue;
        }
        int iRgb = Color.rgb(iRed, iGreen, i12);
        this.paint.setColor(i11);
        canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), this.paint);
        this.paint.setColor(iRgb);
        int i13 = (int) (getResources().getDisplayMetrics().density * 32.0f);
        int height = (((getHeight() / 2) + i13) / i13) / 2;
        int width = (((getWidth() / 2) + (i13 * 2)) / i13) / 4;
        for (int i14 = -height; i14 <= height; i14++) {
            int height2 = (i14 * i13 * 2) + (getHeight() / 2);
            for (int i15 = -width; i15 <= width; i15++) {
                if (i14 % 2 == 0) {
                    i10 = -1;
                } else {
                    i10 = 1;
                }
                canvas.drawCircle((i10 * i13) + (i15 * i13 * 4) + (getWidth() / 2), height2, i13, this.paint);
            }
        }
    }
}
