package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.lib.R;
import com.narvii.util.Utils;

/* loaded from: classes3.dex */
public abstract class TagRoundView extends FrameLayout {
    public final int AUTO_RADIUS;
    public final int BACKGROUND_STYLE_SEMITRANSPARENT_WITH_STROKE;
    public final int BACKGROUND_STYLE_SOLID;
    protected final int DEFAULT_BACKGROUD_COLOR;
    private int backgroundColor;
    protected int backgroundStyle;
    private boolean isAutoBackground;
    private int radius;
    protected int strokeWidth;
    protected TextView topicText;

    protected abstract int getAutoBackgroundColor();

    protected abstract String getName();

    protected void onRadiusUpdated(float f) {
    }

    public TagRoundView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.DEFAULT_BACKGROUD_COLOR = 0;
        this.BACKGROUND_STYLE_SOLID = 0;
        this.BACKGROUND_STYLE_SEMITRANSPARENT_WITH_STROKE = 1;
        this.backgroundStyle = 0;
        this.strokeWidth = 0;
        this.backgroundColor = 0;
        this.isAutoBackground = true;
        this.AUTO_RADIUS = -1;
        this.radius = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.TagRoundView);
        this.radius = (int) typedArrayObtainStyledAttributes.getDimension(R.styleable.TagRoundView_radius, -1.0f);
        this.backgroundStyle = typedArrayObtainStyledAttributes.getInt(R.styleable.TagRoundView_background_style, 0);
        this.strokeWidth = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.TagRoundView_background_stroke_width, Utils.dpToPxInt(getContext(), 1.0f));
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.topicText = (TextView) findViewById(R.id.text);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.isAutoBackground = false;
        this.backgroundColor = i;
    }

    public void setAutoBackground() {
        this.isAutoBackground = true;
    }

    public void setRadius(int i) {
        this.radius = i;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        updateBackground();
    }

    protected void updateView() {
        TextView textView = this.topicText;
        if (textView != null) {
            textView.setText(getName());
        }
        updateBackground();
    }

    protected void updateBackground() {
        setBackground(getBackgroundDrawable());
    }

    protected GradientDrawable getBackgroundDrawable() {
        float height;
        int i = this.radius;
        if (i == -1) {
            height = (getHeight() > 0 ? getHeight() : getMeasuredHeight()) / 2.0f;
        } else {
            height = i;
        }
        onRadiusUpdated(height);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(height);
        int backgroundDrawableColor = getBackgroundDrawableColor();
        if (this.backgroundStyle == 1) {
            gradientDrawable.setColor(872415231 & backgroundDrawableColor);
            gradientDrawable.setStroke(this.strokeWidth, backgroundDrawableColor);
            this.topicText.setTextColor(backgroundDrawableColor);
        } else {
            gradientDrawable.setColor(backgroundDrawableColor);
        }
        return gradientDrawable;
    }

    protected int getBackgroundDrawableColor() {
        return this.isAutoBackground ? getAutoBackgroundColor() : this.backgroundColor;
    }
}
