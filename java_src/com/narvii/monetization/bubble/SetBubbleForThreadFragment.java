package com.narvii.monetization.bubble;

import android.content.Intent;
import android.os.Bundle;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.chat.ChatFragment;
import com.narvii.model.ChatBubble;
import com.narvii.model.ChatThread;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.dialog.ProgressDialog;

/* loaded from: classes3.dex */
public class SetBubbleForThreadFragment extends PickChatThreadListFragment {
    ChatBubble bubble;

    @Override // com.narvii.monetization.bubble.PickChatThreadListFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.bubble = (ChatBubble) JacksonUtils.readAs(getStringParam("bubble"), ChatBubble.class);
    }

    @Override // com.narvii.monetization.bubble.PickChatThreadListFragment
    protected void onCreateChatClicked() {
        this.threadHelper.showCreateChatDialog(null, this.bubble, null, new Callback<Boolean>() { // from class: com.narvii.monetization.bubble.SetBubbleForThreadFragment.1
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                if (bool.booleanValue()) {
                    SetBubbleForThreadFragment.this.finish();
                }
            }
        });
    }

    @Override // com.narvii.monetization.bubble.PickChatThreadListFragment
    protected void onThreadPicked(final ChatThread chatThread) {
        if (chatThread == null) {
            return;
        }
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        new BubbleHelper(this).sendApplyBubbleRequest(this.bubble, false, chatThread.id(), new Callback<Boolean>() { // from class: com.narvii.monetization.bubble.SetBubbleForThreadFragment.2
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                progressDialog.dismiss();
                if (bool.booleanValue()) {
                    Intent intent = FragmentWrapperActivity.intent(ChatFragment.class);
                    intent.putExtra("id", chatThread.threadId);
                    intent.putExtra("thread", JacksonUtils.writeAsString(chatThread));
                    intent.putExtra("showKeyboard", true);
                    SetBubbleForThreadFragment.this.startActivity(intent);
                    SetBubbleForThreadFragment.this.finish();
                }
            }
        });
    }
}
