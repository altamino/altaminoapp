package com.narvii.feed;

import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.narvii.amino.mastes.R;
import com.narvii.widget.TintButton;

/* loaded from: classes2.dex */
public class FeedToolbarExternalLayout extends LinearLayout {
    private static String likeStr;
    private boolean darkTheme;
    TintButton moreActionIcon;

    public FeedToolbarExternalLayout(Context context) {
        this(context, null);
    }

    public FeedToolbarExternalLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.moreActionIcon = (TintButton) findViewById(R.id.feed_external_toolbar_more_icon);
    }

    public void setDarkTheme(boolean z) {
        if (this.darkTheme == z) {
            return;
        }
        this.darkTheme = z;
        int color = ContextCompat.getColor(getContext(), R.color.feed_toolbar_grey);
        TintButton tintButton = this.moreActionIcon;
        if (tintButton != null) {
            if (z) {
                color = -1;
            }
            tintButton.setTintColor(color);
        }
    }
}
