package com.narvii.chat.video.overlay;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
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
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVArrayAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.livelayer.LiveLayerService;
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
import java.util.List;
import kotlin.collections.d0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes.dex */
public final class ChatGuestListFragment extends NVListFragment implements NotificationListener {
    public NVAdapter adapter;

    @Nullable
    private ChatThread thread;
    public SparseArray<ChannelUserWrapper> userWrapperList;

    @Nullable
    private Integer channelType = 0;

    @NotNull
    private final List<User> userList = new ArrayList();

    @NotNull
    private final m rtcService$delegate = o.a(new ChatGuestListFragment$rtcService$2(this));

    @NotNull
    private final m api$delegate = o.a(new ChatGuestListFragment$api$2(this));

    @NotNull
    private final m chatHelper$delegate = o.a(new ChatGuestListFragment$chatHelper$2(this));

    @NotNull
    private final List<String> idList = new ArrayList();

    @NotNull
    private VVChatUserDialog.VVProfileClickListener vvProfileClickListener = new VVChatUserDialog.VVProfileClickListener() { // from class: com.narvii.chat.video.overlay.ChatGuestListFragment$vvProfileClickListener$1
        @Override // com.narvii.chat.dialog.VVChatUserDialog.VVProfileClickListener
        public void onStartChat(@NotNull User user) {
            t.j(user, "user");
            AccountService accountService = (AccountService) this.this$0.getService("account");
            t.g(accountService);
            if (!accountService.hasAccount()) {
                Intent intent = new Intent("chat");
                intent.putExtra("uid", user.uid());
                this.this$0.ensureLogin(intent);
                return;
            }
            FragmentManager fragmentManager = this.this$0.getFragmentManager();
            t.g(fragmentManager);
            Fragment fragmentM0 = fragmentManager.m0("chatInvite");
            ChatInviteFragment chatInviteFragment = fragmentM0 instanceof ChatInviteFragment ? (ChatInviteFragment) fragmentM0 : null;
            if (chatInviteFragment != null) {
                chatInviteFragment.startChat(user.uid());
            }
        }
    };

    public final class Adapter extends NVArrayAdapter<User> {
        final /* synthetic */ ChatGuestListFragment this$0;

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        @NotNull
        public String getAreaName() {
            return "UserList";
        }

        @Override // com.narvii.list.NVAdapter
        protected boolean supportNVTheme() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Adapter(@NotNull ChatGuestListFragment chatGuestListFragment, @NotNull NVContext ctx, Class<User> type) {
            super(ctx, type);
            t.j(ctx, "ctx");
            t.j(type, "type");
            this.this$0 = chatGuestListFragment;
        }

        private final void sendRequest() {
            int size = this.this$0.getIdList().size();
            String str = "";
            for (int i10 = 0; i10 < size; i10++) {
                String str2 = this.this$0.getIdList().get(i10);
                if (!TextUtils.isEmpty(str2)) {
                    str = str + (t.e(str, "") ? "" : ",") + str2;
                }
            }
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/user-profile");
            builderPath.param("q", str);
            builderPath.param("type", "uid");
            ApiService apiService = (ApiService) getService("api");
            ApiRequest apiRequestBuild = builderPath.build();
            final ChatGuestListFragment chatGuestListFragment = this.this$0;
            final Class<UserListResponse> cls = UserListResponse.class;
            apiService.exec(apiRequestBuild, new ApiResponseListener<UserListResponse>(cls) { // from class: com.narvii.chat.video.overlay.ChatGuestListFragment$Adapter$sendRequest$1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(@NotNull ApiRequest req, @NotNull UserListResponse resp) throws Exception {
                    t.j(req, "req");
                    t.j(resp, "resp");
                    super.onFinish(req, resp);
                    for (User user : resp.userList) {
                        SparseArray<ChannelUserWrapper> userWrapperList = chatGuestListFragment.getUserWrapperList();
                        ChatGuestListFragment chatGuestListFragment2 = chatGuestListFragment;
                        t.g(user);
                        ChannelUserWrapper channelUserWrapper = userWrapperList.get(chatGuestListFragment2.getChannelId(user));
                        if (channelUserWrapper != null && channelUserWrapper.channelUser.joinRole == 3) {
                            chatGuestListFragment.getUserList().add(user);
                        }
                    }
                    this.notifyDataSetChanged();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(@Nullable ApiRequest apiRequest, int i11, @Nullable List<NameValuePair> list, @Nullable String str3, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                    super.onFail(apiRequest, i11, list, str3, apiResponse, th);
                    this.notifyDataSetChanged();
                }
            });
        }

        @Override // com.narvii.list.NVArrayAdapter, android.widget.Adapter
        public int getCount() {
            return this.this$0.getUserList().size();
        }

        @Override // com.narvii.list.NVArrayAdapter, android.widget.Adapter
        @Nullable
        public User getItem(int i10) {
            if (i10 >= this.this$0.getUserList().size()) {
                return null;
            }
            return this.this$0.getUserList().get(i10);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(@Nullable ListAdapter listAdapter, int i10, @Nullable Object obj, @Nullable View view, @Nullable View view2) {
            Integer channelType;
            ChannelUser channelUser;
            if (obj instanceof User) {
                if (view2 == null || view2.getId() != R.id.invite) {
                    logClickEvent(obj, ActSemantic.checkDetail);
                    ChannelUserWrapper channelUserWrapper = this.this$0.getUserWrapperList().get(this.this$0.getChannelId((User) obj));
                    boolean z6 = (channelUserWrapper == null || (channelUser = channelUserWrapper.channelUser) == null) ? false : channelUser.isHost;
                    if (channelUserWrapper != null) {
                        ChatGuestListFragment chatGuestListFragment = this.this$0;
                        VVChatUserDialog.Builder builder = new VVChatUserDialog.Builder(this, channelUserWrapper);
                        ChatThread thread = chatGuestListFragment.getThread();
                        t.g(thread);
                        String str = thread.threadId;
                        Integer channelType2 = chatGuestListFragment.getChannelType();
                        int iIntValue = channelType2 != null ? channelType2.intValue() : 0;
                        ChatThread thread2 = chatGuestListFragment.getThread();
                        t.g(thread2);
                        VVChatUserDialog.Builder builderMuteVideoWhenBlockUser = builder.configUserDialog(str, iIntValue, thread2).clickListener(chatGuestListFragment.getVvProfileClickListener$Amino_bundle()).muteVideoWhenBlockUser((z6 && (channelType = chatGuestListFragment.getChannelType()) != null && channelType.intValue() == 5) ? false : true);
                        Integer channelType3 = chatGuestListFragment.getChannelType();
                        builderMuteVideoWhenBlockUser.needVideoFrameWhenFlag(channelType3 == null || channelType3.intValue() != 5).curUserIsGuest(true).build().show();
                    }
                } else {
                    logClickEvent(obj, ActSemantic.invite);
                    this.this$0.inviteUser((User) obj);
                }
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i10, @Nullable Callback<Integer> callback) {
            this.this$0.getUserList().clear();
            sendRequest();
            notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        @NotNull
        public View getView(int i10, @Nullable View view, @Nullable ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.item_channel_guest, viewGroup, view);
            User item = getItem(i10);
            if (item != null) {
                ChatGuestListFragment chatGuestListFragment = this.this$0;
                UserAvatarLayout userAvatarLayout = (UserAvatarLayout) viewCreateView.findViewById(R.id.user_avatar_layout);
                if (userAvatarLayout != null) {
                    userAvatarLayout.setUser(item);
                } else {
                    ((ThumbImageView) viewCreateView.findViewById(R.id.avatar)).setImageUrl(item.icon());
                }
                View viewFindViewById = viewCreateView.findViewById(R.id.nickname);
                if (viewFindViewById instanceof NicknameView) {
                    ((NicknameView) viewFindViewById).setUser(item);
                } else if (viewFindViewById instanceof TextView) {
                    ((TextView) viewFindViewById).setText(item.nickname());
                }
                TextView textView = (TextView) viewCreateView.findViewById(R.id.amino_id);
                if (textView != null) {
                    if (!TextUtils.isEmpty(item.aminoId)) {
                        textView.setText(MentionedEditText.DEFAULT_METION_TAG + item.aminoId);
                        textView.setVisibility(0);
                    } else {
                        textView.setVisibility(8);
                    }
                }
                TextView textView2 = (TextView) viewCreateView.findViewById(R.id.invite);
                if (textView2 != null) {
                    textView2.setOnClickListener(this.subviewClickListener);
                }
                if (!chatGuestListFragment.isHost() && !chatGuestListFragment.isCoHost()) {
                    if (textView2 != null) {
                        textView2.setVisibility(8);
                    }
                } else {
                    if (textView2 != null) {
                        textView2.setVisibility(0);
                    }
                    if (chatGuestListFragment.isInvite(item)) {
                        if (textView2 != null) {
                            textView2.setText(R.string.invited);
                        }
                        if (textView2 != null) {
                            textView2.setBackgroundResource(R.drawable.invited_friend_bg);
                        }
                        if (textView2 != null) {
                            textView2.setTextColor(-1711276033);
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
                }
            }
            t.g(viewCreateView);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVArrayAdapter, com.narvii.list.NVAdapter
        public boolean isListShown() {
            return !isEmpty();
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new LinearImpressionCollector(User.class));
            sendRequest();
        }
    }

    @Nullable
    public final Integer getChannelType() {
        return this.channelType;
    }

    @NotNull
    public final List<String> getIdList() {
        return this.idList;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "live_chat_guest_viewer";
    }

    @Override // com.narvii.list.NVListFragment
    protected int getSelectorDarkColor() {
        return 872415231;
    }

    @Nullable
    public final ChatThread getThread() {
        return this.thread;
    }

    @NotNull
    public final List<User> getUserList() {
        return this.userList;
    }

    @NotNull
    public final VVChatUserDialog.VVProfileClickListener getVvProfileClickListener$Amino_bundle() {
        return this.vvProfileClickListener;
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    public final void setAdapter(@NotNull NVAdapter nVAdapter) {
        t.j(nVAdapter, "<set-?>");
        this.adapter = nVAdapter;
    }

    public final void setChannelType(@Nullable Integer num) {
        this.channelType = num;
    }

    public final void setThread(@Nullable ChatThread chatThread) {
        this.thread = chatThread;
    }

    public final void setUserWrapperList(@NotNull SparseArray<ChannelUserWrapper> sparseArray) {
        t.j(sparseArray, "<set-?>");
        this.userWrapperList = sparseArray;
    }

    public final void setVvProfileClickListener$Amino_bundle(@NotNull VVChatUserDialog.VVProfileClickListener vVProfileClickListener) {
        t.j(vVProfileClickListener, "<set-?>");
        this.vvProfileClickListener = vVProfileClickListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void inviteUser(User user) {
        new ChatThreadUserOperationHelper(this, this.thread).inviteAsSpeaker(user.id(), new Callback() { // from class: com.narvii.chat.video.overlay.b
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                ChatGuestListFragment.inviteUser$lambda$1(this.f2142a, (Boolean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void inviteUser$lambda$1(final ChatGuestListFragment this$0, Boolean bool) {
        t.j(this$0, "this$0");
        t.g(bool);
        if (bool.booleanValue()) {
            this$0.getAdapter().notifyDataSetChanged();
            Utils.postDelayed(new Runnable() { // from class: com.narvii.chat.video.overlay.a
                @Override // java.lang.Runnable
                public final void run() {
                    ChatGuestListFragment.inviteUser$lambda$1$lambda$0(this.f2141a);
                }
            }, LiveLayerService.REFRESH_INTERVAL);
            NVToast.makeText(this$0.getContext(), R.string.invitation_sent, 1).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void inviteUser$lambda$1$lambda$0(ChatGuestListFragment this$0) {
        t.j(this$0, "this$0");
        if (this$0.isAdded()) {
            this$0.getAdapter().notifyDataSetChanged();
        }
    }

    @Override // com.narvii.list.NVListFragment
    @NotNull
    protected ListAdapter createAdapter(@Nullable Bundle bundle) {
        setAdapter(new Adapter(this, this, User.class));
        return getAdapter();
    }

    @NotNull
    public final NVAdapter getAdapter() {
        NVAdapter nVAdapter = this.adapter;
        if (nVAdapter != null) {
            return nVAdapter;
        }
        t.B("adapter");
        return null;
    }

    @NotNull
    public final ApiService getApi() {
        Object value = this.api$delegate.getValue();
        t.i(value, "getValue(...)");
        return (ApiService) value;
    }

    @NotNull
    public final ChatHelper getChatHelper() {
        return (ChatHelper) this.chatHelper$delegate.getValue();
    }

    @NotNull
    public final RtcService getRtcService() {
        Object value = this.rtcService$delegate.getValue();
        t.i(value, "getValue(...)");
        return (RtcService) value;
    }

    @NotNull
    public final SparseArray<ChannelUserWrapper> getUserWrapperList() {
        SparseArray<ChannelUserWrapper> sparseArray = this.userWrapperList;
        if (sparseArray != null) {
            return sparseArray;
        }
        t.B("userWrapperList");
        return null;
    }

    public final boolean isInvite(@NotNull User user) {
        t.j(user, "user");
        LiveChannelInviteHistoryHelper companion = LiveChannelInviteHistoryHelper.Companion.getInstance();
        ChatThread chatThread = this.thread;
        return companion.isInvitedAsSpeaker(chatThread != null ? chatThread.id() : null, user.uid());
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(@Nullable Notification notification) {
        if ((notification != null ? notification.obj : null) instanceof SpeakerInviteNotificationWrapper) {
            Object obj = notification.obj;
            t.h(obj, "null cannot be cast to non-null type com.narvii.chat.SpeakerInviteNotificationWrapper");
            if (d0.Z(this.idList, ((SpeakerInviteNotificationWrapper) obj).getUserId())) {
                getAdapter().notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getChannelId(User user) {
        int size = getUserWrapperList().size();
        for (int i10 = 0; i10 < size; i10++) {
            if (getUserWrapperList().valueAt(i10) != null && getUserWrapperList().valueAt(i10).channelUser != null && Utils.isEqualsNotNull(getUserWrapperList().valueAt(i10).channelUser.uid(), user.uid())) {
                return getUserWrapperList().valueAt(i10).channelUid;
            }
        }
        return -1;
    }

    public final boolean isCoHost() {
        return getChatHelper().isCoHost(this.thread);
    }

    public final boolean isHost() {
        return getChatHelper().isHost(this.thread);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            ChatInviteFragment chatInviteFragment = new ChatInviteFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putString(ExternalPostPreviewFragment.SOURCE, "1-1 > Group Chat");
            chatInviteFragment.setArguments(bundle2);
            FragmentManager fragmentManager = getFragmentManager();
            t.g(fragmentManager);
            fragmentManager.q().e(chatInviteFragment, "chatInvite").j();
        }
        SparseArray<ChannelUserWrapper> sparseArrayClone = getRtcService().getMainChannelUserWrapperList().clone();
        t.i(sparseArrayClone, "clone(...)");
        setUserWrapperList(sparseArrayClone);
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

    @Override // com.narvii.list.NVListFragment, com.narvii.app.theme.NVThemeFragment
    public void onThemeChange(int i10) {
        super.onThemeChange(i10);
        if (i10 != 1) {
            if (i10 == 2) {
                int color = getResources().getColor(R.color.color_default_primary);
                ListView listView = getListView();
                t.h(listView, "null cannot be cast to non-null type com.narvii.widget.NVListView");
                ((NVListView) listView).setOverscrollStretchHeader(color);
                ListView listView2 = getListView();
                t.h(listView2, "null cannot be cast to non-null type com.narvii.widget.NVListView");
                ((NVListView) listView2).setOverscrollStretchFooter(color);
                ListView listView3 = getListView();
                t.h(listView3, "null cannot be cast to non-null type com.narvii.widget.NVListView");
                ((NVListView) listView3).setListContentBackgroundColor(0);
                return;
            }
            return;
        }
        int color2 = getResources().getColor(R.color.prefs_background);
        ListView listView4 = getListView();
        t.h(listView4, "null cannot be cast to non-null type com.narvii.widget.NVListView");
        ((NVListView) listView4).setOverscrollStretchHeader(color2);
        ListView listView5 = getListView();
        t.h(listView5, "null cannot be cast to non-null type com.narvii.widget.NVListView");
        ((NVListView) listView5).setOverscrollStretchFooter(color2);
        ListView listView6 = getListView();
        t.h(listView6, "null cannot be cast to non-null type com.narvii.widget.NVListView");
        ((NVListView) listView6).setListContentBackgroundColor(-1);
    }
}
