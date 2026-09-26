package com.narvii.chat.global;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.video.VVChatEntryHelper;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.master.CommunityHelper;
import com.narvii.master.search.SearchPrefsHelper;
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
import com.narvii.util.StatisticHelper;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.mixpanel.MixpanelAnalytics;
import com.narvii.util.statistics.FirebaseLogManager;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.wallet.MembershipService;
import com.narvii.widget.ACMAlertDialog;
import com.safedk.android.utils.Logger;
import java.util.List;
import kotlin.collections.s0;
import kotlin.jvm.internal.p0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.a0;

/* JADX INFO: loaded from: classes4.dex */
public final class GlobalChatHelper {
    private final AccountService accountService;
    private final AffiliationsService affiliationsService;
    private final ApiService apiService;

    @Nullable
    private Community community;

    @NotNull
    private final NVContext context;
    private final NotificationCenter notificationService;

    @NotNull
    private String source;

    public interface JoinCommunityCallback {
        @Nullable
        ChatThread followingChatToJoin();

        int getActionRTCType();

        void onCheckLoginFailed();

        void onPostJoinCommunity(int i10, boolean z6);

        boolean onPreJoinCommunity(int i10);
    }

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @NotNull
    public final NVContext getContext() {
        return this.context;
    }

    @NotNull
    public final String getSource() {
        return this.source;
    }

    public final void setSource(@NotNull String str) {
        t.j(str, "<set-?>");
        this.source = str;
    }

    public final boolean tryJoinCommunity(int i10, boolean z6, @Nullable JoinCommunityCallback joinCommunityCallback) {
        return tryJoinCommunity(i10, z6, true, joinCommunityCallback);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public GlobalChatHelper(@NotNull NVContext context) {
        t.j(context, "context");
        this.context = context;
        this.accountService = (AccountService) context.getService("account");
        this.affiliationsService = (AffiliationsService) context.getService("affiliations");
        this.apiService = (ApiService) context.getService("api");
        this.notificationService = (NotificationCenter) context.getService("notification");
        this.source = "Global Chats";
        String stringParam = context instanceof NVActivity ? ((NVActivity) context).getStringParam(RtcService.KEY_COMMUNITY) : context instanceof NVFragment ? ParamUtils.getStringParam((Fragment) context, RtcService.KEY_COMMUNITY) : null;
        if (stringParam != null) {
            this.community = (Community) JacksonUtils.readAs(stringParam, Community.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void checkCommunityJoined$lambda$10(Callback callback, Boolean bool) {
        if (callback != null) {
            callback.call(Boolean.TRUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void checkGlobalChatAminoPlusOperation$lambda$11(Callback callback, Boolean bool) {
        if (callback != null) {
            callback.call(Boolean.TRUE);
        }
    }

    private final void innerJoinCommunity(final int i10, final JoinCommunityCallback joinCommunityCallback) {
        if (joinCommunityCallback == null || isInVisitorMode() || !joinCommunityCallback.onPreJoinCommunity(i10)) {
            final ProgressDialog progressDialog = new ProgressDialog(this.context.getContext());
            progressDialog.show();
            new CommunityHelper(this.context).joinCommunity(i10, null, new Callback() { // from class: com.narvii.chat.global.h
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    GlobalChatHelper.innerJoinCommunity$lambda$7(this.f1943a, i10, joinCommunityCallback, progressDialog, (Boolean) obj);
                }
            }, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v5, types: [T, com.narvii.model.ChatThread] */
    public static final void innerJoinCommunity$lambda$7(final GlobalChatHelper this$0, final int i10, final JoinCommunityCallback joinCommunityCallback, final ProgressDialog progress, Boolean bool) {
        t.j(this$0, "this$0");
        t.j(progress, "$progress");
        t.g(bool);
        if (!bool.booleanValue()) {
            progress.dismiss();
            if (joinCommunityCallback != null) {
                joinCommunityCallback.onPostJoinCommunity(i10, false);
                return;
            }
            return;
        }
        Context context = this$0.context.getContext();
        t.i(context, "getContext(...)");
        new MixpanelAnalytics(context).trackEvent("community_join", s0.n(a0.a("type", "join"), a0.a("source", "global_chats"), a0.a("community_id", Integer.valueOf(i10))));
        final p0 p0Var = new p0();
        if (joinCommunityCallback != null) {
            p0Var.element = joinCommunityCallback.followingChatToJoin();
        }
        T t5 = p0Var.element;
        if (t5 != 0) {
            t.g(t5);
            this$0.joinChat((ChatThread) t5, new Callback() { // from class: com.narvii.chat.global.d
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    GlobalChatHelper.innerJoinCommunity$lambda$7$lambda$6(progress, joinCommunityCallback, i10, this$0, p0Var, (Boolean) obj);
                }
            });
        } else {
            progress.dismiss();
            if (joinCommunityCallback != null) {
                joinCommunityCallback.onPostJoinCommunity(i10, true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void innerJoinCommunity$lambda$7$lambda$6(ProgressDialog progress, JoinCommunityCallback joinCommunityCallback, int i10, GlobalChatHelper this$0, p0 chatToJoin, Boolean bool) {
        t.j(progress, "$progress");
        t.j(this$0, "this$0");
        t.j(chatToJoin, "$chatToJoin");
        progress.dismiss();
        if (joinCommunityCallback != null) {
            t.g(bool);
            joinCommunityCallback.onPostJoinCommunity(i10, bool.booleanValue());
        }
        Object service = this$0.context.getService("statistics");
        t.i(service, "getService(...)");
        FirebaseLogManager.logEvent(this$0.context, ((StatisticsService) service).event("Join Chat Thread").param(EventConstants.CommentPost.TYPE, StatisticHelper.getChatThreadType((ChatThread) chatToJoin.element, "Others")).source("Global Chats").userPropInc("Join Chat Thread Total"));
    }

    private final boolean isInVisitorMode() {
        if (!(this.context.getContext() instanceof NVActivity)) {
            return false;
        }
        Context context = this.context.getContext();
        t.h(context, "null cannot be cast to non-null type com.narvii.app.NVActivity");
        return ((NVActivity) context).isInVisitorMode();
    }

    private final void joinChat(final ChatThread chatThread, final Callback<Boolean> callback) {
        String userId = this.accountService.getUserId();
        this.apiService.exec(ApiRequest.builder().chatServer().post().path("/chat/thread/" + chatThread.id() + "/member/" + userId).build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.chat.global.GlobalChatHelper.joinChat.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                NVToast.makeText(this.getContext().getContext(), str, 0).show();
                Callback<Boolean> callback2 = callback;
                if (callback2 != null) {
                    callback2.call(Boolean.FALSE);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@NotNull ApiRequest req, @NotNull ApiResponse resp) throws Exception {
                t.j(req, "req");
                t.j(resp, "resp");
                NVObject nVObjectM1622clone = chatThread.m1622clone();
                t.h(nVObjectM1622clone, "null cannot be cast to non-null type com.narvii.model.ChatThread");
                ChatThread chatThread2 = (ChatThread) nVObjectM1622clone;
                chatThread2.membershipStatus = 1;
                this.notificationService.sendNotification(new Notification("update", chatThread2));
                Callback<Boolean> callback2 = callback;
                if (callback2 != null) {
                    callback2.call(Boolean.TRUE);
                }
                LogEvent.clickBuilder(this.getContext(), ActSemantic.joinChat).send();
            }
        });
    }

    private final void showJoinAminoFirstHint(boolean z6, int i10, final Callback<Boolean> callback) {
        String string;
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.context, "JoinCommunityDialog");
        String string2 = this.context.getContext().getString(R.string.headline_join_amino_first);
        t.i(string2, "getString(...)");
        if (z6) {
            if (SignallingChannel.isLegalChannelType(i10)) {
                string = this.context.getContext().getString(R.string.headline_join_amino_first_to_join_vvchat);
                t.i(string, "getString(...)");
            } else {
                string = this.context.getContext().getString(R.string.headline_join_amino_first_to_chat);
                t.i(string, "getString(...)");
            }
            string2 = string;
        }
        aCMAlertDialog.setMessage(string2);
        aCMAlertDialog.addButton(this.context.getContext().getString(R.string.cancel), -4473925, new View.OnClickListener() { // from class: com.narvii.chat.global.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GlobalChatHelper.showJoinAminoFirstHint$lambda$8(aCMAlertDialog, view);
            }
        });
        aCMAlertDialog.addButton(R.string.join, new View.OnClickListener() { // from class: com.narvii.chat.global.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GlobalChatHelper.showJoinAminoFirstHint$lambda$9(aCMAlertDialog, callback, view);
            }
        });
        aCMAlertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showJoinAminoFirstHint$lambda$8(ACMAlertDialog dlg, View view) {
        t.j(dlg, "$dlg");
        LogEvent.clickWildcardBuilder(dlg, "Cancel").send();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showJoinAminoFirstHint$lambda$9(ACMAlertDialog dlg, Callback callback, View view) {
        t.j(dlg, "$dlg");
        LogEvent.clickWildcardBuilder(dlg, "Join").send();
        if (callback != null) {
            callback.call(Boolean.TRUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void tryJoinCommunity$lambda$4(GlobalChatHelper this$0, int i10, JoinCommunityCallback joinCommunityCallback, Boolean bool) {
        t.j(this$0, "this$0");
        this$0.innerJoinCommunity(i10, joinCommunityCallback);
    }

    public final boolean checkGlobalChatAminoPlusOperation(boolean z6, int i10, @Nullable final Callback<Boolean> callback) {
        MembershipService membershipService = (MembershipService) this.context.getService("membership");
        if (!z6 || membershipService.isMembership()) {
            if (isCommunityJoined(i10)) {
                return true;
            }
            showJoinAminoFirstHint(false, 0, new Callback() { // from class: com.narvii.chat.global.i
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    GlobalChatHelper.checkGlobalChatAminoPlusOperation$lambda$11(callback, (Boolean) obj);
                }
            });
            return false;
        }
        t.g(membershipService);
        if (membershipService.isMembershipBefore()) {
            new MembershipExpireDialog(this.context).show();
        } else {
            new MembershipHintDialog(this.context).show();
        }
        return false;
    }

    @Nullable
    public final Intent communityDetailIntent(@Nullable Integer num, @Nullable String str) {
        if (num != null && num.intValue() == 0) {
            return null;
        }
        new PackageUtils(this.context.getContext()).getCommunityIdFromPackageName();
        Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
        intent.putExtra("id", num);
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, str);
        intent.putExtra("joinOnly", true);
        return intent;
    }

    public final boolean isCommunityJoined(int i10) {
        return i10 == 0 || this.affiliationsService.contains(i10);
    }

    public final void launchChatThread(@NotNull ChatThread thread, @Nullable Community community) {
        t.j(thread, "thread");
        if (community != null) {
            CommunityService communityService = (CommunityService) this.context.getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY);
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
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, this.source);
        safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.context, intent);
    }

    public final boolean tryJoinCommunity(int i10, boolean z6, boolean z10, @Nullable JoinCommunityCallback joinCommunityCallback) {
        return tryJoinCommunity(i10, z6, z10, true, joinCommunityCallback);
    }

    public final boolean checkCommunityJoined(int i10, @Nullable final Callback<Boolean> callback) {
        if (!isCommunityJoined(i10)) {
            showJoinAminoFirstHint(false, 0, new Callback() { // from class: com.narvii.chat.global.g
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    GlobalChatHelper.checkCommunityJoined$lambda$10(callback, (Boolean) obj);
                }
            });
            return false;
        }
        return true;
    }

    public final boolean tryJoinCommunity(final int i10, boolean z6, boolean z10, boolean z11, @Nullable final JoinCommunityCallback joinCommunityCallback) {
        if (!this.accountService.hasAccount()) {
            if (joinCommunityCallback != null) {
                joinCommunityCallback.onCheckLoginFailed();
            }
            return true;
        }
        if (isCommunityJoined(i10)) {
            return false;
        }
        if (z11) {
            if (z10) {
                showJoinAminoFirstHint(z6, joinCommunityCallback != null ? joinCommunityCallback.getActionRTCType() : 0, new Callback() { // from class: com.narvii.chat.global.c
                    @Override // com.narvii.util.Callback
                    public final void call(Object obj) {
                        GlobalChatHelper.tryJoinCommunity$lambda$4(this.f1917a, i10, joinCommunityCallback, (Boolean) obj);
                    }
                });
            } else {
                innerJoinCommunity(i10, joinCommunityCallback);
            }
        }
        return true;
    }
}
