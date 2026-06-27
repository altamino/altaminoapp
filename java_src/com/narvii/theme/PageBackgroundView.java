package com.narvii.theme;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.narvii.lib.R;
import com.narvii.util.SkipRequestLayoutFlag;

/* loaded from: classes3.dex */
public class PageBackgroundView extends FrameLayout implements SkipRequestLayoutFlag {
    ImageView imgBackground;

    public PageBackgroundView(Context context) {
        this(context, null);
    }

    public PageBackgroundView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        FrameLayout.inflate(context, R.layout.theme_page_background, this);
        initViews();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        initViews();
    }

    private void initViews() {
        this.imgBackground = (ImageView) findViewById(R.id.page_bg);
    }

    public void setDrawable(Drawable drawable) {
        ImageView imageView = this.imgBackground;
        if (imageView == null) {
            return;
        }
        imageView.setImageDrawable(drawable);
    }
}
