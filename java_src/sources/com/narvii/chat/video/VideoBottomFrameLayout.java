package com.narvii.chat.video;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.util.ViewUtils;

/* JADX INFO: loaded from: classes7.dex */
public class VideoBottomFrameLayout extends FrameLayout {
    public VideoBottomFrameLayout(@NonNull Context context) {
        super(context);
    }

    public VideoBottomFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        int height;
        super.onLayout(z6, i10, i11, i12, i13);
        View viewFindViewById = findViewById(R.id.panel_layout);
        View viewFindViewById2 = findViewById(R.id.chat_message_container);
        if (viewFindViewById != null) {
            if (viewFindViewById.isShown()) {
                height = viewFindViewById.getHeight();
            } else {
                height = 0;
            }
            ViewUtils.setMarginBottom(viewFindViewById2, height + getContext().getResources().getDimensionPixelSize(R.dimen.rtc_bottom_chat_list_margin));
        }
    }
}
