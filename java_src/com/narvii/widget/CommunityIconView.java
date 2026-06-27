package com.narvii.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import com.narvii.lib.R;
import com.narvii.model.Community;

/* loaded from: classes3.dex */
public class CommunityIconView extends ThumbImageView {
    Community community;

    public CommunityIconView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.imageType = NVImageView.TYPE_COMMUNITY_ICON;
    }

    public void setCommunity(Community community) {
        if (community == null) {
            return;
        }
        this.community = community;
        setDefaultDrawable(getCommunityIconBackground());
        setImageUrl(community.icon);
    }

    public Drawable getCommunityIconBackground() {
        Community community = this.community;
        if (community == null) {
            return null;
        }
        if (community.themePack == null) {
            return ContextCompat.getDrawable(getContext(), R.drawable.placeholder_community_big);
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(this.community.themeColor());
        gradientDrawable.setCornerRadius(this.cornerRadius);
        return gradientDrawable;
    }

    @Override // com.narvii.widget.NVImageView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int width = (int) (((getWidth() - getPaddingLeft()) - getPaddingRight()) * 0.226f);
        if (this.cornerRadius != width) {
            this.cornerRadius = width;
            setDefaultDrawable(getCommunityIconBackground());
            invalidate();
        }
    }
}
