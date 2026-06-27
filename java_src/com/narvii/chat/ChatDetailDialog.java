package com.narvii.chat;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.model.ChatMessage;
import com.narvii.model.User;
import com.narvii.util.dialog.AlertDialog;

/* loaded from: classes2.dex */
public class ChatDetailDialog extends AlertDialog {
    View btnClose;
    TextView tvChatMessage;
    TextView tvChatUserNickname;

    @Override // com.narvii.util.dialog.AlertDialog
    protected int baseLayoutId() {
        return R.layout.dialog_chat_message;
    }

    public ChatDetailDialog(Context context) {
        super(context);
        this.tvChatMessage = (TextView) findViewById(R.id.chat_message);
        this.tvChatUserNickname = (TextView) findViewById(R.id.alert_dialog_title);
        this.btnClose = findViewById(R.id.close);
        this.btnClose.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.ChatDetailDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ChatDetailDialog.this.dismiss();
            }
        });
    }

    public void setChatMessage(ChatMessage chatMessage) {
        if (chatMessage == null) {
            return;
        }
        this.tvChatMessage.setText(chatMessage.content);
        TextView textView = this.tvChatUserNickname;
        User user = chatMessage.author;
        textView.setText(user == null ? null : user.nickname());
        this.tvChatUserNickname.setVisibility(0);
    }
}
