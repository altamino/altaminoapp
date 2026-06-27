package com.narvii.comment.list;

import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.narvii.amino.mastes.R;
import com.narvii.model.Media;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;
import java.util.List;

/* loaded from: classes2.dex */
public class CommentImagesLayout extends LinearLayout {
    static final float RATIO = 0.715f;
    boolean darkTheme;
    NVImageView image1;
    NVImageView image2;
    NVImageView image3;
    NVImageView image4;
    NVImageView image5;

    public CommentImagesLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setDarkTheme(boolean z) {
        setImagePlaceholder(this.image1);
        setImagePlaceholder(this.image2);
        setImagePlaceholder(this.image3);
        setImagePlaceholder(this.image4);
        setImagePlaceholder(this.image5);
    }

    private void setImagePlaceholder(NVImageView nVImageView) {
        if (nVImageView != null) {
            nVImageView.setDefaultDrawable(ContextCompat.getDrawable(getContext(), this.darkTheme ? R.color.placeholder_darker : R.color.placeholder));
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.image1 = (NVImageView) findViewById(R.id.image1);
        this.image2 = (NVImageView) findViewById(R.id.image2);
        this.image3 = (NVImageView) findViewById(R.id.image3);
        this.image4 = (NVImageView) findViewById(R.id.image4);
        this.image5 = (NVImageView) findViewById(R.id.image5);
        this.image1.setVisibility(8);
        this.image2.setVisibility(8);
        this.image3.setVisibility(8);
        this.image4.setVisibility(8);
        this.image5.setVisibility(8);
    }

    public void setImages(List<Media> list) {
        int size = list == null ? 0 : list.size();
        this.image1.setVisibility(size > 0 ? 0 : 8);
        this.image1.setImageMedia(size > 0 ? list.get(0) : null);
        this.image2.setVisibility(size > 1 ? 0 : 8);
        this.image2.setImageMedia(size > 1 ? list.get(1) : null);
        this.image3.setVisibility(size > 2 ? 0 : 8);
        this.image3.setImageMedia(size > 2 ? list.get(2) : null);
        this.image4.setVisibility(size > 3 ? 0 : 8);
        this.image4.setImageMedia(size > 3 ? list.get(3) : null);
        this.image5.setVisibility(size <= 4 ? 8 : 0);
        this.image5.setImageMedia(size > 4 ? list.get(4) : null);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        char c;
        if (this.image5.getVisibility() == 0) {
            c = 5;
        } else if (this.image4.getVisibility() == 0) {
            c = 4;
        } else if (this.image3.getVisibility() == 0) {
            c = 3;
        } else if (this.image2.getVisibility() == 0) {
            c = 2;
        } else {
            c = this.image1.getVisibility() == 0 ? (char) 1 : (char) 0;
        }
        if (c > 2) {
            int i3 = ((ViewGroup.MarginLayoutParams) this.image1.getLayoutParams()).rightMargin;
            int size = View.MeasureSpec.getSize(i);
            setMeasuredDimension(size, ((((size - getPaddingLeft()) - getPaddingRight()) - (i3 * 4)) / 5) + getPaddingTop() + getPaddingBottom());
        } else if (c > 1) {
            int i4 = ((ViewGroup.MarginLayoutParams) this.image1.getLayoutParams()).rightMargin;
            setMeasuredDimension(View.MeasureSpec.getSize(i), ((int) (((((r6 - getPaddingLeft()) - getPaddingRight()) - i4) / 2) * RATIO)) + getPaddingTop() + getPaddingBottom());
        } else if (c > 0) {
            setMeasuredDimension(View.MeasureSpec.getSize(i), ((int) (((r6 - getPaddingLeft()) - getPaddingRight()) * RATIO)) + getPaddingTop() + getPaddingBottom());
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        char c;
        int i5;
        if (this.image5.getVisibility() == 0) {
            c = 5;
        } else if (this.image4.getVisibility() == 0) {
            c = 4;
        } else if (this.image3.getVisibility() == 0) {
            c = 3;
        } else if (this.image2.getVisibility() == 0) {
            c = 2;
        } else {
            c = this.image1.getVisibility() == 0 ? (char) 1 : (char) 0;
        }
        if (Utils.isRtl()) {
            i5 = ((ViewGroup.MarginLayoutParams) this.image1.getLayoutParams()).leftMargin;
        } else {
            i5 = ((ViewGroup.MarginLayoutParams) this.image1.getLayoutParams()).rightMargin;
        }
        if (c <= 2) {
            if (c <= 1) {
                if (c > 0) {
                    this.image1.layout(getPaddingLeft(), getPaddingTop(), (i3 - i) - getPaddingRight(), (i4 - i2) - getPaddingBottom());
                    this.image2.layout(0, 0, 0, 0);
                    this.image3.layout(0, 0, 0, 0);
                    this.image4.layout(0, 0, 0, 0);
                    this.image5.layout(0, 0, 0, 0);
                    return;
                }
                this.image1.layout(0, 0, 0, 0);
                this.image2.layout(0, 0, 0, 0);
                this.image3.layout(0, 0, 0, 0);
                this.image4.layout(0, 0, 0, 0);
                this.image5.layout(0, 0, 0, 0);
                return;
            }
            int i6 = i3 - i;
            int paddingLeft = (((i6 - getPaddingLeft()) - getPaddingRight()) - i5) / 2;
            int paddingTop = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
            int paddingTop2 = getPaddingTop();
            if (Utils.isRtl()) {
                int paddingRight = getPaddingRight();
                int i7 = i6 - paddingRight;
                int i8 = paddingTop + paddingTop2;
                this.image1.layout(i7 - paddingLeft, paddingTop2, i7, i8);
                int i9 = i6 - (paddingRight + (i5 + paddingLeft));
                this.image2.layout(i9 - paddingLeft, paddingTop2, i9, i8);
            } else {
                int paddingLeft2 = getPaddingLeft();
                int i10 = paddingTop + paddingTop2;
                this.image1.layout(paddingLeft2, paddingTop2, paddingLeft2 + paddingLeft, i10);
                int i11 = paddingLeft2 + i5 + paddingLeft;
                this.image2.layout(i11, paddingTop2, paddingLeft + i11, i10);
            }
            this.image3.layout(0, 0, 0, 0);
            this.image4.layout(0, 0, 0, 0);
            this.image5.layout(0, 0, 0, 0);
            return;
        }
        int i12 = i3 - i;
        int paddingLeft3 = (((i12 - getPaddingLeft()) - getPaddingRight()) - (i5 * 4)) / 5;
        int paddingTop3 = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        int paddingTop4 = getPaddingTop();
        if (Utils.isRtl()) {
            int paddingRight2 = getPaddingRight();
            int i13 = i12 - paddingRight2;
            int i14 = paddingTop3 + paddingTop4;
            this.image1.layout(i13 - paddingLeft3, paddingTop4, i13, i14);
            int i15 = i5 + paddingLeft3;
            int i16 = paddingRight2 + i15;
            int i17 = i12 - i16;
            this.image2.layout(i17 - paddingLeft3, paddingTop4, i17, i14);
            int i18 = i16 + i15;
            int i19 = i12 - i18;
            this.image3.layout(i19 - paddingLeft3, paddingTop4, i19, i14);
            int i20 = i18 + i15;
            if (c < 4) {
                this.image4.layout(0, 0, 0, 0);
            } else {
                int i21 = i12 - i20;
                this.image4.layout(i21 - paddingLeft3, paddingTop4, i21, i14);
            }
            int i22 = i20 + i15;
            if (c < 5) {
                this.image5.layout(0, 0, 0, 0);
                return;
            } else {
                int i23 = i12 - i22;
                this.image5.layout(i23 - paddingLeft3, paddingTop4, i23, i14);
                return;
            }
        }
        int paddingLeft4 = getPaddingLeft();
        int i24 = paddingTop3 + paddingTop4;
        this.image1.layout(paddingLeft4, paddingTop4, paddingLeft4 + paddingLeft3, i24);
        int i25 = i5 + paddingLeft3;
        int i26 = paddingLeft4 + i25;
        this.image2.layout(i26, paddingTop4, i26 + paddingLeft3, i24);
        int i27 = i26 + i25;
        this.image3.layout(i27, paddingTop4, i27 + paddingLeft3, i24);
        int i28 = i27 + i25;
        if (c < 4) {
            this.image4.layout(0, 0, 0, 0);
        } else {
            this.image4.layout(i28, paddingTop4, i28 + paddingLeft3, i24);
        }
        int i29 = i28 + i25;
        if (c < 5) {
            this.image5.layout(0, 0, 0, 0);
        } else {
            this.image5.layout(i29, paddingTop4, paddingLeft3 + i29, i24);
        }
    }
}
