package com.narvii.chat.profile;

import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.chat.dialog.VVChatUserDialog;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.onlinestatus.UserDialog;
import com.narvii.util.Log;
import com.narvii.util.Utils;

/* loaded from: classes2.dex */
public class ChatUserInfoEntryHelper {
    private static final String TAG = "ChatUserInfoEntryHelper";
    NVContext context;

    public ChatUserInfoEntryHelper(NVContext nVContext) {
        this.context = nVContext;
    }

    public void showUserInfoInChatThread(ChatThread chatThread, User user, String str, UserDialog.UserDialogClickListener userDialogClickListener) {
        if (chatThread == null || user == null) {
            Log.e(TAG, "ChatThread is null " + chatThread + " targetUser " + user);
            return;
        }
        AccountService accountService = (AccountService) this.context.getService("account");
        Utils.isEqualsNotNull(user.uid(), accountService.getUserId());
        if (accountService.getUserProfile() != null) {
            accountService.getUserProfile().isCurator();
        }
        Utils.isEquals(chatThread.uid(), accountService.getUserId());
        if (chatThread.type != 1) {
        }
        VVChatUserDialog vVChatUserDialogBuild = new VVChatUserDialog.Builder(this.context, user).configUserDialog(chatThread.id(), chatThread.type, chatThread).build();
        vVChatUserDialogBuild.setOnClickListener(userDialogClickListener);
        vVChatUserDialogBuild.show();
    }
}
