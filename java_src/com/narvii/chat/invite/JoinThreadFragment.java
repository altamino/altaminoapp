package com.narvii.chat.invite;

import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import com.narvii.account.AccountService;
import com.narvii.account.push.PushNotificationHelper;
import com.narvii.app.NVFragment;
import com.narvii.chat.ThreadInfoHost;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.global.GlobalChatThread;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.util.ChatRequestHelper;
import com.narvii.chat.util.GlobalChatService;
import com.narvii.chat.video.utils.VVChatHelper;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.config.ConfigService;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.util.Callback;
import com.narvii.util.NotificationUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import java.util.List;

/* loaded from: classes2.dex */
public class JoinThreadFragment extends NVFragment implements ThreadInfoHost {
    AlertDialog currentDialog;
    private PushNotificationHelper pushNotificationHelper;

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.pushNotificationHelper = new PushNotificationHelper(this);
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public String getThreadId() {
        return getStringParam("id");
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public ChatThread getThread() {
        return ChatHelper.Companion.getThreadFromThreadInfoHost(this);
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public void onThreadChanged(ChatThread chatThread) {
        if (isDestoryed()) {
            return;
        }
        showJoinHangoutPanel();
    }

    public void showJoinHangoutPanel() {
        int i;
        ChatInvitationFragment chatInvitationFragment;
        ChatThread thread = getThread();
        if (thread == null || (((i = thread.condition) != 0 && i != 1) || ((thread.type != 2 && !thread.isJumpstart()) || thread.membershipStatus == 1 || thread.status == 9))) {
            AlertDialog alertDialog = this.currentDialog;
            if (alertDialog == null || !alertDialog.isShowing()) {
                return;
            }
            this.currentDialog.dismiss();
            this.currentDialog = null;
            return;
        }
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager == null || (chatInvitationFragment = (ChatInvitationFragment) fragmentManager.findFragmentByTag("chatInvitation")) == null) {
            return;
        }
        chatInvitationFragment.show();
    }

    public void joinConversation() {
        joinConversation(null);
    }

    public void joinConversation(final Callback<Boolean> callback) {
        AccountService accountService;
        final String userId;
        final ChatThread thread = getThread();
        if (thread == null || thread.membershipStatus == 1 || (userId = (accountService = (AccountService) getService("account")).getUserId()) == null) {
            return;
        }
        final User userProfile = accountService.getUserProfile();
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.chat.invite.JoinThreadFragment.1
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                LogEvent.clickBuilder(JoinThreadFragment.this, ActSemantic.joinChat).send();
                ChatThread chatThread = (ChatThread) thread.m46clone();
                chatThread.membershipStatus = 1;
                chatThread.membersCount++;
                List<User> list = chatThread.membersSummary;
                if (list != null) {
                    boolean z = false;
                    for (User user : list) {
                        if (Utils.isEquals(userId, user.uid)) {
                            user.membershipStatus = 1;
                            z = true;
                        }
                    }
                    if (!z) {
                        ((User) userProfile.m46clone()).membershipStatus = 1;
                        chatThread.membersSummary.add(userProfile);
                    }
                }
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(Boolean.TRUE);
                }
                if (Utils.isEqualsNotNull(userId, thread.uid())) {
                    chatThread.condition = 0;
                }
                ((ChatService) JoinThreadFragment.this.getService("chat")).removeGuestThreadId(JoinThreadFragment.this.getThreadId());
                NotificationUtils.sendNotificationIncludeGlobal((NotificationCenter) JoinThreadFragment.this.getService("notification"), new Notification("update", chatThread));
                ((GlobalChatService) JoinThreadFragment.this.getService("globalChat")).addRecentChat(GlobalChatThread.newGlobalChatThread(chatThread, ((ConfigService) JoinThreadFragment.this.getService("config")).getCommunityId(), JoinThreadFragment.this.getContext()));
                JoinThreadFragment.this.pushNotificationHelper.showRemindDialogIfNeeded(PushNotificationHelper.SCENARIO_CHAT);
            }
        };
        progressDialog.show();
        ((ApiService) getService("api")).exec(ApiRequest.builder().chatServer().post().path("/chat/thread/" + thread.threadId + "/member/" + userId).build(), progressDialog.dismissListener);
    }

    public void leaveConversation() {
        final String userId;
        final ChatThread thread = getThread();
        if (thread == null || (userId = ((AccountService) getService("account")).getUserId()) == null) {
            return;
        }
        VVChatHelper vVChatHelper = new VVChatHelper(this);
        if (vVChatHelper.needShowConfirmDialogWhenLeaveChannel(thread)) {
            vVChatHelper.showLeaveChannelConfirmDialog(getActivity(), true, new Callback() { // from class: com.narvii.chat.invite.-$$Lambda$JoinThreadFragment$uqUDpVVokdbc63IjObmgf2THItA
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    this.f$0.lambda$leaveConversation$0$JoinThreadFragment(thread, userId, (Boolean) obj);
                }
            });
        } else {
            sendLeaveRequest(thread, userId);
        }
    }

    public /* synthetic */ void lambda$leaveConversation$0$JoinThreadFragment(ChatThread chatThread, String str, Boolean bool) {
        if (bool.booleanValue()) {
            sendLeaveRequest(chatThread, str);
        }
    }

    private void sendLeaveRequest(final ChatThread chatThread, String str) {
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        ChatRequestHelper chatRequestHelper = new ChatRequestHelper(this);
        int intParam = getIntParam(CommentPostActivity.COMMENT_POST_KEY_NDC_ID);
        final ConfigService configService = (ConfigService) getService("config");
        if (intParam == 0) {
            intParam = configService.getCommunityId();
        }
        final int i = intParam;
        chatRequestHelper.sendDeleteThreadRequest(i, str, chatThread.threadId, chatThread, new Callback<Object>() { // from class: com.narvii.chat.invite.JoinThreadFragment.2
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                progressDialog.dismiss();
                if ((obj instanceof Boolean) && ((Boolean) obj).booleanValue()) {
                    ChatThread chatThread2 = (ChatThread) chatThread.m46clone();
                    RtcService rtcService = (RtcService) JoinThreadFragment.this.getService("rtc");
                    ((ChatService) JoinThreadFragment.this.getService("chat")).removeThread(i, chatThread.threadId);
                    if (rtcService != null) {
                        if (rtcService.getMainSigChannel() != null && Utils.isEqualsNotNull(rtcService.getMainSigChannel().threadId, JoinThreadFragment.this.getThreadId())) {
                            rtcService.exitLiveChannel(configService.getCommunityId(), JoinThreadFragment.this.getThreadId());
                        }
                        rtcService.cleanMappedWindow(JoinThreadFragment.this.getThreadId());
                        rtcService.cleanThreadWindow(JoinThreadFragment.this.getThreadId());
                    }
                    ((GlobalChatService) JoinThreadFragment.this.getService("globalChat")).removeRecentChat(GlobalChatThread.newGlobalChatThread(chatThread2, i, JoinThreadFragment.this.getContext()));
                }
            }
        });
    }
}
