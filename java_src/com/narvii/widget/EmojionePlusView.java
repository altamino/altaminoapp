package com.narvii.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.narvii.amino.mastes.R;
import com.narvii.util.drawables.DrawableUtils;

/* loaded from: classes3.dex */
public class EmojionePlusView extends EmojioneView {
    private Drawable plus;
    private Drawable plusBase;
    private Drawable plusBaseBig;
    private Rect rect;

    public EmojionePlusView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.rect = new Rect();
        this.plusBase = getResources().getDrawable(R.drawable.mood_plus);
        this.plusBaseBig = getResources().getDrawable(R.drawable.mood_plus_big);
        this.plus = DrawableUtils.tintDrawable("big".equals(getTag()) ? this.plusBaseBig : this.plusBase, getResources().getColor(R.color.mood_view_default_border_color));
    }

    public void setViewColor(int i) {
        this.plus = DrawableUtils.tintDrawable("big".equals(getTag()) ? this.plusBaseBig : this.plusBase, i);
        invalidate();
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
