package com.narvii.topic.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import java.util.HashMap;

/* compiled from: StoryTopicMoreView.kt */
/* loaded from: classes3.dex */
public final class StoryTopicMoreView extends View {
    private HashMap _$_findViewCache;
    private int mColor;
    private final Paint mPaint;

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    public StoryTopicMoreView(Context context) {
        super(context);
        this.mPaint = new Paint();
        this.mColor = -1;
        this.mPaint.setAntiAlias(true);
        this.mPaint.setColor(this.mColor);
        this.mPaint.setStyle(Paint.Style.FILL);
    }

    public StoryTopicMoreView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mPaint = new Paint();
        this.mColor = -1;
        this.mPaint.setAntiAlias(true);
        this.mPaint.setColor(this.mColor);
        this.mPaint.setStyle(Paint.Style.FILL);
    }

    public StoryTopicMoreView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mPaint = new Paint();
        this.mColor = -1;
        this.mPaint.setAntiAlias(true);
        this.mPaint.setColor(this.mColor);
        this.mPaint.setStyle(Paint.Style.FILL);
    }

    public final int getMColor() {
        return this.mColor;
    }

    public final void setMColor(int i) {
        this.mColor = i;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float height = getHeight() / 2.0f;
        if (canvas != null) {
            canvas.drawCircle(height, height, height, this.mPaint);
        }
        if (canvas != null) {
            canvas.drawCircle(getWidth() - height, height, height, this.mPaint);
        }
        if (canvas != null) {
            canvas.drawCircle(getWidth() / 2.0f, height, height, this.mPaint);
        }
    }
}
