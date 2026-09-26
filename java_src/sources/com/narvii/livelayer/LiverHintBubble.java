package com.narvii.livelayer;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.PopupBubble;

/* JADX INFO: loaded from: classes5.dex */
public class LiverHintBubble extends PopupBubble {
    private int lift;

    public void setLift(int i10) {
        FrameLayout.LayoutParams layoutParams;
        if (this.lift == i10) {
            return;
        }
        this.lift = i10;
        if (!(getLayoutParams() instanceof FrameLayout.LayoutParams) || (layoutParams = (FrameLayout.LayoutParams) getLayoutParams()) == null) {
            return;
        }
        layoutParams.bottomMargin = i10 + getContext().getResources().getDimensionPixelSize(R.dimen.live_layer_hint_margin_bottom);
        setLayoutParams(layoutParams);
    }

    public LiverHintBubble(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
