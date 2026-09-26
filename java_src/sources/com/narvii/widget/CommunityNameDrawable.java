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

/* JADX INFO: loaded from: classes11.dex */
public class CommunityNameDrawable extends Drawable {
    private static final int DEFAULT_COLOR = -1;
    private static final int DEFAULT_SIZE = 24;
    private int backColor;
    private Paint backgroudPaint;
    private String communityName;
    private Context context;
    private int corner;
    private boolean firstLetterEmoj;
    private Paint paint;
    private final String regex = "([\\u20a0-\\u32ff\\ud83c\\udc00-\\ud83d\\udeff\\udbb9\\udce5-\\udbb9\\udcee])";
    private String text;
    private int textColor;
    private float textSize;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    private void parseCommunityName() {
        this.communityName = this.communityName.trim();
        Matcher matcher = Pattern.compile("([\\u20a0-\\u32ff\\ud83c\\udc00-\\ud83d\\udeff\\udbb9\\udce5-\\udbb9\\udcee])").matcher(this.communityName);
        if (!matcher.find()) {
            this.firstLetterEmoj = false;
            this.text = String.valueOf(this.communityName.trim().charAt(0));
            return;
        }
        char[] charArray = this.communityName.toCharArray();
        char[] charArray2 = matcher.group().toCharArray();
        for (int i10 = 0; i10 < charArray2.length; i10++) {
            if (charArray2[i10] != charArray[i10]) {
                this.firstLetterEmoj = false;
                break;
            }
            this.firstLetterEmoj = true;
        }
        this.text = this.firstLetterEmoj ? String.valueOf(charArray2) : String.valueOf(this.communityName.charAt(0));
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.paint.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
    }

    public CommunityNameDrawable(Context context, String str, int i10, float f, int i11) {
        String upperCase;
        this.context = context;
        this.communityName = str;
        this.textColor = i10;
        this.textSize = f;
        this.backColor = i11;
        Paint paint = new Paint(1);
        this.paint = paint;
        paint.setColor(i10);
        this.paint.setTextSize(f);
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setFakeBoldText(true);
        this.paint.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
        this.paint.setTextAlign(Paint.Align.CENTER);
        Paint paint2 = new Paint(1);
        this.backgroudPaint = paint2;
        paint2.setColor(i11);
        parseCommunityName();
        if (this.firstLetterEmoj) {
            upperCase = this.text;
        } else {
            upperCase = this.text.toUpperCase(Locale.getDefault());
        }
        this.text = upperCase;
        this.corner = context.getResources().getDimensionPixelSize(R.dimen.communtiy_name_icon_corner);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        int iWidth = bounds.width();
        int iHeight = bounds.height();
        canvas.save();
        RectF rectF = new RectF(bounds.left, bounds.top, bounds.right, bounds.bottom);
        int i10 = this.corner;
        canvas.drawRoundRect(rectF, i10, i10, this.backgroudPaint);
        canvas.drawText(this.text, iWidth / 2.0f, (iHeight / 2.0f) - ((this.paint.ascent() + this.paint.descent()) / 2.0f), this.paint);
        canvas.restore();
    }
}
