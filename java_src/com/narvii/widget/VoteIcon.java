package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.narvii.amino.mastes.R;

/* loaded from: classes3.dex */
public class VoteIcon extends TintButton {
    public static final int FROWN = -1;
    public static final int HEART = 4;
    public static final int NONE = 0;
    public static final int SMILE = 1;
    public static final int SURPRISE = 2;
    public static final int UNDECIDED = 3;
    private boolean darkTheme;
    private int noneColor;
    public ColorFilter noneFilter;
    private boolean trans;
    private int votedValue;
    static ColorFilter PRESSED_FILTER = new ColorMatrixColorFilter(new float[]{1.0f, 0.0f, 0.0f, 0.0f, -50.0f, 0.0f, 1.0f, 0.0f, 0.0f, -50.0f, 0.0f, 0.0f, 1.0f, 0.0f, -50.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f});
    static ColorFilter TRANS_FILTER = new ColorMatrixColorFilter(new float[]{1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.5f, 0.0f});

    public static int voteIconRes(int i) {
        return i != -1 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? R.drawable.ic_vote_none : R.drawable.ic_vote_heart : R.drawable.ic_vote_undecided : R.drawable.ic_vote_surprise : R.drawable.ic_vote_smile : R.drawable.ic_vote_frown;
    }

    public VoteIcon(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.noneColor = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.narvii.amino.R.styleable.VoteIcon, 0, 0);
        this.darkTheme = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // com.narvii.widget.TintButton, android.view.View
    public void setPressed(boolean z) {
        super.setPressed(z);
        invalidate();
    }

    public void setTransparent(boolean z) {
        this.trans = z;
        invalidate();
    }

    @Override // com.narvii.widget.TintButton, android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        Paint paint;
        ColorFilter colorFilter;
        Drawable drawable = getDrawable();
        if (drawable instanceof BitmapDrawable) {
            paint = ((BitmapDrawable) drawable).getPaint();
            if (paint != null) {
                if (isPressed()) {
                    colorFilter = PRESSED_FILTER;
                } else if (this.trans) {
                    colorFilter = TRANS_FILTER;
                } else {
                    colorFilter = this.votedValue == 0 ? this.noneFilter : null;
                }
                paint.setColorFilter(colorFilter);
            }
        } else {
            paint = null;
        }
        super.onDraw(canvas);
        if (paint != null) {
            paint.setColorFilter(null);
        }
    }

    public void setVotedValue(int i) {
        this.votedValue = i;
        updateView(i);
    }

    public void setNoneColor(int i) {
        this.noneColor = i;
        updateView(this.votedValue);
    }

    protected void updateView(int i) {
        setImageResource(getVoteIconRes(i));
        if (i == 0) {
            if (this.darkTheme) {
                setTintColor(-1);
            } else {
                int i2 = this.noneColor;
                if (i2 != 0) {
                    setTintColor(i2);
                } else {
                    removeTintColor();
                }
            }
        } else {
            removeTintColor();
        }
        invalidate();
    }

    public int getVoteIconRes(int i) {
        return voteIconRes(i);
    }

    public boolean isDarkTheme() {
        return this.darkTheme;
    }
}
