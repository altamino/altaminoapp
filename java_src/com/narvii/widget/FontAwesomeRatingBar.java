package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.narvii.lib.R;
import com.narvii.util.Callback;
import com.narvii.util.FontAwesomeDrawable;

/* loaded from: classes3.dex */
public class FontAwesomeRatingBar extends LinearLayout {
    private int color0;
    private int color1;
    private FontAwesomeDrawable draw0;
    private FontAwesomeDrawable draw1;
    private LinearLayout.LayoutParams lp;
    private int max;
    private int rating;
    private String text0;
    private String text1;
    public Callback<Integer> touchCallback;

    public FontAwesomeRatingBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int[] iArr = R.styleable.FontAwesomeRatingBar;
        int i = R.style.FontAwesomeRatingBar;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, i);
        this.text0 = typedArrayObtainStyledAttributes.getString(R.styleable.FontAwesomeRatingBar_rating0Text);
        this.text1 = typedArrayObtainStyledAttributes.getString(R.styleable.FontAwesomeRatingBar_rating1Text);
        this.color0 = typedArrayObtainStyledAttributes.getColor(R.styleable.FontAwesomeRatingBar_rating0Color, 0);
        this.color1 = typedArrayObtainStyledAttributes.getColor(R.styleable.FontAwesomeRatingBar_rating1Color, ViewCompat.MEASURED_STATE_MASK);
        this.max = typedArrayObtainStyledAttributes.getInteger(R.styleable.FontAwesomeRatingBar_ratingMax, 5);
        typedArrayObtainStyledAttributes.recycle();
        this.lp = new LinearLayout.LayoutParams(0, -1, 1.0f);
        String str = this.text0;
        if (str != null) {
            this.draw0 = new FontAwesomeDrawable(context, str);
            this.draw0.setFocalArea(0.75f);
            this.draw0.setColor(this.color0);
        }
        String str2 = this.text1;
        if (str2 != null) {
            this.draw1 = new FontAwesomeDrawable(context, str2);
            this.draw1.setFocalArea(0.75f);
            this.draw1.setColor(this.color1);
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        update();
    }

    public int getRating() {
        return this.rating;
    }

    public void setRating(int i) {
        this.rating = i;
        update();
    }

    private void update() {
        for (int childCount = getChildCount(); childCount < this.max; childCount++) {
            addView(new ImageView(getContext()), this.lp);
        }
        while (getChildCount() > this.max) {
            removeViewAt(getChildCount() - 1);
        }
        int i = 0;
        while (i < this.max) {
            ((ImageView) getChildAt(i)).setImageDrawable(i < this.rating ? this.draw1 : this.draw0);
            i++;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action;
        if (isClickable() && ((action = motionEvent.getAction()) == 0 || action == 1 || action == 2)) {
            if (this.max == 0) {
                return true;
            }
            int width = ((getWidth() - getPaddingLeft()) - getPaddingRight()) / this.max;
            int x = ((((int) motionEvent.getX()) + ((width * 3) / 4)) - getPaddingLeft()) / width;
            if (this.rating != x) {
                setRating(x);
                Callback<Integer> callback = this.touchCallback;
                if (callback != null) {
                    callback.call(Integer.valueOf(x));
                }
            }
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }
}
