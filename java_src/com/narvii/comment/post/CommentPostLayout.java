package com.narvii.comment.post;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.narvii.amino.mastes.R;

/* loaded from: classes2.dex */
public class CommentPostLayout extends LinearLayout {
    View drawTop;

    public CommentPostLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.drawTop = findViewById(R.id.comment_images);
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        int i3 = 0;
        while (i3 < i) {
            if (getChildAt(i3) == this.drawTop) {
                return i2 < i3 ? i2 : i2 == i + (-1) ? i3 : i2 + 1;
            }
            i3++;
        }
        return super.getChildDrawingOrder(i, i2);
    }
}
