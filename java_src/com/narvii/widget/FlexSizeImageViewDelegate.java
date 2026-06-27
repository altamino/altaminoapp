package com.narvii.widget;

import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import android.view.View;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.model.Media;
import com.narvii.util.Log;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
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

        void onSuperMeasuredCalled(int i, int i2);
    }

    public FlexSizeImageViewDelegate(NVImageView nVImageView, float f, int i, int i2, IFlexSizeCallback iFlexSizeCallback) {
        this.host = nVImageView;
        this.preferredRatio = f;
        this.estimatedHeight = i2;
        this.estimatedWidth = i;
        this.flexSizeCallback = iFlexSizeCallback;
    }

    @Override // com.narvii.widget.IFlexSizeImageView
    public float processImageUrl(String str) {
        this.ratioFromUrl = Utils.getImageAspectRatioFromUrl(str);
        return this.ratioFromUrl;
    }

    @Override // com.narvii.widget.IFlexSizeImageView
    public void setImageSizeFromUrl(String str) throws NumberFormatException {
        setImageSizeFromUrl(str, false);
    }

    @Override // com.narvii.widget.IFlexSizeImageView
    public void setImageSizeFromUrl(String str, boolean z) throws NumberFormatException {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        int i = this.estimatedWidth;
        if (i <= 0) {
            i = 0;
        }
        int i2 = this.estimatedHeight;
        if (i2 <= 0) {
            i2 = 0;
        }
        Media media = new Media();
        media.url = str;
        NVImageView nVImageView = this.host;
        int[] imageSizeFromUrl = Utils.getImageSizeFromUrl(nVImageView.getRequestUrl(media, nVImageView.visible, i, i2), getConfigService(), z);
        if (imageSizeFromUrl == null) {
            return;
        }
        this.flexSizeCallback.adjustSize(imageSizeFromUrl);
        setImageSize(imageSizeFromUrl[0], imageSizeFromUrl[1]);
    }

    public void setImageSize(int i, int i2) {
        this.ratioFromUrl = Math.round((i2 / (i * 1.0f)) * 100.0f) / 100.0f;
        this.widthFromUrl = Math.max(i, ViewCompat.getMinimumWidth(this.host));
        this.heightFromUrl = Math.max(i2, ViewCompat.getMinimumHeight(this.host));
        if (this.widthFromUrl == (this.host.getWidth() - this.host.getPaddingLeft()) - this.host.getPaddingRight() && this.heightFromUrl == (this.host.getHeight() - this.host.getPaddingTop()) - this.host.getPaddingBottom()) {
            return;
        }
        this.host.requestLayout();
    }

    @Override // com.narvii.widget.IFlexSizeImageView
    public void flexMeasure(int i, int i2) {
        int i3;
        int intrinsicWidth;
        int intrinsicHeight;
        if (this.ratioFromUrl > 0.0f) {
            int i4 = this.widthFromUrl;
            if (i4 > 0 && this.heightFromUrl > 0) {
                NVImageView nVImageView = this.host;
                int paddingLeft = i4 + nVImageView.getPaddingLeft() + this.host.getPaddingRight();
                NVImageView nVImageView2 = this.host;
                nVImageView.innerSetMeasuredDimension(paddingLeft, nVImageView2.getFixedHeight(this.heightFromUrl + nVImageView2.getPaddingTop() + this.host.getPaddingBottom()));
                return;
            }
            this.flexSizeCallback.onSuperMeasuredCalled(i, i2);
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
        int size = View.MeasureSpec.getSize(i);
        boolean z = View.MeasureSpec.getMode(i2) != 1073741824;
        if (size > 0 && z) {
            int paddingLeft2 = (size - this.host.getPaddingLeft()) - this.host.getPaddingRight();
            Drawable drawable = this.host.getStatus() == 4 ? this.host.getDrawable() : null;
            float f = this.preferredRatio;
            if (drawable != null && (intrinsicWidth = drawable.getIntrinsicWidth()) > 0 && (intrinsicHeight = drawable.getIntrinsicHeight()) > 0) {
                f = (intrinsicHeight * 1.0f) / intrinsicWidth;
                i3 = (intrinsicHeight * paddingLeft2) / intrinsicWidth;
            } else {
                i3 = (int) (this.preferredRatio * paddingLeft2);
            }
            NVImageView nVImageView5 = this.host;
            int fixedHeight2 = nVImageView5.getFixedHeight(i3 + nVImageView5.getPaddingTop() + this.host.getPaddingBottom());
            if (this.keepRatio) {
                this.host.innerSetMeasuredDimension((int) (fixedHeight2 / f), fixedHeight2);
                return;
            } else {
                this.host.innerSetMeasuredDimension(size, fixedHeight2);
                return;
            }
        }
        this.flexSizeCallback.onSuperMeasuredCalled(i, i2);
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

    public void setKeepRatio(boolean z) {
        this.keepRatio = z;
    }
}
