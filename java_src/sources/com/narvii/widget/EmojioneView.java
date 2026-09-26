package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.view.ViewCompat;
import com.narvii.lib.R;
import com.narvii.util.emojione.EmojionePng;
import com.narvii.util.emojione.EmojioneShortName;

/* JADX INFO: loaded from: classes7.dex */
public class EmojioneView extends View {
    private Bitmap bitmap;
    private Rect dst;
    protected String emoji;
    private Paint paint;
    private int size;
    private Rect src;

    public boolean isEmojiAvailable() {
        return this.bitmap != null;
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        setMeasuredDimension(View.resolveSize(this.size, i10), View.resolveSize(this.size, i11));
    }

    public void setEmoji(String str) {
        this.emoji = str;
        Bitmap bitmap = EmojionePng.getBitmap(getContext(), str);
        this.bitmap = bitmap;
        if (bitmap != null) {
            Rect rect = this.src;
            rect.top = 0;
            rect.left = 0;
            rect.right = bitmap.getWidth();
            this.src.bottom = this.bitmap.getHeight();
        }
        invalidate();
    }

    public EmojioneView(Context context, AttributeSet attributeSet) {
        String string;
        super(context, attributeSet);
        this.size = context.getResources().getDimensionPixelSize(R.dimen.emoji_icon_size);
        this.src = new Rect();
        this.dst = new Rect();
        Paint paint = new Paint();
        this.paint = paint;
        paint.setAntiAlias(true);
        this.paint.setFilterBitmap(true);
        this.paint.setColor(ViewCompat.MEASURED_STATE_MASK);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.EmojioneView);
        String string2 = typedArrayObtainStyledAttributes.getString(R.styleable.EmojioneView_emojiUnicode);
        if (string2 == null && (string = typedArrayObtainStyledAttributes.getString(R.styleable.EmojioneView_emojiShortName)) != null) {
            string2 = EmojioneShortName.shortNameToUnicode.get(string);
        }
        typedArrayObtainStyledAttributes.recycle();
        if (string2 != null) {
            setEmoji(string2);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.bitmap != null) {
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int width = (getWidth() - paddingLeft) - getPaddingRight();
            int height = (getHeight() - paddingTop) - getPaddingBottom();
            int iMin = Math.min(width, height);
            Rect rect = this.dst;
            int i10 = paddingLeft + ((width - iMin) / 2);
            rect.left = i10;
            rect.right = i10 + iMin;
            int i11 = paddingTop + ((height - iMin) / 2);
            rect.top = i11;
            rect.bottom = i11 + iMin;
            canvas.drawBitmap(this.bitmap, this.src, rect, this.paint);
        }
    }
}
