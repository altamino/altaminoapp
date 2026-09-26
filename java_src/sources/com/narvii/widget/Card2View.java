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

/* JADX INFO: loaded from: classes9.dex */
public class Card2View extends ViewGroup {
    TextView content;
    int imgCount;
    NVImageView[] imgs;
    boolean isDarkTheme;
    boolean isOfficial;
    View more;
    Rect rect;

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        NVImageView[] nVImageViewArr = this.imgs;
        int i14 = 1;
        int i15 = 2;
        int length = (nVImageViewArr.length + 1) / 2;
        int iMin = Math.min(this.imgCount, nVImageViewArr.length);
        int i16 = i12 - i10;
        int i17 = i13 - i11;
        int paddingLeft = ((i16 - getPaddingLeft()) - getPaddingRight()) / length;
        int paddingLeft2 = getPaddingLeft();
        if (this.content.getMeasuredHeight() > (i17 - getPaddingBottom()) - (paddingLeft * 2) && iMin > length) {
            iMin = length;
        }
        int i18 = 0;
        int i19 = 0;
        while (true) {
            NVImageView[] nVImageViewArr2 = this.imgs;
            int i20 = 4;
            if (i19 >= nVImageViewArr2.length) {
                break;
            }
            NVImageView nVImageView = nVImageViewArr2[i19];
            if (i19 < iMin) {
                i20 = 0;
            }
            nVImageView.setVisibility(i20);
            i19++;
        }
        this.more.setVisibility(this.imgCount > iMin ? 0 : 4);
        int paddingBottom = i17 - getPaddingBottom();
        if (iMin == 0) {
            i15 = 0;
        } else if (iMin <= length) {
            i15 = 1;
        }
        int i21 = paddingBottom - (i15 * paddingLeft);
        int paddingTop = i21 - getPaddingTop();
        if (this.content.getMeasuredHeight() > paddingTop) {
            this.content.layout(getPaddingLeft(), getPaddingTop(), i16 - getPaddingRight(), i21);
            if (this.rect == null) {
                this.rect = new Rect();
            }
            int lineCount = this.content.getLineCount();
            for (int i22 = 1; i22 < lineCount; i22++) {
                this.content.getLineBounds(i22, this.rect);
                if (this.rect.bottom > paddingTop) {
                    this.content.layout(getPaddingLeft(), getPaddingTop(), i16 - getPaddingRight(), getPaddingTop() + this.rect.top);
                    break;
                }
            }
        } else {
            this.content.measure(View.MeasureSpec.makeMeasureSpec((i16 - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec(i21 - getPaddingTop(), 1073741824));
            this.content.layout(getPaddingLeft(), getPaddingTop(), i16 - getPaddingRight(), i21);
        }
        if (Utils.isRtl()) {
            int paddingRight = getPaddingRight();
            NVImageView[] nVImageViewArr3 = this.imgs;
            int length2 = nVImageViewArr3.length;
            int i23 = i21;
            int i24 = 0;
            while (i18 < length2) {
                NVImageView nVImageView2 = nVImageViewArr3[i18];
                if (nVImageView2.getVisibility() == 0) {
                    int i25 = (i16 - paddingLeft) - paddingRight;
                    int i26 = i23 + paddingLeft;
                    nVImageView2.layout(i25, i23, (i25 + paddingLeft) - i14, i26 - 1);
                    i24++;
                    if (i24 == length) {
                        paddingRight = getPaddingRight();
                        i23 = i26;
                    } else {
                        paddingRight += paddingLeft;
                    }
                }
                i18++;
                i14 = 1;
            }
        } else {
            NVImageView[] nVImageViewArr4 = this.imgs;
            int length3 = nVImageViewArr4.length;
            int i27 = 0;
            while (i18 < length3) {
                NVImageView nVImageView3 = nVImageViewArr4[i18];
                if (nVImageView3.getVisibility() == 0) {
                    int i28 = paddingLeft2 + paddingLeft;
                    int i29 = i21 + paddingLeft;
                    nVImageView3.layout(paddingLeft2, i21, i28 - 1, i29 - 1);
                    i27++;
                    if (i27 == length) {
                        paddingLeft2 = getPaddingLeft();
                        i21 = i29;
                    } else {
                        paddingLeft2 = i28;
                    }
                }
                i18++;
            }
        }
        if (this.more.getVisibility() == 0) {
            int paddingLeft3 = Utils.isRtl() ? getPaddingLeft() : getPaddingLeft() + ((length - 1) * paddingLeft);
            int paddingBottom2 = (i17 - getPaddingBottom()) - paddingLeft;
            this.more.layout(paddingLeft3, paddingBottom2, paddingLeft3 + paddingLeft, paddingLeft + paddingBottom2);
        }
    }

    public void setDarkTheme(boolean z6) {
        if (this.isDarkTheme == z6) {
            return;
        }
        this.isDarkTheme = z6;
        this.content.setTextColor(z6 ? -1 : -7829368);
    }

    public void setImages(List<Media> list, int i10, boolean z6) {
        if (list == null) {
            list = new ArrayList<>();
        }
        int size = list.size();
        for (int i11 = 0; i11 < this.imgs.length; i11++) {
            int i12 = i11 + i10;
            Media media = i12 < size ? list.get(i12) : null;
            NVImageView nVImageView = this.imgs[i11];
            if (nVImageView instanceof SecretImageView) {
                ((SecretImageView) nVImageView).setImageMedia(media, z6);
            } else {
                nVImageView.setImageMedia(media);
            }
        }
        this.imgCount = list.size() - i10;
        requestLayout();
    }

    public void setOfficial(boolean z6) {
        if (this.isOfficial == z6) {
            return;
        }
        this.isOfficial = z6;
        setBackgroundResource(z6 ? R.drawable.feed_item_card_2_gold : R.drawable.feed_item_card_2);
    }

    public Card2View(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.content = (TextView) findViewById(R.id.content);
        ArrayList arrayList = new ArrayList();
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
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
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int size = (View.MeasureSpec.getSize(i10) - getPaddingLeft()) - getPaddingRight();
        this.content.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec((View.MeasureSpec.getSize(i11) - getPaddingTop()) - getPaddingBottom(), Integer.MIN_VALUE));
        NVImageView[] nVImageViewArr = this.imgs;
        int length = size / ((nVImageViewArr.length + 1) / 2);
        for (NVImageView nVImageView : nVImageViewArr) {
            nVImageView.measure(View.MeasureSpec.makeMeasureSpec(length, 1073741824), View.MeasureSpec.makeMeasureSpec(length, 1073741824));
        }
        this.more.measure(View.MeasureSpec.makeMeasureSpec(length, 1073741824), View.MeasureSpec.makeMeasureSpec(length, 1073741824));
    }
}
