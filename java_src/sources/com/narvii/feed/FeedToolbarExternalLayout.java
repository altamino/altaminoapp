package com.narvii.feed;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.core.content.ContextCompat;
import com.narvii.amino.master.R;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes6.dex */
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

    public void setDarkTheme(boolean z6) {
        if (this.darkTheme == z6) {
            return;
        }
        this.darkTheme = z6;
        int color = ContextCompat.getColor(getContext(), R.color.feed_toolbar_grey);
        TintButton tintButton = this.moreActionIcon;
        if (tintButton != null) {
            if (z6) {
                color = -1;
            }
            tintButton.setTintColor(color);
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.moreActionIcon = (TintButton) findViewById(R.id.feed_external_toolbar_more_icon);
    }
}
