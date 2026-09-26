package com.narvii.comment.post;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes9.dex */
public class CommentPostLayout extends LinearLayout {
    View drawTop;

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i10, int i11) {
        for (int i12 = 0; i12 < i10; i12++) {
            if (getChildAt(i12) == this.drawTop) {
                if (i11 < i12) {
                    return i11;
                }
                return i11 == i10 + (-1) ? i12 : i11 + 1;
            }
        }
        return super.getChildDrawingOrder(i10, i11);
    }

    public CommentPostLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.drawTop = findViewById(R.id.comment_images);
    }
}
