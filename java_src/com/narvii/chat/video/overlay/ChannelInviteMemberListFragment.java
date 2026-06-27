package com.narvii.chat.video.overlay;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.detail.MemberListResponse;
import com.narvii.chat.invite.ChatInviteFragment;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.video.fragments.VVChatBackgroundFragment;
import com.narvii.chat.video.utils.LiveChannelInviteHistoryHelper;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.DividerAdapter;
import com.narvii.list.MergeAdapter;
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
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
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

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        ChannelUser channelUser;
        super.onCreate(bundle);
        setTitle(R.string.invite);
        this.rtcService = (RtcService) getService("rtc");
        this.membersAlreadyInChannel = this.rtcService.getMainChannelUserWrapperList().clone();
        if (this.membersAlreadyInChannel != null) {
            for (int i = 0; i < this.membersAlreadyInChannel.size(); i++) {
                ChannelUserWrapper channelUserWrapperValueAt = this.membersAlreadyInChannel.valueAt(i);
                if (channelUserWrapperValueAt != null && (channelUser = channelUserWrapperValueAt.channelUser) != null && !TextUtils.isEmpty(channelUser.uid())) {
                    this.membersAlreadyJoinedMapper.put(channelUserWrapperValueAt.channelUser.uid(), channelUserWrapperValueAt);
                }
            }
        }
        if (bundle == null) {
            ChatInviteFragment chatInviteFragment = new ChatInviteFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putString("Source", "1-1 > Group Chat");
            chatInviteFragment.setArguments(bundle2);
            getFragmentManager().beginTransaction().add(chatInviteFragment, "chatInvite").commit();
            VVChatBackgroundFragment vVChatBackgroundFragment = new VVChatBackgroundFragment();
            Bundle bundle3 = new Bundle();
            bundle3.putString(VVChatBackgroundFragment.KEY_CHAT_THREAD, JacksonUtils.writeAsString(getThread()));
            vVChatBackgroundFragment.setArguments(bundle3);
            getChildFragmentManager().beginTransaction().add(R.id.chat_bg_frame, vVChatBackgroundFragment, SUB_FRAGMENT_TAG_BG).commit();
        }
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return false;
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_vvchat_invite_member, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        setEmptyView(R.layout.empty_channel_invite).findViewById(R.id.invite_join).setOnClickListener(this);
    }

    public void inviteMembers() {
        ChatThread thread = getThread();
        if (thread == null) {
            return;
        }
        if (thread.type == 0 && thread.membershipStatus == 1) {
            Intent intent = FragmentWrapperActivity.intent(MultiUserPickerFragment.class);
            intent.putExtra("exists", JacksonUtils.writeAsString(thread.membersSummary));
            intent.putExtra("showSearchBar", true);
            intent.putExtra("maxMember", 100);
            intent.putExtra("threadId", thread.id());
            intent.putExtra("showSearchBar", true);
            startActivityForResult(intent, 1);
            return;
        }
        int i = thread.type;
        if (i == 1 || i == 2) {
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
            startActivityForResult(intent2, 2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00c6  */
    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onActivityResult(int r9, int r10, android.content.Intent r11) {
        /*
            r8 = this;
            java.lang.String r0 = "users"
            r1 = -1
            r2 = 2
            if (r9 != r2) goto L20
            if (r10 != r1) goto L20
            if (r11 == 0) goto L20
            java.lang.String r2 = r11.getStringExtra(r0)
            java.lang.Class<com.narvii.model.User> r3 = com.narvii.model.User.class
            java.util.ArrayList r2 = com.narvii.util.JacksonUtils.readListAs(r2, r3)
            if (r2 == 0) goto L20
            boolean r3 = r2.isEmpty()
            if (r3 != 0) goto L20
            r8.addMembers(r2)
        L20:
            r2 = 1
            r3 = 0
            if (r9 != r2) goto Lc6
            if (r10 != r1) goto Lc6
            if (r11 == 0) goto Lc6
            java.lang.String r1 = "account"
            java.lang.Object r1 = r8.getService(r1)
            com.narvii.account.AccountService r1 = (com.narvii.account.AccountService) r1
            java.lang.String r1 = r1.getUserId()
            java.lang.String r0 = r11.getStringExtra(r0)
            java.lang.Class<com.narvii.model.User> r4 = com.narvii.model.User.class
            java.util.ArrayList r0 = com.narvii.util.JacksonUtils.readListAs(r0, r4)
            com.narvii.model.ChatThread r4 = r8.getThread()
            if (r4 == 0) goto Lc6
            java.util.List<com.narvii.model.User> r5 = r4.membersSummary
            if (r5 == 0) goto Lc6
            if (r0 == 0) goto Lc6
            int r5 = r0.size()
            if (r5 <= 0) goto Lc6
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
            java.util.List<com.narvii.model.User> r4 = r4.membersSummary
            java.util.Iterator r4 = r4.iterator()
        L5b:
            boolean r6 = r4.hasNext()
            if (r6 == 0) goto L75
            java.lang.Object r6 = r4.next()
            com.narvii.model.User r6 = (com.narvii.model.User) r6
            java.lang.String r7 = r6.uid
            boolean r7 = com.narvii.util.Utils.isEquals(r7, r1)
            if (r7 != 0) goto L5b
            java.lang.String r6 = r6.uid
            r5.add(r6)
            goto L5b
        L75:
            java.util.Iterator r0 = r0.iterator()
        L79:
            boolean r4 = r0.hasNext()
            if (r4 == 0) goto L9b
            java.lang.Object r4 = r0.next()
            com.narvii.model.User r4 = (com.narvii.model.User) r4
            java.lang.String r6 = r4.uid
            boolean r6 = com.narvii.util.Utils.isEquals(r6, r1)
            if (r6 != 0) goto L79
            java.lang.String r6 = r4.uid
            boolean r6 = r5.contains(r6)
            if (r6 != 0) goto L79
            java.lang.String r4 = r4.uid
            r5.add(r4)
            goto L79
        L9b:
            android.support.v4.app.FragmentManager r0 = r8.getFragmentManager()
            java.lang.String r1 = "chatInvite"
            android.support.v4.app.Fragment r0 = r0.findFragmentByTag(r1)
            com.narvii.chat.invite.ChatInviteFragment r0 = (com.narvii.chat.invite.ChatInviteFragment) r0
            if (r0 == 0) goto Lc6
            int r1 = r5.size()
            if (r1 <= r2) goto Lc6
            int r1 = r5.size()
            java.lang.String[] r2 = new java.lang.String[r3]
            java.lang.Object[] r2 = r5.toArray(r2)
            java.lang.String[] r2 = (java.lang.String[]) r2
            r0.askInvite(r2)
            com.narvii.chat.video.overlay.ChannelInviteMemberListFragment$1 r2 = new com.narvii.chat.video.overlay.ChannelInviteMemberListFragment$1
            r2.<init>()
            r0.onStartListener = r2
            goto Lc7
        Lc6:
            r1 = 0
        Lc7:
            super.onActivityResult(r9, r10, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.chat.video.overlay.ChannelInviteMemberListFragment.onActivityResult(int, int, android.content.Intent):void");
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
                User user2 = (User) user.m46clone();
                user2.membershipStatus = 2;
                arrayList.add(user2);
            }
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.chat.video.overlay.ChannelInviteMemberListFragment.2
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                ChatThread chatThread = (ChatThread) thread.m46clone();
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
                int i = 0;
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    if (((User) it2.next()).membershipStatus == 1) {
                        i++;
                    }
                }
                chatThread.membersCount += i;
                ChannelInviteMemberListFragment.this.sendNotification(new Notification("update", chatThread));
                if (ChannelInviteMemberListFragment.this.inviteUserListAdapter != null) {
                    ChannelInviteMemberListFragment.this.inviteUserListAdapter.addAllFirst(arrayList);
                }
            }
        };
        progressDialog.show();
        ((ApiService) getService("api")).exec(ApiRequest.builder().chatServer().post().path("/chat/thread/" + thread.threadId + "/member/invite").param("uids", arrayNodeCreateArrayNode).build(), progressDialog.dismissListener);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.mergeAdapter = new MergeAdapter(this);
        this.myDividerAdapter = new MyDividerAdapter();
        this.inviteNewUserAdapter = new InviteNewUSerListAdapter();
        this.inviteUserListAdapter = new InviteUserListAdapter();
        this.myDividerAdapter.setAdapter(this.inviteUserListAdapter);
        this.mergeAdapter.addAdapter(this.myDividerAdapter, true);
        this.mergeAdapter.addAdapter(this.inviteNewUserAdapter);
        return this.mergeAdapter;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.invite_join) {
            inviteMembers();
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

    class InviteUserListAdapter extends NVPagedAdapter<User, MemberListResponse> implements NotificationListener {
        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        public InviteUserListAdapter() {
            super(ChannelInviteMemberListFragment.this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<User> dataType() {
            return User.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends MemberListResponse> responseType() {
            return MemberListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = new ApiRequest.Builder().path("/chat/thread/" + ChannelInviteMemberListFragment.this.getStringParam("id") + "/member");
            builderPath.param("type", "default");
            return builderPath.build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            ChannelUser channelUser;
            int i;
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
            boolean z = (channelUserWrapper == null || (channelUser = channelUserWrapper.channelUser) == null || ((i = channelUser.joinRole) != 1 && i != 2)) ? false : true;
            boolean zIsInvited = LiveChannelInviteHistoryHelper.Companion.getInstance().isInvited(ChannelInviteMemberListFragment.this.getThread() != null ? ChannelInviteMemberListFragment.this.getThread().id() : null, user.uid());
            if (z) {
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

        @Override // com.narvii.list.NVPagedAdapter
        public View createLoadMoreItem(ViewGroup viewGroup, View view) {
            return new View(viewGroup.getContext());
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
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
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        private void userClicked(User user) {
            Intent intent = UserProfileFragment.intent(this, user);
            if (intent == null) {
                return;
            }
            intent.putExtra("Source", "Invite to VV Chat");
            startActivity(intent);
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            if ("new".equals(notification) && (notification.obj instanceof User)) {
                editList(notification, false);
            }
        }
    }

    class InviteNewUSerListAdapter extends AdriftAdapter {
        public InviteNewUSerListAdapter() {
            super(ChannelInviteMemberListFragment.this);
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            return !ChannelInviteMemberListFragment.this.inviteUserListAdapter.isEmpty() ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.rtc_invite_new_user_button, viewGroup, view);
            viewCreateView.setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter
        protected boolean onSubviewClick(View view, boolean z) {
            if (view != null) {
                ChannelInviteMemberListFragment.this.inviteMembers();
            }
            return super.onSubviewClick(view, z);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void inviteUser(final User user) {
        ((ApiService) getService("api")).exec(new ApiRequest.Builder().path("/chat/thread/" + getStringParam("id") + "/member/" + user.uid() + "/invite-av-chat").post().build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.chat.video.overlay.ChannelInviteMemberListFragment.4
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                ChannelInviteMemberListFragment.this.mergeAdapter.notifyDataSetChanged();
                LiveChannelInviteHistoryHelper.Companion.getInstance().addInviteUserLog(ChannelInviteMemberListFragment.this.getThread() == null ? null : ChannelInviteMemberListFragment.this.getThread().id(), user.uid(), SystemClock.elapsedRealtime());
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

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                NVToast.makeText(ChannelInviteMemberListFragment.this.getContext(), str, 1).show();
            }
        });
    }

    public ChatThread getThread() {
        if (getParentFragment() instanceof ChatFragment) {
            return ((ChatFragment) getParentFragment()).getThread();
        }
        return (ChatThread) JacksonUtils.readAs(getStringParam("thread"), ChatThread.class);
    }
}
