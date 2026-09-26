package com.narvii.chat.detail;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.fragment.app.Fragment;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.chat.global.GlobalChatHelper;
import com.narvii.chat.invite.ChatInviteFragment;
import com.narvii.chat.profile.ChatUserInfoEntryHelper;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.util.ChatRequestHelper;
import com.narvii.chat.util.ThreadNotification;
import com.narvii.community.AffiliationsService;
import com.narvii.config.ConfigService;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.ChatThread;
import com.narvii.model.Community;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.onlinestatus.UserDialog;
import com.narvii.user.picker.MultiUserPickerFragment;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.widget.NicknameView;
import com.narvii.widget.SpinningView;
import com.narvii.widget.UserAvatarLayout;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class ThreadMemberListFragment extends NVListFragment implements NotificationListener {
    static final int ADD_MEMBER = 2;
    AffiliationsService affiliationsService;
    private ChatThread chatThread;
    private Community community;
    GlobalChatHelper globalChatHelper;
    private String threadId;
    private Adapter userListAdapter;

    class Adapter extends NVPagedAdapter<User, MemberListResponse> {
        AccountService accountService;
        private List<User> l;

        public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
            if (p1 == null) {
                return;
            }
            p0.startActivityForResult(p1, p5);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<User> dataType() {
            return User.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected boolean filterDuplicate() {
            return true;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public List<?> list() {
            return this.l;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends MemberListResponse> responseType() {
            return MemberListResponse.class;
        }

        public Adapter() {
            super(ThreadMemberListFragment.this);
            this.accountService = (AccountService) getService("account");
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        public void addUsers(List<User> list) {
            ArrayList<T> arrayList;
            if (list == null || (arrayList = this._list) == 0) {
                return;
            }
            arrayList.addAll(0, list);
            notifyDataSetChanged();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builderPath = new ApiRequest.Builder().path("/chat/thread/" + ThreadMemberListFragment.this.threadId + "/member");
            builderPath.param("type", "default");
            return builderPath.build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            if (!(obj instanceof User)) {
                return null;
            }
            User user = (User) obj;
            User userProfile = this.accountService.getUserProfile();
            View viewCreateView = createView(R.layout.item_thread_member, viewGroup, view);
            boolean zIsEqualsNotNull = Utils.isEqualsNotNull(user.id(), this.accountService.getUserId());
            if (userProfile != null && zIsEqualsNotNull) {
                user.isPremiumItemMembership = userProfile.isPremiumItemMembership;
            }
            ((UserAvatarLayout) viewCreateView.findViewById(R.id.user_avatar_layout)).setUser(user);
            ((NicknameView) viewCreateView.findViewById(R.id.nickname)).setUser(user);
            viewCreateView.findViewById(R.id.chat_member_invited).setVisibility(user.membershipStatus == 2 ? 0 : 4);
            return viewCreateView;
        }

        public void inviteMembers() {
            if (ThreadMemberListFragment.this.chatThread == null) {
                return;
            }
            if (ThreadMemberListFragment.this.chatThread.type == 1 || ThreadMemberListFragment.this.chatThread.type == 2) {
                int iMax = ThreadMemberListFragment.this.chatThread.membersCount;
                if (ThreadMemberListFragment.this.userListAdapter.l != null) {
                    iMax = Math.max(iMax, ThreadMemberListFragment.this.userListAdapter.l.size());
                } else if (ThreadMemberListFragment.this.chatThread.membersSummary != null) {
                    iMax = Math.max(iMax, ThreadMemberListFragment.this.chatThread.membersSummary.size());
                }
                if (iMax >= ThreadMemberListFragment.this.chatThread.membersQuota) {
                    AlertDialog alertDialog = new AlertDialog(getContext());
                    ThreadMemberListFragment threadMemberListFragment = ThreadMemberListFragment.this;
                    alertDialog.setTitle(threadMemberListFragment.getString(R.string.chat_reach_limit, Integer.valueOf(threadMemberListFragment.chatThread.membersQuota)));
                    alertDialog.addButton(android.R.string.ok, 0, (View.OnClickListener) null);
                    alertDialog.show();
                    return;
                }
                Intent intent = FragmentWrapperActivity.intent(MultiUserPickerFragment.class);
                intent.putExtra("showSearchBar", true);
                List<?> list = ThreadMemberListFragment.this.userListAdapter.list();
                if (list == null) {
                    list = ThreadMemberListFragment.this.chatThread.membersSummary;
                }
                intent.putExtra("exists", JacksonUtils.writeAsString(list));
                intent.putExtra("maxMember", ThreadMemberListFragment.this.chatThread.membersQuota);
                intent.putExtra("threadId", ThreadMemberListFragment.this.chatThread.id());
                safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(ThreadMemberListFragment.this, intent, 2);
            }
        }

        public boolean notJoined() {
            int communityId = ((ConfigService) getService("config")).getCommunityId();
            return (communityId == 0 || ThreadMemberListFragment.this.affiliationsService.contains(communityId)) ? false : true;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (obj instanceof User) {
                if (!ThreadMemberListFragment.this.checkCommunityAvailability()) {
                    return true;
                }
                userOptions((User) obj);
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        public void userOptions(final User user) {
            if (user == null || ThreadMemberListFragment.this.chatThread == null) {
                return;
            }
            new ChatUserInfoEntryHelper(this).showUserInfoInChatThread(ThreadMemberListFragment.this.chatThread, user, "Chat Thread More Info", new UserDialog.UserDialogClickListener() { // from class: com.narvii.chat.detail.ThreadMemberListFragment.Adapter.1
                public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivity(p1);
                }

                @Override // com.narvii.onlinestatus.UserDialog.UserDialogClickListener
                public void onClicked(int i10, NVObject nVObject) {
                    if (i10 == 1) {
                        ChatInviteFragment chatInviteFragment = (ChatInviteFragment) ThreadMemberListFragment.this.getFragmentManager().m0("chatInvite");
                        if (chatInviteFragment != null) {
                            chatInviteFragment.startChat(user.uid());
                            return;
                        }
                        return;
                    }
                    if (i10 == 2) {
                        Intent intent = UserProfileFragment.intent(ThreadMemberListFragment.this, user);
                        if (intent == null) {
                            return;
                        }
                        intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Chat Thread More Info");
                        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Adapter.this, intent);
                        return;
                    }
                    if (i10 == 3) {
                        new FlagReportOptionDialog.Builder(ThreadMemberListFragment.this).nvObject(user).miniProfile(true).build().show();
                        return;
                    }
                    if (i10 == 4) {
                        final ProgressDialog progressDialog = new ProgressDialog(Adapter.this.getContext());
                        progressDialog.show();
                        new ChatRequestHelper(ThreadMemberListFragment.this).sendDeleteThreadRequest(user.uid, ThreadMemberListFragment.this.threadId, ThreadMemberListFragment.this.chatThread, new Callback<Object>() { // from class: com.narvii.chat.detail.ThreadMemberListFragment.Adapter.1.1
                            @Override // com.narvii.util.Callback
                            public void call(Object obj) {
                                progressDialog.dismiss();
                            }
                        });
                    } else {
                        if (i10 != 7) {
                            return;
                        }
                        Notification notification = new Notification();
                        ThreadNotification threadNotification = new ThreadNotification();
                        threadNotification.threadId = ThreadMemberListFragment.this.threadId;
                        threadNotification.action = 1;
                        threadNotification.targetObj = user;
                        notification.action = "update";
                        notification.obj = threadNotification;
                        Adapter.this.sendNotification(notification);
                    }
                }
            });
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public View createLoadingItem(ViewGroup viewGroup, View view) {
            int i10;
            View viewCreateView = createView(R.layout.item_loading_thread_all_member, viewGroup, view, "loading");
            SpinningView spinningView = (SpinningView) viewCreateView.findViewById(R.id.spinner);
            if (spinningView != null) {
                if (this.darkTheme) {
                    i10 = -1;
                } else {
                    i10 = -12303292;
                }
                spinningView.setSpinColor(i10);
            }
            return viewCreateView;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            List<? extends User> listRawList = rawList();
            if (listRawList == null) {
                this.l = null;
            } else if (listRawList.isEmpty()) {
                this.l = new ArrayList();
            } else {
                ArrayList arrayList = new ArrayList();
                this.l = arrayList;
                arrayList.addAll(listRawList);
            }
            super.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        final ArrayList<User> listAs;
        if (i10 == 2 && i11 == -1 && intent != null && (listAs = JacksonUtils.readListAs(intent.getStringExtra("users"), User.class)) != null && !listAs.isEmpty()) {
            ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.chat.detail.ThreadMemberListFragment.1
                @Override // com.narvii.util.Callback
                public void call(ApiResponse apiResponse) {
                    if (ThreadMemberListFragment.this.userListAdapter != null) {
                        ThreadMemberListFragment.this.userListAdapter.addUsers(listAs);
                    }
                    Notification notification = new Notification();
                    ThreadNotification threadNotification = new ThreadNotification();
                    threadNotification.threadId = ThreadMemberListFragment.this.threadId;
                    threadNotification.action = 2;
                    threadNotification.targetObj = listAs;
                    notification.action = "update";
                    notification.obj = threadNotification;
                    ThreadMemberListFragment.this.sendNotification(notification);
                }
            };
            ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
            for (User user : listAs) {
                if (!TextUtils.isEmpty(user.uid)) {
                    arrayNodeCreateArrayNode.add(user.uid);
                }
            }
            ((ApiService) getService("api")).exec(ApiRequest.builder().chatServer().post().path("/chat/thread/" + this.threadId + "/member/invite").param("uids", arrayNodeCreateArrayNode).build(), progressDialog.dismissListener);
            progressDialog.show();
        }
        super.onActivityResult(i10, i11, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkCommunityAvailability() {
        Community community = this.community;
        if (community == null) {
            return true;
        }
        return !this.globalChatHelper.tryJoinCommunity(community.id, false, true, true, new GlobalChatHelper.JoinCommunityCallback() { // from class: com.narvii.chat.detail.ThreadMemberListFragment.2
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
            public void onPostJoinCommunity(int i10, boolean z6) {
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            @Nullable
            public ChatThread followingChatToJoin() {
                return ThreadMemberListFragment.this.chatThread;
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public void onCheckLoginFailed() {
                ThreadMemberListFragment.this.ensureLogin(new Intent("joinChannel"));
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public boolean onPreJoinCommunity(int i10) {
                Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                intent.putExtra("id", i10);
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(ThreadMemberListFragment.this, intent);
                return true;
            }
        });
    }

    private void updateTitle() {
        String str;
        if (this.chatThread == null) {
            str = "";
        } else {
            str = "(" + this.chatThread.membersCount + ")";
        }
        setTitle(getString(R.string.community_all_members) + str);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.userListAdapter = new Adapter();
        int iDpToPxInt = Utils.dpToPxInt(getContext(), 4.0f);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, iDpToPxInt, iDpToPxInt);
        divideColumnAdapter.setAdapter(this.userListAdapter, 5);
        return divideColumnAdapter;
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if (notification.action == "update") {
            Object obj = notification.obj;
            if (obj instanceof ChatThread) {
                this.chatThread = (ChatThread) obj;
                updateTitle();
                return;
            }
            if (obj instanceof ThreadNotification) {
                ThreadNotification threadNotification = (ThreadNotification) obj;
                if (threadNotification.action == 1 && (threadNotification.targetObj instanceof User) && this.userListAdapter != null) {
                    Notification notification2 = new Notification();
                    notification2.action = "delete";
                    notification2.obj = (User) threadNotification.targetObj;
                    this.userListAdapter.editList(notification2, false);
                }
            }
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.threadId = getStringParam("threadId");
        this.chatThread = (ChatThread) JacksonUtils.readAs(getStringParam("thread"), ChatThread.class);
        this.community = (Community) JacksonUtils.readAs(getStringParam(RtcService.KEY_COMMUNITY), Community.class);
        this.affiliationsService = (AffiliationsService) getService("affiliations");
        if (bundle == null) {
            ChatInviteFragment chatInviteFragment = new ChatInviteFragment();
            chatInviteFragment.setArguments(new Bundle());
            getFragmentManager().q().e(chatInviteFragment, "chatInvite").k();
        }
        this.globalChatHelper = new GlobalChatHelper(this);
        updateTitle();
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
    }
}
