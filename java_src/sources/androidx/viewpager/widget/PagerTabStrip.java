package androidx.viewpager.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes7.dex */
public class PagerTabStrip extends PagerTitleStrip {
    private static final int FULL_UNDERLINE_HEIGHT = 1;
    private static final int INDICATOR_HEIGHT = 3;
    private static final int MIN_PADDING_BOTTOM = 6;
    private static final int MIN_STRIP_HEIGHT = 32;
    private static final int MIN_TEXT_SPACING = 64;
    private static final int TAB_PADDING = 16;
    private static final int TAB_SPACING = 32;
    private static final String TAG = "PagerTabStrip";
    private boolean mDrawFullUnderline;
    private boolean mDrawFullUnderlineSet;
    private int mFullUnderlineHeight;
    private boolean mIgnoreTap;
    private int mIndicatorColor;
    private int mIndicatorHeight;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private int mMinPaddingBottom;
    private int mMinStripHeight;
    private int mMinTextSpacing;
    private int mTabAlpha;
    private int mTabPadding;
    private final Paint mTabPaint;
    private final Rect mTempRect;
    private int mTouchSlop;

    public PagerTabStrip(@NonNull Context context) {
        this(context, null);
    }

    public boolean getDrawFullUnderline() {
        return this.mDrawFullUnderline;
    }

    @ColorInt
    public int getTabIndicatorColor() {
        return this.mIndicatorColor;
    }

    public PagerTabStrip(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint();
        this.mTabPaint = paint;
        this.mTempRect = new Rect();
        this.mTabAlpha = 255;
        this.mDrawFullUnderline = false;
        this.mDrawFullUnderlineSet = false;
        int i10 = this.mTextColor;
        this.mIndicatorColor = i10;
        paint.setColor(i10);
        float f = context.getResources().getDisplayMetrics().density;
        this.mIndicatorHeight = (int) ((3.0f * f) + 0.5f);
        this.mMinPaddingBottom = (int) ((6.0f * f) + 0.5f);
        this.mMinTextSpacing = (int) (64.0f * f);
        this.mTabPadding = (int) ((16.0f * f) + 0.5f);
        this.mFullUnderlineHeight = (int) ((1.0f * f) + 0.5f);
        this.mMinStripHeight = (int) ((f * 32.0f) + 0.5f);
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        setPadding(getPaddingLeft(), getPaddingTop(), getPaddingRight(), getPaddingBottom());
        setTextSpacing(getTextSpacing());
        setWillNotDraw(false);
        this.mPrevText.setFocusable(true);
        this.mPrevText.setOnClickListener(new View.OnClickListener() { // from class: androidx.viewpager.widget.PagerTabStrip.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ViewPager viewPager = PagerTabStrip.this.mPager;
                viewPager.setCurrentItem(viewPager.getCurrentItem() - 1);
            }
        });
        this.mNextText.setFocusable(true);
        this.mNextText.setOnClickListener(new View.OnClickListener() { // from class: androidx.viewpager.widget.PagerTabStrip.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ViewPager viewPager = PagerTabStrip.this.mPager;
                viewPager.setCurrentItem(viewPager.getCurrentItem() + 1);
            }
        });
        if (getBackground() == null) {
            this.mDrawFullUnderline = true;
        }
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    void d(int i10, float f, boolean z6) {
        Rect rect = this.mTempRect;
        int height = getHeight();
        int left = this.mCurrText.getLeft() - this.mTabPadding;
        int right = this.mCurrText.getRight() + this.mTabPadding;
        int i11 = height - this.mIndicatorHeight;
        rect.set(left, i11, right, height);
        super.d(i10, f, z6);
        this.mTabAlpha = (int) (Math.abs(f - 0.5f) * 2.0f * 255.0f);
        rect.union(this.mCurrText.getLeft() - this.mTabPadding, i11, this.mCurrText.getRight() + this.mTabPadding, height);
        invalidate(rect);
    }

    public void setDrawFullUnderline(boolean z6) {
        this.mDrawFullUnderline = z6;
        this.mDrawFullUnderlineSet = true;
        invalidate();
    }

    @Override // android.view.View
    public void setPadding(int i10, int i11, int i12, int i13) {
        int i14 = this.mMinPaddingBottom;
        if (i13 < i14) {
            i13 = i14;
        }
        super.setPadding(i10, i11, i12, i13);
    }

    public void setTabIndicatorColor(@ColorInt int i10) {
        this.mIndicatorColor = i10;
        this.mTabPaint.setColor(i10);
        invalidate();
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    public void setTextSpacing(int i10) {
        int i11 = this.mMinTextSpacing;
        if (i10 < i11) {
            i10 = i11;
        }
        super.setTextSpacing(i10);
    }

    @Override // androidx.viewpager.widget.PagerTitleStrip
    int getMinHeight() {
        return Math.max(super.getMinHeight(), this.mMinStripHeight);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight();
        int left = this.mCurrText.getLeft() - this.mTabPadding;
        int right = this.mCurrText.getRight() + this.mTabPadding;
        int i10 = height - this.mIndicatorHeight;
        this.mTabPaint.setColor((this.mTabAlpha << 24) | (this.mIndicatorColor & ViewCompat.MEASURED_SIZE_MASK));
        float f = height;
        canvas.drawRect(left, i10, right, f, this.mTabPaint);
        if (this.mDrawFullUnderline) {
            this.mTabPaint.setColor((this.mIndicatorColor & ViewCompat.MEASURED_SIZE_MASK) | ViewCompat.MEASURED_STATE_MASK);
            canvas.drawRect(getPaddingLeft(), height - this.mFullUnderlineHeight, getWidth() - getPaddingRight(), f, this.mTabPaint);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0 && this.mIgnoreTap) {
            return false;
        }
        float x6 = motionEvent.getX();
        float y6 = motionEvent.getY();
        if (action != 0) {
            if (action != 1) {
                if (action == 2 && (Math.abs(x6 - this.mInitialMotionX) > this.mTouchSlop || Math.abs(y6 - this.mInitialMotionY) > this.mTouchSlop)) {
                    this.mIgnoreTap = true;
                }
            } else if (x6 < this.mCurrText.getLeft() - this.mTabPadding) {
                ViewPager viewPager = this.mPager;
                viewPager.setCurrentItem(viewPager.getCurrentItem() - 1);
            } else if (x6 > this.mCurrText.getRight() + this.mTabPadding) {
                ViewPager viewPager2 = this.mPager;
                viewPager2.setCurrentItem(viewPager2.getCurrentItem() + 1);
            }
        } else {
            this.mInitialMotionX = x6;
            this.mInitialMotionY = y6;
            this.mIgnoreTap = false;
        }
        return true;
    }

    @Override // android.view.View
    public void setBackgroundColor(@ColorInt int i10) {
        boolean z6;
        super.setBackgroundColor(i10);
        if (!this.mDrawFullUnderlineSet) {
            if ((i10 & ViewCompat.MEASURED_STATE_MASK) == 0) {
                z6 = true;
            } else {
                z6 = false;
            }
            this.mDrawFullUnderline = z6;
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        boolean z6;
        super.setBackgroundDrawable(drawable);
        if (!this.mDrawFullUnderlineSet) {
            if (drawable == null) {
                z6 = true;
            } else {
                z6 = false;
            }
            this.mDrawFullUnderline = z6;
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i10) {
        boolean z6;
        super.setBackgroundResource(i10);
        if (!this.mDrawFullUnderlineSet) {
            if (i10 == 0) {
                z6 = true;
            } else {
                z6 = false;
            }
            this.mDrawFullUnderline = z6;
        }
    }

    public void setTabIndicatorColorResource(@ColorRes int i10) {
        setTabIndicatorColor(ContextCompat.getColor(getContext(), i10));
    }
}
