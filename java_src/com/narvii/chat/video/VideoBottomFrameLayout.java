package com.narvii.chat.video;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.narvii.amino.mastes.R;
import com.narvii.util.ViewUtils;

/* loaded from: classes2.dex */
public class VideoBottomFrameLayout extends FrameLayout {
    public VideoBottomFrameLayout(Context context) {
        super(context);
    }

    public VideoBottomFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        View viewFindViewById = findViewById(R.id.panel_layout);
        View viewFindViewById2 = findViewById(R.id.chat_message_container);
        if (viewFindViewById != null) {
            ViewUtils.setMarginBottom(viewFindViewById2, (viewFindViewById.isShown() ? viewFindViewById.getHeight() : 0) + getContext().getResources().getDimensionPixelSize(R.dimen.rtc_bottom_chat_list_margin));
        }
    }
}
