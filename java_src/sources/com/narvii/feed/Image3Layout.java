package com.narvii.feed;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.master.R;
import com.narvii.poweruser.history.ModerationHistory;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes4.dex */
public class Image3Layout extends ViewGroup {
    View image1;
    View image2;
    View image3;

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        int i14 = i12 - i10;
        int i15 = i13 - i11;
        if (i15 > 0) {
            if (this.image2.getVisibility() != 0) {
                this.image1.layout(0, 0, i14, i15);
                return;
            }
            if (!Utils.isRtl()) {
                this.image1.layout(0, 0, (i14 * 477) / 750, i15);
                int i16 = (i14 * 483) / 750;
                this.image2.layout(i16, 0, i14, (i15 * ModerationHistory.OP_ADMIN_SEND_WARNING_TO_USER) / 540);
                this.image3.layout(i16, (i15 * 273) / 540, i14, i15);
                return;
            }
            int i17 = (i15 * 273) / 540;
            this.image1.layout(i17, 0, ((i14 * 477) / 750) + i17, i15);
            View view = this.image2;
            int i18 = (i15 * ModerationHistory.OP_ADMIN_SEND_WARNING_TO_USER) / 540;
            view.layout(0, 0, i18, i18);
            this.image3.layout(0, i17, i18, i13);
        }
    }

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
    protected void onMeasure(int i10, int i11) {
        int size = View.MeasureSpec.getSize(i10);
        int i12 = (size * 54) / 75;
        if (this.image1.getVisibility() == 0) {
            setMeasuredDimension(size, i12);
            if (this.image2.getVisibility() == 0) {
                this.image1.measure(View.MeasureSpec.makeMeasureSpec((size * 477) / 750, 1073741824), View.MeasureSpec.makeMeasureSpec(i12, 1073741824));
                View view = this.image2;
                int i13 = (size * ModerationHistory.OP_ADMIN_SEND_WARNING_TO_USER) / 750;
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i13, 1073741824);
                int i14 = (i12 * ModerationHistory.OP_ADMIN_SEND_WARNING_TO_USER) / 540;
                view.measure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(i14, 1073741824));
                this.image3.measure(View.MeasureSpec.makeMeasureSpec(i13, 1073741824), View.MeasureSpec.makeMeasureSpec(i14, 1073741824));
                return;
            }
            this.image1.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(i12, 1073741824));
            return;
        }
        setMeasuredDimension(size, 0);
    }
}
