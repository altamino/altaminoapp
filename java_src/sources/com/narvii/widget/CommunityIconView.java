package com.narvii.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import androidx.core.content.ContextCompat;
import com.narvii.lib.R;
import com.narvii.model.Community;

/* JADX INFO: loaded from: classes7.dex */
public class CommunityIconView extends ThumbImageView {
    Community community;

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

    public void setCommunity(Community community) {
        if (community == null) {
            return;
        }
        this.community = community;
        setDefaultDrawable(getCommunityIconBackground());
        setImageUrl(community.icon);
    }

    public CommunityIconView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.imageType = NVImageView.TYPE_COMMUNITY_ICON;
    }

    @Override // com.narvii.widget.NVImageView, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        int width = (int) (((getWidth() - getPaddingLeft()) - getPaddingRight()) * 0.226f);
        if (this.cornerRadius != width) {
            this.cornerRadius = width;
            setDefaultDrawable(getCommunityIconBackground());
            invalidate();
        }
    }
}
