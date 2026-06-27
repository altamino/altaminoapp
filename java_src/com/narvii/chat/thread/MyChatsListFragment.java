package com.narvii.chat.thread;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v7.widget.RecyclerView;
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
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
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
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.crashlytics.OomHelper;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.HorizontalUnbrokenLayout;
import com.narvii.widget.TintButton;
import com.narvii.widget.UserAvatarLayout;
import com.narvii.widget.recycleview.NVRecycleAdapter;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes2.dex */
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
    private PushService.PushListener pushListener = new PushService.PushListener() { // from class: com.narvii.chat.thread.MyChatsListFragment.6
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

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "MyChatList";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isPageBackgroundEnabled() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.communityConfigHelper = new CommunityConfigHelper(this);
        this.pushService = (PushService) getService("push");
        this.chatHelper = new ChatHelper(getContext());
        this.chatRequestHelper = new ChatRequestHelper(this);
        this.configService = (ConfigService) getService("config");
        this.sharedPreferences = (SharedPreferences) getService("prefs");
        this.chatService = (ChatService) getService("chat");
        this.accountService = (AccountService) getService("account");
        this.myChatListService = (MyChatListService) getService("myChatList");
        this.myChatListService.addObserver(this);
        if (bundle == null) {
            this.pushService.dismissNotification(this.configService.getCommunityId(), 2);
        }
        configSubFragment();
        this.ndcId = this.configService.getCommunityId();
        this.isPublicChatEnable = this.communityConfigHelper.isPostEnabled() && this.communityConfigHelper.isPublicChatEnabled();
        setTitle(!TextUtils.isEmpty(getStringParam("title")) ? getStringParam("title") : getString(R.string.chat_my_chats));
        setHasOptionsMenu(true);
        if (isEmbedFragment()) {
            return;
        }
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

    private void configSubFragment() {
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager.findFragmentByTag(TAG_SUB_FRAGMENT_INVITE) == null) {
            ChatInviteFragment chatInviteFragment = new ChatInviteFragment();
            Bundle bundle = new Bundle();
            bundle.putString("Source", "Favorite User");
            chatInviteFragment.setArguments(bundle);
            fragmentManager.beginTransaction().add(chatInviteFragment, TAG_SUB_FRAGMENT_INVITE).commitAllowingStateLoss();
        }
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.notification_list_view, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        this.myChatEmptyView = setEmptyView(R.layout.my_chats_empty_view);
        this.myChatEmptyView.findViewById(R.id.explorer_public_chat).setVisibility(this.isPublicChatEnable ? 0 : 4);
        this.myChatEmptyView.findViewById(R.id.explorer_public_chat).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.thread.MyChatsListFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MyChatsListFragment.this.goToPublicChat();
            }
        });
        View viewFindViewById = this.myChatEmptyView.findViewById(R.id.empty_retry);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.thread.MyChatsListFragment.3
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

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        getListView().setOnItemLongClickListener(this.myChatListAdapter);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        this.resumed = true;
        MyChatListAdapter myChatListAdapter = this.myChatListAdapter;
        if (myChatListAdapter != null) {
            myChatListAdapter.onResume();
        }
        this.pushService.addPushListener(this.pushListener);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        this.pushService.removePushListener(this.pushListener);
        this.resumed = false;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.myChatListService.removeObserver(this);
    }

    @Override // com.narvii.app.NVFragment
    public int getPostEntryLift() {
        return ViewUtils.getBannerLift(this, 2);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        MenuItem showAsActionFlags = menu.add(0, R.string.create, 0, R.string.create).setActionView(isEmbedFragment() ? R.layout.create_chat_menu : R.layout.create_chat_menu_btn).setShowAsActionFlags(2);
        showAsActionFlags.getActionView().setTag(R.id.embed_menu_scale, Float.valueOf(0.85f));
        showAsActionFlags.getActionView().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.thread.MyChatsListFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                new ThreadHelper(MyChatsListFragment.this).showCreateChatDialog("My Chats");
            }
        });
    }

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        MenuItem menuItemFindItem = menu.findItem(R.string.create);
        CommunityConfigHelper communityConfigHelper = this.communityConfigHelper;
        menuItemFindItem.setVisible(communityConfigHelper != null && communityConfigHelper.isChatEnabled());
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        super.onActiveChanged(z);
        LiveLayerService liveLayerService = (LiveLayerService) getService("liveLayer");
        if (liveLayerService != null) {
            liveLayerService.reportBrowsing("my-chats", z);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.myChatListAdapter = new MyChatListAdapter();
        this.favoriteUserWrappedAdapter = new FavoriteUserWrapperAdapter();
        this.favoriteUserAdapter = new FavoriteUserAdapter();
        this.favoriteUserWrappedAdapter.setRecycleAdapter(this.favoriteUserAdapter);
        this.allMembersAdapter = new AllMembersAdapter();
        this.searchAdapter = new SearchAdapter(this);
        this.chatTitle = new ChatTitleAdapter();
        this.chatTitle.setAttachAdapter(this.myChatListAdapter);
        this.chatTitle.setTitle(getString(R.string.chat_my_chats));
        this.chatTitle.setShowIndicator(false);
        MergeAdapter mergeAdapter = new MergeAdapter(this) { // from class: com.narvii.chat.thread.MyChatsListFragment.5
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

    @Override // com.narvii.list.NVListFragment
    protected void onErrorRetry() {
        super.onErrorRetry();
        AllMembersAdapter allMembersAdapter = this.allMembersAdapter;
        if (allMembersAdapter != null) {
            allMembersAdapter.refresh(2, null);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        super.onRefresh();
        AllMembersAdapter allMembersAdapter = this.allMembersAdapter;
        if (allMembersAdapter != null) {
            allMembersAdapter.refresh(1, null);
        }
    }

    @Override // com.narvii.chat.service.MyChatListObserver
    public void onMyChatListChanged(MyChatListService myChatListService, ThreadListResponse threadListResponse) {
        MyChatListAdapter myChatListAdapter = this.myChatListAdapter;
        if (myChatListAdapter != null) {
            myChatListAdapter.notifyDataSetChanged();
        }
    }

    private class FavoriteUserWrapperAdapter extends NVRecycleViewWrapAdapter implements NotificationListener {
        private int cellCountLimit;

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }

        @Override // com.narvii.user.favorite.NVRecycleViewWrapAdapter
        protected int recycleViewContainerLayoutId() {
            return R.layout.favorite_user_layout;
        }

        public FavoriteUserWrapperAdapter() {
            super(MyChatsListFragment.this, null);
            this.cellCountLimit = (int) (Utils.getScreenSize(MyChatsListFragment.this.getActivity()).x / Utils.dpToPx(getContext(), 65.0f));
        }

        @Override // com.narvii.user.favorite.NVRecycleViewWrapAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View view2 = super.getView(i, view, viewGroup);
            view2.findViewById(R.id.manage).setOnClickListener(this.subviewClickListener);
            view2.findViewById(R.id.goto_arrow_layout).setOnClickListener(this.subviewClickListener);
            if (MyChatsListFragment.this.favoriteUserAdapter != null) {
                View viewFindViewById = view2.findViewById(R.id.goto_arrow_layout);
                int itemCount = MyChatsListFragment.this.favoriteUserAdapter.getItemCount();
                int i2 = this.cellCountLimit;
                viewFindViewById.setVisibility((itemCount <= i2 || i2 <= 0) ? 8 : 0);
            }
            view2.findViewById(R.id.recycle_layout).setVisibility(MyChatsListFragment.this.sharedPreferences.getBoolean("hide_fav_user", false) ? 8 : 0);
            return view2;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (view2 != null && view2.getId() == R.id.manage) {
                ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
                actionSheetDialog.addItem(R.string.my_favorite_members, 0);
                final View viewFindViewById = view.findViewById(R.id.recycle_layout);
                final boolean z = viewFindViewById.getVisibility() == 0;
                actionSheetDialog.addItem(z ? R.string.hide : R.string.unhide, 0);
                actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.chat.thread.MyChatsListFragment.FavoriteUserWrapperAdapter.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i2) {
                        if (i2 == 0) {
                            MyChatsListFragment.this.startActivityForResult(FragmentWrapperActivity.intent(FavoriteUserListFragment.class), 100);
                        } else {
                            if (i2 != 1) {
                                return;
                            }
                            viewFindViewById.setVisibility(z ? 8 : 0);
                            MyChatsListFragment.this.sharedPreferences.edit().putBoolean("hide_fav_user", z).apply();
                            if (z) {
                            }
                        }
                    }
                });
                actionSheetDialog.show();
            } else if (view2 != null && view2.getId() == R.id.goto_arrow_layout) {
                MyChatsListFragment.this.startActivityForResult(FragmentWrapperActivity.intent(FavoriteUserListFragment.class), 100);
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            NVRecycleAdapter nVRecycleAdapter;
            if (notification.action != FavoriteUserListFragment.ACTION_ADD_FAVORITE_USER || (nVRecycleAdapter = this.wrapped) == null || Utils.indexOfId(nVRecycleAdapter.list(), notification.id) >= 0) {
                return;
            }
            this.wrapped.insertItem(0, (User) notification.obj);
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 100 && i2 == -1 && intent != null) {
            String stringExtra = intent.getStringExtra("userList");
            if (!TextUtils.isEmpty(stringExtra)) {
                this.favoriteUserAdapter.setListData(JacksonUtils.readListAs(stringExtra, User.class));
            }
        }
        super.onActivityResult(i, i2, intent);
    }

    class FavoriteUserAdapter extends FavoriteUserHorizontalAdapter {
        @Override // com.narvii.user.favorite.FavoriteUserHorizontalAdapter, com.narvii.widget.recycleview.NVRecycleAdapter
        protected boolean showListEnd(int i) {
            return true;
        }

        public FavoriteUserAdapter() {
            super(MyChatsListFragment.this);
        }

        @Override // com.narvii.widget.recycleview.NVRecycleAdapter, com.narvii.widget.recycleview.ItemClickSupport.OnItemClickListener
        public void onItemClicked(RecyclerView recyclerView, int i, View view) {
            super.onItemClicked(recyclerView, i, view);
            Object itemAt = getItemAt(i);
            if (itemAt instanceof User) {
                final User user = (User) itemAt;
                if (user.status != 3) {
                    if (!MyChatsListFragment.this.communityConfigHelper.isChatEnabled()) {
                        Intent intent = UserProfileFragment.intent(this.context, user);
                        if (intent == null) {
                            return;
                        }
                        intent.putExtra("Source", "Favorite Members");
                        this.context.startActivity(intent);
                        return;
                    }
                    final UserDialog userDialog = new UserDialog(this.context.getContext(), user);
                    userDialog.source = "Favorite Members";
                    userDialog.setOnClickListener(new UserDialog.UserDialogClickListener() { // from class: com.narvii.chat.thread.MyChatsListFragment.FavoriteUserAdapter.1
                        @Override // com.narvii.onlinestatus.UserDialog.UserDialogClickListener
                        public void onClicked(int i2, NVObject nVObject) {
                            if (i2 == 2) {
                                Intent intent2 = UserProfileFragment.intent(((NVRecycleAdapter) FavoriteUserAdapter.this).context, user);
                                if (intent2 == null) {
                                    return;
                                }
                                intent2.putExtra("Source", userDialog.source);
                                ((NVRecycleAdapter) FavoriteUserAdapter.this).context.startActivity(intent2);
                                return;
                            }
                            if (i2 == 1) {
                                FavoriteUserAdapter.this.startChat(user.uid);
                            } else if (i2 == 3) {
                                new FlagReportOptionDialog.Builder(((NVRecycleAdapter) FavoriteUserAdapter.this).context).nvObject(user).build().show();
                            }
                        }
                    });
                    userDialog.show();
                    return;
                }
                AlertDialog alertDialog = new AlertDialog(MyChatsListFragment.this.getContext());
                alertDialog.setTitle(MyChatsListFragment.this.getString(R.string.favorite_user_not_available));
                alertDialog.addButton(android.R.string.ok, 4, (View.OnClickListener) null);
                alertDialog.show();
            }
        }

        public void startChat(String str) {
            if (((AccountService) this.context.getService("account")).hasAccount()) {
                ChatInviteFragment chatInviteFragment = (ChatInviteFragment) MyChatsListFragment.this.getFragmentManager().findFragmentByTag(MyChatsListFragment.TAG_SUB_FRAGMENT_INVITE);
                if (chatInviteFragment != null) {
                    chatInviteFragment.startChat(str);
                    return;
                }
                return;
            }
            Intent intent = new Intent("chat");
            intent.putExtra("uid", str);
            MyChatsListFragment.this.ensureLogin(intent);
        }

        @Override // com.narvii.widget.recycleview.NVRecycleAdapter
        protected void onBindEndViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            super.onBindEndViewHolder(viewHolder, i);
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
            intent.putExtra("Source", "My Chats");
            MyChatsListFragment.this.startActivity(intent);
        }

        @Override // com.narvii.widget.recycleview.NVRecycleAdapter
        public boolean isEmpty() {
            MyChatListAdapter myChatListAdapter = MyChatsListFragment.this.myChatListAdapter;
            return myChatListAdapter != null ? myChatListAdapter.isEmpty() : super.isEmpty();
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

        @Override // com.narvii.list.NVSectionHeaderAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View view2 = super.getView(i, view, viewGroup);
            view2.setBackgroundColor(0);
            View viewFindViewById = view2.findViewById(R.id.setting);
            if (viewFindViewById != null) {
                viewFindViewById.setOnClickListener(this.subviewClickListener);
            }
            return view2;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (view2 != null && view2.getId() == R.id.setting) {
                MyChatsListFragment.this.myChatManagePopUp = new MyChatManagePopUp(view2, true) { // from class: com.narvii.chat.thread.MyChatsListFragment.ChatTitleAdapter.1
                    @Override // com.narvii.chat.thread.MyChatManagePopUp
                    public void onClickInbound() {
                        Intent intent = FragmentWrapperActivity.intent(UserProfilePrivilegeFragment.class);
                        intent.putExtra("title", MyChatsListFragment.this.getString(R.string.allow_inbound_chat_requests));
                        intent.putExtra("privilegeKey", User.CHAT);
                        ChatTitleAdapter.this.startActivity(intent);
                    }

                    @Override // com.narvii.chat.thread.MyChatManagePopUp
                    public void onClickManage() {
                        Intent intent = FragmentWrapperActivity.intent(ChatBatchDeletionFragment.class);
                        intent.putExtra(CommentPostActivity.COMMENT_POST_KEY_NDC_ID, MyChatsListFragment.this.ndcId);
                        intent.putExtra("__communityId", MyChatsListFragment.this.ndcId);
                        ChatTitleAdapter.this.startActivity(intent);
                    }

                    @Override // com.narvii.chat.thread.MyChatManagePopUp
                    public boolean isManageEnabled() {
                        MyChatListAdapter myChatListAdapter = MyChatsListFragment.this.myChatListAdapter;
                        return (myChatListAdapter == null || myChatListAdapter.isListEmpty()) ? false : true;
                    }
                };
                MyChatsListFragment.this.myChatManagePopUp.show();
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
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
        public ChatThread getMappedThreadFromList(String str) {
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
        public void onThreadUpdateInfo(ThreadUpdateObject threadUpdateObject) {
        }

        @Override // com.narvii.chat.util.IMyChatList
        public void onUnknownThreadMessageCome(ChatMessage chatMessage) {
        }

        @Override // com.narvii.chat.util.IMyChatList
        public void refreshList() {
        }

        public MyChatListAdapter() {
            super(MyChatsListFragment.this);
            this.curUser = MyChatsListFragment.this.accountService.getUserProfile();
            this.chatListDelegate = new MyChatListDelegate(this, this, false);
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

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            if (MyChatsListFragment.this.myChatManagePopUp != null) {
                MyChatsListFragment.this.myChatManagePopUp.updateManageButtonStatus();
            }
        }

        @Override // com.narvii.list.NVAdapter
        public boolean isListShown() {
            return MyChatsListFragment.this.myChatListService.isEnd() || MyChatsListFragment.this.myChatListService.list().size() > 0;
        }

        @Override // com.narvii.list.NVAdapter
        public String errorMessage() {
            return MyChatsListFragment.this.myChatListService.errorMessage();
        }

        public boolean isListEmpty() {
            return !MyChatsListFragment.this.accountService.hasAccount() || MyChatsListFragment.this.myChatListService.list().size() == 0;
        }

        @Override // com.narvii.list.NVAdapter
        public void onErrorRetry() {
            MyChatsListFragment.this.myChatListService.errorRetry();
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            MyChatsListFragment.this.myChatListService.refresh(i, callback);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (!MyChatsListFragment.this.accountService.hasAccount()) {
                return 0;
            }
            List<ChatThread> list = MyChatsListFragment.this.myChatListService.list();
            if (!MyChatsListFragment.this.myChatListService.isEnd() || list.size() == 0) {
                return list.size() + 1;
            }
            return list.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            List<ChatThread> list = MyChatsListFragment.this.myChatListService.list();
            if (i >= list.size()) {
                if (TextUtils.isEmpty(MyChatsListFragment.this.myChatListService.getErrorMessageValue())) {
                    if (MyChatsListFragment.this.myChatListService.isEnd()) {
                        return NVPagedAdapter.LIST_END;
                    }
                    return NVPagedAdapter.LOADING;
                }
                return NVPagedAdapter.ERROR;
            }
            return list.get(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return getItem(i).hashCode();
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            Object item = getItem(i);
            if (item == NVPagedAdapter.LOADING || item == NVPagedAdapter.LIST_END) {
                return false;
            }
            return super.isEnabled(i);
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            Object item = getItem(i);
            if (item instanceof ChatThread) {
                return ThreadListItem.getViewType(MyChatsListFragment.this.chatHelper, (ChatThread) item);
            }
            if (item == NVPagedAdapter.LIST_END) {
                return 3;
            }
            if (item == NVPagedAdapter.LOADING) {
                return 4;
            }
            return item == NVPagedAdapter.ERROR ? 5 : -1;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            ThreadListItem threadListItem;
            Object item = getItem(i);
            if (item instanceof ChatThread) {
                ChatThread chatThread = (ChatThread) item;
                int itemViewType = getItemViewType(i);
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
                threadListItem.setBackgroundColor(Color.parseColor(chatThread.isPinned ? "#F8F8F9" : "#FFFFFF"));
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
            if (item == NVPagedAdapter.ERROR) {
                return createErrorItem(viewGroup, view, MyChatsListFragment.this.myChatListService.errorMessage());
            }
            return null;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof ChatThread) {
                this.chatListDelegate.openMyChat((ChatThread) obj, null, "My chats");
                return true;
            }
            if (view2 != null && view2.getId() == R.id.explorer_public_chat) {
                MyChatsListFragment.this.goToPublicChat();
                return true;
            }
            if (obj == NVPagedAdapter.ERROR) {
                MyChatsListFragment.this.myChatListService.loadNextPage(false);
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.list.NVAdapter
        public boolean onLongClick(ListAdapter listAdapter, int i, final Object obj, View view, View view2) {
            if (obj instanceof ChatThread) {
                ChatThread chatThread = (ChatThread) obj;
                boolean zIsThreadUnread = new ChatHelper(getContext()).isThreadUnread(chatThread);
                final int[] iArr = new int[3];
                ArrayList arrayList = new ArrayList();
                if (!zIsThreadUnread) {
                    iArr[0] = R.string.chat_mark_as_unread;
                    arrayList.add(MyChatsListFragment.this.getString(R.string.chat_mark_as_unread));
                } else {
                    iArr[0] = R.string.chat_mark_as_read;
                    arrayList.add(MyChatsListFragment.this.getString(R.string.chat_mark_as_read));
                }
                boolean z = chatThread.isPinned;
                int i2 = R.string.chat_unpin_fast;
                iArr[1] = z ? R.string.chat_unpin_fast : R.string.chat_pin_fast;
                MyChatsListFragment myChatsListFragment = MyChatsListFragment.this;
                if (!chatThread.isPinned) {
                    i2 = R.string.chat_pin_fast;
                }
                arrayList.add(myChatsListFragment.getString(i2));
                iArr[2] = R.string.delete;
                arrayList.add(MyChatsListFragment.this.getString(R.string.delete));
                AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
                builder.setItems((CharSequence[]) arrayList.toArray(new CharSequence[0]), new DialogInterface.OnClickListener() { // from class: com.narvii.chat.thread.-$$Lambda$MyChatsListFragment$MyChatListAdapter$5BdrhEzttsk9hkFl5jVY4BTp8wY
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i3) {
                        this.f$0.lambda$onLongClick$0$MyChatsListFragment$MyChatListAdapter(iArr, obj, dialogInterface, i3);
                    }
                });
                builder.show();
                return true;
            }
            return super.onLongClick(listAdapter, i, obj, view, view2);
        }

        public /* synthetic */ void lambda$onLongClick$0$MyChatsListFragment$MyChatListAdapter(int[] iArr, Object obj, DialogInterface dialogInterface, int i) {
            switch (iArr[i]) {
                case R.string.chat_mark_as_read /* 2131690014 */:
                    MyChatsListFragment.this.markRead((ChatThread) obj);
                    break;
                case R.string.chat_mark_as_unread /* 2131690015 */:
                    MyChatsListFragment.this.markUnread((ChatThread) obj);
                    break;
                case R.string.chat_pin_fast /* 2131690040 */:
                case R.string.chat_unpin_fast /* 2131690054 */:
                    MyChatsListFragment.this.processPin((ChatThread) obj);
                    break;
                case R.string.delete /* 2131690312 */:
                    MyChatsListFragment.this.delete((ChatThread) obj);
                    break;
            }
        }
    }

    class AllMembersAdapter extends AdriftAdapter {
        private int memberCount;
        NVArrayAdapter<User> userNVArrayAdapter;
        List<User> users;

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            sendRequest();
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            refreshMonitorStart(i, callback);
            sendRequest();
            refreshMonitorEnd();
        }

        public AllMembersAdapter() {
            super(MyChatsListFragment.this);
            this.userNVArrayAdapter = new NVArrayAdapter<User>(MyChatsListFragment.this, User.class) { // from class: com.narvii.chat.thread.MyChatsListFragment.AllMembersAdapter.1
                @Override // android.widget.Adapter
                public View getView(int i, View view, ViewGroup viewGroup) {
                    View viewCreateView = createView(R.layout.item_all_member_cell, viewGroup, view);
                    List<User> list = AllMembersAdapter.this.users;
                    User user = list == null ? null : list.get(i);
                    UserAvatarLayout userAvatarLayout = (UserAvatarLayout) viewCreateView.findViewById(R.id.user_avatar_layout);
                    userAvatarLayout.disableFullAvatarFrame = true;
                    userAvatarLayout.setUser(user);
                    return viewCreateView;
                }
            };
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
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

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            goToMemberListPage();
            return true;
        }

        private void goToMemberListPage() {
            Intent intent = FragmentWrapperActivity.intent(PeopleListFragment.class);
            intent.putExtra("Source", "My Chats");
            startActivity(intent);
        }

        private void sendRequest() {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/user-profile");
            builderPath.param("type", "summary");
            builderPath.param(TtmlNode.START, 0);
            builderPath.param("size", 5);
            ((ApiService) getService("api")).exec(builderPath.build(), new ApiResponseListener<UserListResponse>(UserListResponse.class) { // from class: com.narvii.chat.thread.MyChatsListFragment.AllMembersAdapter.2
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, UserListResponse userListResponse) throws Exception {
                    super.onFinish(apiRequest, (ApiRequest) userListResponse);
                    AllMembersAdapter allMembersAdapter = AllMembersAdapter.this;
                    allMembersAdapter.users = userListResponse == null ? null : new FilterHelper(MyChatsListFragment.this).filter(userListResponse.userList);
                    AllMembersAdapter.this.memberCount = userListResponse == null ? 0 : userListResponse.userProfileCount;
                    AllMembersAdapter.this.notifyDataSetChanged();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i, list, str, apiResponse, th);
                }
            });
        }

        private boolean isOldUserList() {
            NVArrayAdapter<User> nVArrayAdapter = this.userNVArrayAdapter;
            if (nVArrayAdapter == null || nVArrayAdapter.getList() == null || this.users == null || this.userNVArrayAdapter.getList().size() != this.users.size()) {
                return false;
            }
            for (int i = 0; i < this.userNVArrayAdapter.getList().size(); i++) {
                if (!Utils.isEqualsNotNull(this.userNVArrayAdapter.getList().get(i).uid(), this.users.get(i).uid())) {
                    return false;
                }
            }
            return true;
        }
    }

    public void delete(ChatThread chatThread) {
        Fragment fragmentFindFragmentByTag = getFragmentManager().findFragmentByTag("joinThread");
        if (fragmentFindFragmentByTag != null) {
            getFragmentManager().beginTransaction().remove(fragmentFindFragmentByTag).commit();
        }
        new ChatHelper(getContext()).leaveChat(getStringParam("id"), chatThread, getFragmentManager());
    }

    public void markUnread(ChatThread chatThread) {
        if (chatThread == null) {
            return;
        }
        this.chatRequestHelper.markUnread(this.configService.getCommunityId(), getContext(), chatThread);
    }

    public void markRead(ChatThread chatThread) {
        if (chatThread == null) {
            return;
        }
        this.chatRequestHelper.markAsread(this.configService.getCommunityId(), getContext(), chatThread);
    }

    public void processPin(ChatThread chatThread) {
        if (chatThread == null) {
            return;
        }
        boolean z = chatThread.isPinned;
        this.chatRequestHelper.processPin(this.configService.getCommunityId(), getContext(), chatThread);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void goToPublicChat() {
        Intent intent = FragmentWrapperActivity.intent(HangoutListFragment.class);
        intent.putExtra("Source", "My Chats Explore Button");
        startActivity(intent);
    }

    @Override // com.narvii.list.NVListFragment
    protected void updateViews() {
        super.updateViews();
        View view = this.myChatEmptyView;
        if (view != null) {
            view.setVisibility(4);
        }
        if (this.myChatListAdapter == null || getListView() == null) {
            return;
        }
        getListView().setDividerHeight(this.myChatListAdapter.getCount() == 0 ? 0 : 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAnnouncementMsg(PushPayload pushPayload) {
        return pushPayload.msgType == 121;
    }

    class SearchAdapter extends AdriftAdapter {
        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "SearchMyChat";
        }

        public SearchAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.my_chat_list_search_view, viewGroup, view);
            viewCreateView.setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (view2 != null) {
                logClickEvent(ActSemantic.pageEnter);
                startActivity(FragmentWrapperActivity.intent(SearchMyChatsFragment.class));
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }
}
