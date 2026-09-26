package com.narvii.chat.setting;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.account.AccountService;
import com.narvii.amino.databinding.FragmentLiveWatingListBinding;
import com.narvii.amino.databinding.LiveWaitingItemBinding;
import com.narvii.amino.master.R;
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
import com.narvii.util.FragmentExtensionsKt;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.recycleview.viewholder.BaseViewHolder;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.a0;
import kotlin.jvm.internal.g0;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class LiveWaitingListFragment extends NVRecyclerViewFragment implements View.OnClickListener, WaitingListListener, IThreadInfoListener {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {q0.g(new g0(LiveWaitingListFragment.class, "binding", "getBinding()Lcom/narvii/amino/databinding/FragmentLiveWatingListBinding;", 0))};

    @NotNull
    private final kotlin.properties.d binding$delegate = FragmentExtensionsKt.viewBinding(this, LiveWaitingListFragment$binding$2.INSTANCE);
    private ChatHelper chatHelper;
    private User currentUser;

    @Nullable
    private View emptyView;
    private boolean isHostOrCoHost;
    private RtcService rtcService;
    private ChatThread thread;

    @Nullable
    private IWaitingListListener waitingListListener;

    public final class Adapter extends NVRecyclerViewBaseAdapter {

        @NotNull
        private final NVContext ctx;

        @NotNull
        private final Set<String> requestedIdSet;
        final /* synthetic */ LiveWaitingListFragment this$0;

        @NotNull
        private final List<User> waitingUserList;

        public final class WaitingViewHolder extends BaseViewHolder {

            @NotNull
            private final LiveWaitingItemBinding binding;
            final /* synthetic */ Adapter this$0;

            /* JADX WARN: Illegal instructions before constructor call */
            public WaitingViewHolder(@NotNull Adapter adapter, LiveWaitingItemBinding binding) {
                t.j(binding, "binding");
                this.this$0 = adapter;
                RelativeLayout root = binding.getRoot();
                t.i(root, "getRoot(...)");
                super(root);
                this.binding = binding;
                binding.acceptView.setOnClickListener(adapter.subviewClickListener);
                binding.avatar.userAvatarLayout.setOnClickListener(adapter.subviewClickListener);
                binding.nickname.setOnClickListener(adapter.subviewClickListener);
            }

            public final void bind(@NotNull User user, int i10) {
                t.j(user, "user");
                LiveWaitingItemBinding liveWaitingItemBinding = this.binding;
                Adapter adapter = this.this$0;
                LiveWaitingListFragment liveWaitingListFragment = adapter.this$0;
                liveWaitingItemBinding.avatar.userAvatarLayout.setUser(user);
                liveWaitingItemBinding.nickname.setUser(user);
                liveWaitingItemBinding.index.setText(String.valueOf(i10 + 1));
                boolean zContains = adapter.requestedIdSet.contains(user.uid);
                String str = user.uid;
                User user2 = liveWaitingListFragment.currentUser;
                if (user2 == null) {
                    t.B("currentUser");
                    user2 = null;
                }
                boolean zIsEqualsNotNull = Utils.isEqualsNotNull(str, user2.uid);
                liveWaitingItemBinding.acceptView.updateState(zContains, liveWaitingListFragment.isHostOrCoHost, zIsEqualsNotNull);
                if (zIsEqualsNotNull) {
                    liveWaitingItemBinding.nickname.setText(R.string.me);
                }
            }
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
        @NotNull
        public String getAreaName() {
            return "UserList";
        }

        @NotNull
        public final NVContext getCtx() {
            return this.ctx;
        }

        @NotNull
        public final List<User> getWaitingList() {
            return this.waitingUserList;
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public boolean onItemClick(@Nullable NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
            ChatThread chatThread = null;
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
                t.h(obj, "null cannot be cast to non-null type com.narvii.model.User");
                User user = (User) obj;
                VVChatUserDialog.Builder builder = new VVChatUserDialog.Builder(liveWaitingListFragment, user);
                ChatThread chatThread2 = this.this$0.thread;
                if (chatThread2 == null) {
                    t.B("thread");
                    chatThread2 = null;
                }
                int rTCType = chatThread2.getRTCType();
                ChatThread chatThread3 = this.this$0.thread;
                if (chatThread3 == null) {
                    t.B("thread");
                    chatThread3 = null;
                }
                boolean zIsEqualsNotNull = Utils.isEqualsNotNull(chatThread3.author.uid, user.uid);
                String stringParam = this.this$0.getStringParam("id");
                ChatThread chatThread4 = this.this$0.thread;
                if (chatThread4 == null) {
                    t.B("thread");
                } else {
                    chatThread = chatThread4;
                }
                builder.configUserDialog(stringParam, rTCType, chatThread);
                final LiveWaitingListFragment liveWaitingListFragment2 = this.this$0;
                builder.clickListener(new VVChatUserDialog.VVProfileClickListener() { // from class: com.narvii.chat.setting.LiveWaitingListFragment$Adapter$onItemClick$1
                    @Override // com.narvii.chat.dialog.VVChatUserDialog.VVProfileClickListener
                    public void onStartChat(@NotNull User user2) {
                        FragmentManager supportFragmentManager;
                        t.j(user2, "user");
                        AccountService accountService = (AccountService) this.this$0.getService("account");
                        t.g(accountService);
                        if (!accountService.hasAccount()) {
                            Intent intent = new Intent("chat");
                            intent.putExtra("uid", user2.uid());
                            liveWaitingListFragment2.ensureLogin(intent);
                            return;
                        }
                        FragmentActivity activity = liveWaitingListFragment2.getActivity();
                        List<Fragment> listB0 = (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null) ? null : supportFragmentManager.B0();
                        if (listB0 != null) {
                            for (Fragment fragment : listB0) {
                                if (fragment instanceof ChatFragment) {
                                    Fragment fragmentM0 = ((ChatFragment) fragment).getChildFragmentManager().m0("chatInvite");
                                    ChatInviteFragment chatInviteFragment = fragmentM0 instanceof ChatInviteFragment ? (ChatInviteFragment) fragmentM0 : null;
                                    if (chatInviteFragment != null) {
                                        chatInviteFragment.startChat(user2.uid());
                                    }
                                }
                            }
                        }
                    }
                }).muteVideoWhenBlockUser((zIsEqualsNotNull && rTCType == 5) ? false : true).needVideoFrameWhenFlag(rTCType != 5);
                builder.build().show();
                logClickEvent(obj, ActSemantic.checkDetail);
                return true;
            }
            return super.onItemClick(nVRecyclerViewBaseAdapter, i10, obj, view, view2);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Adapter(@NotNull LiveWaitingListFragment liveWaitingListFragment, NVContext ctx) {
            super(ctx);
            t.j(ctx, "ctx");
            this.this$0 = liveWaitingListFragment;
            this.ctx = ctx;
            this.waitingUserList = new ArrayList();
            this.requestedIdSet = new LinkedHashSet();
        }

        public final void addRequestedId(@NotNull String uid) {
            t.j(uid, "uid");
            this.requestedIdSet.add(uid);
            notifyDataSetChanged();
            this.this$0.updateClearBtn();
        }

        public final void clear() {
            this.waitingUserList.clear();
            this.requestedIdSet.clear();
            notifyDataSetChanged();
            this.this$0.updateClearBtn();
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        @NotNull
        public Object getItem(int i10) {
            return this.waitingUserList.get(i10);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.waitingUserList.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NotNull RecyclerView.ViewHolder holder, int i10) {
            t.j(holder, "holder");
            if (holder instanceof WaitingViewHolder) {
                Object item = getItem(i10);
                t.h(item, "null cannot be cast to non-null type com.narvii.model.User");
                ((WaitingViewHolder) holder).bind((User) item, i10);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NotNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i10) {
            t.j(parent, "parent");
            LiveWaitingItemBinding liveWaitingItemBindingInflate = LiveWaitingItemBinding.inflate(LayoutInflater.from(this.ctx.getContext()), parent, false);
            t.i(liveWaitingItemBindingInflate, "inflate(...)");
            return new WaitingViewHolder(this, liveWaitingItemBindingInflate);
        }

        public final void removeRequestedId(@NotNull String uid) {
            t.j(uid, "uid");
            this.requestedIdSet.remove(uid);
            notifyDataSetChanged();
            this.this$0.updateClearBtn();
        }

        public final void removeUserInList(@NotNull String uid) {
            t.j(uid, "uid");
            a0.I(this.requestedIdSet, new LiveWaitingListFragment$Adapter$removeUserInList$1(uid));
            a0.J(this.waitingUserList, new LiveWaitingListFragment$Adapter$removeUserInList$2(uid));
            notifyDataSetChanged();
            this.this$0.updateClearBtn();
        }

        public final void setWaitingUserList(@NotNull Collection<? extends User> users) {
            t.j(users, "users");
            this.waitingUserList.clear();
            this.waitingUserList.addAll(users);
            notifyDataSetChanged();
            this.this$0.updateClearBtn();
        }
    }

    public interface IWaitingListListener {
        void closeWaitingList();
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "waiting_list";
    }

    @Nullable
    public final IWaitingListListener getWaitingListListener() {
        return this.waitingListListener;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public boolean isFinalPage() {
        return true;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        ChatThread chatThread = null;
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        if (numValueOf != null && numValueOf.intValue() == R.id.clear_btn) {
            clearWaitingList();
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == R.id.close_btn) {
            IWaitingListListener iWaitingListListener = this.waitingListListener;
            if (iWaitingListListener != null) {
                iWaitingListListener.closeWaitingList();
                return;
            }
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == R.id.invite_talk_btn) {
            LogEvent.clickBuilder(this, ActSemantic.listViewEnter).area("InviteMemberButton").send();
            invite();
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == R.id.apply_talk_layout) {
            Adapter waitListAdapter = getWaitListAdapter();
            if (ChatWaitingListServiceKt.isCurrentUserInWaitingList(this, waitListAdapter != null ? waitListAdapter.getWaitingList() : null) || ChatWaitingListServiceKt.isCurrentUserSpeaker(this)) {
                return;
            }
            LogEvent.clickWildcardBuilder(this, "ApplyToTalk").send();
            ChatThreadCheckFragment chatThreadCheckFragment = ChatThreadCheckFragment.getInstance(this, new ChatThreadCheckFragment.LiveChatCheckData() { // from class: com.narvii.chat.setting.LiveWaitingListFragment.onClick.1
                @Override // com.narvii.chat.input.ChatThreadCheckFragment.LiveChatCheckData
                @NotNull
                public SignallingChannel getSignallingChannel() {
                    RtcService rtcService = LiveWaitingListFragment.this.rtcService;
                    if (rtcService == null) {
                        t.B("rtcService");
                        rtcService = null;
                    }
                    SignallingChannel mappedSignallingChannel = rtcService.getMappedSignallingChannel(getThreadId());
                    t.i(mappedSignallingChannel, "getMappedSignallingChannel(...)");
                    return mappedSignallingChannel;
                }

                @Override // com.narvii.chat.input.ChatThreadCheckFragment.LiveChatCheckData
                @NotNull
                public ChatThread getThread() {
                    ChatThread chatThread2 = LiveWaitingListFragment.this.thread;
                    if (chatThread2 != null) {
                        return chatThread2;
                    }
                    t.B("thread");
                    return null;
                }

                @Override // com.narvii.chat.input.ChatThreadCheckFragment.LiveChatCheckData
                @NotNull
                public String getThreadId() {
                    String threadId = getThread().threadId;
                    t.i(threadId, "threadId");
                    return threadId;
                }
            }, null);
            RtcService rtcService = this.rtcService;
            if (rtcService == null) {
                t.B("rtcService");
                rtcService = null;
            }
            ChatThread chatThread2 = this.thread;
            if (chatThread2 == null) {
                t.B("thread");
            } else {
                chatThread = chatThread2;
            }
            chatThreadCheckFragment.requestToSpeak(rtcService.getMappedSignallingChannel(chatThread.threadId));
        }
    }

    @Override // com.narvii.chat.waitinglist.WaitingListListener
    public void onWaitingListApprove(@Nullable SignallingChannel signallingChannel) {
    }

    public final void setWaitingListListener(@Nullable IWaitingListListener iWaitingListListener) {
        this.waitingListListener = iWaitingListListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void acceptUser$lambda$12(final LiveWaitingListFragment this$0, final User user, SignallingChannel signallingChannel, Boolean bool) {
        t.j(this$0, "this$0");
        t.j(user, "$user");
        if (this$0.isDestoryed()) {
            return;
        }
        Adapter waitListAdapter = this$0.getWaitListAdapter();
        if (waitListAdapter != null) {
            String uid = user.uid;
            t.i(uid, "uid");
            waitListAdapter.removeRequestedId(uid);
        }
        boolean z6 = user.status == 9;
        if (!bool.booleanValue() || z6) {
            final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this$0.getContext());
            aCMAlertDialog.setMessage(this$0.getContext().getString(z6 ? R.string.accpet_user_on_waiting_list_disable_message : R.string.accpet_user_on_waiting_list_message));
            aCMAlertDialog.addNagativeButton(R.string.cancel, new View.OnClickListener() { // from class: com.narvii.chat.setting.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LiveWaitingListFragment.acceptUser$lambda$12$lambda$9(aCMAlertDialog, view);
                }
            });
            aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.chat.setting.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LiveWaitingListFragment.acceptUser$lambda$12$lambda$10(this.f2054a, user, view);
                }
            });
            aCMAlertDialog.findViewById(R.id.root).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.setting.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LiveWaitingListFragment.acceptUser$lambda$12$lambda$11(aCMAlertDialog, view);
                }
            });
            aCMAlertDialog.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void acceptUser$lambda$12$lambda$10(LiveWaitingListFragment this$0, User user, View view) {
        t.j(this$0, "this$0");
        t.j(user, "$user");
        this$0.cancelJoin(user);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void acceptUser$lambda$12$lambda$11(ACMAlertDialog dlg, View view) {
        t.j(dlg, "$dlg");
        dlg.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void acceptUser$lambda$12$lambda$9(ACMAlertDialog dlg, View view) {
        t.j(dlg, "$dlg");
        dlg.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void cancelJoin$lambda$13(LiveWaitingListFragment this$0, User user, SignallingChannel signallingChannel) {
        Adapter waitListAdapter;
        t.j(this$0, "this$0");
        t.j(user, "$user");
        if (this$0.isDestoryed() || (waitListAdapter = this$0.getWaitListAdapter()) == null) {
            return;
        }
        String uid = user.uid;
        t.i(uid, "uid");
        waitListAdapter.removeUserInList(uid);
    }

    private final void clearWaitingList() {
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
        aCMAlertDialog.setMessage(getContext().getString(R.string.clear_all_waiting_list_message));
        aCMAlertDialog.addNagativeButton(R.string.cancel, new View.OnClickListener() { // from class: com.narvii.chat.setting.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiveWaitingListFragment.clearWaitingList$lambda$5(aCMAlertDialog, view);
            }
        });
        aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.chat.setting.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiveWaitingListFragment.clearWaitingList$lambda$7(this.f2058a, view);
            }
        });
        aCMAlertDialog.findViewById(R.id.root).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.setting.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiveWaitingListFragment.clearWaitingList$lambda$8(aCMAlertDialog, view);
            }
        });
        aCMAlertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void clearWaitingList$lambda$5(ACMAlertDialog dlg, View view) {
        t.j(dlg, "$dlg");
        dlg.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void clearWaitingList$lambda$7(final LiveWaitingListFragment this$0, View view) {
        t.j(this$0, "this$0");
        LogEvent.clickWildcardBuilder(this$0, "ClearAllButton").send();
        RtcService rtcService = this$0.rtcService;
        ChatThread chatThread = null;
        if (rtcService == null) {
            t.B("rtcService");
            rtcService = null;
        }
        ChatThread chatThread2 = this$0.thread;
        if (chatThread2 == null) {
            t.B("thread");
            chatThread2 = null;
        }
        int i10 = chatThread2.ndcId;
        ChatThread chatThread3 = this$0.thread;
        if (chatThread3 == null) {
            t.B("thread");
        } else {
            chatThread = chatThread3;
        }
        rtcService.waitListClean(i10, chatThread.threadId, new Callback() { // from class: com.narvii.chat.setting.d
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                LiveWaitingListFragment.clearWaitingList$lambda$7$lambda$6(this.f2050a, (SignallingChannel) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void clearWaitingList$lambda$7$lambda$6(LiveWaitingListFragment this$0, SignallingChannel signallingChannel) {
        Adapter waitListAdapter;
        t.j(this$0, "this$0");
        if (this$0.isDestoryed() || (waitListAdapter = this$0.getWaitListAdapter()) == null) {
            return;
        }
        waitListAdapter.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void clearWaitingList$lambda$8(ACMAlertDialog dlg, View view) {
        t.j(dlg, "$dlg");
        dlg.dismiss();
    }

    private final FragmentLiveWatingListBinding getBinding() {
        return (FragmentLiveWatingListBinding) this.binding$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final Adapter getWaitListAdapter() {
        return (Adapter) this.adapter;
    }

    private final void updateApplyTalkLayout(Collection<User> collection) {
        boolean z6;
        Collection<User> collection2 = collection;
        if (!(collection2 instanceof Collection) || !collection2.isEmpty()) {
            Iterator<T> it = collection2.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z6 = false;
                    break;
                }
                String str = ((User) it.next()).uid;
                User user = this.currentUser;
                if (user == null) {
                    t.B("currentUser");
                    user = null;
                }
                if (TextUtils.equals(str, user.uid)) {
                    z6 = true;
                    break;
                }
            }
        } else {
            z6 = false;
            break;
        }
        boolean z10 = !z6;
        getBinding().applyTalkLayout.setEnabled(z10);
        getBinding().applyToTalk.setText(getText(z10 ? R.string.apply_to_talk : R.string.waiting));
        getBinding().applyTalkImage.setVisibility(z10 ? 0 : 8);
    }

    private final void updateView(ChatThread chatThread) {
        View view = this.emptyView;
        User user = null;
        TextView textView = view != null ? (TextView) view.findViewById(R.id.invite_talk_btn) : null;
        this.thread = chatThread;
        if (this.currentUser == null) {
            return;
        }
        if (chatThread == null) {
            t.B("thread");
            chatThread = null;
        }
        User user2 = this.currentUser;
        if (user2 == null) {
            t.B("currentUser");
        } else {
            user = user2;
        }
        boolean zIsHostOrCoHost = chatThread.isHostOrCoHost(user.uid);
        this.isHostOrCoHost = zIsHostOrCoHost;
        if (textView != null) {
            textView.setVisibility(zIsHostOrCoHost ? 0 : 4);
        }
        getBinding().applyTalkLayout.setVisibility(this.isHostOrCoHost ? 8 : 0);
        updateClearBtn();
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

    public final boolean checkCommunityAvailability() {
        ConfigService configService = (ConfigService) getService("config");
        t.g(configService);
        return !new GlobalChatHelper(this).tryJoinCommunity(configService.getCommunityId(), false, new GlobalChatHelper.JoinCommunityCallback() { // from class: com.narvii.chat.setting.LiveWaitingListFragment$checkCommunityAvailability$invalidStatus$1
            public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            @Nullable
            public ChatThread followingChatToJoin() {
                return null;
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public int getActionRTCType() {
                return 0;
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public void onPostJoinCommunity(int i10, boolean z6) {
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public void onCheckLoginFailed() {
                this.this$0.ensureLogin(new Intent("joinChannel"));
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public boolean onPreJoinCommunity(int i10) {
                Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                intent.putExtra("id", i10);
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this.this$0, intent);
                return true;
            }
        });
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    @NotNull
    protected NVRecyclerViewBaseAdapter createAdapter() {
        return new Adapter(this, this);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onAttach(@NotNull Context context) {
        t.j(context, "context");
        super.onAttach(context);
        Object as = JacksonUtils.readAs(getStringParam("thread"), ChatThread.class);
        t.i(as, "readAs(...)");
        this.thread = (ChatThread) as;
        User userProfile = ((AccountService) getService("account")).getUserProfile();
        t.i(userProfile, "getUserProfile(...)");
        this.currentUser = userProfile;
        this.chatHelper = new ChatHelper(context);
        Object service = getService("rtc");
        t.i(service, "getService(...)");
        this.rtcService = (RtcService) service;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        t.j(inflater, "inflater");
        return getBinding().getRoot();
    }

    @Override // com.narvii.chat.IThreadInfoListener
    public void onThreadUpdate(@Nullable ChatThread chatThread) {
        if (chatThread != null) {
            updateView(chatThread);
            this.adapter.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        t.j(view, "view");
        super.onViewCreated(view, bundle);
        View globalEmptyView = setGlobalEmptyView(R.layout.waiting_list_empty_view);
        this.emptyView = globalEmptyView;
        ChatThread chatThread = null;
        TextView textView = globalEmptyView != null ? (TextView) globalEmptyView.findViewById(R.id.invite_talk_btn) : null;
        ChatThread chatThread2 = this.thread;
        if (chatThread2 == null) {
            t.B("thread");
            chatThread2 = null;
        }
        User user = this.currentUser;
        if (user == null) {
            t.B("currentUser");
            user = null;
        }
        this.isHostOrCoHost = chatThread2.isHostOrCoHost(user.uid);
        getBinding().clearBtn.setOnClickListener(this);
        getBinding().closeBtn.setOnClickListener(this);
        getBinding().clearBtn.setVisibility(4);
        if (textView != null) {
            textView.setOnClickListener(this);
        }
        if (textView != null) {
            textView.setVisibility(this.isHostOrCoHost ? 0 : 4);
        }
        getBinding().applyTalkLayout.setOnClickListener(this);
        getBinding().applyTalkLayout.setVisibility(this.isHostOrCoHost ? 8 : 0);
        ChatThread chatThread3 = this.thread;
        if (chatThread3 == null) {
            t.B("thread");
        } else {
            chatThread = chatThread3;
        }
        updateWaitingListInner(chatThread);
    }

    @Override // com.narvii.chat.waitinglist.WaitingListListener
    public void onWaitingListChanged(@Nullable SignallingChannel signallingChannel, @Nullable Collection<User> collection, @Nullable Collection<User> collection2) {
        if (collection2 != null) {
            Adapter waitListAdapter = getWaitListAdapter();
            if (waitListAdapter != null) {
                waitListAdapter.setWaitingUserList(collection2);
            }
            updateApplyTalkLayout(collection2);
        }
        updateViews();
    }

    public final void setChatThread(@Nullable ChatThread chatThread) {
        if (chatThread != null) {
            updateView(chatThread);
        }
    }

    public final void updateWaitingList(@NotNull ChatThread t5) {
        t.j(t5, "t");
        if (getView() != null) {
            updateWaitingListInner(t5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void acceptUser(final User user) {
        Adapter waitListAdapter = getWaitListAdapter();
        if (waitListAdapter != null) {
            String uid = user.uid;
            t.i(uid, "uid");
            waitListAdapter.addRequestedId(uid);
        }
        RtcService rtcService = this.rtcService;
        ChatThread chatThread = null;
        if (rtcService == null) {
            t.B("rtcService");
            rtcService = null;
        }
        ChatThread chatThread2 = this.thread;
        if (chatThread2 == null) {
            t.B("thread");
            chatThread2 = null;
        }
        int i10 = chatThread2.ndcId;
        ChatThread chatThread3 = this.thread;
        if (chatThread3 == null) {
            t.B("thread");
        } else {
            chatThread = chatThread3;
        }
        rtcService.waitListJoinApprove(i10, chatThread.threadId, user.uid, new RtcService.WaitingListCallback() { // from class: com.narvii.chat.setting.e
            @Override // com.narvii.chat.rtc.RtcService.WaitingListCallback
            public final void call(Object obj, Object obj2) {
                LiveWaitingListFragment.acceptUser$lambda$12(this.f2051a, user, (SignallingChannel) obj, (Boolean) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void cancelJoin(final User user) {
        Adapter waitListAdapter = getWaitListAdapter();
        if (waitListAdapter != null) {
            String uid = user.uid;
            t.i(uid, "uid");
            waitListAdapter.addRequestedId(uid);
        }
        RtcService rtcService = this.rtcService;
        ChatThread chatThread = null;
        if (rtcService == null) {
            t.B("rtcService");
            rtcService = null;
        }
        ChatThread chatThread2 = this.thread;
        if (chatThread2 == null) {
            t.B("thread");
            chatThread2 = null;
        }
        int i10 = chatThread2.ndcId;
        ChatThread chatThread3 = this.thread;
        if (chatThread3 == null) {
            t.B("thread");
        } else {
            chatThread = chatThread3;
        }
        rtcService.waitListJoinCancel(i10, chatThread.threadId, user.uid, new Callback() { // from class: com.narvii.chat.setting.c
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                LiveWaitingListFragment.cancelJoin$lambda$13(this.f2048a, user, (SignallingChannel) obj);
            }
        });
    }

    private final void invite() {
        if (!checkCommunityAvailability()) {
            return;
        }
        Intent intent = FragmentWrapperActivity.intent(ParticipantsListFragment.class);
        ChatThread chatThread = this.thread;
        ChatThread chatThread2 = null;
        if (chatThread == null) {
            t.B("thread");
            chatThread = null;
        }
        intent.putExtra(ParticipantsListFragment.KEY_CHANNEL_TYPE, chatThread.getRTCType());
        ChatThread chatThread3 = this.thread;
        if (chatThread3 == null) {
            t.B("thread");
            chatThread3 = null;
        }
        intent.putExtra("thread", JacksonUtils.writeAsString(chatThread3));
        ChatThread chatThread4 = this.thread;
        if (chatThread4 == null) {
            t.B("thread");
        } else {
            chatThread2 = chatThread4;
        }
        intent.putExtra("id", chatThread2.threadId);
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateClearBtn() {
        int i10;
        Adapter waitListAdapter;
        TextView textView = getBinding().clearBtn;
        if (this.isHostOrCoHost && (waitListAdapter = getWaitListAdapter()) != null && waitListAdapter.getItemCount() > 0) {
            i10 = 0;
        } else {
            i10 = 4;
        }
        textView.setVisibility(i10);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        RtcService rtcService = this.rtcService;
        ChatThread chatThread = null;
        if (rtcService == null) {
            t.B("rtcService");
            rtcService = null;
        }
        ChatThread chatThread2 = this.thread;
        if (chatThread2 == null) {
            t.B("thread");
        } else {
            chatThread = chatThread2;
        }
        rtcService.addWaitingListListener(chatThread.threadId, this);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        RtcService rtcService = this.rtcService;
        ChatThread chatThread = null;
        if (rtcService == null) {
            t.B("rtcService");
            rtcService = null;
        }
        ChatThread chatThread2 = this.thread;
        if (chatThread2 == null) {
            t.B("thread");
        } else {
            chatThread = chatThread2;
        }
        rtcService.removeWaitingListListener(chatThread.threadId, this);
    }
}
