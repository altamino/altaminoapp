package com.narvii.chat.video.overlay;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.ChatActivity;
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
import com.narvii.chat.util.ChatHelperKt;
import com.narvii.chat.video.VVChatMembershipNameLayout;
import com.narvii.chat.video.events.ChannelUserWrapperUpdateListener;
import com.narvii.chat.video.events.LocalMuteUserListChangeListener;
import com.narvii.chat.video.fragments.VVChatBackgroundFragment;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
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
import com.narvii.util.StatisticHelper;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.util.text.TextUtils;
import com.narvii.video.ui.UserStatusData;
import com.narvii.widget.UserAvatarLayout;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
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
            if (!((AccountService) ParticipantsListFragment.this.getService("account")).hasAccount()) {
                Intent intent = new Intent("chat");
                intent.putExtra("uid", user.uid());
                ParticipantsListFragment.this.ensureLogin(intent);
            } else {
                ChatInviteFragment chatInviteFragment = (ChatInviteFragment) ParticipantsListFragment.this.getFragmentManager().m0("chatInvite");
                if (chatInviteFragment != null) {
                    chatInviteFragment.startChat(user.uid());
                }
            }
        }
    };

    class ChannelUserListAdapter extends NVArrayAdapter<User> {
        protected boolean showIndicator() {
            return false;
        }

        public ChannelUserListAdapter(NVContext nVContext, Class<User> cls) {
            super(nVContext, cls);
        }

        private String getHostLabel(ChatThread chatThread, String str) {
            if (ParticipantsListFragment.this.chatHelper.isHost(chatThread, str)) {
                return ParticipantsListFragment.this.getString(R.string.host);
            }
            return ParticipantsListFragment.this.chatHelper.isCoHost(chatThread, str) ? ParticipantsListFragment.this.getString(R.string.co_host) : "";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void showVVChatUserDialog(Object obj) {
            ChannelUser channelUser;
            logClickEvent(obj, ActSemantic.checkDetail);
            ChannelUserWrapper channelUserWrapper = ParticipantsListFragment.this.getChannelUserWrapper((User) obj);
            boolean z6 = (channelUserWrapper == null || (channelUser = channelUserWrapper.channelUser) == null || !channelUser.isHost) ? false : true;
            VVChatUserDialog.Builder builder = new VVChatUserDialog.Builder(ParticipantsListFragment.this, channelUserWrapper);
            builder.configUserDialog(ParticipantsListFragment.this.getStringParam("id"), ParticipantsListFragment.this.channelType, ParticipantsListFragment.this.getThread());
            builder.clickListener(ParticipantsListFragment.this.VVProfileClickListener).muteVideoWhenBlockUser((z6 && ParticipantsListFragment.this.channelType == 5) ? false : true).needVideoFrameWhenFlag(ParticipantsListFragment.this.channelType != 5);
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
                public boolean onPreJoinCommunity(int i10) {
                    return false;
                }

                @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
                public void onCheckLoginFailed() {
                    ChannelUserListAdapter.this.ensureLogin(new Intent("joinChannel"));
                }

                @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
                public void onPostJoinCommunity(int i10, boolean z6) {
                    SignallingChannel mappedSignallingChannel;
                    if (z6 && (mappedSignallingChannel = ParticipantsListFragment.this.rtcService.getMappedSignallingChannel(ParticipantsListFragment.this.getThreadId())) != null && mappedSignallingChannel.joinRole == 3) {
                        ParticipantsListFragment.this.rtcService.updateJoinRole(i10, ParticipantsListFragment.this.getThreadId(), 2, new Callback() { // from class: com.narvii.chat.video.overlay.ParticipantsListFragment.ChannelUserListAdapter.1.1
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

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (!(obj instanceof User)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            showVVChatUserDialog(obj);
            return true;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            boolean z6;
            boolean z10;
            int i11;
            Integer numValueOf;
            Integer numValueOf2;
            boolean z11;
            boolean z12;
            boolean z13;
            int i12;
            UserStatusData userStatusData;
            boolean zIsSrHostMuted;
            UserStatusData userStatusData2;
            ChannelUser channelUser;
            ChannelUser channelUser2;
            View viewCreateView = createView(R.layout.item_channel_user, viewGroup, view);
            User item = getItem(i10);
            if (item == null) {
                return viewCreateView;
            }
            ChannelUserWrapper channelUserWrapper = (ChannelUserWrapper) ParticipantsListFragment.this.uidChannelWrapperMapper.get(item.uid());
            ((UserAvatarLayout) viewCreateView.findViewById(R.id.user_avatar_layout)).setUser(item);
            VVChatMembershipNameLayout vVChatMembershipNameLayout = (VVChatMembershipNameLayout) viewCreateView.findViewById(R.id.membership_nickname_layout);
            vVChatMembershipNameLayout.setUser(item);
            if (channelUserWrapper != null && channelUserWrapper.channelUid == ParticipantsListFragment.this.localUid) {
                vVChatMembershipNameLayout.setText(ParticipantsListFragment.this.getString(R.string.me));
            }
            if (ParticipantsListFragment.this.getThread() != null) {
                int i13 = ParticipantsListFragment.this.getThread().type;
            }
            if (ParticipantsListFragment.this.getThread() != null && ParticipantsListFragment.this.getThread().owner() != null) {
                Utils.isEqualsNotNull(item.uid(), ParticipantsListFragment.this.getThread().owner().uid());
            }
            boolean z14 = true;
            int i14 = 0;
            if (ParticipantsListFragment.this.rtcService.getMainSigChannel() != null && ParticipantsListFragment.this.rtcService.getMainSigChannel().channelType == 5) {
                z6 = true;
            } else {
                z6 = false;
            }
            ParticipantsListFragment participantsListFragment = ParticipantsListFragment.this;
            if (participantsListFragment.chatHelper.isHostOrCoHost(participantsListFragment.getThread(), item.id()) && (ChatHelperKt.isPublicChat(ParticipantsListFragment.this.getThread()) || ChatHelperKt.isGroupChat(ParticipantsListFragment.this.getThread()))) {
                z10 = true;
            } else {
                z10 = false;
            }
            TextView textView = (TextView) viewCreateView.findViewById(R.id.organizer);
            if (z10) {
                i11 = 0;
            } else {
                i11 = 8;
            }
            textView.setVisibility(i11);
            textView.setText(getHostLabel(ParticipantsListFragment.this.getThread(), item.id()));
            String strUid = null;
            if (channelUserWrapper == null) {
                numValueOf = null;
            } else {
                numValueOf = Integer.valueOf(channelUserWrapper.channelUid);
            }
            if (ParticipantsListFragment.this.rtcService.getMainSigChannel() == null) {
                numValueOf2 = null;
            } else {
                numValueOf2 = Integer.valueOf(ParticipantsListFragment.this.rtcService.getMainSigChannel().channelUid);
            }
            boolean zIsEqualsNotNull = Utils.isEqualsNotNull(numValueOf, numValueOf2);
            if (ParticipantsListFragment.this.channelType != 4 && ParticipantsListFragment.this.channelType != 3 && ParticipantsListFragment.this.channelType != 5) {
                z11 = false;
            } else {
                z11 = true;
            }
            Set<String> set = ParticipantsListFragment.this.localMutedUserList;
            if (channelUserWrapper != null && (channelUser2 = channelUserWrapper.channelUser) != null) {
                strUid = channelUser2.uid();
            }
            boolean zContains = set.contains(strUid);
            if (channelUserWrapper != null && (channelUser = channelUserWrapper.channelUser) != null && channelUser.isHost) {
                z12 = true;
            } else {
                z12 = false;
            }
            if (channelUserWrapper != null && (userStatusData2 = channelUserWrapper.userStatus) != null && userStatusData2.isVoiceMuted()) {
                z13 = true;
            } else {
                z13 = false;
            }
            if (z12 && z6) {
                if (zIsEqualsNotNull) {
                    zIsSrHostMuted = ParticipantsListFragment.this.screenRoomService.getLocalMicMuted();
                } else {
                    zIsSrHostMuted = ParticipantsListFragment.this.screenRoomService.isSrHostMuted();
                }
                z13 = zIsSrHostMuted;
            }
            if (channelUserWrapper == null || (userStatusData = channelUserWrapper.userStatus) == null || !userStatusData.isVideoMuted()) {
                z14 = false;
            }
            View viewFindViewById = viewCreateView.findViewById(R.id.local_mute_indicator);
            if (zContains && showIndicator()) {
                i12 = 0;
            } else {
                i12 = 8;
            }
            viewFindViewById.setVisibility(i12);
            viewCreateView.findViewById(R.id.host_label).setVisibility(8);
            ImageView imageView = (ImageView) viewCreateView.findViewById(R.id.status_indicator);
            int i15 = R.drawable.ic_voice_status_normal;
            int i16 = R.drawable.ic_voice_muted;
            if (z11 && (!z6 || !z12)) {
                if (z14) {
                    if (z13) {
                    }
                } else if (!z13) {
                    i16 = R.drawable.ic_video_status_normal;
                }
                i15 = i16;
            } else if (z13) {
                i15 = i16;
            }
            imageView.setImageResource(i15);
            if (!showIndicator() || zContains) {
                i14 = 8;
            }
            imageView.setVisibility(i14);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new DivideColumnImpressionCollector(User.class));
        }
    }

    class FooterAdapter extends NVAdapter {
        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "ViewMoreGuest";
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        public FooterAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return (ParticipantsListFragment.this.guestIdList == null || ParticipantsListFragment.this.guestIdList.size() <= 0) ? 0 : 1;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, @Nullable View view2) {
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
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
            return true;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            int size;
            View viewCreateView = createView(R.layout.fragment_story_vote_footer, viewGroup, view);
            viewCreateView.findViewById(R.id.guest_like_container).setVisibility(4);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.guest_like_text);
            textView.setVisibility(0);
            if (ParticipantsListFragment.this.guestIdList != null) {
                size = ParticipantsListFragment.this.guestIdList.size();
            } else {
                size = 0;
            }
            if (size > 1) {
                textView.setText(getContext().getString(R.string.some_guest_viewers, Integer.valueOf(size)));
            } else {
                textView.setText(R.string.one_guest_viewer);
            }
            viewCreateView.setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }
    }

    class ParticipantHeaderAdapter extends AdriftAdapter {
        public ParticipantHeaderAdapter() {
            super(ParticipantsListFragment.this);
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            return (ParticipantsListFragment.this.participantsAdapter == null || ParticipantsListFragment.this.participantsAdapter.getCount() <= 0) ? 0 : 1;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.paricipants_section_header, viewGroup, view);
            int unused = ParticipantsListFragment.this.channelType;
            ((TextView) viewCreateView.findViewById(R.id.text)).setText(TextUtils.getCountTitle(ParticipantsListFragment.this.getString(R.string.voice_participants), ParticipantsListFragment.this.participantsAdapter.getCount()));
            return viewCreateView;
        }
    }

    class ParticipantsAdapter extends ChannelUserListAdapter {
        private String error;

        @Override // com.narvii.list.NVAdapter
        public String errorMessage() {
            return this.error;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "Speaker";
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i10, Callback<Integer> callback) {
            this.error = null;
            ParticipantsListFragment.this.participantsList = null;
            ParticipantsListFragment.this.viewersList = null;
            sendRequest();
            notifyDataSetChanged();
        }

        @Override // com.narvii.chat.video.overlay.ParticipantsListFragment.ChannelUserListAdapter
        protected boolean showIndicator() {
            return true;
        }

        public ParticipantsAdapter() {
            super(ParticipantsListFragment.this, User.class);
        }

        private void sendRequest() {
            if (ParticipantsListFragment.this.userWrapperList == null) {
                return;
            }
            String string = "";
            for (int i10 = 0; i10 < ParticipantsListFragment.this.userWrapperList.size(); i10++) {
                if (ParticipantsListFragment.this.userWrapperList.valueAt(i10).channelUser != null) {
                    String strUid = ParticipantsListFragment.this.userWrapperList.valueAt(i10).channelUser.uid();
                    if (!android.text.TextUtils.isEmpty(strUid)) {
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
                /* JADX WARN: Code duplicated, block: B:10:0x0047  */
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, UserListResponse userListResponse) throws Exception {
                    boolean z6;
                    super.onFinish(apiRequest, userListResponse);
                    List<User> list = userListResponse.userList;
                    ParticipantsListFragment.this.participantsList = new ArrayList();
                    ParticipantsListFragment.this.viewersList = new ArrayList();
                    for (User user : list) {
                        ParticipantsListFragment participantsListFragment = ParticipantsListFragment.this;
                        ChannelUserWrapper channelUserWrapper = participantsListFragment.userWrapperList.get(participantsListFragment.getChannelId(user));
                        if (channelUserWrapper != null) {
                            z6 = channelUserWrapper.channelUser.joinRole == 1;
                        }
                        if (channelUserWrapper == null || channelUserWrapper.channelUser.joinRole != 3) {
                            if (z6) {
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
                public void onFail(ApiRequest apiRequest, int i11, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i11, list, str, apiResponse, th);
                    ParticipantsAdapter.this.error = str;
                    ParticipantsAdapter.this.notifyDataSetChanged();
                }
            });
        }

        @Override // com.narvii.list.NVArrayAdapter, android.widget.Adapter
        public int getCount() {
            if (ParticipantsListFragment.this.participantsList == null) {
                return 0;
            }
            return ParticipantsListFragment.this.participantsList.size();
        }

        @Override // com.narvii.list.NVArrayAdapter, android.widget.Adapter
        public User getItem(int i10) {
            return (User) ParticipantsListFragment.this.participantsList.get(i10);
        }

        @Override // com.narvii.list.NVArrayAdapter, com.narvii.list.NVAdapter
        public boolean isListShown() {
            return (ParticipantsListFragment.this.participantsList == null && this.error == null) ? false : true;
        }

        @Override // com.narvii.chat.video.overlay.ParticipantsListFragment.ChannelUserListAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            sendRequest();
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
        public int getCount() {
            if (ParticipantsListFragment.this.viewersList == null) {
                return 0;
            }
            return ParticipantsListFragment.this.viewersList.size();
        }

        @Override // com.narvii.list.NVArrayAdapter, android.widget.Adapter
        public User getItem(int i10) {
            return (User) ParticipantsListFragment.this.viewersList.get(i10);
        }
    }

    class ViewersHeaderAdapter extends AdriftAdapter {
        public ViewersHeaderAdapter() {
            super(ParticipantsListFragment.this);
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            return (ParticipantsListFragment.this.viewersAdapter == null || ParticipantsListFragment.this.viewersAdapter.getCount() <= 0) ? 0 : 1;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.paricipants_section_header, viewGroup, view);
            ((TextView) viewCreateView.findViewById(R.id.text)).setText(TextUtils.getCountTitle(ParticipantsListFragment.this.getString(R.string.viewers), ParticipantsListFragment.this.viewersAdapter.getCount()));
            return viewCreateView;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getChannelId(User user) {
        for (int i10 = 0; i10 < this.userWrapperList.size(); i10++) {
            if (this.userWrapperList.valueAt(i10) != null && this.userWrapperList.valueAt(i10).channelUser != null && Utils.isEqualsNotNull(this.userWrapperList.valueAt(i10).channelUser.uid(), user.uid())) {
                return this.userWrapperList.valueAt(i10).channelUid;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ChannelUserWrapper getChannelUserWrapper(User user) {
        for (int i10 = 0; i10 < this.userWrapperList.size(); i10++) {
            if (this.userWrapperList.valueAt(i10) != null && this.userWrapperList.valueAt(i10).channelUser != null && Utils.isEqualsNotNull(this.userWrapperList.valueAt(i10).channelUser.uid(), user.uid())) {
                return this.userWrapperList.valueAt(i10);
            }
        }
        return null;
    }

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951635;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @androidx.annotation.Nullable
    public String getPageName() {
        return "live_chat_participants";
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return Boolean.FALSE;
    }

    private void buildUidChannelMapper() {
        if (this.userWrapperList == null) {
            return;
        }
        for (int i10 = 0; i10 < this.userWrapperList.size(); i10++) {
            ChannelUser channelUser = this.userWrapperList.valueAt(i10).channelUser;
            if (channelUser != null && !android.text.TextUtils.isEmpty(channelUser.uid())) {
                this.uidChannelWrapperMapper.put(channelUser.uid(), this.userWrapperList.valueAt(i10));
            }
        }
    }

    private void configAttachFragment() {
        ChatInviteFragment chatInviteFragment = new ChatInviteFragment();
        Bundle bundle = new Bundle();
        bundle.putString(ExternalPostPreviewFragment.SOURCE, "Participants");
        chatInviteFragment.setArguments(bundle);
        getFragmentManager().q().e(chatInviteFragment, "chatInvite").j();
        VVChatBackgroundFragment vVChatBackgroundFragment = new VVChatBackgroundFragment();
        Bundle bundle2 = new Bundle();
        bundle2.putString(VVChatBackgroundFragment.KEY_CHAT_THREAD, JacksonUtils.writeAsString(getThread()));
        vVChatBackgroundFragment.setArguments(bundle2);
        getChildFragmentManager().q().c(R.id.chat_bg_frame, vVChatBackgroundFragment, SUB_FRAGMENT_TAG_BG).j();
    }

    private void fetchChatThread() {
        String stringParam = getStringParam("id");
        if (android.text.TextUtils.isEmpty(stringParam)) {
            return;
        }
        ((ApiService) getService("api")).exec(ApiRequest.builder().chatServer().path("/chat/thread/" + stringParam).build(), new ApiResponseListener<ThreadResponse>(ThreadResponse.class) { // from class: com.narvii.chat.video.overlay.ParticipantsListFragment.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ThreadResponse threadResponse) throws Exception {
                super.onFinish(apiRequest, threadResponse);
                ParticipantsListFragment.this.thread = threadResponse.thread;
                MergeAdapter mergeAdapter = ParticipantsListFragment.this.mergeAdapter;
                if (mergeAdapter != null) {
                    mergeAdapter.notifyDataSetChanged();
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
            }
        });
    }

    private void initActionBarRightButton() {
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
        this.inviteMemberView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.video.overlay.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f2143a.lambda$initActionBarRightButton$0(view);
            }
        });
    }

    private void openChannelInvitePage() {
        Intent intent = FragmentWrapperActivity.intent(ChannelInviteMemberListFragment.class);
        intent.putExtra("channel_type", this.channelType);
        intent.putExtra("thread", JacksonUtils.writeAsString(getThread()));
        intent.putExtra("id", getStringParam("id"));
        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(getContext(), intent);
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

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    public ChatThread getThread() {
        ChatThread chatThread = this.thread;
        if (chatThread != null) {
            return chatThread;
        }
        return getParentFragment() instanceof ChatFragment ? ((ChatFragment) getParentFragment()).getThread() : (ChatThread) JacksonUtils.readAs(getStringParam("thread"), ChatThread.class);
    }

    @Override // com.narvii.chat.video.events.LocalMuteUserListChangeListener
    public void onLocalMuteUserListChanged(@NotNull SignallingChannel signallingChannel, @NotNull Set<String> set) {
        this.localMutedUserList = this.rtcService.getLocalMutedUserList();
        MergeAdapter mergeAdapter = this.mergeAdapter;
        if (mergeAdapter != null) {
            mergeAdapter.notifyDataSetChanged();
        }
    }

    private void addLiveChannelRelatedListener(String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            return;
        }
        this.rtcService.addChannelUserWrapperUpdateListener(str, this);
        this.rtcService.addLocalMuteUserListChangeListener(str, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getThreadId() {
        return getThread().id();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initActionBarRightButton$0(View view) {
        openChannelInvitePage();
    }

    private void removeChannelRelatedListener(String str) {
        RtcService rtcService;
        if (!android.text.TextUtils.isEmpty(str) && (rtcService = this.rtcService) != null) {
            rtcService.removeChannelUserWrapperUpdateListener(str, this);
            this.rtcService.removeLocalMuteUserListChangeListener(str, this);
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        fetchChatThread();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
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
            for (int i10 = 0; i10 < this.userWrapperList.size(); i10++) {
                ChannelUser channelUser = this.userWrapperList.valueAt(i10).channelUser;
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
            ((StatisticsService) getService("statistics")).event("VV Chat Participants").param(EventConstants.CommentPost.TYPE, ChatActivity.statChannelType(getIntParam(KEY_CHANNEL_TYPE))).param("Chat Type", StatisticHelper.getChatThreadType((ChatThread) JacksonUtils.readAs(getStringParam("thread"), ChatThread.class), null)).userPropInc("VV Chat Participants Total");
        }
        initActionBarRightButton();
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_participant_list, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        removeChannelRelatedListener(getStringParam("id"));
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (listView != null) {
            listView.setDivider(null);
        }
    }

    @Override // com.narvii.chat.video.events.ChannelUserWrapperUpdateListener
    public void onUserWrapperStatusChanged(@NotNull SignallingChannel signallingChannel, @NotNull ChannelUserWrapper channelUserWrapper) {
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

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
    }
}
