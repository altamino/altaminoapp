package com.narvii.chat.global;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.View;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.ForwardActivity;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.video.VVChatEntryHelper;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityService;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.master.CommunityHelper;
import com.narvii.membership.MembershipExpireDialog;
import com.narvii.membership.MembershipHintDialog;
import com.narvii.model.ChatThread;
import com.narvii.model.Community;
import com.narvii.model.NVObject;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.util.Callback;
import com.narvii.util.EnterCommunityUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.PackageUtils;
import com.narvii.util.ParamUtils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.wallet.MembershipService;
import com.narvii.widget.ACMAlertDialog;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: GlobalChatHelper.kt */
/* loaded from: classes2.dex */
public final class GlobalChatHelper {
    private final AccountService accountService;
    private final AffiliationsService affiliationsService;
    private final ApiService apiService;
    private Community community;
    private final NVContext context;
    private final NotificationCenter notificationService;
    private String source;

    /* compiled from: GlobalChatHelper.kt */
    public interface JoinCommunityCallback {
        ChatThread followingChatToJoin();

        int getActionRTCType();

        void onCheckLoginFailed();

        void onPostJoinCommunity(int i, boolean z);

        boolean onPreJoinCommunity(int i);
    }

    public GlobalChatHelper(NVContext context) {
        String stringParam;
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.context = context;
        this.accountService = (AccountService) this.context.getService("account");
        this.affiliationsService = (AffiliationsService) this.context.getService("affiliations");
        this.apiService = (ApiService) this.context.getService("api");
        this.notificationService = (NotificationCenter) this.context.getService("notification");
        this.source = "Global Chats";
        Object obj = this.context;
        if (obj instanceof NVActivity) {
            stringParam = ((NVActivity) obj).getStringParam(RtcService.KEY_COMMUNITY);
        } else {
            stringParam = obj instanceof NVFragment ? ParamUtils.getStringParam((Fragment) obj, RtcService.KEY_COMMUNITY) : null;
        }
        if (stringParam != null) {
            this.community = (Community) JacksonUtils.readAs(stringParam, Community.class);
        }
    }

    public final NVContext getContext() {
        return this.context;
    }

    public final String getSource() {
        return this.source;
    }

    public final void setSource(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.source = str;
    }

    public final void launchChatThread(ChatThread thread, Community community) {
        Intrinsics.checkParameterIsNotNull(thread, "thread");
        if (community != null) {
            CommunityService communityService = (CommunityService) this.context.getService("community");
            if (communityService.getCommunity(community.id) == null) {
                communityService.updateCommunity(community, false, 0L);
            }
            EnterCommunityUtils.fastEnter(community.id, this.source);
        }
        if (thread.hasLiveEvents()) {
            VVChatEntryHelper vVChatEntryHelper = new VVChatEntryHelper(this.context);
            Bundle bundle = new Bundle();
            if (community != null) {
                bundle.putInt("__communityId", community.id);
                bundle.putString(RtcService.KEY_COMMUNITY, JacksonUtils.writeAsString(community));
            }
            bundle.putBoolean(RtcService.KEY_HIDE_DRAWER, true);
            bundle.putBoolean(RtcService.KEY_FROM_GLOBAL_CHAT, true);
            vVChatEntryHelper.launchLiveChannelFromLaunchEvent(thread, thread.getRTCType(), this.source, true, bundle);
            return;
        }
        Intent intent = FragmentWrapperActivity.intent(ChatFragment.class);
        intent.putExtra("id", thread.threadId);
        if (community != null) {
            intent.putExtra("__communityId", community.id);
            intent.putExtra(RtcService.KEY_COMMUNITY, JacksonUtils.writeAsString(community));
        }
        intent.putExtra(RtcService.KEY_HIDE_DRAWER, true);
        intent.putExtra("thread", JacksonUtils.writeAsString(thread));
        intent.putExtra(RtcService.KEY_FROM_GLOBAL_CHAT, true);
        intent.putExtra("Source", this.source);
        this.context.startActivity(intent);
    }

    public final boolean isCommunityJoined(int i) {
        return i == 0 || this.affiliationsService.contains(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void joinChat(final ChatThread chatThread, final Callback<Boolean> callback) {
        AccountService accountService = this.accountService;
        Intrinsics.checkExpressionValueIsNotNull(accountService, "accountService");
        String userId = accountService.getUserId();
        this.apiService.exec(ApiRequest.builder().chatServer().post().path("/chat/thread/" + chatThread.id() + "/member/" + userId).build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.chat.global.GlobalChatHelper.joinChat.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest req, ApiResponse resp) throws Exception {
                Intrinsics.checkParameterIsNotNull(req, "req");
                Intrinsics.checkParameterIsNotNull(resp, "resp");
                NVObject nVObjectM46clone = chatThread.m46clone();
                if (nVObjectM46clone == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatThread");
                }
                ChatThread chatThread2 = (ChatThread) nVObjectM46clone;
                chatThread2.membershipStatus = 1;
                GlobalChatHelper.this.notificationService.sendNotification(new Notification("update", chatThread2));
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(true);
                }
                LogEvent.clickBuilder(GlobalChatHelper.this.getContext(), ActSemantic.joinChat).send();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                NVToast.makeText(GlobalChatHelper.this.getContext().getContext(), str, 0).show();
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(false);
                }
            }
        });
    }

    public final boolean tryJoinCommunity(int i, boolean z, JoinCommunityCallback joinCommunityCallback) {
        return tryJoinCommunity(i, z, true, joinCommunityCallback);
    }

    public final boolean tryJoinCommunity(int i, boolean z, boolean z2, JoinCommunityCallback joinCommunityCallback) {
        return tryJoinCommunity(i, z, z2, true, joinCommunityCallback);
    }

    public final boolean tryJoinCommunity(final int i, boolean z, boolean z2, boolean z3, final JoinCommunityCallback joinCommunityCallback) {
        if (!this.accountService.hasAccount()) {
            if (joinCommunityCallback != null) {
                joinCommunityCallback.onCheckLoginFailed();
            }
            return true;
        }
        if (isCommunityJoined(i)) {
            return false;
        }
        if (z3) {
            if (z2) {
                showJoinAminoFirstHint(z, joinCommunityCallback != null ? joinCommunityCallback.getActionRTCType() : 0, new Callback<Boolean>() { // from class: com.narvii.chat.global.GlobalChatHelper.tryJoinCommunity.1
                    @Override // com.narvii.util.Callback
                    public final void call(Boolean bool) {
                        GlobalChatHelper.this.innerJoinCommunity(i, joinCommunityCallback);
                    }
                });
            } else {
                innerJoinCommunity(i, joinCommunityCallback);
            }
        }
        return true;
    }

    private final boolean isInVisitorMode() {
        if (!(this.context.getContext() instanceof NVActivity)) {
            return false;
        }
        Context context = this.context.getContext();
        if (context != null) {
            return ((NVActivity) context).isInVisitorMode();
        }
        throw new TypeCastException("null cannot be cast to non-null type com.narvii.app.NVActivity");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void innerJoinCommunity(final int i, final JoinCommunityCallback joinCommunityCallback) {
        if (joinCommunityCallback == null || isInVisitorMode() || !joinCommunityCallback.onPreJoinCommunity(i)) {
            final ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
            progressDialog.show();
            new CommunityHelper(this.context).joinCommunity(i, null, new Callback<Boolean>() { // from class: com.narvii.chat.global.GlobalChatHelper.innerJoinCommunity.1
                @Override // com.narvii.util.Callback
                public final void call(Boolean success) {
                    Intrinsics.checkExpressionValueIsNotNull(success, "success");
                    if (success.booleanValue()) {
                        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                        ref$ObjectRef.element = null;
                        JoinCommunityCallback joinCommunityCallback2 = joinCommunityCallback;
                        if (joinCommunityCallback2 != null) {
                            ref$ObjectRef.element = (T) joinCommunityCallback2.followingChatToJoin();
                        }
                        T t = ref$ObjectRef.element;
                        if (((ChatThread) t) == null) {
                            progressDialog.dismiss();
                            JoinCommunityCallback joinCommunityCallback3 = joinCommunityCallback;
                            if (joinCommunityCallback3 != null) {
                                joinCommunityCallback3.onPostJoinCommunity(i, true);
                                return;
                            }
                            return;
                        }
                        GlobalChatHelper globalChatHelper = GlobalChatHelper.this;
                        ChatThread chatThread = (ChatThread) t;
                        if (chatThread != null) {
                            globalChatHelper.joinChat(chatThread, new Callback<Boolean>() { // from class: com.narvii.chat.global.GlobalChatHelper.innerJoinCommunity.1.2
                                @Override // com.narvii.util.Callback
                                public final void call(Boolean joinSuccess) {
                                    progressDialog.dismiss();
                                    C09451 c09451 = C09451.this;
                                    JoinCommunityCallback joinCommunityCallback4 = joinCommunityCallback;
                                    if (joinCommunityCallback4 != null) {
                                        int i2 = i;
                                        Intrinsics.checkExpressionValueIsNotNull(joinSuccess, "joinSuccess");
                                        joinCommunityCallback4.onPostJoinCommunity(i2, joinSuccess.booleanValue());
                                    }
                                }
                            });
                            return;
                        } else {
                            Intrinsics.throwNpe();
                            throw null;
                        }
                    }
                    progressDialog.dismiss();
                    JoinCommunityCallback joinCommunityCallback4 = joinCommunityCallback;
                    if (joinCommunityCallback4 != null) {
                        joinCommunityCallback4.onPostJoinCommunity(i, false);
                    }
                }
            }, false);
        }
    }

    private final void showJoinAminoFirstHint(boolean z, int i, final Callback<Boolean> callback) {
        String string;
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.context, "JoinCommunityDialog");
        String string2 = this.context.getContext().getString(R.string.headline_join_amino_first);
        Intrinsics.checkExpressionValueIsNotNull(string2, "context.context.getStrin…eadline_join_amino_first)");
        if (z) {
            if (SignallingChannel.isLegalChannelType(i)) {
                string = this.context.getContext().getString(R.string.headline_join_amino_first_to_join_vvchat);
                Intrinsics.checkExpressionValueIsNotNull(string, "context.context.getStrin…ino_first_to_join_vvchat)");
            } else {
                string = this.context.getContext().getString(R.string.headline_join_amino_first_to_chat);
                Intrinsics.checkExpressionValueIsNotNull(string, "context.context.getStrin…join_amino_first_to_chat)");
            }
            string2 = string;
        }
        aCMAlertDialog.setMessage(string2);
        aCMAlertDialog.addButton(this.context.getContext().getString(R.string.cancel), -4473925, new View.OnClickListener() { // from class: com.narvii.chat.global.GlobalChatHelper.showJoinAminoFirstHint.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LogEvent.clickWildcardBuilder(aCMAlertDialog, "Cancel").send();
            }
        });
        aCMAlertDialog.addButton(R.string.join, new View.OnClickListener() { // from class: com.narvii.chat.global.GlobalChatHelper.showJoinAminoFirstHint.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LogEvent.clickWildcardBuilder(aCMAlertDialog, "Join").send();
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(true);
                }
            }
        });
        aCMAlertDialog.show();
    }

    public final Intent communityDetailIntent(Integer num, String str) {
        if (num != null && num.intValue() == 0) {
            return null;
        }
        PackageUtils packageUtils = new PackageUtils(this.context.getContext());
        int communityIdFromPackageName = packageUtils.getCommunityIdFromPackageName();
        if (NVApplication.CLIENT_TYPE == 101 && packageUtils.isPackageInstalled(packageUtils.getMasterPackageName()) && (num == null || communityIdFromPackageName != num.intValue())) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(packageUtils.getMasterScheme() + "://x" + num + "/description"));
                intent.setPackage(packageUtils.getMasterPackageName());
                intent.putExtra("standalone", true);
                intent.putExtra("Source", str);
                intent.putExtra("joinOnly", true);
                intent.putExtra(ForwardActivity.CLEAR_TASK, true);
                intent.putExtra("__forwardInitTaskActivity", false);
                return intent;
            } catch (Exception unused) {
                return null;
            }
        }
        Intent intent2 = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
        intent2.putExtra("id", num);
        intent2.putExtra("Source", str);
        intent2.putExtra("joinOnly", true);
        return intent2;
    }

    public final boolean checkCommunityJoined(int i, final Callback<Boolean> callback) {
        if (isCommunityJoined(i)) {
            return true;
        }
        showJoinAminoFirstHint(false, 0, new Callback<Boolean>() { // from class: com.narvii.chat.global.GlobalChatHelper.checkCommunityJoined.1
            @Override // com.narvii.util.Callback
            public final void call(Boolean bool) {
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(true);
                }
            }
        });
        return false;
    }

    public final boolean checkGlobalChatAminoPlusOperation(boolean z, int i, final Callback<Boolean> callback) {
        MembershipService membershipService = (MembershipService) this.context.getService("membership");
        if (!z || membershipService.isMembership()) {
            if (isCommunityJoined(i)) {
                return true;
            }
            showJoinAminoFirstHint(false, 0, new Callback<Boolean>() { // from class: com.narvii.chat.global.GlobalChatHelper.checkGlobalChatAminoPlusOperation.1
                @Override // com.narvii.util.Callback
                public final void call(Boolean bool) {
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(true);
                    }
                }
            });
            return false;
        }
        if (membershipService != null) {
            if (membershipService.isMembershipBefore()) {
                new MembershipExpireDialog(this.context).show();
            } else {
                new MembershipHintDialog(this.context).show();
            }
            return false;
        }
        Intrinsics.throwNpe();
        throw null;
    }
}
