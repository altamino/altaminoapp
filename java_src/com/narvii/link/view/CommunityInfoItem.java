package com.narvii.link.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.model.Community;
import com.narvii.widget.NVImageView;

/* loaded from: classes.dex */
public class CommunityInfoItem extends LinearLayout {
    public NVImageView icon;
    private TextView name;

    public CommunityInfoItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.icon = (NVImageView) findViewById(R.id.community_icon);
        this.name = (TextView) findViewById(R.id.community_name);
    }

    public void setDarkTheme(boolean z) {
        this.name.setTextColor(z ? -1 : -5000269);
    }

    public void setCommunity(Community community) {
        this.icon.setImageUrl(community.icon);
        this.name.setText(community.name);
    }
}
