package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.annotation.ColorInt;
import com.narvii.amino.master.R;
import com.narvii.util.drawables.DrawableUtils;

/* JADX INFO: loaded from: classes10.dex */
public class EmojionePlusView extends EmojioneView {
    private Drawable plus;
    private Drawable plusBase;
    private Drawable plusBaseBig;
    private Rect rect;

    public void setViewColor(@ColorInt int i10) {
        this.plus = DrawableUtils.tintDrawable("big".equals(getTag()) ? this.plusBaseBig : this.plusBase, i10);
        invalidate();
    }

    public EmojionePlusView(Context context, AttributeSet attributeSet) {
        Drawable drawable;
        super(context, attributeSet);
        this.rect = new Rect();
        this.plusBase = getResources().getDrawable(R.drawable.mood_plus);
        this.plusBaseBig = getResources().getDrawable(R.drawable.mood_plus_big);
        if ("big".equals(getTag())) {
            drawable = this.plusBaseBig;
        } else {
            drawable = this.plusBase;
        }
        this.plus = DrawableUtils.tintDrawable(drawable, getResources().getColor(R.color.mood_view_default_border_color));
    }

    @Override // com.narvii.widget.EmojioneView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (TextUtils.isEmpty(this.emoji)) {
            int intrinsicWidth = this.plus.getIntrinsicWidth();
            int intrinsicHeight = this.plus.getIntrinsicHeight();
            this.rect.left = (getWidth() - intrinsicWidth) / 2;
            Rect rect = this.rect;
            rect.right = rect.left + intrinsicWidth;
            rect.top = (getHeight() - intrinsicHeight) / 2;
            Rect rect2 = this.rect;
            rect2.bottom = rect2.top + intrinsicHeight;
            this.plus.setBounds(rect2);
            this.plus.draw(canvas);
        }
    }
}
