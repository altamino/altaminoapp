package com.narvii.headlines;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.support.transition.ChangeBounds;
import android.support.transition.Fade;
import android.support.transition.TransitionManager;
import android.support.transition.TransitionSet;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.model.FeaturedTag;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;

/* loaded from: classes2.dex */
public class HeadlineFeatureLabel extends FrameLayout {
    public static final int MODE_COLLAPSE = 0;
    public static final int MODE_EXPANDED = 1;
    private static final int PADING_DP = 0;
    private static final int PADING_DP_EXPEND_HOR = 6;
    private static final int PADING_DP_EXPEND_VEC = 2;
    private NVImageView imgIcon;
    private View labelContaienr;
    private TextView tvLabel;

    public HeadlineFeatureLabel(Context context) {
        super(context);
    }

    public HeadlineFeatureLabel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        FrameLayout.inflate(context, R.layout.feature_label_layout, this);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.tvLabel = (TextView) findViewById(R.id.label);
        this.imgIcon = (NVImageView) findViewById(R.id.label_icon);
        this.labelContaienr = findViewById(R.id.feature_label_container);
        this.imgIcon.setShowPressedMask(false);
    }

    public void setFeatureTag(FeaturedTag featuredTag) {
        setFeatureTag(featuredTag, 0);
    }

    public void setFeatureTag(FeaturedTag featuredTag, int i) {
        if (featuredTag == null) {
            return;
        }
        this.tvLabel.setText(featuredTag.text);
        this.tvLabel.setVisibility(i == 1 ? 0 : 8);
        this.imgIcon.setImageUrl(featuredTag.icon);
        this.imgIcon.setVisibility(i != 0 ? 8 : 0);
        int iDpToPxInt = Utils.dpToPxInt(getContext(), i == 1 ? 6.0f : 0.0f);
        int iDpToPxInt2 = Utils.dpToPxInt(getContext(), i == 1 ? 2.0f : 0.0f);
        this.labelContaienr.setPadding(iDpToPxInt, iDpToPxInt2, iDpToPxInt, iDpToPxInt2);
        this.labelContaienr.setBackgroundDrawable(getBackgroundDrawable(featuredTag.color));
    }

    private Drawable getBackgroundDrawable(int i) {
        float fDpToPx = Utils.dpToPx(getContext(), 10.0f);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadius(fDpToPx);
        return gradientDrawable;
    }

    public void expand() {
        ChangeBounds changeBounds = new ChangeBounds();
        changeBounds.setDuration(200L);
        Fade fade = new Fade(1);
        Fade fade2 = new Fade(2);
        fade2.setDuration(200L);
        fade.setDuration(200L);
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.setOrdering(0);
        transitionSet.addTransition(changeBounds).addTransition(fade2).addTransition(fade);
        TransitionManager.beginDelayedTransition(this, transitionSet);
        this.tvLabel.setVisibility(0);
        this.imgIcon.setVisibility(4);
        int iDpToPxInt = Utils.dpToPxInt(getContext(), 6.0f);
        int iDpToPxInt2 = Utils.dpToPxInt(getContext(), 2.0f);
        this.labelContaienr.setPadding(iDpToPxInt, iDpToPxInt2, iDpToPxInt, iDpToPxInt2);
    }

    public void collapse() {
        ChangeBounds changeBounds = new ChangeBounds();
        changeBounds.setDuration(200L);
        Fade fade = new Fade(1);
        Fade fade2 = new Fade(2);
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.setOrdering(0);
        transitionSet.addTransition(changeBounds).addTransition(fade).addTransition(fade2);
        TransitionManager.beginDelayedTransition(this, transitionSet);
        this.tvLabel.setVisibility(8);
        this.imgIcon.setVisibility(0);
        int iDpToPxInt = Utils.dpToPxInt(getContext(), 0.0f);
        int iDpToPxInt2 = Utils.dpToPxInt(getContext(), 0.0f);
        this.labelContaienr.setPadding(iDpToPxInt, iDpToPxInt2, iDpToPxInt, iDpToPxInt2);
    }
}
