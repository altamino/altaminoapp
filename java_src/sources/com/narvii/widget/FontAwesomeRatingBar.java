package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.view.ViewCompat;
import com.narvii.lib.R;
import com.narvii.util.Callback;
import com.narvii.util.FontAwesomeDrawable;

/* JADX INFO: loaded from: classes11.dex */
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

    public int getRating() {
        return this.rating;
    }

    public void setRating(int i10) {
        this.rating = i10;
        update();
    }

    public FontAwesomeRatingBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int[] iArr = R.styleable.FontAwesomeRatingBar;
        int i10 = R.style.FontAwesomeRatingBar;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i10, i10);
        this.text0 = typedArrayObtainStyledAttributes.getString(R.styleable.FontAwesomeRatingBar_rating0Text);
        this.text1 = typedArrayObtainStyledAttributes.getString(R.styleable.FontAwesomeRatingBar_rating1Text);
        this.color0 = typedArrayObtainStyledAttributes.getColor(R.styleable.FontAwesomeRatingBar_rating0Color, 0);
        this.color1 = typedArrayObtainStyledAttributes.getColor(R.styleable.FontAwesomeRatingBar_rating1Color, ViewCompat.MEASURED_STATE_MASK);
        this.max = typedArrayObtainStyledAttributes.getInteger(R.styleable.FontAwesomeRatingBar_ratingMax, 5);
        typedArrayObtainStyledAttributes.recycle();
        this.lp = new LinearLayout.LayoutParams(0, -1, 1.0f);
        if (this.text0 != null) {
            FontAwesomeDrawable fontAwesomeDrawable = new FontAwesomeDrawable(context, this.text0);
            this.draw0 = fontAwesomeDrawable;
            fontAwesomeDrawable.setFocalArea(0.75f);
            this.draw0.setColor(this.color0);
        }
        if (this.text1 != null) {
            FontAwesomeDrawable fontAwesomeDrawable2 = new FontAwesomeDrawable(context, this.text1);
            this.draw1 = fontAwesomeDrawable2;
            fontAwesomeDrawable2.setFocalArea(0.75f);
            this.draw1.setColor(this.color1);
        }
    }

    private void update() {
        FontAwesomeDrawable fontAwesomeDrawable;
        for (int childCount = getChildCount(); childCount < this.max; childCount++) {
            addView(new ImageView(getContext()), this.lp);
        }
        while (getChildCount() > this.max) {
            removeViewAt(getChildCount() - 1);
        }
        for (int i10 = 0; i10 < this.max; i10++) {
            ImageView imageView = (ImageView) getChildAt(i10);
            if (i10 < this.rating) {
                fontAwesomeDrawable = this.draw1;
            } else {
                fontAwesomeDrawable = this.draw0;
            }
            imageView.setImageDrawable(fontAwesomeDrawable);
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        update();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action;
        if (isClickable() && ((action = motionEvent.getAction()) == 0 || action == 1 || action == 2)) {
            if (this.max == 0) {
                return true;
            }
            int width = ((getWidth() - getPaddingLeft()) - getPaddingRight()) / this.max;
            int x6 = ((((int) motionEvent.getX()) + ((width * 3) / 4)) - getPaddingLeft()) / width;
            if (this.rating != x6) {
                setRating(x6);
                Callback<Integer> callback = this.touchCallback;
                if (callback != null) {
                    callback.call(Integer.valueOf(x6));
                }
            }
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }
}
