package com.narvii.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.lib.R;
import com.narvii.model.Media;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class Card2View extends ViewGroup {
    TextView content;
    int imgCount;
    NVImageView[] imgs;
    boolean isDarkTheme;
    boolean isOfficial;
    View more;
    Rect rect;

    public Card2View(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setImages(List<Media> list, int i, boolean z) {
        if (list == null) {
            list = new ArrayList<>();
        }
        int size = list.size();
        for (int i2 = 0; i2 < this.imgs.length; i2++) {
            int i3 = i2 + i;
            Media media = i3 < size ? list.get(i3) : null;
            NVImageView nVImageView = this.imgs[i2];
            if (nVImageView instanceof SecretImageView) {
                ((SecretImageView) nVImageView).setImageMedia(media, z);
            } else {
                nVImageView.setImageMedia(media);
            }
        }
        this.imgCount = list.size() - i;
        requestLayout();
    }

    public void setOfficial(boolean z) {
        if (this.isOfficial == z) {
            return;
        }
        this.isOfficial = z;
        setBackgroundResource(this.isOfficial ? R.drawable.feed_item_card_2_gold : R.drawable.feed_item_card_2);
    }

    public void setDarkTheme(boolean z) {
        if (this.isDarkTheme == z) {
            return;
        }
        this.isDarkTheme = z;
        this.content.setTextColor(this.isDarkTheme ? -1 : -7829368);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.content = (TextView) findViewById(R.id.content);
        ArrayList arrayList = new ArrayList();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof NVImageView) {
                NVImageView nVImageView = (NVImageView) childAt;
                arrayList.add(nVImageView);
                nVImageView.cornerRadius = (int) Utils.dpToPx(getContext(), 2.0f);
            }
        }
        this.imgs = (NVImageView[]) arrayList.toArray(new NVImageView[0]);
        this.more = findViewById(R.id.mask);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int size = (View.MeasureSpec.getSize(i) - getPaddingLeft()) - getPaddingRight();
        this.content.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec((View.MeasureSpec.getSize(i2) - getPaddingTop()) - getPaddingBottom(), Integer.MIN_VALUE));
        NVImageView[] nVImageViewArr = this.imgs;
        int length = size / ((nVImageViewArr.length + 1) / 2);
        for (NVImageView nVImageView : nVImageViewArr) {
            nVImageView.measure(View.MeasureSpec.makeMeasureSpec(length, 1073741824), View.MeasureSpec.makeMeasureSpec(length, 1073741824));
        }
        this.more.measure(View.MeasureSpec.makeMeasureSpec(length, 1073741824), View.MeasureSpec.makeMeasureSpec(length, 1073741824));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingLeft;
        NVImageView[] nVImageViewArr = this.imgs;
        int i5 = 1;
        int i6 = 2;
        int length = (nVImageViewArr.length + 1) / 2;
        int iMin = Math.min(this.imgCount, nVImageViewArr.length);
        int i7 = i3 - i;
        int i8 = i4 - i2;
        int paddingLeft2 = ((i7 - getPaddingLeft()) - getPaddingRight()) / length;
        int paddingLeft3 = getPaddingLeft();
        if (this.content.getMeasuredHeight() > (i8 - getPaddingBottom()) - (paddingLeft2 * 2) && iMin > length) {
            iMin = length;
        }
        int i9 = 0;
        int i10 = 0;
        while (true) {
            NVImageView[] nVImageViewArr2 = this.imgs;
            if (i10 >= nVImageViewArr2.length) {
                break;
            }
            NVImageView nVImageView = nVImageViewArr2[i10];
            if (i10 < iMin) {
                i = 0;
            }
            nVImageView.setVisibility(i);
            i10++;
        }
        this.more.setVisibility(this.imgCount > iMin ? 0 : 4);
        int paddingBottom = i8 - getPaddingBottom();
        if (iMin == 0) {
            i6 = 0;
        } else if (iMin <= length) {
            i6 = 1;
        }
        int i11 = paddingBottom - (i6 * paddingLeft2);
        int paddingTop = i11 - getPaddingTop();
        if (this.content.getMeasuredHeight() > paddingTop) {
            this.content.layout(getPaddingLeft(), getPaddingTop(), i7 - getPaddingRight(), i11);
            if (this.rect == null) {
                this.rect = new Rect();
            }
            int lineCount = this.content.getLineCount();
            int i12 = 1;
            while (true) {
                if (i12 >= lineCount) {
                    break;
                }
                this.content.getLineBounds(i12, this.rect);
                if (this.rect.bottom > paddingTop) {
                    this.content.layout(getPaddingLeft(), getPaddingTop(), i7 - getPaddingRight(), getPaddingTop() + this.rect.top);
                    break;
                }
                i12++;
            }
        } else {
            this.content.measure(View.MeasureSpec.makeMeasureSpec((i7 - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec(i11 - getPaddingTop(), 1073741824));
            this.content.layout(getPaddingLeft(), getPaddingTop(), i7 - getPaddingRight(), i11);
        }
        if (Utils.isRtl()) {
            int paddingRight = getPaddingRight();
            NVImageView[] nVImageViewArr3 = this.imgs;
            int length2 = nVImageViewArr3.length;
            int i13 = 0;
            while (i9 < length2) {
                NVImageView nVImageView2 = nVImageViewArr3[i9];
                if (nVImageView2.getVisibility() == 0) {
                    int i14 = (i7 - paddingLeft2) - paddingRight;
                    int i15 = i11 + paddingLeft2;
                    nVImageView2.layout(i14, i11, (i14 + paddingLeft2) - i5, i15 - 1);
                    i13++;
                    if (i13 == length) {
                        paddingRight = getPaddingRight();
                        i11 = i15;
                    } else {
                        paddingRight += paddingLeft2;
                    }
                }
                i9++;
                i5 = 1;
            }
        } else {
            NVImageView[] nVImageViewArr4 = this.imgs;
            int length3 = nVImageViewArr4.length;
            int i16 = 0;
            while (i9 < length3) {
                NVImageView nVImageView3 = nVImageViewArr4[i9];
                if (nVImageView3.getVisibility() == 0) {
                    int i17 = paddingLeft3 + paddingLeft2;
                    int i18 = i11 + paddingLeft2;
                    nVImageView3.layout(paddingLeft3, i11, i17 - 1, i18 - 1);
                    i16++;
                    if (i16 == length) {
                        paddingLeft3 = getPaddingLeft();
                        i11 = i18;
                    } else {
                        paddingLeft3 = i17;
                    }
                }
                i9++;
            }
        }
        if (this.more.getVisibility() == 0) {
            if (Utils.isRtl()) {
                paddingLeft = getPaddingLeft();
            } else {
                paddingLeft = getPaddingLeft() + ((length - 1) * paddingLeft2);
            }
            int paddingBottom2 = (i8 - getPaddingBottom()) - paddingLeft2;
            this.more.layout(paddingLeft, paddingBottom2, paddingLeft + paddingLeft2, paddingLeft2 + paddingBottom2);
        }
    }
}
