package com.narvii.chat.video.overlay;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.chat.ChatThreadUserOperationHelper;
import com.narvii.chat.SpeakerInviteNotificationWrapper;
import com.narvii.chat.dialog.VVChatUserDialog;
import com.narvii.chat.input.MentionedEditText;
import com.narvii.chat.invite.ChatInviteFragment;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.video.utils.LiveChannelInviteHistoryHelper;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVArrayAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.LinearImpressionCollector;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserListResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.NVListView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.UserAvatarLayout;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: ChatGuestListFragment.kt */
/* loaded from: classes2.dex */
public final class ChatGuestListFragment extends NVListFragment implements NotificationListener {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ChatGuestListFragment.class), "rtcService", "getRtcService()Lcom/narvii/chat/rtc/RtcService;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ChatGuestListFragment.class), "api", "getApi()Lcom/narvii/util/http/ApiService;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ChatGuestListFragment.class), "chatHelper", "getChatHelper()Lcom/narvii/chat/util/ChatHelper;"))};
    private HashMap _$_findViewCache;
    public NVAdapter adapter;
    private ChatThread thread;
    public SparseArray<ChannelUserWrapper> userWrapperList;
    private Integer channelType = 0;
    private final List<User> userList = new ArrayList();
    private final Lazy rtcService$delegate = LazyKt__LazyJVMKt.lazy(new Function0<RtcService>() { // from class: com.narvii.chat.video.overlay.ChatGuestListFragment$rtcService$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final RtcService invoke() {
            return (RtcService) this.this$0.getService("rtc");
        }
    });
    private final Lazy api$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ApiService>() { // from class: com.narvii.chat.video.overlay.ChatGuestListFragment$api$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ApiService invoke() {
            return (ApiService) this.this$0.getService("api");
        }
    });
    private final Lazy chatHelper$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ChatHelper>() { // from class: com.narvii.chat.video.overlay.ChatGuestListFragment$chatHelper$2
        {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ChatHelper invoke() {
            Context context = this.this$0.getContext();
            Intrinsics.checkExpressionValueIsNotNull(context, "context");
            return new ChatHelper(context);
        }
    });
    private final List<String> idList = new ArrayList();
    private VVChatUserDialog.VVProfileClickListener vvProfileClickListener = new VVChatUserDialog.VVProfileClickListener() { // from class: com.narvii.chat.video.overlay.ChatGuestListFragment$vvProfileClickListener$1
        @Override // com.narvii.chat.dialog.VVChatUserDialog.VVProfileClickListener
        public void onStartChat(User user) {
            Intrinsics.checkParameterIsNotNull(user, "user");
            AccountService accountService = (AccountService) this.this$0.getService("account");
            if (accountService != null) {
                if (accountService.hasAccount()) {
                    FragmentManager fragmentManager = this.this$0.getFragmentManager();
                    if (fragmentManager == null) {
                        Intrinsics.throwNpe();
                        throw null;
                    }
                    Fragment fragmentFindFragmentByTag = fragmentManager.findFragmentByTag("chatInvite");
                    if (!(fragmentFindFragmentByTag instanceof ChatInviteFragment)) {
                        fragmentFindFragmentByTag = null;
                    }
                    ChatInviteFragment chatInviteFragment = (ChatInviteFragment) fragmentFindFragmentByTag;
                    if (chatInviteFragment != null) {
                        chatInviteFragment.startChat(user.uid());
                        return;
                    }
                    return;
                }
                Intent intent = new Intent("chat");
                intent.putExtra("uid", user.uid());
                this.this$0.ensureLogin(intent);
                return;
            }
            Intrinsics.throwNpe();
            throw null;
        }
    };

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

    public final ApiService getApi() {
        Lazy lazy = this.api$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (ApiService) lazy.getValue();
    }

    public final ChatHelper getChatHelper() {
        Lazy lazy = this.chatHelper$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (ChatHelper) lazy.getValue();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "LiveChatGuestViewer";
    }

    public final RtcService getRtcService() {
        Lazy lazy = this.rtcService$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (RtcService) lazy.getValue();
    }

    @Override // com.narvii.list.NVListFragment
    protected int getSelectorDarkColor() {
        return 872415231;
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public final NVAdapter getAdapter() {
        NVAdapter nVAdapter = this.adapter;
        if (nVAdapter != null) {
            return nVAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("adapter");
        throw null;
    }

    public final void setAdapter(NVAdapter nVAdapter) {
        Intrinsics.checkParameterIsNotNull(nVAdapter, "<set-?>");
        this.adapter = nVAdapter;
    }

    public final SparseArray<ChannelUserWrapper> getUserWrapperList() {
        SparseArray<ChannelUserWrapper> sparseArray = this.userWrapperList;
        if (sparseArray != null) {
            return sparseArray;
        }
        Intrinsics.throwUninitializedPropertyAccessException("userWrapperList");
        throw null;
    }

    public final void setUserWrapperList(SparseArray<ChannelUserWrapper> sparseArray) {
        Intrinsics.checkParameterIsNotNull(sparseArray, "<set-?>");
        this.userWrapperList = sparseArray;
    }

    public final ChatThread getThread() {
        return this.thread;
    }

    public final void setThread(ChatThread chatThread) {
        this.thread = chatThread;
    }

    public final Integer getChannelType() {
        return this.channelType;
    }

    public final void setChannelType(Integer num) {
        this.channelType = num;
    }

    public final List<User> getUserList() {
        return this.userList;
    }

    public final List<String> getIdList() {
        return this.idList;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            ChatInviteFragment chatInviteFragment = new ChatInviteFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putString("Source", "1-1 > Group Chat");
            chatInviteFragment.setArguments(bundle2);
            FragmentManager fragmentManager = getFragmentManager();
            if (fragmentManager == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            fragmentManager.beginTransaction().add(chatInviteFragment, "chatInvite").commit();
        }
        SparseArray<ChannelUserWrapper> sparseArrayClone = getRtcService().getMainChannelUserWrapperList().clone();
        Intrinsics.checkExpressionValueIsNotNull(sparseArrayClone, "rtcService.mainChannelUserWrapperList.clone()");
        this.userWrapperList = sparseArrayClone;
        this.idList.clear();
        setTitle(R.string.guest_viewers);
        ArrayList listAs = JacksonUtils.readListAs(getStringParam("uidList"), String.class);
        this.thread = (ChatThread) JacksonUtils.readAs(getStringParam("thread"), ChatThread.class);
        this.channelType = Integer.valueOf(getIntParam("channelType"));
        if (this.thread == null) {
            finish();
        }
        if (listAs != null) {
            this.idList.addAll(listAs);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.adapter = new Adapter(this, this, User.class);
        NVAdapter nVAdapter = this.adapter;
        if (nVAdapter != null) {
            return nVAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("adapter");
        throw null;
    }

    /* compiled from: ChatGuestListFragment.kt */
    public final class Adapter extends NVArrayAdapter<User> {
        final /* synthetic */ ChatGuestListFragment this$0;

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "UserList";
        }

        @Override // com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Adapter(ChatGuestListFragment chatGuestListFragment, NVContext ctx, Class<User> type) {
            super(ctx, type);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            Intrinsics.checkParameterIsNotNull(type, "type");
            this.this$0 = chatGuestListFragment;
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new LinearImpressionCollector(User.class));
            sendRequest();
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            this.this$0.getUserList().clear();
            sendRequest();
            notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View cell = createView(R.layout.item_channel_guest, viewGroup, view);
            User item = getItem(i);
            if (item != null) {
                UserAvatarLayout userAvatarLayout = (UserAvatarLayout) cell.findViewById(R.id.user_avatar_layout);
                if (userAvatarLayout != null) {
                    userAvatarLayout.setUser(item);
                } else {
                    ((ThumbImageView) cell.findViewById(R.id.avatar)).setImageUrl(item.icon());
                }
                View viewFindViewById = cell.findViewById(R.id.nickname);
                if (viewFindViewById instanceof NicknameView) {
                    ((NicknameView) viewFindViewById).setUser(item);
                } else if (viewFindViewById instanceof TextView) {
                    ((TextView) viewFindViewById).setText(item.nickname());
                }
                TextView textView = (TextView) cell.findViewById(R.id.amino_id);
                if (textView != null) {
                    if (!TextUtils.isEmpty(item.aminoId)) {
                        textView.setText(MentionedEditText.DEFAULT_METION_TAG + item.aminoId);
                        textView.setVisibility(0);
                    } else {
                        textView.setVisibility(8);
                    }
                }
                TextView textView2 = (TextView) cell.findViewById(R.id.invite);
                if (textView2 != null) {
                    textView2.setOnClickListener(this.subviewClickListener);
                }
                if (this.this$0.isHost() || this.this$0.isCoHost()) {
                    if (textView2 != null) {
                        textView2.setVisibility(0);
                    }
                    if (this.this$0.isInvite(item)) {
                        if (textView2 != null) {
                            textView2.setText(R.string.invited);
                        }
                        if (textView2 != null) {
                            textView2.setBackgroundResource(R.drawable.invited_friend_bg);
                        }
                        if (textView2 != null) {
                            textView2.setTextColor((int) 2583691263L);
                        }
                        if (textView2 != null) {
                            textView2.setEnabled(false);
                        }
                    } else {
                        if (textView2 != null) {
                            textView2.setText(R.string.invite_as_speaker);
                        }
                        if (textView2 != null) {
                            textView2.setTextColor(ContextCompat.getColor(getContext(), R.color.white));
                        }
                        if (textView2 != null) {
                            textView2.setBackgroundResource(R.drawable.invite_friend_bg);
                        }
                        if (textView2 != null) {
                            textView2.setEnabled(true);
                        }
                    }
                } else if (textView2 != null) {
                    textView2.setVisibility(8);
                }
            }
            Intrinsics.checkExpressionValueIsNotNull(cell, "cell");
            return cell;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            Integer channelType;
            ChannelUser channelUser;
            if (obj instanceof User) {
                if (view2 != null && view2.getId() == R.id.invite) {
                    logClickEvent(obj, ActSemantic.invite);
                    this.this$0.inviteUser((User) obj);
                } else {
                    logClickEvent(obj, ActSemantic.checkDetail);
                    ChannelUserWrapper channelUserWrapper = this.this$0.getUserWrapperList().get(this.this$0.getChannelId((User) obj));
                    boolean z = (channelUserWrapper == null || (channelUser = channelUserWrapper.channelUser) == null) ? false : channelUser.isHost;
                    if (channelUserWrapper != null) {
                        VVChatUserDialog.Builder builder = new VVChatUserDialog.Builder(this, channelUserWrapper);
                        ChatThread thread = this.this$0.getThread();
                        if (thread == null) {
                            Intrinsics.throwNpe();
                            throw null;
                        }
                        String str = thread.threadId;
                        Integer channelType2 = this.this$0.getChannelType();
                        int iIntValue = channelType2 != null ? channelType2.intValue() : 0;
                        ChatThread thread2 = this.this$0.getThread();
                        if (thread2 == null) {
                            Intrinsics.throwNpe();
                            throw null;
                        }
                        VVChatUserDialog.Builder builderMuteVideoWhenBlockUser = builder.configUserDialog(str, iIntValue, thread2).clickListener(this.this$0.getVvProfileClickListener$Amino_bundle()).muteVideoWhenBlockUser((z && (channelType = this.this$0.getChannelType()) != null && channelType.intValue() == 5) ? false : true);
                        Integer channelType3 = this.this$0.getChannelType();
                        builderMuteVideoWhenBlockUser.needVideoFrameWhenFlag(channelType3 == null || channelType3.intValue() != 5).curUserIsGuest(true).build().show();
                    }
                }
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.list.NVArrayAdapter, android.widget.Adapter
        public User getItem(int i) {
            if (i >= this.this$0.getUserList().size()) {
                return null;
            }
            return this.this$0.getUserList().get(i);
        }

        @Override // com.narvii.list.NVArrayAdapter, com.narvii.list.NVAdapter
        public boolean isListShown() {
            return !isEmpty();
        }

        @Override // com.narvii.list.NVArrayAdapter, android.widget.Adapter
        public int getCount() {
            return this.this$0.getUserList().size();
        }

        private final void sendRequest() {
            int size = this.this$0.getIdList().size();
            String string = "";
            for (int i = 0; i < size; i++) {
                String str = this.this$0.getIdList().get(i);
                if (!TextUtils.isEmpty(str)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(string);
                    sb.append(Intrinsics.areEqual(string, "") ? "" : ",");
                    sb.append(str);
                    string = sb.toString();
                }
            }
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/user-profile");
            builderPath.param("q", string);
            builderPath.param("type", "uid");
            final Class<UserListResponse> cls = UserListResponse.class;
            ((ApiService) getService("api")).exec(builderPath.build(), new ApiResponseListener<UserListResponse>(cls) { // from class: com.narvii.chat.video.overlay.ChatGuestListFragment$Adapter$sendRequest$1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest req, UserListResponse resp) throws Exception {
                    Intrinsics.checkParameterIsNotNull(req, "req");
                    Intrinsics.checkParameterIsNotNull(resp, "resp");
                    super.onFinish(req, (ApiRequest) resp);
                    for (User u : resp.userList) {
                        SparseArray<ChannelUserWrapper> userWrapperList = this.this$0.this$0.getUserWrapperList();
                        ChatGuestListFragment chatGuestListFragment = this.this$0.this$0;
                        Intrinsics.checkExpressionValueIsNotNull(u, "u");
                        ChannelUserWrapper channelUserWrapper = userWrapperList.get(chatGuestListFragment.getChannelId(u));
                        if (channelUserWrapper != null && channelUserWrapper.channelUser.joinRole == 3) {
                            this.this$0.this$0.getUserList().add(u);
                        }
                    }
                    this.this$0.notifyDataSetChanged();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i2, list, str2, apiResponse, th);
                    this.this$0.notifyDataSetChanged();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void inviteUser(User user) {
        new ChatThreadUserOperationHelper(this, this.thread).inviteAsSpeaker(user.id(), new Callback<Boolean>() { // from class: com.narvii.chat.video.overlay.ChatGuestListFragment.inviteUser.1
            @Override // com.narvii.util.Callback
            public final void call(Boolean it) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                if (it.booleanValue()) {
                    ChatGuestListFragment.this.getAdapter().notifyDataSetChanged();
                    Utils.postDelayed(new Runnable() { // from class: com.narvii.chat.video.overlay.ChatGuestListFragment.inviteUser.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (ChatGuestListFragment.this.isAdded()) {
                                ChatGuestListFragment.this.getAdapter().notifyDataSetChanged();
                            }
                        }
                    }, 180000);
                    NVToast.makeText(ChatGuestListFragment.this.getContext(), R.string.invitation_sent, 1).show();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getChannelId(User user) {
        SparseArray<ChannelUserWrapper> sparseArray = this.userWrapperList;
        if (sparseArray == null) {
            Intrinsics.throwUninitializedPropertyAccessException("userWrapperList");
            throw null;
        }
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            SparseArray<ChannelUserWrapper> sparseArray2 = this.userWrapperList;
            if (sparseArray2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("userWrapperList");
                throw null;
            }
            if (sparseArray2.valueAt(i) != null) {
                SparseArray<ChannelUserWrapper> sparseArray3 = this.userWrapperList;
                if (sparseArray3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("userWrapperList");
                    throw null;
                }
                if (sparseArray3.valueAt(i).channelUser == null) {
                    continue;
                } else {
                    SparseArray<ChannelUserWrapper> sparseArray4 = this.userWrapperList;
                    if (sparseArray4 != null) {
                        if (Utils.isEqualsNotNull(sparseArray4.valueAt(i).channelUser.uid(), user.uid())) {
                            SparseArray<ChannelUserWrapper> sparseArray5 = this.userWrapperList;
                            if (sparseArray5 != null) {
                                return sparseArray5.valueAt(i).channelUid;
                            }
                            Intrinsics.throwUninitializedPropertyAccessException("userWrapperList");
                            throw null;
                        }
                    } else {
                        Intrinsics.throwUninitializedPropertyAccessException("userWrapperList");
                        throw null;
                    }
                }
            }
        }
        return -1;
    }

    public final boolean isHost() {
        return getChatHelper().isHost(this.thread);
    }

    public final boolean isCoHost() {
        return getChatHelper().isCoHost(this.thread);
    }

    public final boolean isInvite(User user) {
        Intrinsics.checkParameterIsNotNull(user, "user");
        LiveChannelInviteHistoryHelper companion = LiveChannelInviteHistoryHelper.Companion.getInstance();
        ChatThread chatThread = this.thread;
        return companion.isInvitedAsSpeaker(chatThread != null ? chatThread.id() : null, user.uid());
    }

    public final VVChatUserDialog.VVProfileClickListener getVvProfileClickListener$Amino_bundle() {
        return this.vvProfileClickListener;
    }

    public final void setVvProfileClickListener$Amino_bundle(VVChatUserDialog.VVProfileClickListener vVProfileClickListener) {
        Intrinsics.checkParameterIsNotNull(vVProfileClickListener, "<set-?>");
        this.vvProfileClickListener = vVProfileClickListener;
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if ((notification != null ? notification.obj : null) instanceof SpeakerInviteNotificationWrapper) {
            Object obj = notification.obj;
            if (obj == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.chat.SpeakerInviteNotificationWrapper");
            }
            if (CollectionsKt___CollectionsKt.contains(this.idList, ((SpeakerInviteNotificationWrapper) obj).getUserId())) {
                NVAdapter nVAdapter = this.adapter;
                if (nVAdapter != null) {
                    nVAdapter.notifyDataSetChanged();
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    throw null;
                }
            }
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.theme.NVThemeFragment
    public void onThemeChange(int i) throws Resources.NotFoundException {
        super.onThemeChange(i);
        if (i == 2) {
            int color = getResources().getColor(R.color.color_default_primary);
            ListView listView = getListView();
            if (listView == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView).setOverscrollStretchHeader(color);
            ListView listView2 = getListView();
            if (listView2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView2).setOverscrollStretchFooter(color);
            ListView listView3 = getListView();
            if (listView3 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView3).setListContentBackgroundColor(0);
            return;
        }
        if (i == 1) {
            int color2 = getResources().getColor(R.color.prefs_background);
            ListView listView4 = getListView();
            if (listView4 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView4).setOverscrollStretchHeader(color2);
            ListView listView5 = getListView();
            if (listView5 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView5).setOverscrollStretchFooter(color2);
            ListView listView6 = getListView();
            if (listView6 == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.widget.NVListView");
            }
            ((NVListView) listView6).setListContentBackgroundColor(-1);
        }
    }
}
