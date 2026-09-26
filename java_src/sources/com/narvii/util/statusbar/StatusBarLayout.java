package com.narvii.util.statusbar;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.lib.R;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes6.dex */
public class StatusBarLayout extends FrameLayout {
    View fakeStatusBar;

    public StatusBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public StatusBarLayout(Context context) {
        super(context);
    }

    public void setStatusBarDrawable(Drawable drawable) {
        View view = this.fakeStatusBar;
        if (view != null) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            layoutParams.height = Utils.getStatusBarHeight(getContext());
            layoutParams.gravity = 48;
            this.fakeStatusBar.setLayoutParams(layoutParams);
            this.fakeStatusBar.setBackgroundDrawable(drawable);
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.fakeStatusBar = findViewById(R.id.fake_status);
    }
}
