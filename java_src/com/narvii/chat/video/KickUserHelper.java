package com.narvii.chat.video;

import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.chat.util.ChatRequestHelper;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.util.Callback;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.ProgressDialog;

/* loaded from: classes2.dex */
public class KickUserHelper {
    ChatThread chatThread;
    NVContext context;

    public KickUserHelper(NVContext nVContext, ChatThread chatThread) {
        this.context = nVContext;
        this.chatThread = chatThread;
    }

    public void showKickDialog(final User user) {
        final AlertDialog alertDialog = new AlertDialog(this.context.getContext());
        alertDialog.setContentView(R.layout.dialog_kick_note);
        alertDialog.findViewById(R.id.yes).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.KickUserHelper.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                KickUserHelper.this.deleteMember(user);
                alertDialog.dismiss();
            }
        });
        alertDialog.findViewById(R.id.no).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.KickUserHelper.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                alertDialog.dismiss();
            }
        });
        alertDialog.show();
    }

    public void deleteMember(User user) {
        if (this.chatThread == null) {
            return;
        }
        final ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
        progressDialog.show();
        ChatRequestHelper chatRequestHelper = new ChatRequestHelper(this.context);
        String strUid = user.uid();
        ChatThread chatThread = this.chatThread;
        chatRequestHelper.sendDeleteThreadRequest(strUid, chatThread.threadId, chatThread, new Callback<Object>() { // from class: com.narvii.chat.video.KickUserHelper.3
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                if ((obj instanceof Boolean) && ((Boolean) obj).booleanValue()) {
                    progressDialog.dismiss();
                }
            }
        });
    }
}
