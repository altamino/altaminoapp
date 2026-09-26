package com.narvii.widget;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.model.Media;
import com.narvii.util.Log;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes4.dex */
public class FlexSizeImageViewDelegate implements IFlexSizeImageView {
    private ConfigService configService;
    private int estimatedHeight;
    private int estimatedWidth;
    private IFlexSizeCallback flexSizeCallback;
    private int heightFromUrl;
    private NVImageView host;
    private boolean keepRatio;
    private float preferredRatio;
    private float ratioFromUrl = -1.0f;
    private int widthFromUrl;

    public interface IFlexSizeCallback {
        void adjustSize(int[] iArr);

        void onSuperMeasuredCalled(int i10, int i11);
    }

    public void setImageSize(int i10, int i11) {
        this.ratioFromUrl = Math.round((i11 / (i10 * 1.0f)) * 100.0f) / 100.0f;
        this.widthFromUrl = Math.max(i10, ViewCompat.F(this.host));
        this.heightFromUrl = Math.max(i11, ViewCompat.E(this.host));
        if (this.widthFromUrl == (this.host.getWidth() - this.host.getPaddingLeft()) - this.host.getPaddingRight() && this.heightFromUrl == (this.host.getHeight() - this.host.getPaddingTop()) - this.host.getPaddingBottom()) {
            return;
        }
        this.host.requestLayout();
    }

    @Override // com.narvii.widget.IFlexSizeImageView
    public void setImageSizeFromUrl(String str) {
        setImageSizeFromUrl(str, false);
    }

    public void setKeepRatio(boolean z6) {
        this.keepRatio = z6;
    }

    private ConfigService getConfigService() {
        NVContext nVContext;
        if (this.configService == null && (nVContext = Utils.getNVContext(this.host.getContext())) != null) {
            this.configService = (ConfigService) nVContext.getService("config");
        }
        ConfigService configService = this.configService;
        if (configService != null) {
            return configService;
        }
        Log.e("unable to get a configService in context " + this.host.getContext());
        return (ConfigService) NVApplication.instance().getService("imageLoader");
    }

    @Override // com.narvii.widget.IFlexSizeImageView
    public void flexMeasure(int i10, int i11) {
        int i12;
        int intrinsicWidth;
        int intrinsicHeight;
        if (this.ratioFromUrl > 0.0f) {
            int i13 = this.widthFromUrl;
            if (i13 > 0 && this.heightFromUrl > 0) {
                NVImageView nVImageView = this.host;
                int paddingLeft = i13 + nVImageView.getPaddingLeft() + this.host.getPaddingRight();
                NVImageView nVImageView2 = this.host;
                nVImageView.innerSetMeasuredDimension(paddingLeft, nVImageView2.getFixedHeight(this.heightFromUrl + nVImageView2.getPaddingTop() + this.host.getPaddingBottom()));
                return;
            }
            this.flexSizeCallback.onSuperMeasuredCalled(i10, i11);
            int measuredWidth = (this.host.getMeasuredWidth() - this.host.getPaddingLeft()) - this.host.getPaddingRight();
            NVImageView nVImageView3 = this.host;
            int fixedHeight = nVImageView3.getFixedHeight(((int) ((measuredWidth * this.ratioFromUrl) + 0.5f)) + nVImageView3.getPaddingTop() + this.host.getPaddingBottom());
            if (this.keepRatio) {
                this.host.innerSetMeasuredDimension((int) (fixedHeight / this.ratioFromUrl), fixedHeight);
                return;
            } else {
                NVImageView nVImageView4 = this.host;
                nVImageView4.innerSetMeasuredDimension(nVImageView4.getMeasuredWidth(), fixedHeight);
                return;
            }
        }
        int size = View.MeasureSpec.getSize(i10);
        boolean z6 = View.MeasureSpec.getMode(i11) != 1073741824;
        if (size <= 0 || !z6) {
            this.flexSizeCallback.onSuperMeasuredCalled(i10, i11);
            return;
        }
        int paddingLeft2 = (size - this.host.getPaddingLeft()) - this.host.getPaddingRight();
        Drawable drawable = this.host.getStatus() == 4 ? this.host.getDrawable() : null;
        float f = this.preferredRatio;
        if (drawable == null || (intrinsicWidth = drawable.getIntrinsicWidth()) <= 0 || (intrinsicHeight = drawable.getIntrinsicHeight()) <= 0) {
            i12 = (int) (this.preferredRatio * paddingLeft2);
        } else {
            f = (intrinsicHeight * 1.0f) / intrinsicWidth;
            i12 = (intrinsicHeight * paddingLeft2) / intrinsicWidth;
        }
        NVImageView nVImageView5 = this.host;
        int fixedHeight2 = nVImageView5.getFixedHeight(i12 + nVImageView5.getPaddingTop() + this.host.getPaddingBottom());
        if (this.keepRatio) {
            this.host.innerSetMeasuredDimension((int) (fixedHeight2 / f), fixedHeight2);
        } else {
            this.host.innerSetMeasuredDimension(size, fixedHeight2);
        }
    }

    @Override // com.narvii.widget.IFlexSizeImageView
    public void setImageSizeFromUrl(String str, boolean z6) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        int i10 = this.estimatedWidth;
        if (i10 <= 0) {
            i10 = 0;
        }
        int i11 = this.estimatedHeight;
        if (i11 <= 0) {
            i11 = 0;
        }
        Media media = new Media();
        media.url = str;
        NVImageView nVImageView = this.host;
        int[] imageSizeFromUrl = Utils.getImageSizeFromUrl(nVImageView.getRequestUrl(media, nVImageView.visible, i10, i11), getConfigService(), z6);
        if (imageSizeFromUrl == null) {
            return;
        }
        this.flexSizeCallback.adjustSize(imageSizeFromUrl);
        setImageSize(imageSizeFromUrl[0], imageSizeFromUrl[1]);
    }

    public FlexSizeImageViewDelegate(@NonNull NVImageView nVImageView, float f, int i10, int i11, @NonNull IFlexSizeCallback iFlexSizeCallback) {
        this.host = nVImageView;
        this.preferredRatio = f;
        this.estimatedHeight = i11;
        this.estimatedWidth = i10;
        this.flexSizeCallback = iFlexSizeCallback;
    }

    @Override // com.narvii.widget.IFlexSizeImageView
    public float processImageUrl(String str) {
        float imageAspectRatioFromUrl = Utils.getImageAspectRatioFromUrl(str);
        this.ratioFromUrl = imageAspectRatioFromUrl;
        return imageAspectRatioFromUrl;
    }
}
