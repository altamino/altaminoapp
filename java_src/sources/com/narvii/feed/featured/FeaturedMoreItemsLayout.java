package com.narvii.feed.featured;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import com.narvii.amino.master.R;
import com.narvii.widget.MaskView;
import com.narvii.widget.SecretImageView;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class FeaturedMoreItemsLayout extends MaskView {
    int count;
    private List<Boolean> needBlurImage;
    SecretImageView v1;

    /* JADX INFO: renamed from: v2, reason: collision with root package name */
    SecretImageView f2269v2;

    /* JADX INFO: renamed from: v3, reason: collision with root package name */
    SecretImageView f2270v3;

    /* JADX INFO: renamed from: v4, reason: collision with root package name */
    SecretImageView f2271v4;

    public void setNeedBlurImage(List<Boolean> list) {
        this.needBlurImage = list;
    }

    private boolean needBlurCurrentImage(int i10) {
        List<Boolean> list = this.needBlurImage;
        if (list == null || list.size() <= i10) {
            return false;
        }
        return this.needBlurImage.get(i10).booleanValue();
    }

    public void setThumbUrls(List<String> list) {
        if (list == null || list.isEmpty()) {
            set(new String[0]);
        } else {
            set((String[]) list.toArray(new String[list.size()]));
        }
    }

    public FeaturedMoreItemsLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.count = -1;
    }

    protected void set(String... strArr) {
        SecretImageView secretImageView;
        SecretImageView secretImageView2;
        SecretImageView secretImageView3;
        SecretImageView secretImageView4;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        if (this.count != strArr.length) {
            this.count = strArr.length;
            removeAllViews();
            int i10 = this.count;
            if (i10 == 0) {
                layoutInflaterFrom.inflate(R.layout.feed_more_item_thumb_0, this);
            } else if (i10 < 4) {
                layoutInflaterFrom.inflate(R.layout.feed_more_item_thumb_1, this);
            } else {
                layoutInflaterFrom.inflate(R.layout.feed_more_item_thumb_4, this);
            }
            this.v1 = (SecretImageView) findViewById(R.id.image1);
            this.f2269v2 = (SecretImageView) findViewById(R.id.image2);
            this.f2270v3 = (SecretImageView) findViewById(R.id.image3);
            this.f2271v4 = (SecretImageView) findViewById(R.id.image4);
        }
        if (strArr.length > 0 && (secretImageView4 = this.v1) != null) {
            secretImageView4.setImageUrl(strArr[0], needBlurCurrentImage(0));
        }
        if (strArr.length > 1 && (secretImageView3 = this.f2269v2) != null) {
            secretImageView3.setImageUrl(strArr[1], needBlurCurrentImage(1));
        }
        if (strArr.length > 2 && (secretImageView2 = this.f2270v3) != null) {
            secretImageView2.setImageUrl(strArr[2], needBlurCurrentImage(2));
        }
        if (strArr.length > 3 && (secretImageView = this.f2271v4) != null) {
            secretImageView.setImageUrl(strArr[3], needBlurCurrentImage(3));
        }
    }
}
