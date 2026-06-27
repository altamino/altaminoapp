package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import com.narvii.lib.R;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class CommunityNameDrawable extends Drawable {
    private static final int DEFAULT_COLOR = -1;
    private static final int DEFAULT_SIZE = 24;
    private int backColor;
    private Paint backgroudPaint;
    private String communityName;
    private Context context;
    private int corner;
    private boolean firstLetterEmoj;
    private String text;
    private int textColor;
    private float textSize;
    private final String regex = "([\\u20a0-\\u32ff\\ud83c\\udc00-\\ud83d\\udeff\\udbb9\\udce5-\\udbb9\\udcee])";
    private Paint paint = new Paint(1);

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    public CommunityNameDrawable(Context context, String str, int i, float f, int i2) {
        this.textColor = -1;
        this.textSize = 24.0f;
        this.context = context;
        this.communityName = str;
        this.textColor = i;
        this.textSize = f;
        this.backColor = i2;
        this.paint.setColor(i);
        this.paint.setTextSize(f);
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setFakeBoldText(true);
        this.paint.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
        this.paint.setTextAlign(Paint.Align.CENTER);
        this.backgroudPaint = new Paint(1);
        this.backgroudPaint.setColor(i2);
        parseCommunityName();
        this.text = this.firstLetterEmoj ? this.text : this.text.toUpperCase(Locale.getDefault());
        this.corner = context.getResources().getDimensionPixelSize(R.dimen.communtiy_name_icon_corner);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        int iWidth = bounds.width();
        int iHeight = bounds.height();
        canvas.save();
        RectF rectF = new RectF(bounds.left, bounds.top, bounds.right, bounds.bottom);
        int i = this.corner;
        canvas.drawRoundRect(rectF, i, i, this.backgroudPaint);
        canvas.drawText(this.text, iWidth / 2.0f, (iHeight / 2.0f) - ((this.paint.ascent() + this.paint.descent()) / 2.0f), this.paint);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.paint.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
    }

    private void parseCommunityName() {
        this.communityName = this.communityName.trim();
        Matcher matcher = Pattern.compile("([\\u20a0-\\u32ff\\ud83c\\udc00-\\ud83d\\udeff\\udbb9\\udce5-\\udbb9\\udcee])").matcher(this.communityName);
        if (matcher.find()) {
            char[] charArray = this.communityName.toCharArray();
            char[] charArray2 = matcher.group().toCharArray();
            int i = 0;
            while (true) {
                if (i < charArray2.length) {
                    if (charArray2[i] == charArray[i]) {
                        this.firstLetterEmoj = true;
                        i++;
                    } else {
                        this.firstLetterEmoj = false;
                        break;
                    }
                } else {
                    break;
                }
            }
            this.text = this.firstLetterEmoj ? String.valueOf(charArray2) : String.valueOf(this.communityName.charAt(0));
            return;
        }
        this.firstLetterEmoj = false;
        this.text = String.valueOf(this.communityName.trim().charAt(0));
    }
}
