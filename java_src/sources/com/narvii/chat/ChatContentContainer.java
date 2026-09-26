package com.narvii.chat;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import com.narvii.amino.master.R;
import com.narvii.util.Utils;

/* JADX INFO: loaded from: classes11.dex */
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

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i10, int i11) {
        if (this.chatMessageIndex < 0 || this.vvChatMainFrameIndex < 0 || !this.shouldChangeOrder || Utils.isLandscape(getContext())) {
            return i11;
        }
        int i12 = this.chatMessageIndex;
        if (i11 == i12) {
            return this.vvChatMainFrameIndex;
        }
        return i11 == this.vvChatMainFrameIndex ? i12 : super.getChildDrawingOrder(i10, i11);
    }

    public void setShouldChangeOrder(boolean z6) {
        this.shouldChangeOrder = z6;
        invalidate();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.chatMessageListFrame = findViewById(R.id.chat_list_frame);
        this.vvChatMainFrame = findViewById(R.id.vv_chat_frame_container);
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            if (this.chatMessageListFrame == getChildAt(i10)) {
                this.chatMessageIndex = i10;
            }
            if (this.vvChatMainFrame == getChildAt(i10)) {
                this.vvChatMainFrameIndex = i10;
            }
            if (this.vvChatMainFrameIndex >= 0 && this.chatMessageIndex >= 0) {
                return;
            }
        }
    }
}
