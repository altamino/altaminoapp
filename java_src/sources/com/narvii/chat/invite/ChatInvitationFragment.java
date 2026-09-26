package com.narvii.chat.invite;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;
import com.narvii.chat.MultiAvatarView;
import com.narvii.chat.ThreadInfoHost;
import com.narvii.chat.detail.ThreadDetailFragment;
import com.narvii.chat.global.GlobalChatHelper;
import com.narvii.chat.global.GlobalChatThread;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.util.ChatRequestHelper;
import com.narvii.chat.util.GlobalChatService;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityService;
import com.narvii.community.request.CommunityRequestHelper;
import com.narvii.config.ConfigService;
import com.narvii.logging.LogEvent;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.master.search.SearchPrefsHelper;
import com.narvii.model.ChatThread;
import com.narvii.model.Community;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.notification.Notification;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.StatisticHelper;
import com.narvii.util.Utils;
import com.narvii.util.statistics.FirebaseLogManager;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.util.text.NVText;
import com.narvii.widget.NVImageView;
import com.safedk.android.utils.Logger;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class ChatInvitationFragment extends NVFragment implements View.OnClickListener, ThreadInfoHost {
    private AccountService accountService;
    private ConfigService config;
    private GlobalChatHelper globalChatHelper;

    @Nullable
    private View invitationContainer;
    private BroadcastReceiver requireAccountReceiver;

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void doRequestToJoinChat$lambda$6(ChatInvitationFragment this$0, ChatThread chatThread, Boolean bool) {
        t.j(this$0, "this$0");
        if (bool != null && bool.booleanValue()) {
            this$0.onChatJoined(chatThread);
            return;
        }
        View view = this$0.invitationContainer;
        View viewFindViewById = view != null ? view.findViewById(R.id.action) : null;
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(0);
        }
        View view2 = this$0.invitationContainer;
        View viewFindViewById2 = view2 != null ? view2.findViewById(R.id.progress) : null;
        if (viewFindViewById2 == null) {
            return;
        }
        viewFindViewById2.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onChatJoined(ChatThread chatThread) {
        View view = this.invitationContainer;
        View viewFindViewById = view != null ? view.findViewById(R.id.action) : null;
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(8);
        }
        View view2 = this.invitationContainer;
        View viewFindViewById2 = view2 != null ? view2.findViewById(R.id.progress) : null;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setVisibility(8);
        }
        NVObject nVObjectM1622clone = chatThread.m1622clone();
        t.h(nVObjectM1622clone, "null cannot be cast to non-null type com.narvii.model.ChatThread");
        ChatThread chatThread2 = (ChatThread) nVObjectM1622clone;
        chatThread2.membershipStatus = 1;
        sendNotification(new Notification("update", chatThread2));
        recordRecentChat();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onClick$lambda$5(ChatInvitationFragment this$0, ChatThread chatThread, Boolean bool) {
        t.j(this$0, "this$0");
        t.j(chatThread, "$chatThread");
        if (t.e(bool, Boolean.TRUE)) {
            this$0.doRequestToJoinChat(chatThread);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onThreadChanged$lambda$1(ChatInvitationFragment this$0) {
        t.j(this$0, "this$0");
        this$0.show();
    }

    private final void recordRecentChat() {
        GlobalChatService globalChatService = (GlobalChatService) getService("globalChat");
        ConfigService configService = (ConfigService) getService("config");
        if (globalChatService != null) {
            ChatThread thread = getThread();
            t.g(thread);
            t.g(configService);
            globalChatService.addRecentChat(GlobalChatThread.newGlobalChatThread(thread, configService.getCommunityId(), getContext()));
        }
    }

    public final boolean checkCommunityAvailability(final boolean z6, boolean z10) {
        int communityId = ((ConfigService) getService("config")).getCommunityId();
        GlobalChatHelper globalChatHelper = this.globalChatHelper;
        if (globalChatHelper == null) {
            t.B("globalChatHelper");
            globalChatHelper = null;
        }
        return !globalChatHelper.tryJoinCommunity(communityId, !z6, z10, new GlobalChatHelper.JoinCommunityCallback() { // from class: com.narvii.chat.invite.ChatInvitationFragment$checkCommunityAvailability$invalidStatus$1
            public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public int getActionRTCType() {
                return 0;
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            @Nullable
            public ChatThread followingChatToJoin() {
                return this.this$0.getThread();
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public void onCheckLoginFailed() {
                this.this$0.ensureLogin(new Intent("joinChannel"));
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public void onPostJoinCommunity(int i10, boolean z11) {
                if (z11) {
                    ChatInvitationFragment chatInvitationFragment = this.this$0;
                    ChatThread thread = chatInvitationFragment.getThread();
                    t.g(thread);
                    chatInvitationFragment.onChatJoined(thread);
                    return;
                }
                View view = this.this$0.invitationContainer;
                View viewFindViewById = view != null ? view.findViewById(R.id.action) : null;
                if (viewFindViewById != null) {
                    viewFindViewById.setVisibility(0);
                }
                View view2 = this.this$0.invitationContainer;
                View viewFindViewById2 = view2 != null ? view2.findViewById(R.id.progress) : null;
                if (viewFindViewById2 == null) {
                    return;
                }
                viewFindViewById2.setVisibility(8);
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public boolean onPreJoinCommunity(int i10) {
                if (z6) {
                    Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                    intent.putExtra("id", i10);
                    safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this.this$0, intent);
                    return true;
                }
                View view = this.this$0.invitationContainer;
                View viewFindViewById = view != null ? view.findViewById(R.id.action) : null;
                if (viewFindViewById != null) {
                    viewFindViewById.setVisibility(8);
                }
                View view2 = this.this$0.invitationContainer;
                View viewFindViewById2 = view2 != null ? view2.findViewById(R.id.progress) : null;
                if (viewFindViewById2 != null) {
                    viewFindViewById2.setVisibility(0);
                }
                return false;
            }
        });
    }

    public final void doRequestToJoinChat(@Nullable final ChatThread chatThread) {
        if (chatThread == null) {
            return;
        }
        View view = this.invitationContainer;
        AccountService accountService = null;
        View viewFindViewById = view != null ? view.findViewById(R.id.action) : null;
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(8);
        }
        View view2 = this.invitationContainer;
        View viewFindViewById2 = view2 != null ? view2.findViewById(R.id.progress) : null;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setVisibility(0);
        }
        ChatRequestHelper chatRequestHelper = new ChatRequestHelper(this);
        String threadId = getThreadId();
        AccountService accountService2 = this.accountService;
        if (accountService2 == null) {
            t.B("accountService");
        } else {
            accountService = accountService2;
        }
        chatRequestHelper.sendJoinChatThreadRequest(threadId, accountService.getUserId(), getThread(), new Callback() { // from class: com.narvii.chat.invite.b
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ChatInvitationFragment.doRequestToJoinChat$lambda$6(this.f1969a, chatThread, (Boolean) obj);
            }
        });
    }

    @Override // com.narvii.chat.ThreadInfoHost
    @Nullable
    public ChatThread getThread() {
        return ChatHelper.Companion.getThreadFromThreadInfoHost(this);
    }

    @Override // com.narvii.chat.ThreadInfoHost
    @NotNull
    public String getThreadId() {
        String stringParam = getStringParam("id");
        t.i(stringParam, "getStringParam(...)");
        return stringParam;
    }

    public final boolean isReadyToShow(@Nullable ChatThread chatThread) {
        int i10;
        return chatThread != null && ((i10 = chatThread.condition) == 0 || i10 == 1) && chatThread.membershipStatus == 2 && !chatThread.isJumpstart() && chatThread.status != 9;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_chat_invitation, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        if (this.requireAccountReceiver == null) {
            t.B("requireAccountReceiver");
        }
        Context context = getContext();
        t.g(context);
        LocalBroadcastManager localBroadcastManagerB = LocalBroadcastManager.b(context);
        BroadcastReceiver broadcastReceiver = this.requireAccountReceiver;
        if (broadcastReceiver == null) {
            t.B("requireAccountReceiver");
            broadcastReceiver = null;
        }
        localBroadcastManagerB.f(broadcastReceiver);
        super.onDestroyView();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        View viewFindViewById;
        t.j(view, "view");
        View viewFindViewById2 = view.findViewById(R.id.invitation_container);
        this.invitationContainer = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(this);
        }
        View view2 = this.invitationContainer;
        if (view2 != null && (viewFindViewById = view2.findViewById(R.id.action)) != null) {
            viewFindViewById.setOnClickListener(this);
        }
        Context context = getContext();
        t.g(context);
        LocalBroadcastManager localBroadcastManagerB = LocalBroadcastManager.b(context);
        BroadcastReceiver broadcastReceiver = this.requireAccountReceiver;
        if (broadcastReceiver == null) {
            t.B("requireAccountReceiver");
            broadcastReceiver = null;
        }
        localBroadcastManagerB.c(broadcastReceiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
    }

    public final void hide() {
        View view;
        if (!isDestoryed() && (view = this.invitationContainer) != null && view.getVisibility() == 0) {
            view.setVisibility(8);
            view.startAnimation(AnimationUtils.loadAnimation(view.getContext(), R.anim.fade_out_fast));
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        boolean z6;
        final ChatThread thread = getThread();
        if (thread == null) {
            return;
        }
        if (view != null && view.getId() == R.id.invitation_container) {
            Intent intent = FragmentWrapperActivity.intent(ThreadDetailFragment.class);
            intent.putExtra("id", getThreadId());
            intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(getThread()));
            intent.putExtra("customFinishAnimIn", R.anim.activity_push_right_in);
            intent.putExtra("customFinishAnimOut", R.anim.activity_push_right_out);
            intent.putExtra(RtcService.KEY_FROM_GLOBAL_CHAT, getBooleanParam(RtcService.KEY_FROM_GLOBAL_CHAT));
            intent.putExtra(RtcService.KEY_COMMUNITY, getStringParam(RtcService.KEY_COMMUNITY));
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
            FragmentActivity activity = getActivity();
            t.g(activity);
            activity.overridePendingTransition(R.anim.activity_push_left_in, R.anim.activity_push_left_out);
            return;
        }
        String chatThreadType = StatisticHelper.getChatThreadType(thread, "Others");
        StatisticsService statisticsService = (StatisticsService) getService("statistics");
        if (statisticsService != null) {
            FirebaseLogManager.logEvent(this, statisticsService.event("Join Chat Thread").userPropInc("Join Chat Thread Total").param(EventConstants.CommentPost.TYPE, chatThreadType));
        }
        LogEvent.clickWildcardBuilder(this).area("AcceptButton").send();
        int communityId = ((ConfigService) getService("config")).getCommunityId();
        Community community = ((CommunityService) getService(SearchPrefsHelper.PREFS_KEY_COMMUNITY)).getCommunity(communityId);
        AffiliationsService affiliationsService = (AffiliationsService) getService("affiliations");
        if (community != null && community.joinType != 0 && affiliationsService.contains(communityId)) {
            new CommunityRequestHelper(this).checkWhetherUserIsJoined(communityId, new Callback() { // from class: com.narvii.chat.invite.c
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    ChatInvitationFragment.onClick$lambda$5(this.f1971a, thread, (Boolean) obj);
                }
            });
            return;
        }
        if (view != null && view.getId() == R.id.action) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (!checkCommunityAvailability(false, !z6)) {
            return;
        }
        doRequestToJoinChat(thread);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.globalChatHelper = new GlobalChatHelper(this);
        Object service = getService("config");
        t.i(service, "getService(...)");
        this.config = (ConfigService) service;
        Object service2 = getService("account");
        t.i(service2, "getService(...)");
        this.accountService = (AccountService) service2;
        this.requireAccountReceiver = new BroadcastReceiver() { // from class: com.narvii.chat.invite.ChatInvitationFragment.onCreate.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(@Nullable Context context, @Nullable Intent intent) {
                ChatInvitationFragment chatInvitationFragment = ChatInvitationFragment.this;
                chatInvitationFragment.onThreadChanged(chatInvitationFragment.getThread());
            }
        };
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public void onThreadChanged(@Nullable ChatThread chatThread) {
        if (isReadyToShow(getThread())) {
            Utils.postDelayed(new Runnable() { // from class: com.narvii.chat.invite.a
                @Override // java.lang.Runnable
                public final void run() {
                    ChatInvitationFragment.onThreadChanged$lambda$1(this.f1968a);
                }
            }, 500L);
        } else {
            hide();
        }
    }

    public final void show() {
        View viewFindViewById;
        View viewFindViewById2;
        View viewFindViewById3;
        View viewFindViewById4;
        int i10;
        String strRemoveTags;
        ChatThread thread = getThread();
        if (!isDestoryed() && thread != null && isReadyToShow(thread)) {
            Context context = getContext();
            t.g(context);
            ChatHelper chatHelper = new ChatHelper(context);
            View view = this.invitationContainer;
            String str = null;
            if (view != null) {
                viewFindViewById = view.findViewById(R.id.chat_avatars);
            } else {
                viewFindViewById = null;
            }
            t.h(viewFindViewById, "null cannot be cast to non-null type com.narvii.chat.MultiAvatarView");
            MultiAvatarView multiAvatarView = (MultiAvatarView) viewFindViewById;
            View view2 = this.invitationContainer;
            if (view2 != null) {
                viewFindViewById2 = view2.findViewById(R.id.chat_cover);
            } else {
                viewFindViewById2 = null;
            }
            t.h(viewFindViewById2, "null cannot be cast to non-null type com.narvii.widget.NVImageView");
            NVImageView nVImageView = (NVImageView) viewFindViewById2;
            View view3 = this.invitationContainer;
            if (view3 != null) {
                viewFindViewById3 = view3.findViewById(R.id.subTitle);
            } else {
                viewFindViewById3 = null;
            }
            t.h(viewFindViewById3, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView = (TextView) viewFindViewById3;
            View view4 = this.invitationContainer;
            if (view4 != null) {
                viewFindViewById4 = view4.findViewById(R.id.action);
            } else {
                viewFindViewById4 = null;
            }
            t.h(viewFindViewById4, "null cannot be cast to non-null type android.widget.Button");
            Button button = (Button) viewFindViewById4;
            multiAvatarView.setAvatars(chatHelper.getAvatarList(thread));
            nVImageView.setImageUrl(thread.icon);
            int i11 = 8;
            if (thread.icon == null) {
                i10 = 8;
            } else {
                i10 = 0;
            }
            nVImageView.setVisibility(i10);
            if (thread.icon == null) {
                i11 = 0;
            }
            multiAvatarView.setVisibility(i11);
            Context context2 = getContext();
            t.g(context2);
            ChatHelper chatHelper2 = new ChatHelper(context2);
            int i12 = thread.type;
            if (i12 == 0) {
                User privateChatTargetUer = chatHelper2.getPrivateChatTargetUer(thread);
                if (privateChatTargetUer != null) {
                    str = privateChatTargetUer.nickname;
                }
                strRemoveTags = str + " " + getString(R.string.chat_invitation_single);
            } else if (i12 == 1) {
                strRemoveTags = getString(R.string.chat_invitation_group);
            } else if (i12 == 2) {
                strRemoveTags = getString(R.string.chat_invitation_public);
            } else {
                strRemoveTags = NVText.removeTags(thread.content);
            }
            textView.setText(strRemoveTags);
            button.setText(R.string.chat_accept);
            View view5 = this.invitationContainer;
            if (view5 != null && view5.getVisibility() != 0) {
                view5.setVisibility(0);
                view5.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_in));
            }
        }
    }
}
