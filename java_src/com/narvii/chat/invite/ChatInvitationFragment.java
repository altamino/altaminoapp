package com.narvii.chat.invite;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.content.LocalBroadcastManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
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
import com.narvii.model.ChatThread;
import com.narvii.model.Community;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.notification.Notification;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.StatisticHelper;
import com.narvii.util.Utils;
import com.narvii.util.text.NVText;
import com.narvii.widget.NVImageView;
import java.util.HashMap;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ChatInvitationFragment.kt */
/* loaded from: classes2.dex */
public final class ChatInvitationFragment extends NVFragment implements View.OnClickListener, ThreadInfoHost {
    private HashMap _$_findViewCache;
    private AccountService accountService;
    private ConfigService config;
    private GlobalChatHelper globalChatHelper;
    private View invitationContainer;
    private BroadcastReceiver requireAccountReceiver;

    @Override // com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.globalChatHelper = new GlobalChatHelper(this);
        Object service = getService("config");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"config\")");
        this.config = (ConfigService) service;
        Object service2 = getService("account");
        Intrinsics.checkExpressionValueIsNotNull(service2, "getService(\"account\")");
        this.accountService = (AccountService) service2;
        this.requireAccountReceiver = new BroadcastReceiver() { // from class: com.narvii.chat.invite.ChatInvitationFragment.onCreate.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                ChatInvitationFragment chatInvitationFragment = ChatInvitationFragment.this;
                chatInvitationFragment.onThreadChanged(chatInvitationFragment.getThread());
            }
        };
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_chat_invitation, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        View viewFindViewById;
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.invitationContainer = view.findViewById(R.id.invitation_container);
        View view2 = this.invitationContainer;
        if (view2 != null) {
            view2.setOnClickListener(this);
        }
        View view3 = this.invitationContainer;
        if (view3 != null && (viewFindViewById = view3.findViewById(R.id.action)) != null) {
            viewFindViewById.setOnClickListener(this);
        }
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        LocalBroadcastManager localBroadcastManager = LocalBroadcastManager.getInstance(context);
        BroadcastReceiver broadcastReceiver = this.requireAccountReceiver;
        if (broadcastReceiver != null) {
            localBroadcastManager.registerReceiver(broadcastReceiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("requireAccountReceiver");
            throw null;
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        if (this.requireAccountReceiver == null) {
            Intrinsics.throwUninitializedPropertyAccessException("requireAccountReceiver");
            throw null;
        }
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        LocalBroadcastManager localBroadcastManager = LocalBroadcastManager.getInstance(context);
        BroadcastReceiver broadcastReceiver = this.requireAccountReceiver;
        if (broadcastReceiver == null) {
            Intrinsics.throwUninitializedPropertyAccessException("requireAccountReceiver");
            throw null;
        }
        localBroadcastManager.unregisterReceiver(broadcastReceiver);
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public String getThreadId() {
        String stringParam = getStringParam("id");
        Intrinsics.checkExpressionValueIsNotNull(stringParam, "getStringParam(\"id\")");
        return stringParam;
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public ChatThread getThread() {
        return ChatHelper.Companion.getThreadFromThreadInfoHost(this);
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public void onThreadChanged(ChatThread chatThread) {
        if (isReadyToShow(getThread())) {
            Utils.postDelayed(new Runnable() { // from class: com.narvii.chat.invite.ChatInvitationFragment.onThreadChanged.1
                @Override // java.lang.Runnable
                public final void run() {
                    ChatInvitationFragment.this.show();
                }
            }, 500L);
        } else {
            hide();
        }
    }

    public final boolean isReadyToShow(ChatThread chatThread) {
        int i;
        return chatThread != null && ((i = chatThread.condition) == 0 || i == 1) && chatThread.membershipStatus == 2 && !chatThread.isJumpstart() && chatThread.status != 9;
    }

    public final void show() {
        String strRemoveTags;
        ChatThread thread = getThread();
        if (isDestoryed() || thread == null || !isReadyToShow(thread)) {
            return;
        }
        Context context = getContext();
        if (context != null) {
            Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
            ChatHelper chatHelper = new ChatHelper(context);
            View view = this.invitationContainer;
            View viewFindViewById = view != null ? view.findViewById(R.id.chat_avatars) : null;
            if (viewFindViewById == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.chat.MultiAvatarView");
            }
            MultiAvatarView multiAvatarView = (MultiAvatarView) viewFindViewById;
            View view2 = this.invitationContainer;
            View viewFindViewById2 = view2 != null ? view2.findViewById(R.id.chat_cover) : null;
            if (viewFindViewById2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVImageView");
            }
            NVImageView nVImageView = (NVImageView) viewFindViewById2;
            View view3 = this.invitationContainer;
            View viewFindViewById3 = view3 != null ? view3.findViewById(R.id.subTitle) : null;
            if (viewFindViewById3 == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
            }
            TextView textView = (TextView) viewFindViewById3;
            View view4 = this.invitationContainer;
            View viewFindViewById4 = view4 != null ? view4.findViewById(R.id.action) : null;
            if (viewFindViewById4 == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.Button");
            }
            Button button = (Button) viewFindViewById4;
            List<String> avatarList = chatHelper.getAvatarList(thread);
            if (multiAvatarView != null) {
                multiAvatarView.setAvatars(avatarList);
            }
            if (nVImageView != null) {
                nVImageView.setImageUrl(thread.icon);
            }
            if (nVImageView != null) {
                nVImageView.setVisibility(thread.icon == null ? 8 : 0);
            }
            if (multiAvatarView != null) {
                multiAvatarView.setVisibility(thread.icon == null ? 0 : 8);
            }
            Context context2 = getContext();
            if (context2 != null) {
                Intrinsics.checkExpressionValueIsNotNull(context2, "context!!");
                ChatHelper chatHelper2 = new ChatHelper(context2);
                int i = thread.type;
                if (i == 0) {
                    StringBuilder sb = new StringBuilder();
                    User privateChatTargetUer = chatHelper2.getPrivateChatTargetUer(thread);
                    sb.append(privateChatTargetUer != null ? privateChatTargetUer.nickname : null);
                    sb.append(' ');
                    sb.append(getString(R.string.chat_invitation_single));
                    strRemoveTags = sb.toString();
                } else if (i == 1) {
                    strRemoveTags = getString(R.string.chat_invitation_group);
                } else if (i == 2) {
                    strRemoveTags = getString(R.string.chat_invitation_public);
                } else {
                    strRemoveTags = NVText.removeTags(thread.content);
                }
                if (textView != null) {
                    textView.setText(strRemoveTags);
                }
                if (button != null) {
                    button.setText(R.string.chat_accept);
                }
                View view5 = this.invitationContainer;
                if (view5 == null || view5.getVisibility() == 0) {
                    return;
                }
                view5.setVisibility(0);
                view5.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_in));
                return;
            }
            Intrinsics.throwNpe();
            throw null;
        }
        Intrinsics.throwNpe();
        throw null;
    }

    public final void hide() {
        View view;
        if (isDestoryed() || (view = this.invitationContainer) == null || view.getVisibility() != 0) {
            return;
        }
        view.setVisibility(8);
        view.startAnimation(AnimationUtils.loadAnimation(view.getContext(), R.anim.fade_out_fast));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        final ChatThread thread = getThread();
        if (thread != null) {
            if (view != null && view.getId() == R.id.invitation_container) {
                Intent intent = FragmentWrapperActivity.intent(ThreadDetailFragment.class);
                intent.putExtra("id", getThreadId());
                intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(getThread()));
                intent.putExtra("customFinishAnimIn", R.anim.activity_push_right_in);
                intent.putExtra("customFinishAnimOut", R.anim.activity_push_right_out);
                intent.putExtra(RtcService.KEY_FROM_GLOBAL_CHAT, getBooleanParam(RtcService.KEY_FROM_GLOBAL_CHAT));
                intent.putExtra(RtcService.KEY_COMMUNITY, getStringParam(RtcService.KEY_COMMUNITY));
                startActivity(intent);
                FragmentActivity activity = getActivity();
                if (activity != null) {
                    activity.overridePendingTransition(R.anim.activity_push_left_in, R.anim.activity_push_left_out);
                    return;
                } else {
                    Intrinsics.throwNpe();
                    throw null;
                }
            }
            StatisticHelper.getChatThreadType(thread, "Others");
            LogEvent.clickWildcardBuilder(this).area("AcceptButton").send();
            ConfigService config = (ConfigService) getService("config");
            Intrinsics.checkExpressionValueIsNotNull(config, "config");
            int communityId = config.getCommunityId();
            Community community = ((CommunityService) getService("community")).getCommunity(communityId);
            AffiliationsService affiliationsService = (AffiliationsService) getService("affiliations");
            if (community != null && community.joinType != 0 && affiliationsService.contains(communityId)) {
                new CommunityRequestHelper(this).checkWhetherUserIsJoined(communityId, new Callback<Boolean>() { // from class: com.narvii.chat.invite.ChatInvitationFragment.onClick.2
                    @Override // com.narvii.util.Callback
                    public final void call(Boolean bool) {
                        if (Intrinsics.areEqual((Object) bool, (Object) true)) {
                            ChatInvitationFragment.this.doRequestToJoinChat(thread);
                        }
                    }
                });
                return;
            }
            if (checkCommunityAvailability(false, view == null || view.getId() != R.id.action)) {
                doRequestToJoinChat(thread);
            }
        }
    }

    public final void doRequestToJoinChat(final ChatThread chatThread) {
        View viewFindViewById;
        View viewFindViewById2;
        if (chatThread == null) {
            return;
        }
        View view = this.invitationContainer;
        if (view != null && (viewFindViewById2 = view.findViewById(R.id.action)) != null) {
            viewFindViewById2.setVisibility(8);
        }
        View view2 = this.invitationContainer;
        if (view2 != null && (viewFindViewById = view2.findViewById(R.id.progress)) != null) {
            viewFindViewById.setVisibility(0);
        }
        ChatRequestHelper chatRequestHelper = new ChatRequestHelper(this);
        String threadId = getThreadId();
        AccountService accountService = this.accountService;
        if (accountService != null) {
            chatRequestHelper.sendJoinChatThreadRequest(threadId, accountService.getUserId(), getThread(), new Callback<Boolean>() { // from class: com.narvii.chat.invite.ChatInvitationFragment.doRequestToJoinChat.1
                @Override // com.narvii.util.Callback
                public final void call(Boolean bool) {
                    View viewFindViewById3;
                    View viewFindViewById4;
                    if (bool == null || !bool.booleanValue()) {
                        View view3 = ChatInvitationFragment.this.invitationContainer;
                        if (view3 != null && (viewFindViewById4 = view3.findViewById(R.id.action)) != null) {
                            viewFindViewById4.setVisibility(0);
                        }
                        View view4 = ChatInvitationFragment.this.invitationContainer;
                        if (view4 == null || (viewFindViewById3 = view4.findViewById(R.id.progress)) == null) {
                            return;
                        }
                        viewFindViewById3.setVisibility(8);
                        return;
                    }
                    ChatInvitationFragment.this.onChatJoined(chatThread);
                }
            });
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("accountService");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onChatJoined(ChatThread chatThread) {
        View viewFindViewById;
        View viewFindViewById2;
        View view = this.invitationContainer;
        if (view != null && (viewFindViewById2 = view.findViewById(R.id.action)) != null) {
            viewFindViewById2.setVisibility(8);
        }
        View view2 = this.invitationContainer;
        if (view2 != null && (viewFindViewById = view2.findViewById(R.id.progress)) != null) {
            viewFindViewById.setVisibility(8);
        }
        NVObject nVObjectM46clone = chatThread.m46clone();
        if (nVObjectM46clone == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.ChatThread");
        }
        ChatThread chatThread2 = (ChatThread) nVObjectM46clone;
        chatThread2.membershipStatus = 1;
        sendNotification(new Notification("update", chatThread2));
        recordRecentChat();
    }

    private final void recordRecentChat() {
        GlobalChatService globalChatService = (GlobalChatService) getService("globalChat");
        ConfigService configService = (ConfigService) getService("config");
        if (globalChatService != null) {
            ChatThread thread = getThread();
            if (thread == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            if (configService != null) {
                globalChatService.addRecentChat(GlobalChatThread.newGlobalChatThread(thread, configService.getCommunityId(), getContext()));
            } else {
                Intrinsics.throwNpe();
                throw null;
            }
        }
    }

    public final boolean checkCommunityAvailability(final boolean z, boolean z2) {
        ConfigService config = (ConfigService) getService("config");
        Intrinsics.checkExpressionValueIsNotNull(config, "config");
        int communityId = config.getCommunityId();
        if (this.globalChatHelper != null) {
            return !r1.tryJoinCommunity(communityId, !z, z2, new GlobalChatHelper.JoinCommunityCallback() { // from class: com.narvii.chat.invite.ChatInvitationFragment$checkCommunityAvailability$invalidStatus$1
                @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
                public int getActionRTCType() {
                    return 0;
                }

                @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
                public void onCheckLoginFailed() {
                    this.this$0.ensureLogin(new Intent("joinChannel"));
                }

                @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
                public boolean onPreJoinCommunity(int i) {
                    View viewFindViewById;
                    View viewFindViewById2;
                    if (!z) {
                        View view = this.this$0.invitationContainer;
                        if (view != null && (viewFindViewById2 = view.findViewById(R.id.action)) != null) {
                            viewFindViewById2.setVisibility(8);
                        }
                        View view2 = this.this$0.invitationContainer;
                        if (view2 != null && (viewFindViewById = view2.findViewById(R.id.progress)) != null) {
                            viewFindViewById.setVisibility(0);
                        }
                        return false;
                    }
                    Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                    intent.putExtra("id", i);
                    this.this$0.startActivity(intent);
                    return true;
                }

                @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
                public ChatThread followingChatToJoin() {
                    return this.this$0.getThread();
                }

                @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
                public void onPostJoinCommunity(int i, boolean z3) {
                    View viewFindViewById;
                    View viewFindViewById2;
                    if (!z3) {
                        View view = this.this$0.invitationContainer;
                        if (view != null && (viewFindViewById2 = view.findViewById(R.id.action)) != null) {
                            viewFindViewById2.setVisibility(0);
                        }
                        View view2 = this.this$0.invitationContainer;
                        if (view2 == null || (viewFindViewById = view2.findViewById(R.id.progress)) == null) {
                            return;
                        }
                        viewFindViewById.setVisibility(8);
                        return;
                    }
                    ChatInvitationFragment chatInvitationFragment = this.this$0;
                    ChatThread thread = chatInvitationFragment.getThread();
                    if (thread != null) {
                        chatInvitationFragment.onChatJoined(thread);
                    } else {
                        Intrinsics.throwNpe();
                        throw null;
                    }
                }
            });
        }
        Intrinsics.throwUninitializedPropertyAccessException("globalChatHelper");
        throw null;
    }
}
