package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.narvii.amino.R;

/* JADX INFO: loaded from: classes10.dex */
public class ProgressIcon extends FrameLayout {
    public static int STATUS_HANDLED = 2;
    public static int STATUS_HANDLING = 1;
    public static int STATUS_NORMAL;
    private Drawable finishedDrawable;
    private View iconView;
    private Drawable normalDrawable;
    private View progressView;
    private int status;

    public ProgressIcon(Context context) {
        this(context, null);
    }

    public int getStatus() {
        return this.status;
    }

    public ProgressIcon(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void updateView(int i10) {
        this.status = i10;
        if (i10 == STATUS_HANDLING) {
            this.progressView.setVisibility(0);
            this.iconView.setVisibility(4);
        } else {
            this.progressView.setVisibility(4);
            this.iconView.setVisibility(0);
            View view = this.iconView;
            if (view instanceof ImageView) {
                ((ImageView) view).setImageDrawable(i10 == STATUS_HANDLED ? this.finishedDrawable : this.normalDrawable);
            } else {
                view.setBackgroundDrawable(i10 == STATUS_HANDLED ? this.finishedDrawable : this.normalDrawable);
            }
        }
        invalidate();
    }

    public ProgressIcon(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ProgressIcon, 0, 0);
        this.normalDrawable = typedArrayObtainStyledAttributes.getDrawable(1);
        this.finishedDrawable = typedArrayObtainStyledAttributes.getDrawable(0);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.iconView = findViewById(com.narvii.amino.master.R.id.icon);
        this.progressView = findViewById(com.narvii.amino.master.R.id.progress);
    }
}
