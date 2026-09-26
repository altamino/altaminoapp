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
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
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

    public static int voteIconRes(int i10) {
        if (i10 == -1) {
            return R.drawable.ic_vote_frown;
        }
        if (i10 == 1) {
            return R.drawable.ic_vote_smile;
        }
        if (i10 == 2) {
            return R.drawable.ic_vote_surprise;
        }
        if (i10 != 3) {
            return i10 != 4 ? R.drawable.ic_vote_none : R.drawable.ic_vote_heart;
        }
        return R.drawable.ic_vote_undecided;
    }

    public boolean isDarkTheme() {
        return this.darkTheme;
    }

    public void setNoneColor(int i10) {
        this.noneColor = i10;
        updateView(this.votedValue);
    }

    public void setTransparent(boolean z6) {
        this.trans = z6;
        invalidate();
    }

    public void setVotedValue(int i10) {
        this.votedValue = i10;
        updateView(i10);
    }

    public VoteIcon(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.noneColor = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.narvii.amino.R.styleable.VoteIcon, 0, 0);
        this.darkTheme = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
    }

    public int getVoteIconRes(int i10) {
        return voteIconRes(i10);
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
                } else if (this.votedValue == 0) {
                    colorFilter = this.noneFilter;
                } else {
                    colorFilter = null;
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

    @Override // com.narvii.widget.TintButton, android.view.View
    public void setPressed(boolean z6) {
        super.setPressed(z6);
        invalidate();
    }

    protected void updateView(int i10) {
        setImageResource(getVoteIconRes(i10));
        if (i10 == 0) {
            if (this.darkTheme) {
                setTintColor(-1);
            } else {
                int i11 = this.noneColor;
                if (i11 != 0) {
                    setTintColor(i11);
                } else {
                    removeTintColor();
                }
            }
        } else {
            removeTintColor();
        }
        invalidate();
    }
}
