package com.narvii.feed;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.poweruser.history.ModerationHistory;
import com.narvii.util.Utils;

/* loaded from: classes2.dex */
public class Image3Layout extends ViewGroup {
    View image1;
    View image2;
    View image3;

    public Image3Layout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.image1 = findViewById(R.id.feed_image1);
        this.image2 = findViewById(R.id.feed_image2);
        this.image3 = findViewById(R.id.feed_image3);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int i3 = (size * 54) / 75;
        if (this.image1.getVisibility() == 0) {
            setMeasuredDimension(size, i3);
            if (this.image2.getVisibility() == 0) {
                this.image1.measure(View.MeasureSpec.makeMeasureSpec((size * 477) / 750, 1073741824), View.MeasureSpec.makeMeasureSpec(i3, 1073741824));
                View view = this.image2;
                int i4 = (size * ModerationHistory.OP_ADMIN_SEND_WARNING_TO_USER) / 750;
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
                int i5 = (i3 * ModerationHistory.OP_ADMIN_SEND_WARNING_TO_USER) / 540;
                view.measure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(i5, 1073741824));
                this.image3.measure(View.MeasureSpec.makeMeasureSpec(i4, 1073741824), View.MeasureSpec.makeMeasureSpec(i5, 1073741824));
                return;
            }
            this.image1.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(i3, 1073741824));
            return;
        }
        setMeasuredDimension(size, 0);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = i4 - i2;
        if (i6 > 0) {
            if (this.image2.getVisibility() == 0) {
                if (Utils.isRtl()) {
                    int i7 = (i6 * 273) / 540;
                    this.image1.layout(i7, 0, ((i5 * 477) / 750) + i7, i6);
                    View view = this.image2;
                    int i8 = (i6 * ModerationHistory.OP_ADMIN_SEND_WARNING_TO_USER) / 540;
                    view.layout(0, 0, i8, i8);
                    this.image3.layout(0, i7, i8, i4);
                    return;
                }
                this.image1.layout(0, 0, (i5 * 477) / 750, i6);
                int i9 = (i5 * 483) / 750;
                this.image2.layout(i9, 0, i5, (i6 * ModerationHistory.OP_ADMIN_SEND_WARNING_TO_USER) / 540);
                this.image3.layout(i9, (i6 * 273) / 540, i5, i6);
                return;
            }
            this.image1.layout(0, 0, i5, i6);
        }
    }
}
