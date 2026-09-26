package com.narvii.monetization.bubble;

import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.chat.ChatFragment;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.model.ChatBubble;
import com.narvii.model.ChatThread;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.statistics.StatisticsService;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes6.dex */
public class SetBubbleForThreadFragment extends PickChatThreadListFragment {
    ChatBubble bubble;

    @Override // com.narvii.monetization.bubble.PickChatThreadListFragment
    protected void onCreateChatClicked() {
        this.threadHelper.showCreateChatDialog(null, this.bubble, null, new Callback<Boolean>() { // from class: com.narvii.monetization.bubble.SetBubbleForThreadFragment.1
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                if (bool.booleanValue()) {
                    SetBubbleForThreadFragment.this.finish();
                    SetBubbleForThreadFragment setBubbleForThreadFragment = SetBubbleForThreadFragment.this;
                    if (setBubbleForThreadFragment.bubble == null) {
                        return;
                    }
                    ((StatisticsService) setBubbleForThreadFragment.getService("statistics")).event("Picks a chat bubble").userPropInc("Picks a chat bubble Total").param("Customized", SetBubbleForThreadFragment.this.bubble.type == 1).param("Chat", "Current Chat").param(ExternalPostPreviewFragment.SOURCE, "Store Product Detail Page");
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
            public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                progressDialog.dismiss();
                if (bool.booleanValue()) {
                    Intent intent = FragmentWrapperActivity.intent(ChatFragment.class);
                    intent.putExtra("id", chatThread.threadId);
                    intent.putExtra("thread", JacksonUtils.writeAsString(chatThread));
                    intent.putExtra("showKeyboard", true);
                    safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(SetBubbleForThreadFragment.this, intent);
                    SetBubbleForThreadFragment.this.finish();
                    ((StatisticsService) SetBubbleForThreadFragment.this.getService("statistics")).event("Picks a chat bubble").userPropInc("Picks a chat bubble Total").param("Customized", SetBubbleForThreadFragment.this.bubble.type == 1).param("Chat", "Current Chat").param(ExternalPostPreviewFragment.SOURCE, "Store Product Detail Page");
                }
            }
        });
    }

    @Override // com.narvii.monetization.bubble.PickChatThreadListFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.bubble = (ChatBubble) JacksonUtils.readAs(getStringParam("bubble"), ChatBubble.class);
    }
}
