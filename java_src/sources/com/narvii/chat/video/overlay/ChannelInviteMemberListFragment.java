package com.narvii.chat.video.overlay;

import android.content.Intent;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.chat.ChatActivity;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.detail.MemberListResponse;
import com.narvii.chat.invite.ChatInviteFragment;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.video.fragments.VVChatBackgroundFragment;
import com.narvii.chat.video.utils.LiveChannelInviteHistoryHelper;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.DividerAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.user.picker.MultiUserPickerFragment;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.StatisticHelper;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class ChannelInviteMemberListFragment extends NVListFragment implements View.OnClickListener {
    static final int ADD_MEMBBER = 2;
    static final int INVITE = 1;
    private static final String SUB_FRAGMENT_TAG_BG = "vv_background";
    private InviteNewUSerListAdapter inviteNewUserAdapter;
    private InviteUserListAdapter inviteUserListAdapter;
    SparseArray<ChannelUserWrapper> membersAlreadyInChannel;
    private MergeAdapter mergeAdapter;
    private MyDividerAdapter myDividerAdapter;
    RtcService rtcService;
    HashMap<String, ChannelUserWrapper> membersAlreadyJoinedMapper = new HashMap<>();
    View.OnClickListener finishListener = new View.OnClickListener() { // from class: com.narvii.chat.video.overlay.ChannelInviteMemberListFragment.3
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ChannelInviteMemberListFragment.this.getActivity().finish();
        }
    };

    class InviteNewUSerListAdapter extends AdriftAdapter {
        public InviteNewUSerListAdapter() {
            super(ChannelInviteMemberListFragment.this);
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            return !ChannelInviteMemberListFragment.this.inviteUserListAdapter.isEmpty() ? 1 : 0;
        }

        @Override // com.narvii.list.NVAdapter
        protected boolean onSubviewClick(View view, boolean z6) {
            if (view != null) {
                ChannelInviteMemberListFragment.this.inviteMembers();
            }
            return super.onSubviewClick(view, z6);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.rtc_invite_new_user_button, viewGroup, view);
            viewCreateView.setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }
    }

    class InviteUserListAdapter extends NVPagedAdapter<User, MemberListResponse> implements NotificationListener {
        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<User> dataType() {
            return User.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends MemberListResponse> responseType() {
            return MemberListResponse.class;
        }

        public InviteUserListAdapter() {
            super(ChannelInviteMemberListFragment.this);
        }

        @Override // com.narvii.list.NVPagedAdapter
        public View createLoadMoreItem(ViewGroup viewGroup, View view) {
            return new View(viewGroup.getContext());
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builderPath = new ApiRequest.Builder().path("/chat/thread/" + ChannelInviteMemberListFragment.this.getStringParam("id") + "/member");
            builderPath.param("type", "default");
            return builderPath.build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            ChannelUser channelUser;
            int i10;
            User user = (User) obj;
            View viewCreateView = createView(R.layout.item_member_invite, viewGroup, view);
            ((UserAvatarLayout) viewCreateView.findViewById(R.id.user_avatar_layout)).setUser(user);
            viewCreateView.findViewById(R.id.avatar).setOnClickListener(this.subviewClickListener);
            viewCreateView.findViewById(R.id.nickname).setOnClickListener(this.subviewClickListener);
            NicknameView nicknameView = (NicknameView) viewCreateView.findViewById(R.id.nickname);
            nicknameView.hideRole = true;
            nicknameView.setUser(user);
            viewCreateView.findViewById(R.id.notify).setOnClickListener(this.subviewClickListener);
            ChannelUserWrapper channelUserWrapper = ChannelInviteMemberListFragment.this.membersAlreadyJoinedMapper.get(user.id());
            boolean z6 = (channelUserWrapper == null || (channelUser = channelUserWrapper.channelUser) == null || ((i10 = channelUser.joinRole) != 1 && i10 != 2)) ? false : true;
            boolean zIsInvited = LiveChannelInviteHistoryHelper.Companion.getInstance().isInvited(ChannelInviteMemberListFragment.this.getThread() != null ? ChannelInviteMemberListFragment.this.getThread().id() : null, user.uid());
            if (z6) {
                viewCreateView.findViewById(R.id.notify).setEnabled(false);
                ((TextView) viewCreateView.findViewById(R.id.notify_title)).setText(ChannelInviteMemberListFragment.this.getString(R.string.joined));
                ((TextView) viewCreateView.findViewById(R.id.notify_title)).setTextColor(Integer.MIN_VALUE);
                viewCreateView.findViewById(R.id.notify_indicator).setVisibility(8);
            } else if (zIsInvited) {
                ((TextView) viewCreateView.findViewById(R.id.notify_title)).setText(ChannelInviteMemberListFragment.this.getString(R.string.notified));
                ((TextView) viewCreateView.findViewById(R.id.notify_title)).setTextColor(-1);
                viewCreateView.findViewById(R.id.notify).setEnabled(false);
                viewCreateView.findViewById(R.id.notify_indicator).setVisibility(8);
            } else {
                ((TextView) viewCreateView.findViewById(R.id.notify_title)).setTextColor(-1);
                viewCreateView.findViewById(R.id.notify).setEnabled(true);
                ((TextView) viewCreateView.findViewById(R.id.notify_title)).setText(ChannelInviteMemberListFragment.this.getString(R.string.notify));
                viewCreateView.findViewById(R.id.notify_indicator).setVisibility(0);
            }
            ((ImageView) viewCreateView.findViewById(R.id.notify_indicator)).setImageDrawable(ContextCompat.getDrawable(getContext(), R.drawable.animation_bell));
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (view2 != null) {
                if (view2.getId() == R.id.avatar) {
                    userClicked((User) obj);
                    return true;
                }
                if (view2.getId() == R.id.notify) {
                    User user = (User) obj;
                    if (user == null) {
                        return true;
                    }
                    View viewFindViewById = view2.findViewById(R.id.notify_indicator);
                    if (viewFindViewById instanceof ImageView) {
                        Drawable drawable = ((ImageView) viewFindViewById).getDrawable();
                        if (drawable instanceof AnimationDrawable) {
                            ((AnimationDrawable) drawable).start();
                        }
                    }
                    ChannelInviteMemberListFragment.this.inviteUser(user);
                    return true;
                }
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            if ("new".equals(notification) && (notification.obj instanceof User)) {
                editList(notification, false);
            }
        }

        private void userClicked(User user) {
            Intent intent = UserProfileFragment.intent(this, user);
            if (intent == null) {
                return;
            }
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Invite to VV Chat");
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
        }
    }

    class MyDividerAdapter extends DividerAdapter {
        @Override // com.narvii.list.DividerAdapter
        protected int getDividerLayoutId() {
            return R.layout.item_video_invite_divider;
        }

        public MyDividerAdapter() {
            super(ChannelInviteMemberListFragment.this);
        }
    }

    public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return Boolean.FALSE;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        ArrayList listAs;
        if (i10 == 2 && i11 == -1 && intent != null && (listAs = JacksonUtils.readListAs(intent.getStringExtra("users"), User.class)) != null && !listAs.isEmpty()) {
            addMembers(listAs);
        }
        int i12 = 0;
        if (i10 == 1 && i11 == -1 && intent != null) {
            String userId = ((AccountService) getService("account")).getUserId();
            ArrayList<User> listAs2 = JacksonUtils.readListAs(intent.getStringExtra("users"), User.class);
            ChatThread thread = getThread();
            if (thread != null && thread.membersSummary != null && listAs2 != null && listAs2.size() > 0) {
                ArrayList arrayList = new ArrayList();
                for (User user : thread.membersSummary) {
                    if (!Utils.isEquals(user.uid, userId)) {
                        arrayList.add(user.uid);
                    }
                }
                for (User user2 : listAs2) {
                    if (!Utils.isEquals(user2.uid, userId) && !arrayList.contains(user2.uid)) {
                        arrayList.add(user2.uid);
                    }
                }
                ChatInviteFragment chatInviteFragment = (ChatInviteFragment) getFragmentManager().m0("chatInvite");
                if (chatInviteFragment != null && arrayList.size() > 1) {
                    int size = arrayList.size();
                    chatInviteFragment.askInvite((String[]) arrayList.toArray(new String[0]));
                    chatInviteFragment.onStartListener = new Callback<ChatThread>() { // from class: com.narvii.chat.video.overlay.ChannelInviteMemberListFragment.1
                        @Override // com.narvii.util.Callback
                        public void call(ChatThread chatThread) {
                            ChannelInviteMemberListFragment.this.finish();
                        }
                    };
                    i12 = size;
                }
            }
        }
        if (i12 > 0) {
            ((StatisticsService) getService("statistics")).event("Invite Friends to Join VV Chat").param("Number of members invited", i12).param(EventConstants.CommentPost.TYPE, ChatActivity.statChannelType(getIntParam("channel_type"))).param("Chat Type", StatisticHelper.getChatThreadType((ChatThread) JacksonUtils.readAs(getStringParam("thread"), ChatThread.class), null)).userPropInc("Invite Friends to Join VV Chat Total");
        }
        super.onActivityResult(i10, i11, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void inviteUser(final User user) {
        ((ApiService) getService("api")).exec(new ApiRequest.Builder().path("/chat/thread/" + getStringParam("id") + "/member/" + user.uid() + "/invite-av-chat").post().build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.chat.video.overlay.ChannelInviteMemberListFragment.4
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                NVToast.makeText(ChannelInviteMemberListFragment.this.getContext(), str, 1).show();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                String strId;
                super.onFinish(apiRequest, apiResponse);
                ChannelInviteMemberListFragment.this.mergeAdapter.notifyDataSetChanged();
                LiveChannelInviteHistoryHelper companion = LiveChannelInviteHistoryHelper.Companion.getInstance();
                if (ChannelInviteMemberListFragment.this.getThread() == null) {
                    strId = null;
                } else {
                    strId = ChannelInviteMemberListFragment.this.getThread().id();
                }
                companion.addInviteUserLog(strId, user.uid(), SystemClock.elapsedRealtime());
                Utils.postDelayed(new Runnable() { // from class: com.narvii.chat.video.overlay.ChannelInviteMemberListFragment.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (ChannelInviteMemberListFragment.this.isAdded()) {
                            ChannelInviteMemberListFragment.this.mergeAdapter.notifyDataSetChanged();
                        }
                    }
                }, 300000L);
                NVToast.makeText(ChannelInviteMemberListFragment.this.getContext(), R.string.notification_sent, 1).show();
            }
        });
        ((StatisticsService) getService("statistics")).event("Notify User To Join VV Chat").param(EventConstants.CommentPost.TYPE, ChatActivity.statChannelType(getIntParam("channel_type"))).param("Chat Type", StatisticHelper.getChatThreadType((ChatThread) JacksonUtils.readAs(getStringParam("thread"), ChatThread.class), null)).userPropInc("Notify User To Join VV Chat Total");
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.mergeAdapter = new MergeAdapter(this);
        this.myDividerAdapter = new MyDividerAdapter();
        this.inviteNewUserAdapter = new InviteNewUSerListAdapter();
        InviteUserListAdapter inviteUserListAdapter = new InviteUserListAdapter();
        this.inviteUserListAdapter = inviteUserListAdapter;
        this.myDividerAdapter.setAdapter(inviteUserListAdapter);
        this.mergeAdapter.addAdapter(this.myDividerAdapter, true);
        this.mergeAdapter.addAdapter(this.inviteNewUserAdapter);
        return this.mergeAdapter;
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    public void addMembers(List<User> list) {
        final ChatThread thread = getThread();
        if (thread == null) {
            return;
        }
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        for (User user : list) {
            if (!TextUtils.isEmpty(user.uid)) {
                arrayList2.add(user.uid);
                arrayNodeCreateArrayNode.add(user.uid);
                User user2 = (User) user.m1622clone();
                user2.membershipStatus = 2;
                arrayList.add(user2);
            }
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.chat.video.overlay.ChannelInviteMemberListFragment.2
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                ChatThread chatThread = (ChatThread) thread.m1622clone();
                List<User> list2 = chatThread.membersSummary;
                if (list2 != null) {
                    Iterator<User> it = list2.iterator();
                    while (it.hasNext()) {
                        if (arrayList2.contains(it.next().uid)) {
                            it.remove();
                        }
                    }
                    chatThread.membersSummary.addAll(arrayList);
                }
                Iterator it2 = arrayList.iterator();
                int i10 = 0;
                while (it2.hasNext()) {
                    if (((User) it2.next()).membershipStatus == 1) {
                        i10++;
                    }
                }
                chatThread.membersCount += i10;
                ChannelInviteMemberListFragment.this.sendNotification(new Notification("update", chatThread));
                if (ChannelInviteMemberListFragment.this.inviteUserListAdapter != null) {
                    ChannelInviteMemberListFragment.this.inviteUserListAdapter.addAllFirst(arrayList);
                }
            }
        };
        progressDialog.show();
        ((ApiService) getService("api")).exec(ApiRequest.builder().chatServer().post().path("/chat/thread/" + thread.threadId + "/member/invite").param("uids", arrayNodeCreateArrayNode).build(), progressDialog.dismissListener);
    }

    public ChatThread getThread() {
        if (getParentFragment() instanceof ChatFragment) {
            return ((ChatFragment) getParentFragment()).getThread();
        }
        return (ChatThread) JacksonUtils.readAs(getStringParam("thread"), ChatThread.class);
    }

    public void inviteMembers() {
        ChatThread thread = getThread();
        if (thread == null) {
            return;
        }
        int i10 = thread.type;
        if (i10 == 0 && thread.membershipStatus == 1) {
            Intent intent = FragmentWrapperActivity.intent(MultiUserPickerFragment.class);
            intent.putExtra("exists", JacksonUtils.writeAsString(thread.membersSummary));
            intent.putExtra("showSearchBar", true);
            intent.putExtra("maxMember", 100);
            intent.putExtra("threadId", thread.id());
            intent.putExtra("showSearchBar", true);
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, intent, 1);
            return;
        }
        if (i10 == 1 || i10 == 2) {
            int iMax = thread.membersCount;
            List<User> list = thread.membersSummary;
            if (list != null) {
                iMax = Math.max(iMax, list.size());
            }
            if (iMax >= thread.membersQuota) {
                AlertDialog alertDialog = new AlertDialog(getContext());
                alertDialog.setTitle(getString(R.string.chat_reach_limit, Integer.valueOf(thread.membersQuota)));
                alertDialog.addButton(android.R.string.ok, 0, (View.OnClickListener) null);
                alertDialog.show();
                return;
            }
            Intent intent2 = FragmentWrapperActivity.intent(MultiUserPickerFragment.class);
            intent2.putExtra("exists", JacksonUtils.writeAsString(thread.membersSummary));
            intent2.putExtra("maxMember", thread.membersQuota);
            intent2.putExtra("threadId", thread.id());
            intent2.putExtra("showSearchBar", true);
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, intent2, 2);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.invite_join) {
            inviteMembers();
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        ChannelUser channelUser;
        super.onCreate(bundle);
        setTitle(R.string.invite);
        RtcService rtcService = (RtcService) getService("rtc");
        this.rtcService = rtcService;
        SparseArray<ChannelUserWrapper> sparseArrayClone = rtcService.getMainChannelUserWrapperList().clone();
        this.membersAlreadyInChannel = sparseArrayClone;
        if (sparseArrayClone != null) {
            for (int i10 = 0; i10 < this.membersAlreadyInChannel.size(); i10++) {
                ChannelUserWrapper channelUserWrapperValueAt = this.membersAlreadyInChannel.valueAt(i10);
                if (channelUserWrapperValueAt != null && (channelUser = channelUserWrapperValueAt.channelUser) != null && !TextUtils.isEmpty(channelUser.uid())) {
                    this.membersAlreadyJoinedMapper.put(channelUserWrapperValueAt.channelUser.uid(), channelUserWrapperValueAt);
                }
            }
        }
        if (bundle == null) {
            ChatInviteFragment chatInviteFragment = new ChatInviteFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putString(ExternalPostPreviewFragment.SOURCE, "1-1 > Group Chat");
            chatInviteFragment.setArguments(bundle2);
            getFragmentManager().q().e(chatInviteFragment, "chatInvite").j();
            VVChatBackgroundFragment vVChatBackgroundFragment = new VVChatBackgroundFragment();
            Bundle bundle3 = new Bundle();
            bundle3.putString(VVChatBackgroundFragment.KEY_CHAT_THREAD, JacksonUtils.writeAsString(getThread()));
            vVChatBackgroundFragment.setArguments(bundle3);
            getChildFragmentManager().q().c(R.id.chat_bg_frame, vVChatBackgroundFragment, SUB_FRAGMENT_TAG_BG).j();
            ((StatisticsService) getService("statistics")).event("Tapped Invite to VV Chat").param(EventConstants.CommentPost.TYPE, ChatActivity.statChannelType(getIntParam("channel_type"))).param("Chat Type", StatisticHelper.getChatThreadType((ChatThread) JacksonUtils.readAs(getStringParam("thread"), ChatThread.class), null)).userPropInc("Tapped Invite to VV Chat Total");
        }
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_vvchat_invite_member, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        setEmptyView(R.layout.empty_channel_invite).findViewById(R.id.invite_join).setOnClickListener(this);
    }
}
