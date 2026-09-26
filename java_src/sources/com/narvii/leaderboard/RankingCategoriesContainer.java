package com.narvii.leaderboard;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes8.dex */
public class RankingCategoriesContainer extends FrameLayout {
    private boolean doClip;
    private Path path;

    public RankingCategoriesContainer(Context context) {
        this(context, null);
    }

    public RankingCategoriesContainer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RankingCategoriesContainer(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.path = new Path();
        this.doClip = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        int height = getHeight();
        this.path.reset();
        float paddingTop = ((height - getPaddingTop()) - getPaddingBottom()) / 2.0f;
        this.path.addRoundRect(new RectF(0.0f, 0.0f, getWidth(), getHeight()), paddingTop, paddingTop, Path.Direction.CW);
        this.path.close();
        if (this.doClip) {
            try {
                canvas.clipPath(this.path);
            } catch (Exception unused) {
                this.doClip = false;
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }
}
