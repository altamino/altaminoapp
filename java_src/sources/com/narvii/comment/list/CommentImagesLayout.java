package com.narvii.comment.list;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.core.content.ContextCompat;
import com.narvii.amino.master.R;
import com.narvii.model.Media;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
public class CommentImagesLayout extends LinearLayout {
    static final float RATIO = 0.715f;
    boolean darkTheme;
    NVImageView image1;
    NVImageView image2;
    NVImageView image3;
    NVImageView image4;
    NVImageView image5;

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        char c7;
        if (this.image5.getVisibility() == 0) {
            c7 = 5;
        } else if (this.image4.getVisibility() == 0) {
            c7 = 4;
        } else if (this.image3.getVisibility() == 0) {
            c7 = 3;
        } else if (this.image2.getVisibility() == 0) {
            c7 = 2;
        } else {
            c7 = this.image1.getVisibility() == 0 ? (char) 1 : (char) 0;
        }
        int i14 = Utils.isRtl() ? ((ViewGroup.MarginLayoutParams) this.image1.getLayoutParams()).leftMargin : ((ViewGroup.MarginLayoutParams) this.image1.getLayoutParams()).rightMargin;
        if (c7 <= 2) {
            if (c7 <= 1) {
                if (c7 > 0) {
                    this.image1.layout(getPaddingLeft(), getPaddingTop(), (i12 - i10) - getPaddingRight(), (i13 - i11) - getPaddingBottom());
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
            int i15 = i12 - i10;
            int paddingLeft = (((i15 - getPaddingLeft()) - getPaddingRight()) - i14) / 2;
            int paddingTop = ((i13 - i11) - getPaddingTop()) - getPaddingBottom();
            int paddingTop2 = getPaddingTop();
            if (Utils.isRtl()) {
                int paddingRight = getPaddingRight();
                int i16 = i15 - paddingRight;
                int i17 = paddingTop + paddingTop2;
                this.image1.layout(i16 - paddingLeft, paddingTop2, i16, i17);
                int i18 = i15 - (paddingRight + (i14 + paddingLeft));
                this.image2.layout(i18 - paddingLeft, paddingTop2, i18, i17);
            } else {
                int paddingLeft2 = getPaddingLeft();
                int i19 = paddingTop + paddingTop2;
                this.image1.layout(paddingLeft2, paddingTop2, paddingLeft2 + paddingLeft, i19);
                int i20 = paddingLeft2 + i14 + paddingLeft;
                this.image2.layout(i20, paddingTop2, paddingLeft + i20, i19);
            }
            this.image3.layout(0, 0, 0, 0);
            this.image4.layout(0, 0, 0, 0);
            this.image5.layout(0, 0, 0, 0);
            return;
        }
        int i21 = i12 - i10;
        int paddingLeft3 = (((i21 - getPaddingLeft()) - getPaddingRight()) - (i14 * 4)) / 5;
        int paddingTop3 = ((i13 - i11) - getPaddingTop()) - getPaddingBottom();
        int paddingTop4 = getPaddingTop();
        if (!Utils.isRtl()) {
            int paddingLeft4 = getPaddingLeft();
            int i22 = paddingTop3 + paddingTop4;
            this.image1.layout(paddingLeft4, paddingTop4, paddingLeft4 + paddingLeft3, i22);
            int i23 = i14 + paddingLeft3;
            int i24 = paddingLeft4 + i23;
            this.image2.layout(i24, paddingTop4, i24 + paddingLeft3, i22);
            int i25 = i24 + i23;
            this.image3.layout(i25, paddingTop4, i25 + paddingLeft3, i22);
            int i26 = i25 + i23;
            if (c7 < 4) {
                this.image4.layout(0, 0, 0, 0);
            } else {
                this.image4.layout(i26, paddingTop4, i26 + paddingLeft3, i22);
            }
            int i27 = i26 + i23;
            if (c7 < 5) {
                this.image5.layout(0, 0, 0, 0);
                return;
            } else {
                this.image5.layout(i27, paddingTop4, paddingLeft3 + i27, i22);
                return;
            }
        }
        int paddingRight2 = getPaddingRight();
        int i28 = i21 - paddingRight2;
        int i29 = paddingTop3 + paddingTop4;
        this.image1.layout(i28 - paddingLeft3, paddingTop4, i28, i29);
        int i30 = i14 + paddingLeft3;
        int i31 = paddingRight2 + i30;
        int i32 = i21 - i31;
        this.image2.layout(i32 - paddingLeft3, paddingTop4, i32, i29);
        int i33 = i31 + i30;
        int i34 = i21 - i33;
        this.image3.layout(i34 - paddingLeft3, paddingTop4, i34, i29);
        int i35 = i33 + i30;
        if (c7 < 4) {
            this.image4.layout(0, 0, 0, 0);
        } else {
            int i36 = i21 - i35;
            this.image4.layout(i36 - paddingLeft3, paddingTop4, i36, i29);
        }
        int i37 = i35 + i30;
        if (c7 < 5) {
            this.image5.layout(0, 0, 0, 0);
        } else {
            int i38 = i21 - i37;
            this.image5.layout(i38 - paddingLeft3, paddingTop4, i38, i29);
        }
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

    private void setImagePlaceholder(NVImageView nVImageView) {
        if (nVImageView != null) {
            nVImageView.setDefaultDrawable(ContextCompat.getDrawable(getContext(), this.darkTheme ? R.color.placeholder_darker : R.color.placeholder));
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        char c7;
        if (this.image5.getVisibility() == 0) {
            c7 = 5;
        } else if (this.image4.getVisibility() == 0) {
            c7 = 4;
        } else if (this.image3.getVisibility() == 0) {
            c7 = 3;
        } else if (this.image2.getVisibility() == 0) {
            c7 = 2;
        } else {
            c7 = this.image1.getVisibility() == 0 ? (char) 1 : (char) 0;
        }
        if (c7 > 2) {
            int i12 = ((ViewGroup.MarginLayoutParams) this.image1.getLayoutParams()).rightMargin;
            int size = View.MeasureSpec.getSize(i10);
            setMeasuredDimension(size, ((((size - getPaddingLeft()) - getPaddingRight()) - (i12 * 4)) / 5) + getPaddingTop() + getPaddingBottom());
        } else if (c7 > 1) {
            int i13 = ((ViewGroup.MarginLayoutParams) this.image1.getLayoutParams()).rightMargin;
            int size2 = View.MeasureSpec.getSize(i10);
            setMeasuredDimension(size2, ((int) (((((size2 - getPaddingLeft()) - getPaddingRight()) - i13) / 2) * RATIO)) + getPaddingTop() + getPaddingBottom());
        } else if (c7 <= 0) {
            setMeasuredDimension(0, 0);
        } else {
            int size3 = View.MeasureSpec.getSize(i10);
            setMeasuredDimension(size3, ((int) (((size3 - getPaddingLeft()) - getPaddingRight()) * RATIO)) + getPaddingTop() + getPaddingBottom());
        }
    }

    public void setDarkTheme(boolean z6) {
        setImagePlaceholder(this.image1);
        setImagePlaceholder(this.image2);
        setImagePlaceholder(this.image3);
        setImagePlaceholder(this.image4);
        setImagePlaceholder(this.image5);
    }

    public CommentImagesLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
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
}
