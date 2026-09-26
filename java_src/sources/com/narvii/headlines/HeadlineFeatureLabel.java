package com.narvii.headlines;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.ChangeBounds;
import androidx.transition.Fade;
import androidx.transition.TransitionManager;
import androidx.transition.TransitionSet;
import com.narvii.amino.master.R;
import com.narvii.model.FeaturedTag;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes8.dex */
public class HeadlineFeatureLabel extends FrameLayout {
    public static final int MODE_COLLAPSE = 0;
    public static final int MODE_EXPANDED = 1;
    private static final int PADING_DP = 0;
    private static final int PADING_DP_EXPEND_HOR = 6;
    private static final int PADING_DP_EXPEND_VEC = 2;
    private NVImageView imgIcon;
    private View labelContaienr;
    private TextView tvLabel;

    public HeadlineFeatureLabel(@NonNull Context context) {
        super(context);
    }

    public void setFeatureTag(FeaturedTag featuredTag) {
        setFeatureTag(featuredTag, 0);
    }

    public HeadlineFeatureLabel(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        View.inflate(context, R.layout.feature_label_layout, this);
    }

    public void collapse() {
        ChangeBounds changeBounds = new ChangeBounds();
        changeBounds.Y(200L);
        Fade fade = new Fade(1);
        Fade fade2 = new Fade(2);
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.r0(0);
        transitionSet.j0(changeBounds).j0(fade).j0(fade2);
        TransitionManager.b(this, transitionSet);
        this.tvLabel.setVisibility(8);
        this.imgIcon.setVisibility(0);
        int iDpToPxInt = Utils.dpToPxInt(getContext(), 0.0f);
        int iDpToPxInt2 = Utils.dpToPxInt(getContext(), 0.0f);
        this.labelContaienr.setPadding(iDpToPxInt, iDpToPxInt2, iDpToPxInt, iDpToPxInt2);
    }

    public void expand() {
        ChangeBounds changeBounds = new ChangeBounds();
        changeBounds.Y(200L);
        Fade fade = new Fade(1);
        Fade fade2 = new Fade(2);
        fade2.Y(200L);
        fade.Y(200L);
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.r0(0);
        transitionSet.j0(changeBounds).j0(fade2).j0(fade);
        TransitionManager.b(this, transitionSet);
        this.tvLabel.setVisibility(0);
        this.imgIcon.setVisibility(4);
        int iDpToPxInt = Utils.dpToPxInt(getContext(), 6.0f);
        int iDpToPxInt2 = Utils.dpToPxInt(getContext(), 2.0f);
        this.labelContaienr.setPadding(iDpToPxInt, iDpToPxInt2, iDpToPxInt, iDpToPxInt2);
    }

    public void setFeatureTag(FeaturedTag featuredTag, int i10) {
        if (featuredTag == null) {
            return;
        }
        this.tvLabel.setText(featuredTag.text);
        this.tvLabel.setVisibility(i10 == 1 ? 0 : 8);
        this.imgIcon.setImageUrl(featuredTag.icon);
        this.imgIcon.setVisibility(i10 == 0 ? 0 : 8);
        int iDpToPxInt = Utils.dpToPxInt(getContext(), i10 == 1 ? 6.0f : 0.0f);
        int iDpToPxInt2 = Utils.dpToPxInt(getContext(), i10 == 1 ? 2.0f : 0.0f);
        this.labelContaienr.setPadding(iDpToPxInt, iDpToPxInt2, iDpToPxInt, iDpToPxInt2);
        this.labelContaienr.setBackgroundDrawable(getBackgroundDrawable(featuredTag.color));
    }

    private Drawable getBackgroundDrawable(int i10) {
        float fDpToPx = Utils.dpToPx(getContext(), 10.0f);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i10);
        gradientDrawable.setCornerRadius(fDpToPx);
        return gradientDrawable;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.tvLabel = (TextView) findViewById(R.id.label);
        this.imgIcon = (NVImageView) findViewById(R.id.label_icon);
        this.labelContaienr = findViewById(R.id.feature_label_container);
        this.imgIcon.setShowPressedMask(false);
    }
}
