package com.narvii.link.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.model.Community;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes8.dex */
public class CommunityInfoItem extends LinearLayout {
    public NVImageView icon;
    private TextView name;

    public void setCommunity(Community community) {
        this.icon.setImageUrl(community.icon);
        this.name.setText(community.name);
    }

    public void setDarkTheme(boolean z6) {
        this.name.setTextColor(z6 ? -1 : -5000269);
    }

    public CommunityInfoItem(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.icon = (NVImageView) findViewById(R.id.community_icon);
        this.name = (TextView) findViewById(R.id.community_name);
    }
}
