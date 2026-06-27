package com.narvii.chat.video.overlay;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.ThreadResponse;
import com.narvii.chat.dialog.VVChatUserDialog;
import com.narvii.chat.global.GlobalChatHelper;
import com.narvii.chat.invite.ChatInviteFragment;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.screenroom.ScreenRoomService;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.video.events.ChannelUserWrapperUpdateListener;
import com.narvii.chat.video.events.LocalMuteUserListChangeListener;
import com.narvii.chat.video.fragments.VVChatBackgroundFragment;
import com.narvii.config.ConfigService;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVArrayAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.DivideColumnImpressionCollector;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserListResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes2.dex */
public class ParticipantsListFragment extends NVListFragment implements ChannelUserWrapperUpdateListener, LocalMuteUserListChangeListener {
    public static final String KEY_CHANNEL_TYPE = "key_channel_type";
    private static final String SUB_FRAGMENT_TAG_BG = "vv_background";
    private AccountService accountService;
    private int channelType;
    ChatHelper chatHelper;
    private CommunityConfigHelper communityConfigHelper;
    private List<String> guestIdList;
    private ImageView inviteMemberView;
    Set<String> localMutedUserList;
    private int localUid;
    MergeAdapter mergeAdapter;
    ParticipantHeaderAdapter participantHeaderAdapter;
    private ParticipantsAdapter participantsAdapter;
    private List<User> participantsList;
    private RtcService rtcService;
    private ScreenRoomService screenRoomService;
    private ChatThread thread;
    SparseArray<ChannelUserWrapper> userWrapperList;
    private ViewersAdapter viewersAdapter;
    ViewersHeaderAdapter viewersHeaderAdapter;
    private List<User> viewersList;
    private HashMap<String, ChannelUserWrapper> uidChannelWrapperMapper = new HashMap<>();
    VVChatUserDialog.VVProfileClickListener VVProfileClickListener = new VVChatUserDialog.VVProfileClickListener() { // from class: com.narvii.chat.video.overlay.ParticipantsListFragment.1
        @Override // com.narvii.chat.dialog.VVChatUserDialog.VVProfileClickListener
        public void onStartChat(User user) {
            if (((AccountService) ParticipantsListFragment.this.getService("account")).hasAccount()) {
                ChatInviteFragment chatInviteFragment = (ChatInviteFragment) ParticipantsListFragment.this.getFragmentManager().findFragmentByTag("chatInvite");
                if (chatInviteFragment != null) {
                    chatInviteFragment.startChat(user.uid());
                    return;
                }
                return;
            }
            Intent intent = new Intent("chat");
            intent.putExtra("uid", user.uid());
            ParticipantsListFragment.this.ensureLogin(intent);
        }
    };

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755026;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "LiveChatParticipants";
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onCreate(bundle);
        setTitle(getString(R.string.participants));
        this.chatHelper = new ChatHelper(getContext());
        this.rtcService = (RtcService) getService("rtc");
        this.accountService = (AccountService) getService("account");
        this.channelType = getIntParam(KEY_CHANNEL_TYPE);
        addLiveChannelRelatedListener(getStringParam("id"));
        this.screenRoomService = (ScreenRoomService) getService("screenRoom");
        this.userWrapperList = this.rtcService.getMainChannelUserWrapperList().clone();
        this.guestIdList = new ArrayList();
        if (this.userWrapperList != null) {
            for (int i = 0; i < this.userWrapperList.size(); i++) {
                ChannelUser channelUser = this.userWrapperList.valueAt(i).channelUser;
                if (channelUser != null && channelUser.joinRole == 3) {
                    this.guestIdList.add(channelUser.uid());
                }
            }
        }
        this.localMutedUserList = this.rtcService.getLocalMutedUserList();
        if (this.rtcService.getMainSigChannel() != null) {
            this.localUid = this.rtcService.getMainSigChannel().channelUid;
        }
        if (this.localMutedUserList == null) {
            this.localMutedUserList = new HashSet();
        }
        this.communityConfigHelper = new CommunityConfigHelper(this);
        buildUidChannelMapper();
        if (bundle == null) {
            configAttachFragment();
        }
        initActionBarRightButton();
    }

    private void initActionBarRightButton() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        ChatHelper chatHelper = new ChatHelper(getContext());
        if (getThread() == null || !chatHelper.isHostOrCoHost(getThread())) {
            return;
        }
        int iDpToPxInt = Utils.dpToPxInt(getContext(), 10.0f);
        int iDpToPxInt2 = Utils.dpToPxInt(getContext(), 15.0f);
        this.inviteMemberView = new ImageView(getContext());
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(Utils.dpToPxInt(getContext(), 60.0f), Utils.dpToPxInt(getContext(), 40.0f));
        this.inviteMemberView.setPadding(iDpToPxInt2, iDpToPxInt, iDpToPxInt2, iDpToPxInt);
        this.inviteMemberView.setLayoutParams(marginLayoutParams);
        this.inviteMemberView.setImageResource(R.drawable.ic_right_button_invite);
        setActionBarRightView(this.inviteMemberView);
        this.inviteMemberView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.overlay.-$$Lambda$ParticipantsListFragment$CHwegScmB3Zuh7oZV_bvakg579Y
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$initActionBarRightButton$0$ParticipantsListFragment(view);
            }
        });
    }

    public /* synthetic */ void lambda$initActionBarRightButton$0$ParticipantsListFragment(View view) {
        openChannelInvitePage();
    }

    private void openChannelInvitePage() {
        Intent intent = FragmentWrapperActivity.intent(ChannelInviteMemberListFragment.class);
        intent.putExtra("channel_type", this.channelType);
        intent.putExtra("thread", JacksonUtils.writeAsString(getThread()));
        intent.putExtra("id", getStringParam("id"));
        getContext().startActivity(intent);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        fetchChatThread();
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_participant_list, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (listView != null) {
            listView.setDivider(null);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        removeChannelRelatedListener(getStringParam("id"));
    }

    private void buildUidChannelMapper() {
        if (this.userWrapperList == null) {
            return;
        }
        for (int i = 0; i < this.userWrapperList.size(); i++) {
            ChannelUser channelUser = this.userWrapperList.valueAt(i).channelUser;
            if (channelUser != null && !TextUtils.isEmpty(channelUser.uid())) {
                this.uidChannelWrapperMapper.put(channelUser.uid(), this.userWrapperList.valueAt(i));
            }
        }
    }

    private void configAttachFragment() {
        ChatInviteFragment chatInviteFragment = new ChatInviteFragment();
        Bundle bundle = new Bundle();
        bundle.putString("Source", "Participants");
        chatInviteFragment.setArguments(bundle);
        getFragmentManager().beginTransaction().add(chatInviteFragment, "chatInvite").commit();
        VVChatBackgroundFragment vVChatBackgroundFragment = new VVChatBackgroundFragment();
        Bundle bundle2 = new Bundle();
        bundle2.putString(VVChatBackgroundFragment.KEY_CHAT_THREAD, JacksonUtils.writeAsString(getThread()));
        vVChatBackgroundFragment.setArguments(bundle2);
        getChildFragmentManager().beginTransaction().add(R.id.chat_bg_frame, vVChatBackgroundFragment, SUB_FRAGMENT_TAG_BG).commit();
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return false;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.participantsAdapter = new ParticipantsAdapter();
        this.viewersAdapter = new ViewersAdapter();
        this.participantHeaderAdapter = new ParticipantHeaderAdapter();
        this.viewersHeaderAdapter = new ViewersHeaderAdapter();
        this.mergeAdapter = new MergeAdapter(this);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this);
        divideColumnAdapter.setAdapter(this.participantsAdapter, 4);
        DivideColumnAdapter divideColumnAdapter2 = new DivideColumnAdapter(this);
        divideColumnAdapter2.setAdapter(this.viewersAdapter, 4);
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
        staticViewAdapter.addViews(new OverlayListPlaceholder(getContext()));
        FooterAdapter footerAdapter = new FooterAdapter(this);
        this.mergeAdapter.addAdapter(staticViewAdapter);
        this.mergeAdapter.addAdapter(this.participantHeaderAdapter);
        this.mergeAdapter.addAdapter(divideColumnAdapter, true);
        this.mergeAdapter.addAdapter(this.viewersHeaderAdapter);
        this.mergeAdapter.addAdapter(divideColumnAdapter2);
        this.mergeAdapter.addAdapter(footerAdapter);
        return this.mergeAdapter;
    }

    @Override // com.narvii.chat.video.events.ChannelUserWrapperUpdateListener
    public void onUserWrapperStatusChanged(SignallingChannel signallingChannel, ChannelUserWrapper channelUserWrapper) {
        ChannelUser channelUser;
        if (isAdded() && (channelUser = channelUserWrapper.channelUser) != null) {
            String strUid = channelUser.uid();
            if (this.uidChannelWrapperMapper.containsKey(strUid)) {
                this.uidChannelWrapperMapper.put(strUid, channelUserWrapper);
                MergeAdapter mergeAdapter = this.mergeAdapter;
                if (mergeAdapter != null) {
                    mergeAdapter.notifyDataSetChanged();
                }
            }
        }
    }

    @Override // com.narvii.chat.video.events.LocalMuteUserListChangeListener
    public void onLocalMuteUserListChanged(SignallingChannel signallingChannel, Set<String> set) {
        this.localMutedUserList = this.rtcService.getLocalMutedUserList();
        MergeAdapter mergeAdapter = this.mergeAdapter;
        if (mergeAdapter != null) {
            mergeAdapter.notifyDataSetChanged();
        }
    }

    class ParticipantHeaderAdapter extends AdriftAdapter {
        public ParticipantHeaderAdapter() {
            super(ParticipantsListFragment.this);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.paricipants_section_header, viewGroup, view);
            int unused = ParticipantsListFragment.this.channelType;
            ((TextView) viewCreateView.findViewById(R.id.text)).setText(com.narvii.util.text.TextUtils.getCountTitle(ParticipantsListFragment.this.getString(R.string.voice_participants), ParticipantsListFragment.this.participantsAdapter.getCount()));
            return viewCreateView;
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            return (ParticipantsListFragment.this.participantsAdapter == null || ParticipantsListFragment.this.participantsAdapter.getCount() <= 0) ? 0 : 1;
        }
    }

    class ParticipantsAdapter extends ChannelUserListAdapter {
        private String error;

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "Speaker";
        }

        @Override // com.narvii.chat.video.overlay.ParticipantsListFragment.ChannelUserListAdapter
        protected boolean showIndicator() {
            return true;
        }

        public ParticipantsAdapter() {
            super(ParticipantsListFragment.this, User.class);
        }

        @Override // com.narvii.chat.video.overlay.ParticipantsListFragment.ChannelUserListAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            sendRequest();
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            this.error = null;
            ParticipantsListFragment.this.participantsList = null;
            ParticipantsListFragment.this.viewersList = null;
            sendRequest();
            notifyDataSetChanged();
        }

        @Override // com.narvii.list.NVAdapter
        public String errorMessage() {
            return this.error;
        }

        @Override // com.narvii.list.NVArrayAdapter, android.widget.Adapter
        public int getCount() {
            if (ParticipantsListFragment.this.participantsList == null) {
                return 0;
            }
            return ParticipantsListFragment.this.participantsList.size();
        }

        @Override // com.narvii.list.NVArrayAdapter, android.widget.Adapter
        public User getItem(int i) {
            return (User) ParticipantsListFragment.this.participantsList.get(i);
        }

        private void sendRequest() {
            if (ParticipantsListFragment.this.userWrapperList == null) {
                return;
            }
            String string = "";
            for (int i = 0; i < ParticipantsListFragment.this.userWrapperList.size(); i++) {
                if (ParticipantsListFragment.this.userWrapperList.valueAt(i).channelUser != null) {
                    String strUid = ParticipantsListFragment.this.userWrapperList.valueAt(i).channelUser.uid();
                    if (!TextUtils.isEmpty(strUid)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(string);
                        sb.append(string.equals("") ? "" : ",");
                        sb.append(strUid);
                        string = sb.toString();
                    }
                }
            }
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/user-profile");
            builderPath.param("q", string);
            builderPath.param("type", "uid");
            ((ApiService) getService("api")).exec(builderPath.build(), new ApiResponseListener<UserListResponse>(UserListResponse.class) { // from class: com.narvii.chat.video.overlay.ParticipantsListFragment.ParticipantsAdapter.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, UserListResponse userListResponse) throws Exception {
                    super.onFinish(apiRequest, (ApiRequest) userListResponse);
                    List<User> list = userListResponse.userList;
                    ParticipantsListFragment.this.participantsList = new ArrayList();
                    ParticipantsListFragment.this.viewersList = new ArrayList();
                    for (User user : list) {
                        ParticipantsListFragment participantsListFragment = ParticipantsListFragment.this;
                        ChannelUserWrapper channelUserWrapper = participantsListFragment.userWrapperList.get(participantsListFragment.getChannelId(user));
                        boolean z = false;
                        boolean z2 = channelUserWrapper != null && channelUserWrapper.channelUser.joinRole == 1;
                        if (channelUserWrapper != null && channelUserWrapper.channelUser.joinRole == 3) {
                            z = true;
                        }
                        if (!z) {
                            if (z2) {
                                ParticipantsListFragment.this.participantsList.add(user);
                            } else {
                                ParticipantsListFragment.this.viewersList.add(user);
                            }
                        }
                    }
                    ParticipantsAdapter.this.error = null;
                    ParticipantsAdapter.this.notifyDataSetChanged();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i2, list, str, apiResponse, th);
                    ParticipantsAdapter.this.error = str;
                    ParticipantsAdapter.this.notifyDataSetChanged();
                }
            });
        }

        @Override // com.narvii.list.NVArrayAdapter, com.narvii.list.NVAdapter
        public boolean isListShown() {
            return (ParticipantsListFragment.this.participantsList == null && this.error == null) ? false : true;
        }
    }

    class ViewersHeaderAdapter extends AdriftAdapter {
        public ViewersHeaderAdapter() {
            super(ParticipantsListFragment.this);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.paricipants_section_header, viewGroup, view);
            ((TextView) viewCreateView.findViewById(R.id.text)).setText(com.narvii.util.text.TextUtils.getCountTitle(ParticipantsListFragment.this.getString(R.string.viewers), ParticipantsListFragment.this.viewersAdapter.getCount()));
            return viewCreateView;
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            return (ParticipantsListFragment.this.viewersAdapter == null || ParticipantsListFragment.this.viewersAdapter.getCount() <= 0) ? 0 : 1;
        }
    }

    class ViewersAdapter extends ChannelUserListAdapter {
        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "Audience";
        }

        public ViewersAdapter() {
            super(ParticipantsListFragment.this, User.class);
        }

        @Override // com.narvii.list.NVArrayAdapter, android.widget.Adapter
        public User getItem(int i) {
            return (User) ParticipantsListFragment.this.viewersList.get(i);
        }

        @Override // com.narvii.list.NVArrayAdapter, android.widget.Adapter
        public int getCount() {
            if (ParticipantsListFragment.this.viewersList == null) {
                return 0;
            }
            return ParticipantsListFragment.this.viewersList.size();
        }
    }

    class ChannelUserListAdapter extends NVArrayAdapter<User> {
        protected boolean showIndicator() {
            return false;
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new DivideColumnImpressionCollector(User.class));
        }

        public ChannelUserListAdapter(NVContext nVContext, Class<User> cls) {
            super(nVContext, cls);
        }

        /* JADX WARN: Removed duplicated region for block: B:100:0x01e3  */
        @Override // android.widget.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public android.view.View getView(int r10, android.view.View r11, android.view.ViewGroup r12) {
            /*
                Method dump skipped, instructions count: 518
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.chat.video.overlay.ParticipantsListFragment.ChannelUserListAdapter.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
        }

        private String getHostLabel(ChatThread chatThread, String str) {
            if (ParticipantsListFragment.this.chatHelper.isHost(chatThread, str)) {
                return ParticipantsListFragment.this.getString(R.string.host);
            }
            return ParticipantsListFragment.this.chatHelper.isCoHost(chatThread, str) ? ParticipantsListFragment.this.getString(R.string.co_host) : "";
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof User) {
                showVVChatUserDialog(obj);
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void showVVChatUserDialog(Object obj) {
            ChannelUser channelUser;
            logClickEvent(obj, ActSemantic.checkDetail);
            ChannelUserWrapper channelUserWrapper = ParticipantsListFragment.this.getChannelUserWrapper((User) obj);
            boolean z = (channelUserWrapper == null || (channelUser = channelUserWrapper.channelUser) == null || !channelUser.isHost) ? false : true;
            VVChatUserDialog.Builder builder = new VVChatUserDialog.Builder(ParticipantsListFragment.this, channelUserWrapper);
            builder.configUserDialog(ParticipantsListFragment.this.getStringParam("id"), ParticipantsListFragment.this.channelType, ParticipantsListFragment.this.getThread());
            builder.clickListener(ParticipantsListFragment.this.VVProfileClickListener).muteVideoWhenBlockUser((z && ParticipantsListFragment.this.channelType == 5) ? false : true).needVideoFrameWhenFlag(ParticipantsListFragment.this.channelType != 5);
            builder.build().show();
        }

        public boolean checkCommunityAvailability(final Object obj) {
            return !new GlobalChatHelper(this).tryJoinCommunity(((ConfigService) getService("config")).getCommunityId(), false, new GlobalChatHelper.JoinCommunityCallback() { // from class: com.narvii.chat.video.overlay.ParticipantsListFragment.ChannelUserListAdapter.1
                @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
                public ChatThread followingChatToJoin() {
                    return null;
                }

                @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
                public int getActionRTCType() {
                    return 1;
                }

                @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
                public boolean onPreJoinCommunity(int i) {
                    return false;
                }

                @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
                public void onCheckLoginFailed() {
                    ChannelUserListAdapter.this.ensureLogin(new Intent("joinChannel"));
                }

                @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
                public void onPostJoinCommunity(int i, boolean z) {
                    SignallingChannel mappedSignallingChannel;
                    if (z && (mappedSignallingChannel = ParticipantsListFragment.this.rtcService.getMappedSignallingChannel(ParticipantsListFragment.this.getThreadId())) != null && mappedSignallingChannel.joinRole == 3) {
                        ParticipantsListFragment.this.rtcService.updateJoinRole(i, ParticipantsListFragment.this.getThreadId(), 2, new Callback() { // from class: com.narvii.chat.video.overlay.ParticipantsListFragment.ChannelUserListAdapter.1.1
                            @Override // com.narvii.util.Callback
                            public void call(Object obj2) {
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                ChannelUserListAdapter.this.showVVChatUserDialog(obj);
                            }
                        });
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getThreadId() {
        return getThread().id();
    }

    class FooterAdapter extends NVAdapter {
        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "ViewMoreGuest";
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public FooterAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return (ParticipantsListFragment.this.guestIdList == null || ParticipantsListFragment.this.guestIdList.size() <= 0) ? 0 : 1;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.fragment_story_vote_footer, viewGroup, view);
            viewCreateView.findViewById(R.id.guest_like_container).setVisibility(4);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.guest_like_text);
            textView.setVisibility(0);
            int size = ParticipantsListFragment.this.guestIdList != null ? ParticipantsListFragment.this.guestIdList.size() : 0;
            if (size > 1) {
                textView.setText(getContext().getString(R.string.some_guest_viewers, Integer.valueOf(size)));
            } else {
                textView.setText(R.string.one_guest_viewer);
            }
            viewCreateView.setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            ChatThread thread = ParticipantsListFragment.this.getThread();
            if (thread == null) {
                return true;
            }
            logClickEvent(ActSemantic.listViewEnter);
            Intent intent = FragmentWrapperActivity.intent(ChatGuestListFragment.class);
            intent.putExtra("uidList", JacksonUtils.writeAsString(ParticipantsListFragment.this.guestIdList));
            intent.putExtra("thread", JacksonUtils.writeAsString(thread));
            intent.putExtra("channelType", ParticipantsListFragment.this.channelType);
            intent.putExtra("__communityId", 0);
            startActivity(intent);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getChannelId(User user) {
        for (int i = 0; i < this.userWrapperList.size(); i++) {
            if (this.userWrapperList.valueAt(i) != null && this.userWrapperList.valueAt(i).channelUser != null && Utils.isEqualsNotNull(this.userWrapperList.valueAt(i).channelUser.uid(), user.uid())) {
                return this.userWrapperList.valueAt(i).channelUid;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ChannelUserWrapper getChannelUserWrapper(User user) {
        for (int i = 0; i < this.userWrapperList.size(); i++) {
            if (this.userWrapperList.valueAt(i) != null && this.userWrapperList.valueAt(i).channelUser != null && Utils.isEqualsNotNull(this.userWrapperList.valueAt(i).channelUser.uid(), user.uid())) {
                return this.userWrapperList.valueAt(i);
            }
        }
        return null;
    }

    public ChatThread getThread() {
        ChatThread chatThread = this.thread;
        if (chatThread != null) {
            return chatThread;
        }
        if (getParentFragment() instanceof ChatFragment) {
            return ((ChatFragment) getParentFragment()).getThread();
        }
        return (ChatThread) JacksonUtils.readAs(getStringParam("thread"), ChatThread.class);
    }

    private void addLiveChannelRelatedListener(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.rtcService.addChannelUserWrapperUpdateListener(str, this);
        this.rtcService.addLocalMuteUserListChangeListener(str, this);
    }

    private void removeChannelRelatedListener(String str) {
        RtcService rtcService;
        if (TextUtils.isEmpty(str) || (rtcService = this.rtcService) == null) {
            return;
        }
        rtcService.removeChannelUserWrapperUpdateListener(str, this);
        this.rtcService.removeLocalMuteUserListChangeListener(str, this);
    }

    private void fetchChatThread() {
        String stringParam = getStringParam("id");
        if (TextUtils.isEmpty(stringParam)) {
            return;
        }
        ((ApiService) getService("api")).exec(ApiRequest.builder().chatServer().path("/chat/thread/" + stringParam).build(), new ApiResponseListener<ThreadResponse>(ThreadResponse.class) { // from class: com.narvii.chat.video.overlay.ParticipantsListFragment.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ThreadResponse threadResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) threadResponse);
                ParticipantsListFragment.this.thread = threadResponse.thread;
                MergeAdapter mergeAdapter = ParticipantsListFragment.this.mergeAdapter;
                if (mergeAdapter != null) {
                    mergeAdapter.notifyDataSetChanged();
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
            }
        });
    }
}
