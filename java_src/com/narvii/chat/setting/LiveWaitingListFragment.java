package com.narvii.chat.setting;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.IThreadInfoListener;
import com.narvii.chat.dialog.VVChatUserDialog;
import com.narvii.chat.global.GlobalChatHelper;
import com.narvii.chat.input.ChatThreadCheckFragment;
import com.narvii.chat.invite.ChatInviteFragment;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.setting.helper.ChatWaitingListServiceKt;
import com.narvii.chat.setting.widget.WaitListAcceptView;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.signalling.SignallingService;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.video.overlay.ParticipantsListFragment;
import com.narvii.chat.waitinglist.WaitingListListener;
import com.narvii.config.ConfigService;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.ChatThread;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference0;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;

/* compiled from: LiveWaitingListFragment.kt */
/* loaded from: classes2.dex */
public final class LiveWaitingListFragment extends NVRecyclerViewFragment implements View.OnClickListener, WaitingListListener, IThreadInfoListener {
    private HashMap _$_findViewCache;
    private ChatHelper chatHelper;
    private User currentUser;
    private View emptyView;
    private boolean isHostOrCoHost;
    private RtcService rtcService;
    private ChatThread thread;
    private IWaitingListListener waitingListListener;

    /* compiled from: LiveWaitingListFragment.kt */
    public interface IWaitingListListener {
        void closeWaitingList();
    }

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
    public String getPageName() {
        return "WaitingList";
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isFinalPage() {
        return true;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.chat.waitinglist.WaitingListListener
    public void onWaitingListApprove(SignallingChannel signallingChannel) {
    }

    public static final /* synthetic */ User access$getCurrentUser$p(LiveWaitingListFragment liveWaitingListFragment) {
        User user = liveWaitingListFragment.currentUser;
        if (user != null) {
            return user;
        }
        Intrinsics.throwUninitializedPropertyAccessException("currentUser");
        throw null;
    }

    public static final /* synthetic */ RtcService access$getRtcService$p(LiveWaitingListFragment liveWaitingListFragment) {
        RtcService rtcService = liveWaitingListFragment.rtcService;
        if (rtcService != null) {
            return rtcService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("rtcService");
        throw null;
    }

    public static final /* synthetic */ ChatThread access$getThread$p(LiveWaitingListFragment liveWaitingListFragment) {
        ChatThread chatThread = liveWaitingListFragment.thread;
        if (chatThread != null) {
            return chatThread;
        }
        Intrinsics.throwUninitializedPropertyAccessException("thread");
        throw null;
    }

    public final IWaitingListListener getWaitingListListener() {
        return this.waitingListListener;
    }

    public final void setWaitingListListener(IWaitingListListener iWaitingListListener) {
        this.waitingListListener = iWaitingListListener;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        Object as = JacksonUtils.readAs(getStringParam("thread"), ChatThread.class);
        Intrinsics.checkExpressionValueIsNotNull(as, "JacksonUtils.readAs(getS…, ChatThread::class.java)");
        this.thread = (ChatThread) as;
        AccountService account = (AccountService) getService("account");
        Intrinsics.checkExpressionValueIsNotNull(account, "account");
        User userProfile = account.getUserProfile();
        Intrinsics.checkExpressionValueIsNotNull(userProfile, "account.userProfile");
        this.currentUser = userProfile;
        if (context != null) {
            this.chatHelper = new ChatHelper(context);
            Object service = getService("rtc");
            Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"rtc\")");
            this.rtcService = (RtcService) service;
            return;
        }
        Intrinsics.throwNpe();
        throw null;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        RtcService rtcService = this.rtcService;
        if (rtcService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rtcService");
            throw null;
        }
        ChatThread chatThread = this.thread;
        if (chatThread != null) {
            rtcService.addWaitingListListener(chatThread.threadId, this);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("thread");
            throw null;
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return LayoutInflater.from(getContext()).inflate(R.layout.fragment_live_wating_list, viewGroup, false);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        TextView textView;
        TextView textView2;
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        this.emptyView = setGlobalEmptyView(R.layout.waiting_list_empty_view);
        ChatThread chatThread = this.thread;
        if (chatThread == null) {
            Intrinsics.throwUninitializedPropertyAccessException("thread");
            throw null;
        }
        User user = this.currentUser;
        if (user == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentUser");
            throw null;
        }
        this.isHostOrCoHost = chatThread.isHostOrCoHost(user.uid);
        ((TextView) _$_findCachedViewById(com.narvii.amino.R.id.clear_btn)).setOnClickListener(this);
        ((FrameLayout) _$_findCachedViewById(com.narvii.amino.R.id.close_btn)).setOnClickListener(this);
        TextView clear_btn = (TextView) _$_findCachedViewById(com.narvii.amino.R.id.clear_btn);
        Intrinsics.checkExpressionValueIsNotNull(clear_btn, "clear_btn");
        clear_btn.setVisibility(4);
        View view2 = this.emptyView;
        if (view2 != null && (textView2 = (TextView) view2.findViewById(com.narvii.amino.R.id.invite_talk_btn)) != null) {
            textView2.setOnClickListener(this);
        }
        View view3 = this.emptyView;
        if (view3 != null && (textView = (TextView) view3.findViewById(com.narvii.amino.R.id.invite_talk_btn)) != null) {
            textView.setVisibility(this.isHostOrCoHost ? 0 : 4);
        }
        ((LinearLayout) _$_findCachedViewById(com.narvii.amino.R.id.apply_talk_layout)).setOnClickListener(this);
        LinearLayout apply_talk_layout = (LinearLayout) _$_findCachedViewById(com.narvii.amino.R.id.apply_talk_layout);
        Intrinsics.checkExpressionValueIsNotNull(apply_talk_layout, "apply_talk_layout");
        apply_talk_layout.setVisibility(this.isHostOrCoHost ? 8 : 0);
        ChatThread chatThread2 = this.thread;
        if (chatThread2 != null) {
            updateWaitingListInner(chatThread2);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("thread");
            throw null;
        }
    }

    public final void updateWaitingList(ChatThread t) {
        Intrinsics.checkParameterIsNotNull(t, "t");
        if (getView() != null) {
            updateWaitingListInner(t);
        }
    }

    private final void updateWaitingListInner(ChatThread chatThread) {
        List<User> list;
        SignallingChannel channelByThread = ((SignallingService) getService("signalling")).getChannelByThread(chatThread.threadId);
        if (channelByThread != null && (list = channelByThread.userWaitList) != null) {
            Adapter waitListAdapter = getWaitListAdapter();
            if (waitListAdapter != null) {
                waitListAdapter.setWaitingUserList(list);
            }
            updateApplyTalkLayout(list);
        }
        updateViews();
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        RtcService rtcService = this.rtcService;
        if (rtcService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rtcService");
            throw null;
        }
        ChatThread chatThread = this.thread;
        if (chatThread != null) {
            rtcService.removeWaitingListListener(chatThread.threadId, this);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("thread");
            throw null;
        }
    }

    @Override // com.narvii.chat.waitinglist.WaitingListListener
    public void onWaitingListChanged(SignallingChannel signallingChannel, Collection<User> collection, Collection<User> collection2) {
        if (collection2 != null) {
            Adapter waitListAdapter = getWaitListAdapter();
            if (waitListAdapter != null) {
                waitListAdapter.setWaitingUserList(collection2);
            }
            updateApplyTalkLayout(collection2);
        }
        updateViews();
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected NVRecyclerViewBaseAdapter createAdapter() {
        return new Adapter(this, this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (Intrinsics.areEqual(view, (TextView) _$_findCachedViewById(com.narvii.amino.R.id.clear_btn))) {
            clearWaitingList();
            return;
        }
        if (Intrinsics.areEqual(view, (FrameLayout) _$_findCachedViewById(com.narvii.amino.R.id.close_btn))) {
            IWaitingListListener iWaitingListListener = this.waitingListListener;
            if (iWaitingListListener != null) {
                iWaitingListListener.closeWaitingList();
                return;
            }
            return;
        }
        if (Intrinsics.areEqual(view, (TextView) _$_findCachedViewById(com.narvii.amino.R.id.invite_talk_btn))) {
            LogEvent.clickBuilder(this, ActSemantic.listViewEnter).area("InviteMemberButton").send();
            invite();
            return;
        }
        if (Intrinsics.areEqual(view, (LinearLayout) _$_findCachedViewById(com.narvii.amino.R.id.apply_talk_layout))) {
            Adapter waitListAdapter = getWaitListAdapter();
            if (ChatWaitingListServiceKt.isCurrentUserInWaitingList(this, waitListAdapter != null ? waitListAdapter.getWaitingList() : null) || ChatWaitingListServiceKt.isCurrentUserSpeaker(this)) {
                return;
            }
            LogEvent.clickWildcardBuilder(this, "ApplyToTalk").send();
            ChatThreadCheckFragment chatThreadCheckFragment = ChatThreadCheckFragment.getInstance(this, new ChatThreadCheckFragment.LiveChatCheckData() { // from class: com.narvii.chat.setting.LiveWaitingListFragment.onClick.1
                @Override // com.narvii.chat.input.ChatThreadCheckFragment.LiveChatCheckData
                public String getThreadId() {
                    String str = getThread().threadId;
                    Intrinsics.checkExpressionValueIsNotNull(str, "thread.threadId");
                    return str;
                }

                @Override // com.narvii.chat.input.ChatThreadCheckFragment.LiveChatCheckData
                public ChatThread getThread() {
                    return LiveWaitingListFragment.access$getThread$p(LiveWaitingListFragment.this);
                }

                @Override // com.narvii.chat.input.ChatThreadCheckFragment.LiveChatCheckData
                public SignallingChannel getSignallingChannel() {
                    SignallingChannel mappedSignallingChannel = LiveWaitingListFragment.access$getRtcService$p(LiveWaitingListFragment.this).getMappedSignallingChannel(getThreadId());
                    Intrinsics.checkExpressionValueIsNotNull(mappedSignallingChannel, "rtcService.getMappedSignallingChannel(threadId)");
                    return mappedSignallingChannel;
                }
            }, null);
            RtcService rtcService = this.rtcService;
            if (rtcService == null) {
                Intrinsics.throwUninitializedPropertyAccessException("rtcService");
                throw null;
            }
            ChatThread chatThread = this.thread;
            if (chatThread != null) {
                chatThreadCheckFragment.requestToSpeak(rtcService.getMappedSignallingChannel(chatThread.threadId));
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("thread");
                throw null;
            }
        }
    }

    @Override // com.narvii.chat.IThreadInfoListener
    public void onThreadUpdate(ChatThread chatThread) {
        if (chatThread != null) {
            updateView(chatThread);
            this.adapter.notifyDataSetChanged();
        }
    }

    public final void setChatThread(ChatThread chatThread) {
        if (chatThread != null) {
            updateView(chatThread);
        }
    }

    /* compiled from: LiveWaitingListFragment.kt */
    /* renamed from: com.narvii.chat.setting.LiveWaitingListFragment$updateView$1, reason: invalid class name and case insensitive filesystem */
    final /* synthetic */ class C09551 extends MutablePropertyReference0 {
        C09551(LiveWaitingListFragment liveWaitingListFragment) {
            super(liveWaitingListFragment);
        }

        @Override // kotlin.jvm.internal.CallableReference
        public String getName() {
            return "currentUser";
        }

        @Override // kotlin.jvm.internal.CallableReference
        public KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass(LiveWaitingListFragment.class);
        }

        @Override // kotlin.jvm.internal.CallableReference
        public String getSignature() {
            return "getCurrentUser()Lcom/narvii/model/User;";
        }

        @Override // kotlin.reflect.KProperty0
        public Object get() {
            return LiveWaitingListFragment.access$getCurrentUser$p((LiveWaitingListFragment) this.receiver);
        }

        public void set(Object obj) {
            ((LiveWaitingListFragment) this.receiver).currentUser = (User) obj;
        }
    }

    private final void updateView(ChatThread chatThread) {
        TextView textView;
        this.thread = chatThread;
        User user = this.currentUser;
        if (user == null) {
            return;
        }
        ChatThread chatThread2 = this.thread;
        if (chatThread2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("thread");
            throw null;
        }
        if (user == null) {
            Intrinsics.throwUninitializedPropertyAccessException("currentUser");
            throw null;
        }
        this.isHostOrCoHost = chatThread2.isHostOrCoHost(user.uid);
        View view = this.emptyView;
        if (view != null && (textView = (TextView) view.findViewById(com.narvii.amino.R.id.invite_talk_btn)) != null) {
            textView.setVisibility(this.isHostOrCoHost ? 0 : 4);
        }
        LinearLayout apply_talk_layout = (LinearLayout) _$_findCachedViewById(com.narvii.amino.R.id.apply_talk_layout);
        Intrinsics.checkExpressionValueIsNotNull(apply_talk_layout, "apply_talk_layout");
        apply_talk_layout.setVisibility(this.isHostOrCoHost ? 8 : 0);
        updateClearBtn();
    }

    private final void invite() {
        if (checkCommunityAvailability()) {
            Intent intent = FragmentWrapperActivity.intent(ParticipantsListFragment.class);
            ChatThread chatThread = this.thread;
            if (chatThread == null) {
                Intrinsics.throwUninitializedPropertyAccessException("thread");
                throw null;
            }
            intent.putExtra(ParticipantsListFragment.KEY_CHANNEL_TYPE, chatThread.getRTCType());
            ChatThread chatThread2 = this.thread;
            if (chatThread2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("thread");
                throw null;
            }
            intent.putExtra("thread", JacksonUtils.writeAsString(chatThread2));
            ChatThread chatThread3 = this.thread;
            if (chatThread3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("thread");
                throw null;
            }
            intent.putExtra("id", chatThread3.threadId);
            startActivity(intent);
        }
    }

    public final boolean checkCommunityAvailability() {
        if (((ConfigService) getService("config")) != null) {
            return !new GlobalChatHelper(this).tryJoinCommunity(r0.getCommunityId(), false, new GlobalChatHelper.JoinCommunityCallback() { // from class: com.narvii.chat.setting.LiveWaitingListFragment$checkCommunityAvailability$invalidStatus$1
                @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
                public ChatThread followingChatToJoin() {
                    return null;
                }

                @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
                public int getActionRTCType() {
                    return 0;
                }

                @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
                public void onPostJoinCommunity(int i, boolean z) {
                }

                @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
                public void onCheckLoginFailed() {
                    this.this$0.ensureLogin(new Intent("joinChannel"));
                }

                @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
                public boolean onPreJoinCommunity(int i) {
                    Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                    intent.putExtra("id", i);
                    this.this$0.startActivity(intent);
                    return true;
                }
            });
        }
        Intrinsics.throwNpe();
        throw null;
    }

    /* compiled from: LiveWaitingListFragment.kt */
    public final class Adapter extends NVRecyclerViewBaseAdapter {
        private final NVContext ctx;
        private final Set<String> requestedIdSet;
        final /* synthetic */ LiveWaitingListFragment this$0;
        private final List<User> waitingUserList;

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "UserList";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Adapter(LiveWaitingListFragment liveWaitingListFragment, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = liveWaitingListFragment;
            this.ctx = ctx;
            this.waitingUserList = new ArrayList();
            this.requestedIdSet = new LinkedHashSet();
        }

        public final NVContext getCtx() {
            return this.ctx;
        }

        public final void setWaitingUserList(Collection<? extends User> users) {
            Intrinsics.checkParameterIsNotNull(users, "users");
            this.waitingUserList.clear();
            this.waitingUserList.addAll(users);
            notifyDataSetChanged();
            this.this$0.updateClearBtn();
        }

        public final void clear() {
            this.waitingUserList.clear();
            this.requestedIdSet.clear();
            notifyDataSetChanged();
            this.this$0.updateClearBtn();
        }

        public final void removeUserInList(final String uid) {
            Intrinsics.checkParameterIsNotNull(uid, "uid");
            CollectionsKt__MutableCollectionsKt.removeAll(this.requestedIdSet, new Function1<String, Boolean>() { // from class: com.narvii.chat.setting.LiveWaitingListFragment$Adapter$removeUserInList$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Boolean invoke(String str) {
                    return Boolean.valueOf(invoke2(str));
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final boolean invoke2(String it) {
                    Intrinsics.checkParameterIsNotNull(it, "it");
                    return TextUtils.equals(it, uid);
                }
            });
            CollectionsKt__MutableCollectionsKt.removeAll((List) this.waitingUserList, (Function1) new Function1<User, Boolean>() { // from class: com.narvii.chat.setting.LiveWaitingListFragment$Adapter$removeUserInList$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Boolean invoke(User user) {
                    return Boolean.valueOf(invoke2(user));
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final boolean invoke2(User it) {
                    Intrinsics.checkParameterIsNotNull(it, "it");
                    return TextUtils.equals(it.uid, uid);
                }
            });
            notifyDataSetChanged();
            this.this$0.updateClearBtn();
        }

        public final List<User> getWaitingList() {
            return this.waitingUserList;
        }

        public final void addRequestedId(String uid) {
            Intrinsics.checkParameterIsNotNull(uid, "uid");
            this.requestedIdSet.add(uid);
            notifyDataSetChanged();
            this.this$0.updateClearBtn();
        }

        public final void removeRequestedId(String uid) {
            Intrinsics.checkParameterIsNotNull(uid, "uid");
            this.requestedIdSet.remove(uid);
            notifyDataSetChanged();
            this.this$0.updateClearBtn();
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            View viewInflate = LayoutInflater.from(this.ctx.getContext()).inflate(R.layout.live_waiting_item, parent, false);
            Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(ctx.…ting_item, parent, false)");
            return new WaitingViewHolder(this, viewInflate);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.waitingUserList.size();
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public Object getItem(int i) {
            return this.waitingUserList.get(i);
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkParameterIsNotNull(holder, "holder");
            if (holder instanceof WaitingViewHolder) {
                Object item = getItem(i);
                if (item == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.User");
                }
                User user = (User) item;
                UserAvatarLayout userAvatarLayout = (UserAvatarLayout) holder.itemView.findViewById(R.id.avatar);
                if (userAvatarLayout != null) {
                    userAvatarLayout.setUser(user);
                }
                View view = holder.itemView;
                Intrinsics.checkExpressionValueIsNotNull(view, "holder.itemView");
                ((NicknameView) view.findViewById(com.narvii.amino.R.id.nickname)).setUser(user);
                View view2 = holder.itemView;
                Intrinsics.checkExpressionValueIsNotNull(view2, "holder.itemView");
                TextView textView = (TextView) view2.findViewById(com.narvii.amino.R.id.index);
                Intrinsics.checkExpressionValueIsNotNull(textView, "holder.itemView.index");
                textView.setText(String.valueOf(i + 1));
                boolean zContains = this.requestedIdSet.contains(user.uid);
                boolean zIsEqualsNotNull = Utils.isEqualsNotNull(user.uid, LiveWaitingListFragment.access$getCurrentUser$p(this.this$0).uid);
                View view3 = holder.itemView;
                Intrinsics.checkExpressionValueIsNotNull(view3, "holder.itemView");
                ((WaitListAcceptView) view3.findViewById(com.narvii.amino.R.id.accept_view)).updateState(zContains, this.this$0.isHostOrCoHost, zIsEqualsNotNull);
                if (zIsEqualsNotNull) {
                    View view4 = holder.itemView;
                    Intrinsics.checkExpressionValueIsNotNull(view4, "holder.itemView");
                    ((NicknameView) view4.findViewById(com.narvii.amino.R.id.nickname)).setText(R.string.me);
                }
            }
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public boolean onItemClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i, Object obj, View view, View view2) {
            Integer numValueOf = view2 != null ? Integer.valueOf(view2.getId()) : null;
            if (numValueOf != null && numValueOf.intValue() == R.id.accept_view) {
                if ((view2 instanceof WaitListAcceptView) && (obj instanceof User) && !((WaitListAcceptView) view2).isRequesting()) {
                    if (this.this$0.isHostOrCoHost) {
                        LogEvent.clickWildcardBuilder(this, "AcceptButton").object((NVObject) obj).send();
                        this.this$0.acceptUser((User) obj);
                    } else {
                        LogEvent.clickWildcardBuilder(this, "CancelButton").object((NVObject) obj).send();
                        this.this$0.cancelJoin((User) obj);
                    }
                    return true;
                }
            } else if ((numValueOf != null && numValueOf.intValue() == R.id.avatar) || (numValueOf != null && numValueOf.intValue() == R.id.nickname)) {
                LiveWaitingListFragment liveWaitingListFragment = this.this$0;
                if (obj != null) {
                    User user = (User) obj;
                    VVChatUserDialog.Builder builder = new VVChatUserDialog.Builder(liveWaitingListFragment, user);
                    int rTCType = LiveWaitingListFragment.access$getThread$p(this.this$0).getRTCType();
                    boolean zIsEqualsNotNull = Utils.isEqualsNotNull(LiveWaitingListFragment.access$getThread$p(this.this$0).author.uid, user.uid);
                    builder.configUserDialog(this.this$0.getStringParam("id"), rTCType, LiveWaitingListFragment.access$getThread$p(this.this$0));
                    builder.clickListener(new VVChatUserDialog.VVProfileClickListener() { // from class: com.narvii.chat.setting.LiveWaitingListFragment$Adapter$onItemClick$1
                        @Override // com.narvii.chat.dialog.VVChatUserDialog.VVProfileClickListener
                        public void onStartChat(User user2) {
                            FragmentManager supportFragmentManager;
                            Intrinsics.checkParameterIsNotNull(user2, "user");
                            AccountService accountService = (AccountService) this.this$0.getService("account");
                            if (accountService != null) {
                                if (accountService.hasAccount()) {
                                    FragmentActivity activity = this.this$0.this$0.getActivity();
                                    List<Fragment> fragments = (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null) ? null : supportFragmentManager.getFragments();
                                    if (fragments != null) {
                                        for (Fragment fragment : fragments) {
                                            if (fragment instanceof ChatFragment) {
                                                Fragment fragmentFindFragmentByTag = ((ChatFragment) fragment).getChildFragmentManager().findFragmentByTag("chatInvite");
                                                if (!(fragmentFindFragmentByTag instanceof ChatInviteFragment)) {
                                                    fragmentFindFragmentByTag = null;
                                                }
                                                ChatInviteFragment chatInviteFragment = (ChatInviteFragment) fragmentFindFragmentByTag;
                                                if (chatInviteFragment != null) {
                                                    chatInviteFragment.startChat(user2.uid());
                                                }
                                            }
                                        }
                                        return;
                                    }
                                    return;
                                }
                                Intent intent = new Intent("chat");
                                intent.putExtra("uid", user2.uid());
                                this.this$0.this$0.ensureLogin(intent);
                                return;
                            }
                            Intrinsics.throwNpe();
                            throw null;
                        }
                    }).muteVideoWhenBlockUser((zIsEqualsNotNull && rTCType == 5) ? false : true).needVideoFrameWhenFlag(rTCType != 5);
                    builder.build().show();
                    logClickEvent(obj, ActSemantic.checkDetail);
                    return true;
                }
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.User");
            }
            return super.onItemClick(nVRecyclerViewBaseAdapter, i, obj, view, view2);
        }

        /* compiled from: LiveWaitingListFragment.kt */
        public final class WaitingViewHolder extends BaseViewHolder {
            final /* synthetic */ Adapter this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public WaitingViewHolder(Adapter adapter, View itemView) {
                super(itemView);
                Intrinsics.checkParameterIsNotNull(itemView, "itemView");
                this.this$0 = adapter;
                ((WaitListAcceptView) itemView.findViewById(com.narvii.amino.R.id.accept_view)).setOnClickListener(adapter.subviewClickListener);
                itemView.findViewById(com.narvii.amino.R.id.avatar).setOnClickListener(adapter.subviewClickListener);
                ((NicknameView) itemView.findViewById(com.narvii.amino.R.id.nickname)).setOnClickListener(adapter.subviewClickListener);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateClearBtn() {
        /*
            r3 = this;
            int r0 = com.narvii.amino.R.id.clear_btn
            android.view.View r0 = r3._$_findCachedViewById(r0)
            android.widget.TextView r0 = (android.widget.TextView) r0
            java.lang.String r1 = "clear_btn"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1)
            boolean r1 = r3.isHostOrCoHost
            r2 = 0
            if (r1 == 0) goto L21
            com.narvii.chat.setting.LiveWaitingListFragment$Adapter r1 = r3.getWaitListAdapter()
            if (r1 == 0) goto L1d
            int r1 = r1.getItemCount()
            goto L1e
        L1d:
            r1 = 0
        L1e:
            if (r1 <= 0) goto L21
            goto L22
        L21:
            r2 = 4
        L22:
            r0.setVisibility(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.chat.setting.LiveWaitingListFragment.updateClearBtn():void");
    }

    private final void clearWaitingList() {
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
        aCMAlertDialog.setMessage(getContext().getString(R.string.clear_all_waiting_list_message));
        aCMAlertDialog.addNagativeButton(R.string.cancel, new View.OnClickListener() { // from class: com.narvii.chat.setting.LiveWaitingListFragment.clearWaitingList.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                aCMAlertDialog.dismiss();
            }
        });
        aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.chat.setting.LiveWaitingListFragment.clearWaitingList.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LogEvent.clickWildcardBuilder(LiveWaitingListFragment.this, "ClearAllButton").send();
                LiveWaitingListFragment.access$getRtcService$p(LiveWaitingListFragment.this).waitListClean(LiveWaitingListFragment.access$getThread$p(LiveWaitingListFragment.this).ndcId, LiveWaitingListFragment.access$getThread$p(LiveWaitingListFragment.this).threadId, new Callback<SignallingChannel>() { // from class: com.narvii.chat.setting.LiveWaitingListFragment.clearWaitingList.2.1
                    @Override // com.narvii.util.Callback
                    public final void call(SignallingChannel signallingChannel) {
                        Adapter waitListAdapter;
                        if (LiveWaitingListFragment.this.isDestoryed() || (waitListAdapter = LiveWaitingListFragment.this.getWaitListAdapter()) == null) {
                            return;
                        }
                        waitListAdapter.clear();
                    }
                });
            }
        });
        aCMAlertDialog.findViewById(R.id.root).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.setting.LiveWaitingListFragment.clearWaitingList.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                aCMAlertDialog.dismiss();
            }
        });
        aCMAlertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void acceptUser(final User user) {
        Adapter waitListAdapter = getWaitListAdapter();
        if (waitListAdapter != null) {
            String str = user.uid;
            Intrinsics.checkExpressionValueIsNotNull(str, "user.uid");
            waitListAdapter.addRequestedId(str);
        }
        RtcService rtcService = this.rtcService;
        if (rtcService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rtcService");
            throw null;
        }
        ChatThread chatThread = this.thread;
        if (chatThread == null) {
            Intrinsics.throwUninitializedPropertyAccessException("thread");
            throw null;
        }
        int i = chatThread.ndcId;
        if (chatThread != null) {
            rtcService.waitListJoinApprove(i, chatThread.threadId, user.uid, new RtcService.WaitingListCallback<SignallingChannel, Boolean>() { // from class: com.narvii.chat.setting.LiveWaitingListFragment.acceptUser.1
                @Override // com.narvii.chat.rtc.RtcService.WaitingListCallback
                public final void call(SignallingChannel signallingChannel, Boolean bool) {
                    if (LiveWaitingListFragment.this.isDestoryed()) {
                        return;
                    }
                    Adapter waitListAdapter2 = LiveWaitingListFragment.this.getWaitListAdapter();
                    if (waitListAdapter2 != null) {
                        String str2 = user.uid;
                        Intrinsics.checkExpressionValueIsNotNull(str2, "user.uid");
                        waitListAdapter2.removeRequestedId(str2);
                    }
                    boolean z = user.status == 9;
                    if (!bool.booleanValue() || z) {
                        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(LiveWaitingListFragment.this.getContext());
                        aCMAlertDialog.setMessage(LiveWaitingListFragment.this.getContext().getString(z ? R.string.accpet_user_on_waiting_list_disable_message : R.string.accpet_user_on_waiting_list_message));
                        aCMAlertDialog.addNagativeButton(R.string.cancel, new View.OnClickListener() { // from class: com.narvii.chat.setting.LiveWaitingListFragment.acceptUser.1.1
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                aCMAlertDialog.dismiss();
                            }
                        });
                        aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.chat.setting.LiveWaitingListFragment.acceptUser.1.2
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                LiveWaitingListFragment.this.cancelJoin(user);
                            }
                        });
                        aCMAlertDialog.findViewById(R.id.root).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.setting.LiveWaitingListFragment.acceptUser.1.3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                aCMAlertDialog.dismiss();
                            }
                        });
                        aCMAlertDialog.show();
                    }
                }
            });
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("thread");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void cancelJoin(final User user) {
        Adapter waitListAdapter = getWaitListAdapter();
        if (waitListAdapter != null) {
            String str = user.uid;
            Intrinsics.checkExpressionValueIsNotNull(str, "user.uid");
            waitListAdapter.addRequestedId(str);
        }
        RtcService rtcService = this.rtcService;
        if (rtcService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rtcService");
            throw null;
        }
        ChatThread chatThread = this.thread;
        if (chatThread == null) {
            Intrinsics.throwUninitializedPropertyAccessException("thread");
            throw null;
        }
        int i = chatThread.ndcId;
        if (chatThread != null) {
            rtcService.waitListJoinCancel(i, chatThread.threadId, user.uid, new Callback<SignallingChannel>() { // from class: com.narvii.chat.setting.LiveWaitingListFragment.cancelJoin.1
                @Override // com.narvii.util.Callback
                public final void call(SignallingChannel signallingChannel) {
                    Adapter waitListAdapter2;
                    if (LiveWaitingListFragment.this.isDestoryed() || (waitListAdapter2 = LiveWaitingListFragment.this.getWaitListAdapter()) == null) {
                        return;
                    }
                    String str2 = user.uid;
                    Intrinsics.checkExpressionValueIsNotNull(str2, "user.uid");
                    waitListAdapter2.removeUserInList(str2);
                }
            });
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("thread");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Adapter getWaitListAdapter() {
        return (Adapter) this.adapter;
    }

    private final void updateApplyTalkLayout(Collection<User> collection) {
        boolean z;
        if ((collection instanceof Collection) && collection.isEmpty()) {
            z = false;
        } else {
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                String str = ((User) it.next()).uid;
                User user = this.currentUser;
                if (user == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("currentUser");
                    throw null;
                }
                if (TextUtils.equals(str, user.uid)) {
                    z = true;
                    break;
                }
            }
            z = false;
        }
        boolean z2 = !z;
        LinearLayout apply_talk_layout = (LinearLayout) _$_findCachedViewById(com.narvii.amino.R.id.apply_talk_layout);
        Intrinsics.checkExpressionValueIsNotNull(apply_talk_layout, "apply_talk_layout");
        apply_talk_layout.setEnabled(z2);
        TextView apply_to_talk = (TextView) _$_findCachedViewById(com.narvii.amino.R.id.apply_to_talk);
        Intrinsics.checkExpressionValueIsNotNull(apply_to_talk, "apply_to_talk");
        apply_to_talk.setText(getText(z2 ? R.string.apply_to_talk : R.string.waiting));
        NVImageView apply_talk_image = (NVImageView) _$_findCachedViewById(com.narvii.amino.R.id.apply_talk_image);
        Intrinsics.checkExpressionValueIsNotNull(apply_talk_image, "apply_talk_image");
        apply_talk_image.setVisibility(z2 ? 0 : 8);
    }
}
