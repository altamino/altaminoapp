package com.narvii.livelayer;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.narvii.amino.mastes.R;
import com.narvii.widget.PopupBubble;

/* loaded from: classes3.dex */
public class LiverHintBubble extends PopupBubble {
    private int lift;

    public LiverHintBubble(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setLift(int i) {
        FrameLayout.LayoutParams layoutParams;
        if (this.lift == i) {
            return;
        }
        this.lift = i;
        if (!(getLayoutParams() instanceof FrameLayout.LayoutParams) || (layoutParams = (FrameLayout.LayoutParams) getLayoutParams()) == null) {
            return;
        }
        layoutParams.bottomMargin = i + getContext().getResources().getDimensionPixelSize(R.dimen.live_layer_hint_margin_bottom);
        setLayoutParams(layoutParams);
    }
}
