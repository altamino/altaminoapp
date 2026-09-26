package com.narvii.theme;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.lib.R;
import com.narvii.util.SkipRequestLayoutFlag;

/* JADX INFO: loaded from: classes9.dex */
public class PageBackgroundView extends FrameLayout implements SkipRequestLayoutFlag {
    ImageView imgBackground;

    public PageBackgroundView(@NonNull Context context) {
        this(context, null);
    }

    public PageBackgroundView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        View.inflate(context, R.layout.theme_page_background, this);
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

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        initViews();
    }
}
