package com.narvii.chat.invite;

import android.os.Bundle;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.user.picker.SingleUserPickerFragment;
import com.narvii.util.Callback;

/* JADX INFO: loaded from: classes10.dex */
public class StartSingleChatFragment extends SingleUserPickerFragment {
    @Override // com.narvii.user.picker.SingleUserPickerFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            ChatInviteFragment chatInviteFragment = new ChatInviteFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putString(ExternalPostPreviewFragment.SOURCE, getStringParam(ExternalPostPreviewFragment.SOURCE));
            chatInviteFragment.setArguments(bundle2);
            getFragmentManager().q().e(chatInviteFragment, "chatInvite").j();
        }
    }

    @Override // com.narvii.user.picker.SingleUserPickerFragment
    protected void onPickUser(User user) {
        ChatInviteFragment chatInviteFragment = (ChatInviteFragment) getFragmentManager().m0("chatInvite");
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
