package com.narvii.chat;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import com.narvii.amino.mastes.R;
import com.narvii.util.Utils;

/* loaded from: classes2.dex */
public class ChatContentContainer extends RelativeLayout {
    private int chatMessageIndex;
    private View chatMessageListFrame;
    private boolean shouldChangeOrder;
    private View vvChatMainFrame;
    private int vvChatMainFrameIndex;

    public ChatContentContainer(Context context) {
        this(context, null);
    }

    public ChatContentContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.chatMessageIndex = -1;
        this.vvChatMainFrameIndex = -1;
        this.shouldChangeOrder = false;
        setChildrenDrawingOrderEnabled(true);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.chatMessageListFrame = findViewById(R.id.chat_list_frame);
        this.vvChatMainFrame = findViewById(R.id.vv_chat_frame_container);
        for (int i = 0; i < getChildCount(); i++) {
            if (this.chatMessageListFrame == getChildAt(i)) {
                this.chatMessageIndex = i;
            }
            if (this.vvChatMainFrame == getChildAt(i)) {
                this.vvChatMainFrameIndex = i;
            }
            if (this.vvChatMainFrameIndex >= 0 && this.chatMessageIndex >= 0) {
                return;
            }
        }
    }

    public void setShouldChangeOrder(boolean z) {
        this.shouldChangeOrder = z;
        invalidate();
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        if (this.chatMessageIndex < 0 || this.vvChatMainFrameIndex < 0 || !this.shouldChangeOrder || Utils.isLandscape(getContext())) {
            return i2;
        }
        int i3 = this.chatMessageIndex;
        if (i2 == i3) {
            return this.vvChatMainFrameIndex;
        }
        return i2 == this.vvChatMainFrameIndex ? i3 : super.getChildDrawingOrder(i, i2);
    }
}
