package com.narvii.topic.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class StoryTopicMoreView extends View {
    private int mColor;

    @NotNull
    private final Paint mPaint;

    public StoryTopicMoreView(@Nullable Context context) {
        super(context);
        Paint paint = new Paint();
        this.mPaint = paint;
        this.mColor = -1;
        paint.setAntiAlias(true);
        paint.setColor(this.mColor);
        paint.setStyle(Paint.Style.FILL);
    }

    public final int getMColor() {
        return this.mColor;
    }

    @Override // android.view.View
    protected void onDraw(@NotNull Canvas canvas) {
        t.j(canvas, "canvas");
        super.onDraw(canvas);
        float height = getHeight() / 2.0f;
        canvas.drawCircle(height, height, height, this.mPaint);
        canvas.drawCircle(getWidth() - height, height, height, this.mPaint);
        canvas.drawCircle(getWidth() / 2.0f, height, height, this.mPaint);
    }

    public final void setMColor(int i10) {
        this.mColor = i10;
        invalidate();
    }

    public StoryTopicMoreView(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint();
        this.mPaint = paint;
        this.mColor = -1;
        paint.setAntiAlias(true);
        paint.setColor(this.mColor);
        paint.setStyle(Paint.Style.FILL);
    }

    public StoryTopicMoreView(@Nullable Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Paint paint = new Paint();
        this.mPaint = paint;
        this.mColor = -1;
        paint.setAntiAlias(true);
        paint.setColor(this.mColor);
        paint.setStyle(Paint.Style.FILL);
    }
}
