package com.narvii.chat.video.utils;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import androidx.fragment.app.Fragment;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.util.ChatRequestHelper;
import com.narvii.chat.video.overlay.ChannelInviteMemberListFragment;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.share.ShareDialog;
import com.narvii.user.picker.MultiUserPickerFragment;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.widget.ACMAlertDialog;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class VVChatInviteHelper {
    static final int ADD_MEMBER = 300;
    AccountService accountService;
    int channelType;
    ChatHelper chatHelper;
    ChatThread chatThread;
    NVContext nvContext;

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    public static void safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(NVActivity p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    private void openChannelInvitePage() {
        Intent intent = FragmentWrapperActivity.intent(ChannelInviteMemberListFragment.class);
        intent.putExtra("channel_type", this.channelType);
        intent.putExtra("thread", JacksonUtils.writeAsString(this.chatThread));
        intent.putExtra("id", this.chatThread.id());
        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.nvContext.getContext(), intent);
    }

    private void openMemberInvitePage() {
        ChatThread chatThread = this.chatThread;
        int iMax = chatThread.membersCount;
        List<User> list = chatThread.membersSummary;
        if (list != null) {
            iMax = Math.max(iMax, list.size());
        }
        if (iMax >= chatThread.membersQuota) {
            AlertDialog alertDialog = new AlertDialog(this.nvContext.getContext());
            alertDialog.setTitle(this.nvContext.getContext().getString(R.string.chat_reach_limit, Integer.valueOf(chatThread.membersQuota)));
            alertDialog.addButton(android.R.string.ok, 0, (View.OnClickListener) null);
            alertDialog.show();
            return;
        }
        Intent intent = FragmentWrapperActivity.intent(MultiUserPickerFragment.class);
        intent.putExtra("exists", JacksonUtils.writeAsString(chatThread.membersSummary));
        intent.putExtra("maxMember", chatThread.membersQuota);
        intent.putExtra("threadId", chatThread.id());
        intent.putExtra("showSearchBar", true);
        NVContext nVContext = this.nvContext;
        if (nVContext instanceof NVFragment) {
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1((NVFragment) nVContext, intent, 300);
        } else if (nVContext instanceof NVActivity) {
            safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115((NVActivity) nVContext, intent, 300);
        }
    }

    private void shareChatThread() {
        ShareDialog.getShareDialogForThread(this.nvContext, this.chatThread).show();
    }

    private void showJoinPrivateChatDialog() {
        final AlertDialog alertDialog = new AlertDialog(this.nvContext.getContext());
        alertDialog.setContentView(R.layout.dialog_private_channel_not_allow);
        alertDialog.findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.utils.VVChatInviteHelper.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                alertDialog.dismiss();
            }
        });
        alertDialog.findViewById(R.id.accept).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.utils.VVChatInviteHelper.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                alertDialog.dismiss();
                final ProgressDialog progressDialog = new ProgressDialog(VVChatInviteHelper.this.nvContext.getContext());
                progressDialog.show();
                new ChatRequestHelper(VVChatInviteHelper.this.nvContext).sendJoinChatThreadRequest(VVChatInviteHelper.this.chatThread.id(), VVChatInviteHelper.this.accountService.getUserId(), VVChatInviteHelper.this.chatThread, new Callback<Boolean>() { // from class: com.narvii.chat.video.utils.VVChatInviteHelper.2.1
                    @Override // com.narvii.util.Callback
                    public void call(Boolean bool) {
                        progressDialog.dismiss();
                    }
                });
            }
        });
        alertDialog.show();
    }

    public void addMembers(List<User> list) {
        final ChatThread chatThread = this.chatThread;
        if (chatThread == null) {
            return;
        }
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        for (User user : list) {
            if (!TextUtils.isEmpty(user.uid)) {
                arrayList2.add(user.uid);
                arrayNodeCreateArrayNode.add(user.uid);
                User user2 = (User) user.m1622clone();
                user2.membershipStatus = 2;
                arrayList.add(user2);
            }
        }
        ProgressDialog progressDialog = new ProgressDialog(this.nvContext.getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.chat.video.utils.VVChatInviteHelper.3
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                ChatThread chatThread2 = (ChatThread) chatThread.m1622clone();
                List<User> list2 = chatThread2.membersSummary;
                if (list2 != null) {
                    Iterator<User> it = list2.iterator();
                    while (it.hasNext()) {
                        if (arrayList2.contains(it.next().uid)) {
                            it.remove();
                        }
                    }
                    chatThread2.membersSummary.addAll(arrayList);
                }
                Iterator it2 = arrayList.iterator();
                int i10 = 0;
                while (it2.hasNext()) {
                    if (((User) it2.next()).membershipStatus == 1) {
                        i10++;
                    }
                }
                chatThread2.membersCount += i10;
                ((NotificationCenter) VVChatInviteHelper.this.nvContext.getService("notification")).sendNotification(new Notification("update", chatThread2));
            }
        };
        progressDialog.show();
        ((ApiService) this.nvContext.getService("api")).exec(ApiRequest.builder().chatServer().post().path("/chat/thread/" + chatThread.threadId + "/member/invite").param("uids", arrayNodeCreateArrayNode).build(), progressDialog.dismissListener);
    }

    public void handleAddMemberOnActivityResult(int i10, int i11, Intent intent) {
        ArrayList listAs;
        if (i10 != 300 || i11 != -1 || intent == null || (listAs = JacksonUtils.readListAs(intent.getStringExtra("users"), User.class)) == null || listAs.isEmpty()) {
            return;
        }
        addMembers(listAs);
    }

    public void onInviteButtonClicked() {
        if (this.chatThread == null) {
            return;
        }
        if (!this.accountService.hasAccount()) {
            if (this.chatThread.type == 2) {
                shareChatThread();
                return;
            } else {
                Utils.shouldShowLoginPage(this.nvContext);
                return;
            }
        }
        if (this.chatThread.publicChat() || this.chatThread.groupChat()) {
            if (this.chatThread.notJoined()) {
                shareChatThread();
                return;
            }
            if (this.chatHelper.isHostOrCoHost(this.chatThread)) {
                openChannelInvitePage();
                return;
            }
            if (this.chatThread.canMemberInvite()) {
                openMemberInvitePage();
                return;
            }
            if (!this.chatThread.groupChat()) {
                shareChatThread();
                return;
            }
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.nvContext.getContext());
            aCMAlertDialog.setMessage(R.string.can_not_invite_chat_hint);
            aCMAlertDialog.addButton(R.string.yes, null);
            aCMAlertDialog.show();
        }
    }

    public VVChatInviteHelper(NVContext nVContext, ChatThread chatThread, int i10) {
        this.nvContext = nVContext;
        this.accountService = (AccountService) nVContext.getService("account");
        this.channelType = i10;
        this.chatThread = chatThread;
        this.chatHelper = new ChatHelper(nVContext.getContext());
    }
}
