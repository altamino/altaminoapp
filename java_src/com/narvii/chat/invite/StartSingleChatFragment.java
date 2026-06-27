package com.narvii.chat.invite;

import android.os.Bundle;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.user.picker.SingleUserPickerFragment;
import com.narvii.util.Callback;

/* loaded from: classes2.dex */
public class StartSingleChatFragment extends SingleUserPickerFragment {
    @Override // com.narvii.user.picker.SingleUserPickerFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            ChatInviteFragment chatInviteFragment = new ChatInviteFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putString("Source", getStringParam("Source"));
            chatInviteFragment.setArguments(bundle2);
            getFragmentManager().beginTransaction().add(chatInviteFragment, "chatInvite").commit();
        }
    }

    @Override // com.narvii.user.picker.SingleUserPickerFragment
    protected void onPickUser(User user) {
        ChatInviteFragment chatInviteFragment = (ChatInviteFragment) getFragmentManager().findFragmentByTag("chatInvite");
        if (chatInviteFragment != null) {
            chatInviteFragment.startChat(user.uid);
            chatInviteFragment.onStartListener = new Callback<ChatThread>() { // from class: com.narvii.chat.invite.StartSingleChatFragment.1
                @Override // com.narvii.util.Callback
                public void call(ChatThread chatThread) {
                    StartSingleChatFragment.this.finish();
                }
            };
        }
    }
}
