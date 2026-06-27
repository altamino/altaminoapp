package com.narvii.chat;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.chat.util.ChatHelper;
import com.narvii.model.ChatMessage;
import com.narvii.model.ChatThread;

/* loaded from: classes2.dex */
public class ChatInfoItem extends LinearLayout {
    ChatHelper helper;
    TextView text;

    public ChatInfoItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.helper = new ChatHelper(context);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.text = (TextView) findViewById(R.id.text);
    }

    public void setMessage(ChatThread chatThread, ChatMessage chatMessage) {
        this.text.setText(this.helper.getMessage(chatThread, chatMessage));
    }
}
