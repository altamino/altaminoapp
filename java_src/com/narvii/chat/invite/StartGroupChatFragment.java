package com.narvii.chat.invite;

import android.os.Bundle;
import com.narvii.amino.mastes.R;
import com.narvii.model.ChatBubble;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.monetization.bubble.BubbleHelper;
import com.narvii.user.picker.MultiUserPickerFragment;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import java.util.List;

/* loaded from: classes2.dex */
public class StartGroupChatFragment extends MultiUserPickerFragment {
    ChatBubble bubble;

    @Override // com.narvii.user.picker.MultiUserPickerFragment
    protected boolean showSearchBar() {
        return true;
    }

    @Override // com.narvii.user.picker.MultiUserPickerFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.bubble = (ChatBubble) JacksonUtils.readAs(getStringParam("bubble"), ChatBubble.class);
        if (bundle == null) {
            ChatInviteFragment chatInviteFragment = new ChatInviteFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putString("Source", getStringParam("Source"));
            bundle2.putString("stickerCollectionId", getStringParam("stickerCollectionId"));
            chatInviteFragment.setArguments(bundle2);
            getFragmentManager().beginTransaction().add(chatInviteFragment, "chatInvite").commit();
        }
    }

    @Override // com.narvii.user.picker.MultiUserPickerFragment
    protected void onConfirmPick(List<User> list) {
        if (list == null || list.isEmpty()) {
            NVToast.makeText(getContext(), R.string.user_choose_valid_users, 0).show();
            return;
        }
        ChatInviteFragment chatInviteFragment = (ChatInviteFragment) getFragmentManager().findFragmentByTag("chatInvite");
        if (chatInviteFragment != null) {
            if (list.size() == 1) {
                chatInviteFragment.startChat(list.get(0).uid, this.bubble != null);
            } else {
                String[] strArr = new String[list.size()];
                for (int i = 0; i < strArr.length; i++) {
                    strArr[i] = list.get(i).uid;
                }
                chatInviteFragment.askInvite(strArr, this.bubble != null);
            }
            chatInviteFragment.onStartListener = new Callback<ChatThread>() { // from class: com.narvii.chat.invite.StartGroupChatFragment.1
                @Override // com.narvii.util.Callback
                public void call(ChatThread chatThread) {
                    StartGroupChatFragment startGroupChatFragment = StartGroupChatFragment.this;
                    if (startGroupChatFragment.bubble != null) {
                        new BubbleHelper(startGroupChatFragment).sendApplyBubbleRequest(StartGroupChatFragment.this.bubble, false, chatThread.id(), null);
                    }
                    StartGroupChatFragment.this.finish();
                }
            };
        }
    }
}
