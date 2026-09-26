package com.narvii.chat.thread;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.ComScoreSectionDispatcher;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorApplication;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.core.ThreadUpdateObject;
import com.narvii.chat.global.chat.ChatBatchDeletionFragment;
import com.narvii.chat.hangout.HangoutListFragment;
import com.narvii.chat.invite.ChatInviteFragment;
import com.narvii.chat.service.MyChatListObserver;
import com.narvii.chat.service.MyChatListService;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.util.ChatRequestHelper;
import com.narvii.chat.util.IMyChatList;
import com.narvii.chat.util.MyChatListDelegate;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.config.ConfigService;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVArrayAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.list.NVSectionHeaderAdapter;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.logging.ActSemantic;
import com.narvii.members.PeopleListFragment;
import com.narvii.model.ChatMessage;
import com.narvii.model.ChatThread;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserListResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.notice.NotificationTurnedOffWarningFragment;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.onlinestatus.UserDialog;
import com.narvii.prefs.UserProfilePrivilegeFragment;
import com.narvii.prompt.MembershipTrialPromptHelper;
import com.narvii.pushservice.PushPayload;
import com.narvii.pushservice.PushService;
import com.narvii.user.favorite.AddFavoriteUserFragment;
import com.narvii.user.favorite.FavoriteUserHorizontalAdapter;
import com.narvii.user.favorite.FavoriteUserListFragment;
import com.narvii.user.favorite.NVRecycleViewWrapAdapter;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Callback;
import com.narvii.util.FilterHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.StatisticHelper;
import com.narvii.util.Utils;
import com.narvii.util.crashlytics.OomHelper;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.widget.HorizontalUnbrokenLayout;
import com.narvii.widget.TintButton;
import com.narvii.widget.UserAvatarLayout;
import com.narvii.widget.recycleview.NVRecycleAdapter;
import com.safedk.android.utils.Logger;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public class MyChatsListFragment extends NVListFragment implements MyChatListObserver {
    private static final int REQUEST_CODE_ADD_USER = 100;
    private static final String TAG_SUB_FRAGMENT_INVITE = "chatInvite";
    private static final String TAG_SUB_FRAGMENT_NOTIFICATION_WARNING = "notification";
    private static final String TAG_SUB_FRAGMENT_ONLINE_MEMBER = "onlineMember";
    private AccountService accountService;
    AllMembersAdapter allMembersAdapter;
    private ChatHelper chatHelper;
    private ChatRequestHelper chatRequestHelper;
    private ChatService chatService;
    ChatTitleAdapter chatTitle;
    private CommunityConfigHelper communityConfigHelper;
    private ConfigService configService;
    FavoriteUserAdapter favoriteUserAdapter;
    FavoriteUserWrapperAdapter favoriteUserWrappedAdapter;
    private boolean isPublicChatEnable;
    private View myChatEmptyView;
    MyChatListAdapter myChatListAdapter;
    private MyChatListService myChatListService;
    private MyChatManagePopUp myChatManagePopUp;
    private int ndcId;
    private PushService.PushListener pushListener = new PushService.PushListener() { // from class: com.narvii.chat.thread.MyChatsListFragment.5
        @Override // com.narvii.pushservice.PushService.PushListener
        public void onPushPayload(PushPayload pushPayload) {
        }

        @Override // com.narvii.pushservice.PushService.PushListener
        public boolean onInterceptNotification(PushPayload pushPayload) {
            return pushPayload.ndcId == MyChatsListFragment.this.configService.getCommunityId() && MyChatsListFragment.this.resumed && pushPayload.isChat() && !MyChatsListFragment.this.isAnnouncementMsg(pushPayload);
        }
    };
    private PushService pushService;
    private boolean resumed;
    SearchAdapter searchAdapter;
    SharedPreferences sharedPreferences;

    class AllMembersAdapter extends AdriftAdapter {
        private int memberCount;
        NVArrayAdapter<User> userNVArrayAdapter;
        List<User> users;

        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        public AllMembersAdapter() {
            super(MyChatsListFragment.this);
            this.userNVArrayAdapter = new NVArrayAdapter<User>(MyChatsListFragment.this, User.class) { // from class: com.narvii.chat.thread.MyChatsListFragment.AllMembersAdapter.1
                @Override // android.widget.Adapter
                public View getView(int i10, View view, ViewGroup viewGroup) {
                    User user;
                    View viewCreateView = createView(R.layout.item_all_member_cell, viewGroup, view);
                    List<User> list = AllMembersAdapter.this.users;
                    if (list == null) {
                        user = null;
                    } else {
                        user = list.get(i10);
                    }
                    UserAvatarLayout userAvatarLayout = (UserAvatarLayout) viewCreateView.findViewById(R.id.user_avatar_layout);
                    userAvatarLayout.disableFullAvatarFrame = true;
                    userAvatarLayout.setUser(user);
                    return viewCreateView;
                }
            };
        }

        private void goToMemberListPage() {
            Intent intent = FragmentWrapperActivity.intent(PeopleListFragment.class);
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, "My Chats");
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
        }

        private boolean isOldUserList() {
            NVArrayAdapter<User> nVArrayAdapter = this.userNVArrayAdapter;
            if (nVArrayAdapter == null || nVArrayAdapter.getList() == null || this.users == null || this.userNVArrayAdapter.getList().size() != this.users.size()) {
                return false;
            }
            for (int i10 = 0; i10 < this.userNVArrayAdapter.getList().size(); i10++) {
                if (!Utils.isEqualsNotNull(this.userNVArrayAdapter.getList().get(i10).uid(), this.users.get(i10).uid())) {
                    return false;
                }
            }
            return true;
        }

        private void sendRequest() {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/user-profile");
            builderPath.param("type", "summary");
            builderPath.param("start", 0);
            builderPath.param("size", 5);
            ((ApiService) getService("api")).exec(builderPath.build(), new ApiResponseListener<UserListResponse>(UserListResponse.class) { // from class: com.narvii.chat.thread.MyChatsListFragment.AllMembersAdapter.2
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, UserListResponse userListResponse) throws Exception {
                    super.onFinish(apiRequest, userListResponse);
                    AllMembersAdapter allMembersAdapter = AllMembersAdapter.this;
                    allMembersAdapter.users = userListResponse == null ? null : new FilterHelper(MyChatsListFragment.this).filter(userListResponse.userList);
                    AllMembersAdapter.this.memberCount = userListResponse == null ? 0 : userListResponse.userProfileCount;
                    AllMembersAdapter.this.notifyDataSetChanged();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i10, list, str, apiResponse, th);
                }
            });
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            String strValueOf;
            String str;
            View viewCreateView = createView(R.layout.cell_all_members_layout, viewGroup, view);
            try {
                strValueOf = NumberFormat.getNumberInstance(Locale.US).format(this.memberCount);
            } catch (Exception unused) {
                strValueOf = String.valueOf(this.memberCount);
            }
            StringBuilder sb = new StringBuilder();
            sb.append(MyChatsListFragment.this.getString(R.string.community_all_members));
            if (this.memberCount == 0) {
                str = "";
            } else {
                str = " (" + strValueOf + ")";
            }
            sb.append(str);
            ((TextView) viewCreateView.findViewById(R.id.title)).setText(sb.toString());
            HorizontalUnbrokenLayout horizontalUnbrokenLayout = (HorizontalUnbrokenLayout) viewCreateView.findViewById(R.id.all_member_container);
            if (!isOldUserList()) {
                this.userNVArrayAdapter.clear();
                List<User> list = this.users;
                if (list != null) {
                    this.userNVArrayAdapter.addAll(list);
                }
                if (horizontalUnbrokenLayout != null) {
                    horizontalUnbrokenLayout.setAdapter(this.userNVArrayAdapter, this.memberCount);
                    horizontalUnbrokenLayout.setOnClickListener(this.subviewClickListener);
                }
            }
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            sendRequest();
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            goToMemberListPage();
            return true;
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i10, Callback<Integer> callback) {
            refreshMonitorStart(i10, callback);
            sendRequest();
            refreshMonitorEnd();
        }
    }

    private class ChatTitleAdapter extends NVSectionHeaderAdapter {
        @Override // com.narvii.list.NVSectionHeaderAdapter, android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // com.narvii.list.NVSectionHeaderAdapter
        protected int layoutId() {
            return R.layout.item_section_my_chat_title;
        }

        public ChatTitleAdapter() {
            super(MyChatsListFragment.this);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, @Nullable View view2) {
            if (view2 != null && view2.getId() == R.id.setting) {
                MyChatsListFragment.this.myChatManagePopUp = new MyChatManagePopUp(view2, true) { // from class: com.narvii.chat.thread.MyChatsListFragment.ChatTitleAdapter.1
                    public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
                        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
                        if (p1 == null) {
                            return;
                        }
                        p0.startActivity(p1);
                    }

                    @Override // com.narvii.chat.thread.MyChatManagePopUp
                    public boolean isManageEnabled() {
                        MyChatListAdapter myChatListAdapter = MyChatsListFragment.this.myChatListAdapter;
                        return (myChatListAdapter == null || myChatListAdapter.isListEmpty()) ? false : true;
                    }

                    @Override // com.narvii.chat.thread.MyChatManagePopUp
                    public void onClickInbound() {
                        Intent intent = FragmentWrapperActivity.intent(UserProfilePrivilegeFragment.class);
                        intent.putExtra("title", MyChatsListFragment.this.getString(R.string.allow_inbound_chat_requests));
                        intent.putExtra("privilegeKey", User.CHAT);
                        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(ChatTitleAdapter.this, intent);
                    }

                    @Override // com.narvii.chat.thread.MyChatManagePopUp
                    public void onClickManage() {
                        Intent intent = FragmentWrapperActivity.intent(ChatBatchDeletionFragment.class);
                        intent.putExtra(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, MyChatsListFragment.this.ndcId);
                        intent.putExtra("__communityId", MyChatsListFragment.this.ndcId);
                        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(ChatTitleAdapter.this, intent);
                    }
                };
                MyChatsListFragment.this.myChatManagePopUp.show();
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        @Override // com.narvii.list.NVSectionHeaderAdapter, android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View view2 = super.getView(i10, view, viewGroup);
            view2.setBackgroundColor(0);
            View viewFindViewById = view2.findViewById(R.id.setting);
            if (viewFindViewById != null) {
                viewFindViewById.setOnClickListener(this.subviewClickListener);
            }
            return view2;
        }
    }

    class FavoriteUserAdapter extends FavoriteUserHorizontalAdapter {
        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClicked$0(User user, UserDialog userDialog, int i10, NVObject nVObject) {
            if (i10 == 2) {
                Intent intent = UserProfileFragment.intent(this.context, user);
                if (intent == null) {
                    return;
                }
                intent.putExtra(ExternalPostPreviewFragment.SOURCE, userDialog.source);
                safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.context, intent);
                return;
            }
            if (i10 == 1) {
                startChat(user.uid);
            } else if (i10 == 3) {
                new FlagReportOptionDialog.Builder(this.context).nvObject(user).build().show();
            }
        }

        public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // com.narvii.user.favorite.FavoriteUserHorizontalAdapter, com.narvii.widget.recycleview.NVRecycleAdapter
        protected boolean showListEnd(int i10) {
            return true;
        }

        public FavoriteUserAdapter() {
            super(MyChatsListFragment.this);
        }

        @Override // com.narvii.widget.recycleview.NVRecycleAdapter
        public String errorMessage() {
            MyChatListAdapter myChatListAdapter = MyChatsListFragment.this.myChatListAdapter;
            return myChatListAdapter != null ? myChatListAdapter.errorMessage() : super.errorMessage();
        }

        @Override // com.narvii.widget.recycleview.NVRecycleAdapter
        protected List<User> filterResponseList(List<User> list) {
            return new FilterHelper(MyChatsListFragment.this).filter(list);
        }

        @Override // com.narvii.widget.recycleview.NVRecycleAdapter
        public boolean isEmpty() {
            MyChatListAdapter myChatListAdapter = MyChatsListFragment.this.myChatListAdapter;
            return myChatListAdapter != null ? myChatListAdapter.isEmpty() : super.isEmpty();
        }

        public void startChat(String str) {
            if (!((AccountService) this.context.getService("account")).hasAccount()) {
                Intent intent = new Intent("chat");
                intent.putExtra("uid", str);
                MyChatsListFragment.this.ensureLogin(intent);
            } else {
                ChatInviteFragment chatInviteFragment = (ChatInviteFragment) MyChatsListFragment.this.getFragmentManager().m0(MyChatsListFragment.TAG_SUB_FRAGMENT_INVITE);
                if (chatInviteFragment != null) {
                    chatInviteFragment.startChat(str);
                }
            }
        }

        @Override // com.narvii.widget.recycleview.NVRecycleAdapter
        protected void onBindEndViewHolder(RecyclerView.ViewHolder viewHolder, int i10) {
            super.onBindEndViewHolder(viewHolder, i10);
            View view = viewHolder.itemView;
            TintButton tintButton = (TintButton) view.findViewById(R.id.button);
            if (tintButton == null) {
                return;
            }
            tintButton.setImageDrawable(MyChatsListFragment.this.getResources().getDrawable(R.drawable.ic_plus_white));
            tintButton.setBackgroundDrawable(MyChatsListFragment.this.getResources().getDrawable(R.drawable.button_over_empty_white));
            tintButton.setEnabled(true);
            view.setVisibility(0);
        }

        @Override // com.narvii.widget.recycleview.NVRecycleAdapter
        protected void onEndItemClicked() {
            super.onEndItemClicked();
            Intent intent = FragmentWrapperActivity.intent(AddFavoriteUserFragment.class);
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, "My Chats");
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(MyChatsListFragment.this, intent);
        }

        @Override // com.narvii.widget.recycleview.NVRecycleAdapter, com.narvii.widget.recycleview.ItemClickSupport.OnItemClickListener
        public void onItemClicked(RecyclerView recyclerView, int i10, View view) {
            super.onItemClicked(recyclerView, i10, view);
            Object itemAt = getItemAt(i10);
            if (itemAt instanceof User) {
                final User user = (User) itemAt;
                if (user.status == 3) {
                    AlertDialog alertDialog = new AlertDialog(MyChatsListFragment.this.getContext());
                    alertDialog.setTitle(MyChatsListFragment.this.getString(R.string.favorite_user_not_available));
                    alertDialog.addButton(android.R.string.ok, 4, (View.OnClickListener) null);
                    alertDialog.show();
                    return;
                }
                if (!MyChatsListFragment.this.communityConfigHelper.isChatEnabled()) {
                    Intent intent = UserProfileFragment.intent(this.context, user);
                    if (intent == null) {
                        return;
                    }
                    intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Favorite Members");
                    safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.context, intent);
                    return;
                }
                final UserDialog userDialog = new UserDialog(this.context.getContext(), user);
                userDialog.source = "Favorite Members";
                userDialog.setOnClickListener(new UserDialog.UserDialogClickListener() { // from class: com.narvii.chat.thread.c
                    @Override // com.narvii.onlinestatus.UserDialog.UserDialogClickListener
                    public final void onClicked(int i11, NVObject nVObject) {
                        this.f2068a.lambda$onItemClicked$0(user, userDialog, i11, nVObject);
                    }
                });
                userDialog.show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class FavoriteUserWrapperAdapter extends NVRecycleViewWrapAdapter implements NotificationListener {
        private int cellCountLimit;

        public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
            if (p1 == null) {
                return;
            }
            p0.startActivityForResult(p1, p5);
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            return false;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (view2 != null && view2.getId() == R.id.manage) {
                ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
                actionSheetDialog.addItem(R.string.my_favorite_members, 0);
                final View viewFindViewById = view.findViewById(R.id.recycle_layout);
                final boolean z6 = viewFindViewById.getVisibility() == 0;
                actionSheetDialog.addItem(z6 ? R.string.hide : R.string.unhide, 0);
                actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.chat.thread.d
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i11) {
                        this.f2071a.lambda$onItemClick$0(viewFindViewById, z6, dialogInterface, i11);
                    }
                });
                actionSheetDialog.show();
            } else if (view2 != null && view2.getId() == R.id.goto_arrow_layout) {
                safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(MyChatsListFragment.this, FragmentWrapperActivity.intent(FavoriteUserListFragment.class), 100);
                return true;
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        @Override // com.narvii.user.favorite.NVRecycleViewWrapAdapter
        protected int recycleViewContainerLayoutId() {
            return R.layout.favorite_user_layout;
        }

        public FavoriteUserWrapperAdapter() {
            super(MyChatsListFragment.this, null);
            this.cellCountLimit = (int) (Utils.getScreenSize(MyChatsListFragment.this.getActivity()).x / Utils.dpToPx(getContext(), 65.0f));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$0(View view, boolean z6, DialogInterface dialogInterface, int i10) {
            if (i10 == 0) {
                safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(MyChatsListFragment.this, FragmentWrapperActivity.intent(FavoriteUserListFragment.class), 100);
                return;
            }
            if (i10 != 1) {
                return;
            }
            view.setVisibility(z6 ? 8 : 0);
            MyChatsListFragment.this.sharedPreferences.edit().putBoolean("hide_fav_user", z6).apply();
            if (z6) {
                ((StatisticsService) getService("statistics")).event("Hide Favorite Members").source("My Chats");
            }
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            NVRecycleAdapter nVRecycleAdapter;
            if (notification.action != FavoriteUserListFragment.ACTION_ADD_FAVORITE_USER || (nVRecycleAdapter = this.wrapped) == null || Utils.indexOfId(nVRecycleAdapter.list(), notification.id) >= 0) {
                return;
            }
            this.wrapped.insertItem(0, (User) notification.obj);
        }

        @Override // com.narvii.user.favorite.NVRecycleViewWrapAdapter, android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            int i11;
            View view2 = super.getView(i10, view, viewGroup);
            view2.findViewById(R.id.manage).setOnClickListener(this.subviewClickListener);
            view2.findViewById(R.id.goto_arrow_layout).setOnClickListener(this.subviewClickListener);
            int i12 = 8;
            if (MyChatsListFragment.this.favoriteUserAdapter != null) {
                View viewFindViewById = view2.findViewById(R.id.goto_arrow_layout);
                int itemCount = MyChatsListFragment.this.favoriteUserAdapter.getItemCount();
                int i13 = this.cellCountLimit;
                if (itemCount > i13 && i13 > 0) {
                    i11 = 0;
                } else {
                    i11 = 8;
                }
                viewFindViewById.setVisibility(i11);
            }
            View viewFindViewById2 = view2.findViewById(R.id.recycle_layout);
            if (!MyChatsListFragment.this.sharedPreferences.getBoolean("hide_fav_user", false)) {
                i12 = 0;
            }
            viewFindViewById2.setVisibility(i12);
            return view2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class MyChatListAdapter extends NVAdapter implements IMyChatList {
        private static final int THREAD_VIEW_TYPE_GROUP = 1;
        private static final int THREAD_VIEW_TYPE_PUBLIC = 2;
        private static final int THREAD_VIEW_TYPE_SINGLE = 0;
        MyChatListDelegate chatListDelegate;
        User curUser;

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // com.narvii.chat.util.IMyChatList
        @Nullable
        public ChatThread getMappedThreadFromList(@Nullable String str) {
            return null;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 6;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return false;
        }

        @Override // com.narvii.chat.util.IMyChatList
        public void onThreadUpdateInfo(@NotNull ThreadUpdateObject threadUpdateObject) {
        }

        @Override // com.narvii.chat.util.IMyChatList
        public void onUnknownThreadMessageCome(@NotNull ChatMessage chatMessage) {
        }

        @Override // com.narvii.chat.util.IMyChatList
        public void refreshList() {
        }

        public MyChatListAdapter() {
            super(MyChatsListFragment.this);
            this.curUser = MyChatsListFragment.this.accountService.getUserProfile();
            this.chatListDelegate = new MyChatListDelegate(this, this, false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onLongClick$0(int[] iArr, Object obj, DialogInterface dialogInterface, int i10) {
            switch (iArr[i10]) {
                case R.string.chat_mark_as_read /* 2131886689 */:
                    MyChatsListFragment.this.markRead((ChatThread) obj);
                    break;
                case R.string.chat_mark_as_unread /* 2131886690 */:
                    MyChatsListFragment.this.markUnread((ChatThread) obj);
                    break;
                case R.string.chat_pin_fast /* 2131886715 */:
                case R.string.chat_unpin_fast /* 2131886729 */:
                    MyChatsListFragment.this.processPin((ChatThread) obj);
                    break;
                case R.string.delete /* 2131887008 */:
                    MyChatsListFragment.this.delete((ChatThread) obj);
                    break;
            }
        }

        @Override // com.narvii.list.NVAdapter
        public String errorMessage() {
            return MyChatsListFragment.this.myChatListService.errorMessage();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (!MyChatsListFragment.this.accountService.hasAccount()) {
                return 0;
            }
            List<ChatThread> list = MyChatsListFragment.this.myChatListService.list();
            return (!MyChatsListFragment.this.myChatListService.isEnd() || list.size() == 0) ? list.size() + 1 : list.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            List<ChatThread> list = MyChatsListFragment.this.myChatListService.list();
            if (i10 < list.size()) {
                return list.get(i10);
            }
            if (TextUtils.isEmpty(MyChatsListFragment.this.myChatListService.getErrorMessageValue())) {
                return MyChatsListFragment.this.myChatListService.isEnd() ? NVPagedAdapter.LIST_END : NVPagedAdapter.LOADING;
            }
            return NVPagedAdapter.ERROR;
        }

        public boolean isListEmpty() {
            return !MyChatsListFragment.this.accountService.hasAccount() || MyChatsListFragment.this.myChatListService.list().size() == 0;
        }

        @Override // com.narvii.list.NVAdapter
        public boolean isListShown() {
            return MyChatsListFragment.this.myChatListService.isEnd() || MyChatsListFragment.this.myChatListService.list().size() > 0;
        }

        @Override // com.narvii.list.NVAdapter
        public void onErrorRetry() {
            MyChatsListFragment.this.myChatListService.errorRetry();
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, @Nullable View view2) {
            if (obj instanceof ChatThread) {
                this.chatListDelegate.openMyChat((ChatThread) obj, null, "My chats");
                return true;
            }
            if (view2 != null && view2.getId() == R.id.explorer_public_chat) {
                MyChatsListFragment.this.goToPublicChat();
                return true;
            }
            if (obj != NVPagedAdapter.ERROR) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            MyChatsListFragment.this.myChatListService.loadNextPage(false);
            return true;
        }

        @Override // com.narvii.list.NVAdapter
        public boolean onLongClick(ListAdapter listAdapter, int i10, final Object obj, View view, View view2) {
            if (!(obj instanceof ChatThread)) {
                return super.onLongClick(listAdapter, i10, obj, view, view2);
            }
            ChatThread chatThread = (ChatThread) obj;
            boolean zIsThreadUnread = new ChatHelper(getContext()).isThreadUnread(chatThread);
            final int[] iArr = new int[3];
            ArrayList arrayList = new ArrayList();
            if (zIsThreadUnread) {
                iArr[0] = R.string.chat_mark_as_read;
                arrayList.add(MyChatsListFragment.this.getString(R.string.chat_mark_as_read));
            } else {
                iArr[0] = R.string.chat_mark_as_unread;
                arrayList.add(MyChatsListFragment.this.getString(R.string.chat_mark_as_unread));
            }
            boolean z6 = chatThread.isPinned;
            int i11 = R.string.chat_pin_fast;
            iArr[1] = z6 ? R.string.chat_unpin_fast : R.string.chat_pin_fast;
            MyChatsListFragment myChatsListFragment = MyChatsListFragment.this;
            if (z6) {
                i11 = R.string.chat_unpin_fast;
            }
            arrayList.add(myChatsListFragment.getString(i11));
            iArr[2] = R.string.delete;
            arrayList.add(MyChatsListFragment.this.getString(R.string.delete));
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(getContext());
            builder.setItems((CharSequence[]) arrayList.toArray(new CharSequence[0]), new DialogInterface.OnClickListener() { // from class: com.narvii.chat.thread.e
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i12) {
                    this.f2074a.lambda$onLongClick$0(iArr, obj, dialogInterface, i12);
                }
            });
            builder.show();
            return true;
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i10, Callback<Integer> callback) {
            MyChatsListFragment.this.myChatListService.refresh(i10, callback);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return getItem(i10).hashCode();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i10) {
            Object item = getItem(i10);
            if (item instanceof ChatThread) {
                return ThreadListItem.getViewType(MyChatsListFragment.this.chatHelper, (ChatThread) item);
            }
            if (item == NVPagedAdapter.LIST_END) {
                return 3;
            }
            if (item == NVPagedAdapter.LOADING) {
                return 4;
            }
            if (item == NVPagedAdapter.ERROR) {
                return 5;
            }
            return -1;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            ThreadListItem threadListItem;
            String str;
            Object item = getItem(i10);
            if (item instanceof ChatThread) {
                ChatThread chatThread = (ChatThread) item;
                int itemViewType = getItemViewType(i10);
                if (itemViewType == 2) {
                    threadListItem = (ThreadListItem) createView(R.layout.chat_thread_hangout_item, viewGroup, view, "hangout");
                } else if (itemViewType == 0) {
                    threadListItem = (ThreadListItem) createView(R.layout.chat_thread_user_item, viewGroup, view, "plain");
                } else {
                    if (itemViewType != 1) {
                        return null;
                    }
                    threadListItem = (ThreadListItem) createView(R.layout.chat_thread_group_item, viewGroup, view, "group");
                }
                threadListItem.setChatThread(chatThread, MyChatsListFragment.this.chatService.getDraft(chatThread.threadId), this.curUser);
                if (chatThread.isPinned) {
                    str = "#F8F8F9";
                } else {
                    str = "#FFFFFF";
                }
                threadListItem.setBackgroundColor(Color.parseColor(str));
                return threadListItem;
            }
            if (item == NVPagedAdapter.LIST_END) {
                return createView(R.layout.my_chat_empty_layout, viewGroup, view);
            }
            if (item == NVPagedAdapter.LOADING) {
                View viewCreateLoadingItem = createLoadingItem(viewGroup, view);
                MyChatsListFragment.this.myChatListService.loadNextPage(true);
                return viewCreateLoadingItem;
            }
            if (item != NVPagedAdapter.ERROR) {
                return null;
            }
            return createErrorItem(viewGroup, view, MyChatsListFragment.this.myChatListService.errorMessage());
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            Object item = getItem(i10);
            if (item != NVPagedAdapter.LOADING && item != NVPagedAdapter.LIST_END) {
                return super.isEnabled(i10);
            }
            return false;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            if (MyChatsListFragment.this.myChatManagePopUp != null) {
                MyChatsListFragment.this.myChatManagePopUp.updateManageButtonStatus();
            }
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            MyChatsListFragment.this.myChatListService.onAttach();
        }

        void onResume() {
            if (!isListShown()) {
                MyChatsListFragment.this.myChatListService.loadNextPage(true);
            } else if (MyChatsListFragment.this.myChatListService.getChatRequestTime() < SystemClock.elapsedRealtime() - 600000) {
                MyChatsListFragment.this.myChatListService.refresh(256, null);
            }
        }
    }

    class SearchAdapter extends AdriftAdapter {
        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "SearchMyChat";
        }

        public SearchAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, @Nullable View view2) {
            if (view2 == null) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            logClickEvent(ActSemantic.pageEnter);
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, FragmentWrapperActivity.intent(SearchMyChatsFragment.class));
            return true;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.my_chat_list_search_view, viewGroup, view);
            viewCreateView.setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "my_chats_list";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isPageBackgroundEnabled() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void goToPublicChat() {
        Intent intent = FragmentWrapperActivity.intent(HangoutListFragment.class);
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, "My Chats Explore Button");
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAnnouncementMsg(PushPayload pushPayload) {
        return pushPayload.msgType == 121;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreateOptionsMenu$0(View view) {
        new ThreadHelper(this).showCreateChatDialog("My Chats");
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.myChatListAdapter = new MyChatListAdapter();
        this.favoriteUserWrappedAdapter = new FavoriteUserWrapperAdapter();
        FavoriteUserAdapter favoriteUserAdapter = new FavoriteUserAdapter();
        this.favoriteUserAdapter = favoriteUserAdapter;
        this.favoriteUserWrappedAdapter.setRecycleAdapter(favoriteUserAdapter);
        this.allMembersAdapter = new AllMembersAdapter();
        this.searchAdapter = new SearchAdapter(this);
        ChatTitleAdapter chatTitleAdapter = new ChatTitleAdapter();
        this.chatTitle = chatTitleAdapter;
        chatTitleAdapter.setAttachAdapter(this.myChatListAdapter);
        this.chatTitle.setTitle(getString(R.string.chat_my_chats));
        this.chatTitle.setShowIndicator(false);
        MergeAdapter mergeAdapter = new MergeAdapter(this) { // from class: com.narvii.chat.thread.MyChatsListFragment.4
            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public String errorMessage() {
                return null;
            }

            @Override // com.narvii.list.MergeAdapter, android.widget.BaseAdapter, android.widget.Adapter
            public boolean isEmpty() {
                return false;
            }
        };
        mergeAdapter.addAdapter(this.searchAdapter);
        mergeAdapter.addAdapter(this.allMembersAdapter);
        mergeAdapter.addAdapter(this.favoriteUserWrappedAdapter);
        mergeAdapter.addAdapter(this.chatTitle);
        mergeAdapter.addAdapter(this.myChatListAdapter, true);
        return mergeAdapter;
    }

    public void markRead(ChatThread chatThread) {
        if (chatThread == null) {
            return;
        }
        this.chatRequestHelper.markAsread(this.configService.getCommunityId(), getContext(), chatThread);
    }

    public void markUnread(ChatThread chatThread) {
        if (chatThread == null) {
            return;
        }
        this.chatRequestHelper.markUnread(this.configService.getCommunityId(), getContext(), chatThread);
        ((StatisticsService) getService("statistics")).event("Mark Chat Thread As Unread");
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        if (i10 == 100 && i11 == -1 && intent != null) {
            String stringExtra = intent.getStringExtra("userList");
            if (!TextUtils.isEmpty(stringExtra)) {
                this.favoriteUserAdapter.setListData(JacksonUtils.readListAs(stringExtra, User.class));
            }
        }
        super.onActivityResult(i10, i11, intent);
    }

    @Override // com.narvii.chat.service.MyChatListObserver
    public void onMyChatListChanged(@NotNull MyChatListService myChatListService, @Nullable ThreadListResponse threadListResponse) {
        MyChatListAdapter myChatListAdapter = this.myChatListAdapter;
        if (myChatListAdapter != null) {
            myChatListAdapter.notifyDataSetChanged();
        }
    }

    public void processPin(ChatThread chatThread) {
        if (chatThread == null) {
            return;
        }
        boolean z6 = chatThread.isPinned;
        this.chatRequestHelper.processPin(this.configService.getCommunityId(), getContext(), chatThread);
        if (z6) {
            return;
        }
        ((StatisticsService) getService("statistics")).event("User Pins a Chat").param("Chat Type", StatisticHelper.getChatThreadType(chatThread, "Others")).source("Action Sheet").userPropInc("User Pins a Chat Total");
    }

    private void configSubFragment() {
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager.m0(TAG_SUB_FRAGMENT_INVITE) == null) {
            ChatInviteFragment chatInviteFragment = new ChatInviteFragment();
            Bundle bundle = new Bundle();
            bundle.putString(ExternalPostPreviewFragment.SOURCE, "Favorite User");
            chatInviteFragment.setArguments(bundle);
            fragmentManager.q().e(chatInviteFragment, TAG_SUB_FRAGMENT_INVITE).k();
        }
        if (getChildFragmentManager().m0(TAG_SUB_FRAGMENT_NOTIFICATION_WARNING) == null) {
            getChildFragmentManager().q().c(R.id.notification_turned_off_warning_frame, new NotificationTurnedOffWarningFragment(), TAG_SUB_FRAGMENT_NOTIFICATION_WARNING).k();
        }
    }

    public void delete(ChatThread chatThread) {
        Fragment fragmentM0 = getFragmentManager().m0("joinThread");
        if (fragmentM0 != null) {
            getFragmentManager().q().t(fragmentM0).j();
        }
        new ChatHelper(getContext()).leaveChat(getStringParam("id"), chatThread, getFragmentManager());
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z6) {
        super.onActiveChanged(z6);
        LiveLayerService liveLayerService = (LiveLayerService) getService("liveLayer");
        if (liveLayerService != null) {
            liveLayerService.reportBrowsing("my-chats", z6);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        boolean z6;
        String string;
        super.onCreate(bundle);
        this.communityConfigHelper = new CommunityConfigHelper(this);
        this.pushService = (PushService) getService("push");
        this.chatHelper = new ChatHelper(getContext());
        this.chatRequestHelper = new ChatRequestHelper(this);
        this.configService = (ConfigService) getService("config");
        this.sharedPreferences = (SharedPreferences) getService(IncubatorApplication.PREFS_SERVICE_KEY);
        this.chatService = (ChatService) getService("chat");
        this.accountService = (AccountService) getService("account");
        MyChatListService myChatListService = (MyChatListService) getService("myChatList");
        this.myChatListService = myChatListService;
        myChatListService.addObserver(this);
        if (bundle == null) {
            this.pushService.dismissNotification(this.configService.getCommunityId(), 2);
            ((StatisticsService) getService("statistics")).event("My Chats Page Opened").userPropInc("My Chats Page Opened Total").source(getStringParam(ExternalPostPreviewFragment.SOURCE));
        }
        configSubFragment();
        this.ndcId = this.configService.getCommunityId();
        if (this.communityConfigHelper.isPostEnabled() && this.communityConfigHelper.isPublicChatEnabled()) {
            z6 = true;
        } else {
            z6 = false;
        }
        this.isPublicChatEnable = z6;
        if (!TextUtils.isEmpty(getStringParam("title"))) {
            string = getStringParam("title");
        } else {
            string = getString(R.string.chat_my_chats);
        }
        setTitle(string);
        setHasOptionsMenu(true);
        if (!isEmbedFragment()) {
            Utils.postDelayed(new Runnable() { // from class: com.narvii.chat.thread.MyChatsListFragment.1
                @Override // java.lang.Runnable
                public void run() {
                    if (MyChatsListFragment.this.isDestoryed()) {
                        return;
                    }
                    new MembershipTrialPromptHelper(MyChatsListFragment.this).tryShow();
                }
            }, 1200L);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        int i10;
        super.onCreateOptionsMenu(menu, menuInflater);
        MenuItem menuItemAdd = menu.add(0, R.string.create, 0, R.string.create);
        if (isEmbedFragment()) {
            i10 = R.layout.create_chat_menu;
        } else {
            i10 = R.layout.create_chat_menu_btn;
        }
        MenuItem showAsActionFlags = menuItemAdd.setActionView(i10).setShowAsActionFlags(2);
        showAsActionFlags.getActionView().setTag(R.id.embed_menu_scale, Float.valueOf(0.85f));
        showAsActionFlags.getActionView().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.thread.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f2067a.lambda$onCreateOptionsMenu$0(view);
            }
        });
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.notification_list_view, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.myChatListService.removeObserver(this);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onErrorRetry() {
        super.onErrorRetry();
        AllMembersAdapter allMembersAdapter = this.allMembersAdapter;
        if (allMembersAdapter != null) {
            allMembersAdapter.refresh(2, null);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        int i10;
        super.onListViewCreated(listView, bundle);
        View emptyView = setEmptyView(R.layout.my_chats_empty_view);
        this.myChatEmptyView = emptyView;
        View viewFindViewById = emptyView.findViewById(R.id.explorer_public_chat);
        if (this.isPublicChatEnable) {
            i10 = 0;
        } else {
            i10 = 4;
        }
        viewFindViewById.setVisibility(i10);
        this.myChatEmptyView.findViewById(R.id.explorer_public_chat).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.thread.MyChatsListFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MyChatsListFragment.this.goToPublicChat();
            }
        });
        View viewFindViewById2 = this.myChatEmptyView.findViewById(R.id.empty_retry);
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.thread.MyChatsListFragment.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    MyChatsListFragment.this.onErrorRetry();
                }
            });
        }
        try {
            this.myChatEmptyView.findViewById(R.id.explorer_public_chat_bg).setBackgroundDrawable(getResources().getDrawable(R.drawable.ic_my_chat_explorer_public));
        } catch (OutOfMemoryError e) {
            OomHelper.test(e);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.pushService.removePushListener(this.pushListener);
        this.resumed = false;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        boolean z6;
        super.onPrepareOptionsMenu(menu);
        MenuItem menuItemFindItem = menu.findItem(R.string.create);
        CommunityConfigHelper communityConfigHelper = this.communityConfigHelper;
        if (communityConfigHelper != null && communityConfigHelper.isChatEnabled()) {
            z6 = true;
        } else {
            z6 = false;
        }
        menuItemFindItem.setVisible(z6);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        super.onRefresh();
        AllMembersAdapter allMembersAdapter = this.allMembersAdapter;
        if (allMembersAdapter != null) {
            allMembersAdapter.refresh(1, null);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        ComScoreSectionDispatcher.INSTANCE.sectionChangeToChat();
        this.resumed = true;
        MyChatListAdapter myChatListAdapter = this.myChatListAdapter;
        if (myChatListAdapter != null) {
            myChatListAdapter.onResume();
        }
        this.pushService.addPushListener(this.pushListener);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        getListView().setOnItemLongClickListener(this.myChatListAdapter);
    }

    @Override // com.narvii.list.NVListFragment
    protected void updateViews() {
        int i10;
        super.updateViews();
        View view = this.myChatEmptyView;
        if (view != null) {
            view.setVisibility(4);
        }
        if (this.myChatListAdapter != null && getListView() != null) {
            ListView listView = getListView();
            if (this.myChatListAdapter.getCount() == 0) {
                i10 = 0;
            } else {
                i10 = 1;
            }
            listView.setDividerHeight(i10);
        }
    }
}
