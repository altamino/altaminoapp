package com.narvii.chat.detail;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.GridLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.narvii.account.AccountService;
import com.narvii.amino.CommunityNavBarFragment;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.ThreadResponse;
import com.narvii.chat.detail.HeaderLayout;
import com.narvii.chat.global.GlobalChatHelper;
import com.narvii.chat.invite.ChatInviteFragment;
import com.narvii.chat.invite.JoinThreadFragment;
import com.narvii.chat.organizer.ChatOrganizerPickerFragment;
import com.narvii.chat.post.ThreadPost;
import com.narvii.chat.post.ThreadPostNewActivity;
import com.narvii.chat.profile.ChatUserInfoEntryHelper;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.setting.AddCoHostFragment;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.util.ChatRequestHelper;
import com.narvii.chat.util.ThreadNotification;
import com.narvii.chat.video.ChatLogEventHelper;
import com.narvii.chat.video.utils.VVChatHelper;
import com.narvii.community.AffiliationsService;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.detail.DetailAdapter;
import com.narvii.detail.DetailFragment;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.influencer.FanClub;
import com.narvii.influencer.FansOnlyHintDialog;
import com.narvii.list.MergeAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayLayout;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.media.MediaPickerFragment;
import com.narvii.model.ChatBubble;
import com.narvii.model.ChatBubbleNotificationWrapper;
import com.narvii.model.ChatThread;
import com.narvii.model.Community;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.story.StoryTopic;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.modulization.Module;
import com.narvii.monetization.bubble.BubbleSettingFragment;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.notification.NotificationListener;
import com.narvii.onlinestatus.UserDialog;
import com.narvii.poweruser.AdvancedOptionDialog;
import com.narvii.share.ShareDialog;
import com.narvii.share.ShareViewHelper;
import com.narvii.story.widgets.StoryTopicView;
import com.narvii.theme.IFakeActionBar;
import com.narvii.theme.ThemePackService;
import com.narvii.user.picker.MultiUserPickerFragment;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Callback;
import com.narvii.util.FilterHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.NotificationUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.layouts.NVFlowLayout;
import com.narvii.util.text.DefaultTagClickListener;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class ThreadDetailFragment extends DetailFragment implements MediaPickerFragment.OnResultListener, MediaPickerFragment.OnCustomOptionSelectedListener, FragmentOnBackListener, AffiliationsService.AffiliationChangeListener, IFakeActionBar {
    static final int ADD_MEMBBER = 2;
    static final int INVITE = 1;
    public static final String KEY_OPEN_INVITE_LIST = "key_open_invite_list";
    private static final int MEMBER_COUNT_THRESHOLD = 10;
    private AccountService accountService;
    Adapter adapter;
    AffiliationsService affiliationsService;
    private boolean autoClicking;
    private boolean autoOpenInviteList;
    BackgroundPickerFragment backgroundPickerFragment;
    private ChatHelper chatHelper;
    private Community community;
    private ConfigService configService;
    private View fakeActionBar;
    public User fullAuthorInfo;
    private GlobalChatHelper globalChatHelper;
    HeaderLayout headerLayout;
    private int headerLayoutHeight;
    OverlayLayout headerOverlay;
    private View inviteView;
    MediaPickerFragment mediaPicker;
    boolean notJoined;
    public Callback<ChatThread> onFinishListener;
    File photoDir;
    static final DetailAdapter.CellType HEADER = new DetailAdapter.CellType("thread.header");
    static final DetailAdapter.CellType CONTENT = new DetailAdapter.CellType("thread.content");
    static final DetailAdapter.CellType COPY = new DetailAdapter.CellType("thread.copy");
    static final DetailAdapter.CellType TOPICS = new DetailAdapter.CellType("thread.topics");
    static final DetailAdapter.CellType MEMBERS = new DetailAdapter.CellType("thread.members");
    static final DetailAdapter.CellType MUTE = new DetailAdapter.CellType("thread.mute");
    static final DetailAdapter.CellType PIN = new DetailAdapter.CellType("thread.pin");
    static final DetailAdapter.CellType ANNOUNCEMENT = new DetailAdapter.CellType("thread.announcement");
    static final DetailAdapter.CellType AV_PERMISSION = new DetailAdapter.CellType("thread.avpermission");
    static final DetailAdapter.CellType SCREENROOM_PERMISSION = new DetailAdapter.CellType("thread.srpermission");
    static final DetailAdapter.CellType CHANGE_BACKGROUND = new DetailAdapter.CellType("thread.changebg");
    static final DetailAdapter.CellType MEMBERS_CAN_INVITE = new DetailAdapter.CellType("thread.memberscaninvite");
    static final DetailAdapter.CellType ORGANIZER_TRANS = new DetailAdapter.CellType("thread.organizertrans");
    static final DetailAdapter.CellType ACTIONS = new DetailAdapter.CellType("thread.actions");
    static final DetailAdapter.CellType BUBBLE_STYLE = new DetailAdapter.CellType("bubble.style");
    static final DetailAdapter.CellType VIEW_ONLY = new DetailAdapter.CellType("thread.viewonly");
    static final DetailAdapter.CellType COHOST = new DetailAdapter.CellType("thread.cohost");
    static final DetailAdapter.CellType ENABLE_PROPS = new DetailAdapter.CellType("thread.enableprops");
    static final DetailAdapter.CellType PUBLISH_TO_GLOBAL = new DetailAdapter.CellType("thread.ptg");
    static final DetailAdapter.CellType FANS_ONLY = new DetailAdapter.CellType("thread.fans_only");
    static final DetailAdapter.CellType MARGIN = new DetailAdapter.CellType("thread.margin");
    static final DetailAdapter.CellType DIVIDE = new DetailAdapter.CellType("thread.divide");

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "ChatRoomDetailPage";
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    protected boolean observeThemeDownloadFinish() {
        return true;
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return false;
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        setTitle((CharSequence) null);
        this.configService = (ConfigService) getService("config");
        this.affiliationsService = (AffiliationsService) getService("affiliations");
        this.accountService = (AccountService) getService("account");
        this.globalChatHelper = new GlobalChatHelper(this);
        this.chatHelper = new ChatHelper(getContext());
        this.autoOpenInviteList = getBooleanParam(KEY_OPEN_INVITE_LIST);
        if (bundle == null) {
            ChatInviteFragment chatInviteFragment = new ChatInviteFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putString("Source", "1-1 > Group Chat");
            chatInviteFragment.setArguments(bundle2);
            getFragmentManager().beginTransaction().add(chatInviteFragment, "chatInvite").commit();
        }
        this.photoDir = new File(new File(getContext().getFilesDir(), "photo"), "chatBackground");
        if (bundle == null) {
            this.mediaPicker = new MediaPickerFragment();
            Bundle bundle3 = new Bundle();
            bundle3.putString("folder", "chatBackground");
            this.mediaPicker.setArguments(bundle3);
            getFragmentManager().beginTransaction().add(this.mediaPicker, "mediaPicker").commit();
            this.backgroundPickerFragment = new BackgroundPickerFragment();
            getFragmentManager().beginTransaction().add(R.id.background_picker_container, this.backgroundPickerFragment, "background_picker").hide(this.backgroundPickerFragment).commitAllowingStateLoss();
        } else {
            this.mediaPicker = (MediaPickerFragment) getFragmentManager().findFragmentByTag("mediaPicker");
            this.backgroundPickerFragment = (BackgroundPickerFragment) getFragmentManager().findFragmentByTag("background_picker");
        }
        this.community = (Community) JacksonUtils.readAs(getStringParam(RtcService.KEY_COMMUNITY), Community.class);
        boolean booleanParam = getBooleanParam(RtcService.KEY_FROM_GLOBAL_CHAT);
        if (!getBooleanParam("fromRecentChat") && booleanParam && isRootFragment() && getFragmentManager().findFragmentByTag("communityNavBar") == null && this.community != null) {
            CommunityNavBarFragment communityNavBarFragment = new CommunityNavBarFragment();
            Bundle bundle4 = new Bundle();
            bundle4.putBoolean("showBackButton", true);
            communityNavBarFragment.setArguments(bundle4);
            getFragmentManager().beginTransaction().add(android.R.id.content, communityNavBarFragment, "communityNavBar").commit();
        }
        this.notJoined = notJoined();
        if (booleanParam) {
            this.affiliationsService.addAffiliationChangeListener(this);
        }
        this.mediaPicker.addOnResultListener(this);
        this.mediaPicker.setOnCustomOptionSelectedListener(this);
        this.headerLayoutHeight = getResources().getDimensionPixelOffset(R.dimen.thread_detail_header_height);
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.thread_detail_frame, viewGroup, false);
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.headerOverlay = (OverlayLayout) view.findViewById(R.id.list_header);
        this.fakeActionBar = view.findViewById(R.id.fake_actionbar);
        this.fakeActionBar.setBackgroundDrawable(this.configService.getTheme() == null ? null : this.configService.getTheme().fakeActionbarBackground());
        Adapter adapter = this.adapter;
        ChatThread object = adapter != null ? adapter.getObject() : null;
        boolean z = object != null && object.type == 0;
        this.headerOverlay.setVisibility(z ? 8 : 0);
        this.fakeActionBar.setVisibility(z ? 0 : 8);
        this.headerOverlay.setLayout(R.layout.thread_detail_header, (int) getResources().getDimension(R.dimen.thread_detail_header_height));
        this.headerOverlay.setHeight1((int) (getActionBarOverlaySize() + getStatusBarOverlaySize() + getResources().getDimension(R.dimen.quizzes_header_tab_height)));
        this.headerOverlay.attach((NVListView) getListView());
        if (object != null) {
            this.headerOverlay.setBackgroundResource(object.singleChat() ? android.R.color.transparent : R.color.white);
        }
        this.headerLayout = (HeaderLayout) view.findViewById(R.id.thread_header);
        this.headerLayout.setUserClickListener(new HeaderLayout.UserClickListener() { // from class: com.narvii.chat.detail.ThreadDetailFragment.1
            @Override // com.narvii.chat.detail.HeaderLayout.UserClickListener
            public void onUserClicked(User user) {
                if (user != null && ThreadDetailFragment.this.checkCommunityAvailability(false, true)) {
                    ThreadDetailFragment.this.startActivity(UserProfileFragment.intent(ThreadDetailFragment.this, user));
                }
            }
        });
        updateHeader();
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setBackgroundColor(getResources().getColor(R.color.prefs_background));
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter() { // from class: com.narvii.chat.detail.ThreadDetailFragment.2
            @Override // com.narvii.list.StaticViewAdapter, android.widget.Adapter
            public int getCount() {
                Adapter adapter = ThreadDetailFragment.this.adapter;
                if (adapter == null || adapter.getObject() == null || ThreadDetailFragment.this.adapter.getObject().type != 0) {
                    return super.getCount();
                }
                return 0;
            }
        };
        staticViewAdapter.addLayouts(R.layout.thread_detail_overlay_placeholder);
        mergeAdapter.addAdapter(staticViewAdapter);
        this.adapter = new Adapter();
        mergeAdapter.addAdapter(this.adapter, true);
        return mergeAdapter;
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        MenuItem icon = menu.add(0, R.string.flag_for_review, 0, R.string.flag_for_review).setIcon(R.drawable.ic_flag_white);
        if (fromGlobalChat()) {
            icon.setShowAsAction(0);
        } else {
            icon.setShowAsAction(2);
        }
        menu.add(0, R.string.share, 0, R.string.share).setIcon(R.drawable.ic_community_share).setShowAsAction(2);
        menu.add(0, R.string.share_copy_link, 0, R.string.share_copy_link);
        menu.add(0, R.string.edit, 0, R.string.edit);
        menu.add(0, R.string.advanced, 0, R.string.advanced).setShowAsAction(0);
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        int i;
        Adapter adapter = this.adapter;
        ChatThread object = adapter == null ? null : adapter.getObject();
        menu.findItem(R.string.share).setVisible(shouldShowCopyLink());
        boolean z = true;
        if (fromGlobalNotJoined()) {
            menu.findItem(R.string.edit).setVisible(false);
            menu.findItem(R.string.flag_for_review).setVisible(false);
            menu.findItem(R.string.advanced).setVisible(false);
        } else {
            menu.findItem(R.string.edit).setVisible(object != null && ((i = object.type) == 1 || i == 2) && this.chatHelper.isHostOrCoHost(object) && object.condition != 2);
            menu.findItem(R.string.flag_for_review).setVisible(!fromGlobalChat() && shouldShowFlag());
            User userProfile = ((AccountService) getService("account")).getUserProfile();
            menu.findItem(R.string.advanced).setVisible((object == null || userProfile == null || !userProfile.isCurator()) ? false : true);
        }
        MenuItem menuItemFindItem = menu.findItem(R.string.share_copy_link);
        if (!shouldShowCopyLink() || (!menu.findItem(R.string.edit).isVisible() && !menu.findItem(R.string.advanced).isVisible())) {
            z = false;
        }
        menuItemFindItem.setVisible(z);
        super.onPrepareOptionsMenu(menu);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldShowFlag() {
        int i;
        Adapter adapter = this.adapter;
        ChatThread object = adapter == null ? null : adapter.getObject();
        return (!(object != null && object.status != 9) || isHost() || (i = object.type) == 1 || i == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldShowCopyLink() {
        Adapter adapter = this.adapter;
        ChatThread object = adapter == null ? null : adapter.getObject();
        return (object != null && object.status != 9) && object.type == 2;
    }

    @Override // com.narvii.detail.DetailFragment
    protected boolean shouldShowNotAvailable(NVObject nVObject) {
        return (nVObject instanceof ChatThread) && ((ChatThread) nVObject).notJoined() && super.shouldShowNotAvailable(nVObject);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.share_copy_link) {
            ShareViewHelper shareViewHelper = new ShareViewHelper(this);
            shareViewHelper.source = "Chat Thread More Info";
            shareViewHelper.copyLink(this.adapter.getObject());
        } else {
            if (menuItem.getItemId() == R.string.edit) {
                ChatThread object = this.adapter.getObject();
                ThreadPost threadPost = new ThreadPost(object);
                Intent intent = new Intent(getContext(), (Class<?>) ThreadPostNewActivity.class);
                intent.putExtra("threadId", object.threadId);
                if (object.type == 1) {
                    intent.putExtra("isGroupChat", true);
                    intent.putExtra("userId", ((AccountService) getService("account")).getUserId());
                    intent.putExtra("thread", JacksonUtils.writeAsString(object));
                }
                intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(threadPost));
                startActivity(intent);
                return true;
            }
            if (menuItem.getItemId() == R.string.flag_for_review) {
                showThreadFlagDialog();
                return true;
            }
            if (menuItem.getItemId() == R.string.advanced) {
                new AdvancedOptionDialog.Builder(this).nvObject(this.adapter.getObject()).build().show();
                return true;
            }
            if (menuItem.getItemId() == R.string.share) {
                ShareDialog.getShareDialogForThread(this, this.adapter.getObject()).show();
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }

    public boolean isHost() {
        return this.chatHelper.isHost(this.adapter.getObject());
    }

    public boolean isCoHost() {
        return this.chatHelper.isCoHost(this.adapter.getObject());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkCommunityAvailability(final boolean z, boolean z2) {
        if (this.community == null) {
            return true;
        }
        return !this.globalChatHelper.tryJoinCommunity(r0.id, z, !z, z2, new GlobalChatHelper.JoinCommunityCallback() { // from class: com.narvii.chat.detail.ThreadDetailFragment.3
            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public int getActionRTCType() {
                return 0;
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public void onPostJoinCommunity(int i, boolean z3) {
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public void onCheckLoginFailed() {
                ThreadDetailFragment.this.ensureLogin(new Intent("joinChannel"));
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public boolean onPreJoinCommunity(int i) {
                if (z) {
                    return false;
                }
                Intent intent = FragmentWrapperActivity.intent(CommunityDetailFragment.class);
                intent.putExtra("id", i);
                ThreadDetailFragment.this.startActivity(intent);
                return true;
            }

            @Override // com.narvii.chat.global.GlobalChatHelper.JoinCommunityCallback
            public ChatThread followingChatToJoin() {
                Adapter adapter = ThreadDetailFragment.this.adapter;
                if (adapter == null) {
                    return null;
                }
                return adapter.getObject();
            }
        });
    }

    @Override // com.narvii.community.AffiliationsService.AffiliationChangeListener
    public void onAffiliationChanged() {
        this.notJoined = notJoined();
        invalidateOptionsMenu();
        Adapter adapter = this.adapter;
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
    }

    public boolean fromGlobalChat() {
        return getBooleanParam(RtcService.KEY_FROM_GLOBAL_CHAT);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHeader() {
        ChatThread object = this.adapter.getObject();
        HeaderLayout headerLayout = this.headerLayout;
        if (headerLayout != null) {
            headerLayout.setThread(object);
            this.headerLayout.setHeight1(this.headerLayoutHeight);
        }
        if (object != null) {
            boolean z = getListView() instanceof NVListView;
            int i = android.R.color.transparent;
            if (z) {
                ((NVListView) getListView()).setOverscrollStretchHeader(getResources().getColor(object.singleChat() ? android.R.color.transparent : R.color.white));
            }
            OverlayLayout overlayLayout = this.headerOverlay;
            if (overlayLayout != null) {
                if (!object.singleChat()) {
                    i = R.color.white;
                }
                overlayLayout.setBackgroundResource(i);
            }
        }
    }

    public boolean fromGlobalNotJoined() {
        return fromGlobalChat() && this.notJoined;
    }

    public boolean notJoined() {
        int communityId = ((ConfigService) getService("config")).getCommunityId();
        return (communityId == 0 || this.affiliationsService.contains(communityId)) ? false : true;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public void completeLogEvent(LogEvent.Builder builder) {
        super.completeLogEvent(builder);
        builder.areaIfNotSet("configArea");
        Adapter adapter = this.adapter;
        ChatThread object = adapter == null ? null : adapter.getObject();
        if (object != null) {
            builder.extraParam("chatProperty", ChatLogEventHelper.getChatProperty(object.type));
        }
        if (builder.getLogEvent().objectId == null) {
            builder.object(object);
        }
        if (builder.containExtraKey("chatType")) {
            return;
        }
        SignallingChannel mainSigChannel = ((RtcService) getService("rtc")).getMainSigChannel();
        if (mainSigChannel != null) {
            builder.extraParam("chatType", ChatLogEventHelper.getChatType(mainSigChannel.channelType));
        } else {
            builder.extraParam("chatType", "textChat");
        }
    }

    private class Adapter extends DetailAdapter<ChatThread, ThreadResponse> implements NotificationListener {
        public User fullAuthorInfo;
        List<User> memberList;
        private final ApiResponseListener<MemberListResponse> memberListListener;

        public Adapter() {
            super(ThreadDetailFragment.this);
            this.memberListListener = new ApiResponseListener<MemberListResponse>(MemberListResponse.class) { // from class: com.narvii.chat.detail.ThreadDetailFragment.Adapter.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, MemberListResponse memberListResponse) throws Exception {
                    ChatThread object;
                    User userOwner;
                    User userProfile = ((AccountService) Adapter.this.getService("account")).getUserProfile();
                    boolean z = true;
                    if ((userProfile == null || !userProfile.isCurator()) && ((object = Adapter.this.getObject()) == null || object.type == 0 || (userOwner = object.owner()) == null || userProfile == null || !Utils.isEqualsNotNull(userOwner.id(), userProfile.id()))) {
                        z = false;
                    }
                    if (z) {
                        Adapter adapter = Adapter.this;
                        adapter.memberList = new FilterHelper(ThreadDetailFragment.this).filterDeleted().keepBlockedUser().filter(memberListResponse.memberList);
                    } else {
                        Adapter adapter2 = Adapter.this;
                        adapter2.memberList = new FilterHelper(ThreadDetailFragment.this).filter(memberListResponse.memberList);
                    }
                    Adapter.this.notifyDataSetChanged();
                }
            };
        }

        @Override // com.narvii.detail.DetailAdapter
        public Class<? extends ChatThread> objectType() {
            return ChatThread.class;
        }

        @Override // com.narvii.detail.DetailAdapter
        protected Class<? extends ThreadResponse> responseType() {
            return ThreadResponse.class;
        }

        @Override // com.narvii.detail.DetailAdapter
        public void setObject(ChatThread chatThread) {
            ThreadResponse threadResponse = new ThreadResponse();
            threadResponse.thread = chatThread;
            updateResponse(threadResponse);
        }

        @Override // com.narvii.detail.DetailAdapter, com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            refreshMonitorStart(i, callback);
            this.memberList = null;
            sendMemberListReqeust();
            refreshMonitorAbort();
            super.refresh(i, callback);
        }

        @Override // com.narvii.detail.DetailAdapter
        public void setResponse(ThreadResponse threadResponse) {
            updateResponse(threadResponse);
            Notification notification = new Notification("update", (ChatThread) ThreadDetailFragment.this.adapter.getObject().m46clone());
            Bundle bundle = new Bundle();
            bundle.putBoolean("_fromThreadDetailFragment", true);
            notification.bundle = bundle;
            NotificationUtils.sendNotificationIncludeGlobal((NotificationCenter) getService("notification"), notification);
        }

        public void updateResponse(ThreadResponse threadResponse) {
            Callback<ChatThread> callback;
            super.setResponse((Adapter) threadResponse);
            invalidateOptionsMenu();
            if (threadResponse.timestamp != null && (callback = ThreadDetailFragment.this.onFinishListener) != null) {
                callback.call(threadResponse.object());
            }
            ThreadDetailFragment.this.setDisabledStatus(threadResponse.thread);
            if (ThreadDetailFragment.this.inviteView != null && ThreadDetailFragment.this.autoOpenInviteList) {
                ThreadDetailFragment.this.autoClicking = true;
                ThreadDetailFragment.this.inviteView.performClick();
                ThreadDetailFragment.this.autoClicking = false;
                ThreadDetailFragment.this.autoOpenInviteList = false;
            }
            ThreadDetailFragment.this.updateHeader();
        }

        @Override // com.narvii.detail.DetailAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            if (!isLoading()) {
                sendRequest();
            }
            if (this.memberList == null) {
                sendMemberListReqeust();
            }
        }

        private void sendMemberListReqeust() {
            ((ApiService) getService("api")).exec(ApiRequest.builder().chatServer().path("/chat/thread/" + ThreadDetailFragment.this.id() + "/member?start=0&size=100&type=default&cv=1.2").build(), this.memberListListener);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected ApiRequest createRequest() {
            return ApiRequest.builder().chatServer().path("/chat/thread/" + ThreadDetailFragment.this.id()).build();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void buildCells(List<Object> list) {
            List<StoryTopic> list2;
            ChatThread object = getObject();
            if (!object.singleChat()) {
                list.add(ThreadDetailFragment.HEADER);
            }
            if (!object.singleChat()) {
                list.add(ThreadDetailFragment.CONTENT);
            } else {
                list.add(ThreadDetailFragment.MARGIN);
            }
            if (!object.singleChat() && (list2 = object.userAddedTopicList) != null && !list2.isEmpty()) {
                list.add(ThreadDetailFragment.TOPICS);
            }
            list.add(ThreadDetailFragment.MARGIN);
            list.add(ThreadDetailFragment.MEMBERS);
            list.add(ThreadDetailFragment.MARGIN);
            if ((object.membershipStatus & 1) != 0) {
                list.add(ThreadDetailFragment.MUTE);
            }
            if (object.joined()) {
                list.add(ThreadDetailFragment.DIVIDE);
                list.add(ThreadDetailFragment.PIN);
            }
            if (new CommunityConfigHelper(this).isPremiumFeatureEnabled() && object.joined()) {
                list.add(ThreadDetailFragment.DIVIDE);
                list.add(ThreadDetailFragment.BUBBLE_STYLE);
            }
            if (!object.singleChat()) {
                list.add(ThreadDetailFragment.MARGIN);
                list.add(ThreadDetailFragment.ANNOUNCEMENT);
            }
            if ((object.singleChat() || ThreadDetailFragment.this.isHost() || ThreadDetailFragment.this.isCoHost()) && !object.isJumpstart()) {
                list.add(ThreadDetailFragment.DIVIDE);
                list.add(ThreadDetailFragment.CHANGE_BACKGROUND);
            }
            if (!object.singleChat() && (ThreadDetailFragment.this.isHost() || ThreadDetailFragment.this.isCoHost())) {
                list.add(ThreadDetailFragment.DIVIDE);
                list.add(ThreadDetailFragment.VIEW_ONLY);
            }
            if (!object.singleChat() && (ThreadDetailFragment.this.isHost() || ThreadDetailFragment.this.isCoHost())) {
                list.add(ThreadDetailFragment.DIVIDE);
                list.add(ThreadDetailFragment.MEMBERS_CAN_INVITE);
            }
            if (!object.singleChat() && ThreadDetailFragment.this.isHost()) {
                list.add(ThreadDetailFragment.MARGIN);
                list.add(ThreadDetailFragment.ORGANIZER_TRANS);
                list.add(ThreadDetailFragment.DIVIDE);
                list.add(ThreadDetailFragment.COHOST);
                list.add(ThreadDetailFragment.DIVIDE);
                list.add(ThreadDetailFragment.ENABLE_PROPS);
                if (object.publicChat()) {
                    if (!object.isGlobal() && isCommunityOpen()) {
                        list.add(ThreadDetailFragment.DIVIDE);
                        list.add(ThreadDetailFragment.PUBLISH_TO_GLOBAL);
                    }
                    if (ThreadDetailFragment.this.isMeInfluencer()) {
                        list.add(ThreadDetailFragment.DIVIDE);
                        list.add(ThreadDetailFragment.FANS_ONLY);
                    }
                }
            }
            list.add(ThreadDetailFragment.ACTIONS);
        }

        private boolean isCommunityOpen() {
            Community community = ThreadDetailFragment.this.community;
            if (community == null) {
                community = ((CommunityService) getService("community")).getCommunity(ThreadDetailFragment.this.configService.getCommunityId());
            }
            return community != null && community.id > 0 && community.joinType == 0;
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void getCellTypes(List<DetailAdapter.CellType> list) {
            super.getCellTypes(list);
            list.add(ThreadDetailFragment.HEADER);
            list.add(ThreadDetailFragment.CONTENT);
            list.add(ThreadDetailFragment.TOPICS);
            list.add(ThreadDetailFragment.MEMBERS);
            list.add(ThreadDetailFragment.MUTE);
            list.add(ThreadDetailFragment.PIN);
            list.add(ThreadDetailFragment.ANNOUNCEMENT);
            list.add(ThreadDetailFragment.MEMBERS_CAN_INVITE);
            list.add(ThreadDetailFragment.CHANGE_BACKGROUND);
            list.add(ThreadDetailFragment.ORGANIZER_TRANS);
            list.add(ThreadDetailFragment.ACTIONS);
            list.add(ThreadDetailFragment.BUBBLE_STYLE);
            list.add(ThreadDetailFragment.VIEW_ONLY);
            list.add(ThreadDetailFragment.ENABLE_PROPS);
            list.add(ThreadDetailFragment.COHOST);
            list.add(ThreadDetailFragment.PUBLISH_TO_GLOBAL);
            list.add(ThreadDetailFragment.FANS_ONLY);
            list.add(ThreadDetailFragment.MARGIN);
            list.add(ThreadDetailFragment.DIVIDE);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected View getCell(Object obj, View view, ViewGroup viewGroup) {
            List<User> optimizedMembersSummary;
            View viewInflate;
            int i;
            StoryTopicView storyTopicView;
            ChatThread object = getObject();
            User userOwner = null;
            boolean z = false;
            if (obj == ThreadDetailFragment.HEADER) {
                View viewCreateView = createView(R.layout.chat_detail_header, viewGroup, view);
                User user = this.fullAuthorInfo;
                if (user != null) {
                    userOwner = user;
                } else {
                    List<User> list = this.memberList;
                    if (list != null) {
                        for (User user2 : list) {
                            if (Utils.isEqualsNotNull(user2.uid, object.uid())) {
                                this.fullAuthorInfo = user2;
                                userOwner = user2;
                            }
                        }
                    }
                }
                if (userOwner == null) {
                    userOwner = object.owner();
                }
                if (userOwner == null) {
                    userOwner = object.author;
                }
                ((NicknameView) viewCreateView.findViewById(R.id.nickname)).setUser(userOwner);
                viewCreateView.findViewById(R.id.stub2).setVisibility((object.owner() == null || !object.owner().isModerator()) ? 0 : 8);
                return viewCreateView;
            }
            if (obj == ThreadDetailFragment.CONTENT) {
                return createTextView(object.content, R.layout.chat_detail_content, view, viewGroup, true, DefaultTagClickListener.instance);
            }
            if (obj == ThreadDetailFragment.COPY) {
                View viewCreateView2 = createView(R.layout.chat_detail_copy, viewGroup, view);
                viewCreateView2.findViewById(R.id.copy_link_container).setVisibility(object.type == 2 ? 0 : 8);
                viewCreateView2.findViewById(R.id.copy_link_container).setOnClickListener(this.subviewClickListener);
                viewCreateView2.findViewById(R.id.copy_link_container).setVisibility(ThreadDetailFragment.this.shouldShowCopyLink() ? 0 : 8);
                viewCreateView2.findViewById(R.id.flag).setOnClickListener(this.subviewClickListener);
                viewCreateView2.findViewById(R.id.flag).setVisibility(ThreadDetailFragment.this.shouldShowFlag() ? 0 : 8);
                return viewCreateView2;
            }
            if (obj == ThreadDetailFragment.TOPICS) {
                View viewCreateView3 = createView(R.layout.thread_detail_topic_view, viewGroup, view);
                NVFlowLayout nVFlowLayout = (NVFlowLayout) viewCreateView3.findViewById(R.id.topic_flow);
                if (object.userAddedTopicList == null || nVFlowLayout == null) {
                    return null;
                }
                int childCount = nVFlowLayout.getChildCount();
                for (int i2 = 0; i2 < object.userAddedTopicList.size(); i2++) {
                    if (i2 < childCount) {
                        storyTopicView = (StoryTopicView) nVFlowLayout.getChildAt(i2);
                    } else {
                        storyTopicView = (StoryTopicView) this.inflater.inflate(R.layout.thread_detail_topic_item_view, (ViewGroup) nVFlowLayout, false);
                        storyTopicView.setOnPreClickListener(new StoryTopicView.OnPreClickListener() { // from class: com.narvii.chat.detail.ThreadDetailFragment.Adapter.2
                            @Override // com.narvii.story.widgets.StoryTopicView.OnPreClickListener
                            public void onPreClick(StoryTopicView storyTopicView2, StoryTopic storyTopic) {
                                LogEvent.clickBuilder(ThreadDetailFragment.this, ActSemantic.checkDetail).area("TopicList").object(storyTopic).send();
                            }
                        });
                        nVFlowLayout.addView(storyTopicView);
                    }
                    storyTopicView.setTopic(object.userAddedTopicList.get(i2));
                    storyTopicView.setClickable(true);
                }
                while (object.userAddedTopicList.size() < nVFlowLayout.getChildCount()) {
                    nVFlowLayout.removeViewAt(nVFlowLayout.getChildCount() - 1);
                }
                return viewCreateView3;
            }
            if (obj == ThreadDetailFragment.MEMBERS) {
                float fDpToPx = (Utils.getScreenSize(ThreadDetailFragment.this.getActivity()).x - Utils.dpToPx(getContext(), 12.0f)) / 5.0f;
                List<User> list2 = this.memberList;
                if (list2 == null) {
                    optimizedMembersSummary = object.getOptimizedMembersSummary();
                } else {
                    optimizedMembersSummary = object.getOptimizedMembersSummary(list2);
                }
                int i3 = 10;
                if (optimizedMembersSummary != null && optimizedMembersSummary.size() >= 10) {
                    optimizedMembersSummary = optimizedMembersSummary.subList(0, 9);
                }
                View viewCreateView4 = createView(R.layout.chat_detail_members, viewGroup, view);
                GridLayout gridLayout = (GridLayout) viewCreateView4.findViewById(R.id.grid);
                if (gridLayout.getChildCount() <= 0 || gridLayout.getChildAt(0).getId() != R.id.chat_member_invite) {
                    viewInflate = null;
                } else {
                    viewInflate = gridLayout.getChildAt(0);
                    gridLayout.removeViewAt(0);
                }
                while (gridLayout.getChildCount() > optimizedMembersSummary.size()) {
                    gridLayout.removeViewAt(gridLayout.getChildCount() - 1);
                }
                int size = optimizedMembersSummary.size();
                int i4 = 0;
                while (i4 < size) {
                    View childAt = i4 < gridLayout.getChildCount() ? gridLayout.getChildAt(i4) : null;
                    if (childAt == null) {
                        childAt = this.inflater.inflate(R.layout.chat_detail_member, gridLayout, z);
                        gridLayout.addView(childAt);
                    }
                    List<User> list3 = this.memberList;
                    int size2 = list3 == null ? 0 : list3.size();
                    int i5 = object.membersCount;
                    List<User> list4 = object.membersSummary;
                    boolean z2 = Math.max(Math.max(i5, list4 == null ? 0 : list4.size()), size2) >= i3;
                    boolean z3 = z2 && i4 == size + (-1);
                    childAt.getLayoutParams().width = (int) fDpToPx;
                    User user3 = optimizedMembersSummary.get(i4);
                    User userProfile = ThreadDetailFragment.this.accountService.getUserProfile();
                    if (userProfile != null && TextUtils.equals(user3.id(), userProfile.id())) {
                        user3.isPremiumItemMembership = userProfile.isPremiumItemMembership;
                    }
                    ((UserAvatarLayout) childAt.findViewById(R.id.user_avatar_layout)).setNoBadge(z3);
                    ((UserAvatarLayout) childAt.findViewById(R.id.user_avatar_layout)).setUser(user3);
                    ((NicknameView) childAt.findViewById(R.id.nickname)).setUser(user3);
                    ((NicknameView) childAt.findViewById(R.id.nickname)).setVisibility(!z3 ? 0 : 4);
                    childAt.findViewById(R.id.chat_member_invited).setVisibility((user3.membershipStatus != 2 || z3) ? 4 : 0);
                    childAt.setOnClickListener(this.subviewClickListener);
                    childAt.setTag(user3);
                    View viewFindViewById = childAt.findViewById(R.id.more);
                    if (viewFindViewById != null) {
                        viewFindViewById.setTag(R.id.thread_more_item, Boolean.TRUE);
                        viewFindViewById.setOnClickListener(this.subviewClickListener);
                        viewFindViewById.setVisibility((z2 && i4 == size + (-1)) ? 0 : 8);
                    }
                    i4++;
                    z = false;
                    i3 = 10;
                }
                if (viewInflate == null) {
                    i = 0;
                    viewInflate = this.inflater.inflate(R.layout.chat_detail_member_invite, (ViewGroup) gridLayout, false);
                } else {
                    i = 0;
                }
                viewInflate.getLayoutParams().width = (int) fDpToPx;
                gridLayout.addView(viewInflate, i);
                ThreadDetailFragment.this.inviteView = viewInflate;
                viewInflate.setOnClickListener(this.subviewClickListener);
                return viewCreateView4;
            }
            if (obj == ThreadDetailFragment.MUTE) {
                View viewCreateView5 = createView(R.layout.chat_detail_mute, viewGroup, view);
                viewCreateView5.findViewById(R.id.chat_mute_icon).setVisibility(object.alertOption == 2 ? 0 : 4);
                CompoundButton compoundButton = (CompoundButton) viewCreateView5.findViewById(R.id.chat_mute);
                compoundButton.setChecked(object.alertOption == 2);
                compoundButton.setOnClickListener(this.subviewClickListener);
                return viewCreateView5;
            }
            if (obj == ThreadDetailFragment.PIN) {
                View viewCreateView6 = createView(R.layout.chat_detail_pin, viewGroup, view);
                CompoundButton compoundButton2 = (CompoundButton) viewCreateView6.findViewById(R.id.chat_pin);
                compoundButton2.setChecked(object.isPinned);
                compoundButton2.setOnClickListener(this.subviewClickListener);
                return viewCreateView6;
            }
            if (obj == ThreadDetailFragment.ANNOUNCEMENT) {
                View viewCreateView7 = createView(R.layout.chat_announcement_pin, viewGroup, view);
                View viewFindViewById2 = viewCreateView7.findViewById(R.id.announcement_container);
                TextView textView = (TextView) viewCreateView7.findViewById(R.id.announcement_content);
                View viewFindViewById3 = viewCreateView7.findViewById(R.id.announcement_right_icon);
                String announcement = object.getAnnouncement();
                if (TextUtils.isEmpty(announcement)) {
                    viewFindViewById2.setVisibility(8);
                    viewFindViewById3.setVisibility(0);
                } else {
                    viewFindViewById2.setVisibility(0);
                    viewFindViewById3.setVisibility(8);
                    textView.setText(announcement);
                }
                viewCreateView7.setOnClickListener(this.subviewClickListener);
                return viewCreateView7;
            }
            if (obj == ThreadDetailFragment.AV_PERMISSION) {
                View viewCreateView8 = createView(R.layout.chat_detail_av_permission, viewGroup, view);
                viewCreateView8.findViewById(R.id.action).setOnClickListener(this.subviewClickListener);
                return viewCreateView8;
            }
            if (obj == ThreadDetailFragment.SCREENROOM_PERMISSION) {
                View viewCreateView9 = createView(R.layout.chat_detail_screenroom_permission, viewGroup, view);
                viewCreateView9.findViewById(R.id.action).setOnClickListener(this.subviewClickListener);
                return viewCreateView9;
            }
            if (obj == ThreadDetailFragment.CHANGE_BACKGROUND) {
                View viewCreateView10 = createView(R.layout.chat_detail_change_background, viewGroup, view);
                View viewFindViewById4 = viewCreateView10.findViewById(R.id.background_thumbnail_blur);
                NVImageView nVImageView = (NVImageView) viewCreateView10.findViewById(R.id.background_thumbnail);
                Media background = object.getBackground();
                if (background != null) {
                    viewFindViewById4.setVisibility(8);
                    nVImageView.setImageMedia(background);
                } else {
                    ConfigService configService = (ConfigService) getService("config");
                    ThemePackService themePackService = (ThemePackService) getService("themePack");
                    DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
                    Drawable drawable = themePackService.getDrawable(configService.getCommunityId(), ThemePackService.ThemeObject.BACKGROUND, Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels), Math.max(displayMetrics.widthPixels, displayMetrics.heightPixels));
                    if (drawable == null) {
                        int themeColor = themePackService.getThemeColor(configService.getCommunityId());
                        float[] fArr = new float[3];
                        Color.colorToHSV(themeColor, fArr);
                        fArr[2] = fArr[2] * 0.85f;
                        int iHSVToColor = Color.HSVToColor(fArr);
                        viewFindViewById4.setVisibility(8);
                        nVImageView.setImageDrawable(new ColorDrawable(iHSVToColor));
                    } else {
                        viewFindViewById4.setVisibility(0);
                        nVImageView.setImageDrawable(drawable);
                    }
                }
                viewCreateView10.findViewById(R.id.action).setOnClickListener(this.subviewClickListener);
                return viewCreateView10;
            }
            if (obj == ThreadDetailFragment.MEMBERS_CAN_INVITE) {
                View viewCreateView11 = createView(R.layout.chat_detail_members_can_invite, viewGroup, view);
                CompoundButton compoundButton3 = (CompoundButton) viewCreateView11.findViewById(R.id.chat_members_can_invite);
                compoundButton3.setChecked(object.canMemberInvite());
                compoundButton3.setOnClickListener(this.subviewClickListener);
                return viewCreateView11;
            }
            if (obj == ThreadDetailFragment.ORGANIZER_TRANS) {
                View viewCreateView12 = createView(R.layout.chat_detail_organizer_trans, viewGroup, view);
                viewCreateView12.findViewById(R.id.action).setOnClickListener(this.subviewClickListener);
                return viewCreateView12;
            }
            if (obj == ThreadDetailFragment.ACTIONS) {
                View viewCreateView13 = createView(R.layout.chat_detail_actions, viewGroup, view);
                View viewFindViewById5 = viewCreateView13.findViewById(R.id.chat_join);
                viewFindViewById5.setVisibility(object.membershipStatus != 1 ? 0 : 8);
                viewFindViewById5.setOnClickListener(this.subviewClickListener);
                View viewFindViewById6 = viewCreateView13.findViewById(R.id.chat_leave);
                viewFindViewById6.setVisibility(object.membershipStatus == 1 ? 0 : 8);
                viewFindViewById6.setOnClickListener(this.subviewClickListener);
                View viewFindViewById7 = viewCreateView13.findViewById(R.id.see_chat_list);
                viewFindViewById7.setVisibility(ThreadDetailFragment.this.getBooleanParam("showListEntry") ? 0 : 8);
                viewFindViewById7.setOnClickListener(this.subviewClickListener);
                return viewCreateView13;
            }
            if (obj == ThreadDetailFragment.BUBBLE_STYLE) {
                View viewCreateView14 = createView(R.layout.item_chat_bubble_style, viewGroup, view);
                ChatBubble curBubble = getObject().getCurBubble(((AccountService) getService("account")).getUserId());
                NVImageView nVImageView2 = (NVImageView) viewCreateView14.findViewById(R.id.cur_bubble);
                nVImageView2.setShowPressedMask(false);
                if (curBubble != null && curBubble.getPreviewUrl() != null) {
                    nVImageView2.setImageUrl(curBubble.getPreviewUrl());
                } else {
                    nVImageView2.setImageDrawable(ContextCompat.getDrawable(getContext(), R.drawable.ic_default_bubble));
                }
                viewCreateView14.setOnClickListener(this.subviewClickListener);
                return viewCreateView14;
            }
            if (obj == ThreadDetailFragment.VIEW_ONLY) {
                View viewCreateView15 = createView(R.layout.chat_detail_view_only, viewGroup, view);
                CompoundButton compoundButton4 = (CompoundButton) viewCreateView15.findViewById(R.id.view_only);
                compoundButton4.setChecked(object.isViewOnly());
                compoundButton4.setOnClickListener(this.subviewClickListener);
                return viewCreateView15;
            }
            if (obj == ThreadDetailFragment.ENABLE_PROPS) {
                View viewCreateView16 = createView(R.layout.chat_detail_enable_props, viewGroup, view);
                CompoundButton compoundButton5 = (CompoundButton) viewCreateView16.findViewById(R.id.enable_props);
                compoundButton5.setChecked(object.isEnableProps());
                compoundButton5.setOnClickListener(this.subviewClickListener);
                return viewCreateView16;
            }
            if (obj == ThreadDetailFragment.PUBLISH_TO_GLOBAL) {
                View viewCreateView17 = createView(R.layout.chat_detail_publish_to_global, viewGroup, view);
                CompoundButton compoundButton6 = (CompoundButton) viewCreateView17.findViewById(R.id.publish_to_global);
                compoundButton6.setChecked(object.isPublishToGlobal());
                compoundButton6.setOnClickListener(this.subviewClickListener);
                return viewCreateView17;
            }
            if (obj == ThreadDetailFragment.FANS_ONLY) {
                View viewCreateView18 = createView(R.layout.chat_detail_fans_only, viewGroup, view);
                CompoundButton compoundButton7 = (CompoundButton) viewCreateView18.findViewById(R.id.fans_only);
                compoundButton7.setChecked(object.isFansOnly());
                compoundButton7.setOnClickListener(this.subviewClickListener);
                return viewCreateView18;
            }
            if (obj == ThreadDetailFragment.COHOST) {
                View viewCreateView19 = createView(R.layout.chat_detail_add_co_host, viewGroup, view);
                viewCreateView19.findViewById(R.id.action).setOnClickListener(this.subviewClickListener);
                return viewCreateView19;
            }
            if (obj == ThreadDetailFragment.MARGIN) {
                return createView(R.layout.chat_detail_margin, viewGroup, view);
            }
            if (obj == ThreadDetailFragment.DIVIDE) {
                return createView(R.layout.chat_detail_divide, viewGroup, view);
            }
            return super.getCell(obj, view, viewGroup);
        }

        @Override // com.narvii.detail.DetailAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            boolean z = obj == ThreadDetailFragment.ACTIONS && view2 != null && view2.getId() == R.id.chat_join;
            boolean z2 = obj == ThreadDetailFragment.MEMBERS && view2 != null && view2.getId() == R.id.chat_member_invite;
            if (!(view2 != null && view2.getTag(R.id.thread_more_item) == Boolean.TRUE) && obj != ThreadDetailFragment.ANNOUNCEMENT && !ThreadDetailFragment.this.checkCommunityAvailability(z, !z2) && !z2) {
                notifyDataSetChanged();
                return true;
            }
            if (obj == ThreadDetailFragment.HEADER && view2 != null && view2.getId() == R.id.avatar) {
                Intent intent = UserProfileFragment.intent(this, getObject().owner());
                if (intent == null) {
                    return true;
                }
                intent.putExtra("Source", "Chat Thread More Info");
                startActivity(intent);
                return true;
            }
            if (obj == ThreadDetailFragment.MEMBERS && view2 != null) {
                if (view2.getId() == R.id.chat_member && (view2.getTag() instanceof User)) {
                    ThreadDetailFragment.this.userOptions((User) view2.getTag());
                    return true;
                }
                if (view2.getId() == R.id.chat_member_invite) {
                    if (!ThreadDetailFragment.this.autoClicking) {
                        LogEvent.clickBuilder(this, ActSemantic.invite).area("InviteButton").send();
                    }
                    final ChatThread object = getObject();
                    boolean z3 = object.membershipStatus == 1;
                    if (!ThreadDetailFragment.this.notJoined() && z3 && (object.singleChat() || ((object.publicChat() || object.groupChat()) && (ThreadDetailFragment.this.isHost() || ThreadDetailFragment.this.isCoHost() || object.canMemberInvite())))) {
                        ThreadDetailFragment.this.inviteMembers();
                    } else if ((object.groupChat() || object.singleChat()) && object.membershipStatus == 2) {
                        new VVChatHelper(this).showAcceptChatInvitationDialog(object, new Callback<Boolean>() { // from class: com.narvii.chat.detail.ThreadDetailFragment.Adapter.3
                            @Override // com.narvii.util.Callback
                            public void call(Boolean bool) {
                                new ChatRequestHelper(ThreadDetailFragment.this).sendJoinChatThreadRequest(object.threadId, ((AccountService) Adapter.this.getService("account")).getUserId(), object, new Callback<Boolean>() { // from class: com.narvii.chat.detail.ThreadDetailFragment.Adapter.3.1
                                    @Override // com.narvii.util.Callback
                                    public void call(Boolean bool2) {
                                        ThreadDetailFragment.this.inviteMembers();
                                    }
                                });
                            }
                        });
                    } else if (object.groupChat()) {
                        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
                        aCMAlertDialog.setMessage(R.string.can_not_invite_chat_hint);
                        aCMAlertDialog.addButton(R.string.yes, null);
                        aCMAlertDialog.show();
                    } else {
                        ShareDialog.getShareDialogForThread(this, object).show();
                    }
                    return true;
                }
                if (view2.getId() == R.id.more) {
                    ChatThread object2 = getObject();
                    Intent intent2 = FragmentWrapperActivity.intent(ThreadMemberListFragment.class);
                    intent2.putExtra("threadId", object2.id());
                    intent2.putExtra("thread", JacksonUtils.writeAsString(object2));
                    intent2.putExtra(RtcService.KEY_COMMUNITY, JacksonUtils.writeAsString(ThreadDetailFragment.this.community));
                    startActivity(intent2);
                    return true;
                }
            }
            if (obj == ThreadDetailFragment.MUTE) {
                ThreadDetailFragment.this.switchClicked(true);
                return true;
            }
            if (obj == ThreadDetailFragment.PIN) {
                ThreadDetailFragment.this.switchClicked(false);
                return true;
            }
            if (obj == ThreadDetailFragment.ANNOUNCEMENT) {
                LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("Announcement").send();
                ChatThread object3 = getObject();
                String announcement = object3.getAnnouncement();
                if ((ThreadDetailFragment.this.isHost() || ThreadDetailFragment.this.isCoHost()) && TextUtils.isEmpty(announcement)) {
                    startActivity(EditThreadAnnouncementFragment.Companion.intent(object3));
                } else {
                    startActivity(ThreadAnnouncementFragment.Companion.intent(object3));
                }
                return true;
            }
            if (obj == ThreadDetailFragment.VIEW_ONLY) {
                ThreadDetailFragment.this.switchProperties(1);
                return true;
            }
            if (obj == ThreadDetailFragment.ENABLE_PROPS) {
                ThreadDetailFragment.this.switchProperties(2);
                return true;
            }
            if (obj == ThreadDetailFragment.PUBLISH_TO_GLOBAL) {
                ThreadDetailFragment.this.switchProperties(3);
            }
            if (obj == ThreadDetailFragment.FANS_ONLY) {
                ThreadDetailFragment.this.switchProperties(4);
            }
            if (obj == ThreadDetailFragment.COHOST) {
                LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("AddCoHost").send();
                Intent intent3 = FragmentWrapperActivity.intent(AddCoHostFragment.class);
                intent3.putExtra("thread", JacksonUtils.writeAsString(getObject()));
                startActivity(intent3);
                return true;
            }
            if (obj == ThreadDetailFragment.COPY) {
                if (view2 != null) {
                    if (view2.getId() == R.id.copy_link_container) {
                        ShareViewHelper shareViewHelper = new ShareViewHelper(this);
                        shareViewHelper.source = "Chat Thread More Info";
                        shareViewHelper.copyLink(ThreadDetailFragment.this.adapter.getObject());
                    } else if (view2.getId() == R.id.flag) {
                        ThreadDetailFragment.this.showThreadFlagDialog();
                    }
                }
                return true;
            }
            if (obj == ThreadDetailFragment.CHANGE_BACKGROUND) {
                ThreadDetailFragment.this.changeBackground();
                return true;
            }
            if (obj == ThreadDetailFragment.MEMBERS_CAN_INVITE) {
                ThreadDetailFragment.this.switchUserCanInviteClicked();
                return true;
            }
            if (obj == ThreadDetailFragment.ORGANIZER_TRANS) {
                if (getObject().isFansOnly()) {
                    showNotAllowTransformFansOnlyThread();
                } else {
                    ThreadDetailFragment.this.transOrganizer();
                }
            }
            if (obj == ThreadDetailFragment.ACTIONS) {
                Fragment fragmentFindFragmentByTag = ThreadDetailFragment.this.getChildFragmentManager().findFragmentByTag("joinThread");
                if (fragmentFindFragmentByTag != null) {
                    ThreadDetailFragment.this.getChildFragmentManager().beginTransaction().remove(fragmentFindFragmentByTag).commit();
                }
                JoinThreadFragment joinThreadFragment = new JoinThreadFragment();
                Bundle bundle = new Bundle();
                bundle.putString("id", ThreadDetailFragment.this.getStringParam("id"));
                ChatThread object4 = getObject();
                bundle.putString("thread", JacksonUtils.writeAsString(object4));
                joinThreadFragment.setArguments(bundle);
                ThreadDetailFragment.this.getChildFragmentManager().beginTransaction().add(joinThreadFragment, "joinThread").commit();
                ThreadDetailFragment.this.getChildFragmentManager().executePendingTransactions();
                if (view2 != null) {
                    if (view2.getId() == R.id.chat_join) {
                        if (new ChatHelper(getContext()).isMeAccessibleToThisChat(getObject())) {
                            joinThreadFragment.joinConversation();
                        } else if (getObject() != null) {
                            FansOnlyHintDialog.showFansOnlyHintDialog(this, getObject(), "Chat Thread");
                        }
                    } else if (view2.getId() == R.id.chat_leave) {
                        LogEvent.clickWildcardBuilder(this).area("LeaveConversationButton").send();
                        ThreadDetailFragment.this.chatHelper.leaveChat(ThreadDetailFragment.this.getStringParam("id"), object4, ThreadDetailFragment.this.getChildFragmentManager());
                    } else if (view2.getId() == R.id.see_chat_list) {
                        Intent intent4 = FragmentWrapperActivity.intent(ChatFragment.class);
                        intent4.putExtra("id", object4.id());
                        intent4.putExtra("thread", JacksonUtils.writeAsString(object4));
                        startActivity(intent4);
                    }
                }
                return true;
            }
            if (obj == ThreadDetailFragment.BUBBLE_STYLE) {
                Intent intent5 = FragmentWrapperActivity.intent(BubbleSettingFragment.class);
                ChatThread object5 = getObject();
                intent5.putExtra(BubbleSettingFragment.KEY_CHAT_THREAD, JacksonUtils.writeAsString(object5));
                intent5.putExtra("key_thread_id", object5.id());
                startActivity(intent5);
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        private void showNotAllowTransformFansOnlyThread() {
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
            aCMAlertDialog.setMessage(R.string.not_allow_transfrom_fans_only_chat);
            aCMAlertDialog.addButton(R.string.got_it, null);
            aCMAlertDialog.show();
        }

        @Override // com.narvii.detail.DetailAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            FanClub fanClub;
            List<User> list;
            int iIndexOfId;
            if (Utils.isEqualsNotNull(notification.id, ThreadDetailFragment.this.id())) {
                String str = notification.action;
                if (str == "delete") {
                    ThreadDetailFragment.this.finish();
                    return;
                }
                if ((notification.obj instanceof ChatThread) && (str == "update" || str == "edit")) {
                    Bundle bundle = notification.bundle;
                    if (bundle != null && (bundle.getBoolean("_fromChatFragment") || notification.bundle.getBoolean("_fromThreadDetailFragment"))) {
                        return;
                    }
                    ChatThread object = getObject();
                    ThreadResponse threadResponse = new ThreadResponse();
                    threadResponse.thread = (ChatThread) notification.obj;
                    if (object != null) {
                        ChatThread chatThread = threadResponse.thread;
                        if (chatThread.tipInfo == null) {
                            chatThread.tipInfo = object.tipInfo;
                        }
                    }
                    updateResponse(threadResponse);
                    Adapter adapter = ThreadDetailFragment.this.adapter;
                    if (adapter != null) {
                        adapter.notifyDataSetChanged();
                    }
                }
            }
            Object obj = notification.obj;
            if ((obj instanceof ChatBubbleNotificationWrapper) && Utils.isEqualsNotNull(((ChatBubbleNotificationWrapper) obj).threadId, ThreadDetailFragment.this.id())) {
                ChatBubbleNotificationWrapper chatBubbleNotificationWrapper = (ChatBubbleNotificationWrapper) notification.obj;
                ChatThread object2 = getObject();
                if (object2.chatBubbles == null) {
                    object2.chatBubbles = new HashMap();
                }
                AccountService accountService = (AccountService) getService("account");
                if (accountService.getUserId() != null) {
                    object2.chatBubbles.put(accountService.getUserId(), chatBubbleNotificationWrapper.chatBubble);
                }
                ThreadResponse threadResponse2 = new ThreadResponse();
                threadResponse2.thread = object2;
                updateResponse(threadResponse2);
                Adapter adapter2 = ThreadDetailFragment.this.adapter;
                if (adapter2 != null) {
                    adapter2.notifyDataSetChanged();
                }
            }
            Object obj2 = notification.obj;
            if ((obj2 instanceof User) && notification.action == "update" && (list = this.memberList) != null && (iIndexOfId = Utils.indexOfId(list, ((User) obj2).id())) >= 0) {
                User user = this.memberList.get(iIndexOfId);
                User user2 = (User) ((User) notification.obj).m46clone();
                user2.membershipStatus = user.membershipStatus;
                this.memberList.set(iIndexOfId, user2);
                notifyDataSetChanged();
            }
            Object obj3 = notification.obj;
            if (obj3 instanceof FanClub) {
                if (Utils.isEqualsNotNull(((FanClub) obj3).targetUid, getObject() == null ? null : getObject().uid()) && !new ChatHelper(getContext()).isMeAccessibleToThisChat(getObject()) && (fanClub = ((AccountService) getService("account")).getFanClub(((FanClub) notification.obj).targetUid)) != null && fanClub.isActive() && getObject() != null) {
                    getObject().needHidden = false;
                    notifyDataSetChanged();
                }
            }
            Object obj4 = notification.obj;
            if ((obj4 instanceof ThreadNotification) && notification.action == "update") {
                ThreadNotification threadNotification = (ThreadNotification) obj4;
                int i = threadNotification.action;
                if (i == 2) {
                    Object obj5 = threadNotification.targetObj;
                    if (obj5 != null) {
                        ThreadDetailFragment.this.addMembers((List) obj5);
                    }
                } else if (i == 1) {
                    Object obj6 = threadNotification.targetObj;
                    if (obj6 instanceof User) {
                        ThreadDetailFragment.this.removeUser((User) obj6);
                    }
                }
            }
            ThreadDetailFragment.this.updateHeader();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showThreadFlagDialog() {
        if (checkCommunityAvailability(false, true)) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            actionSheetDialog.addItem(R.string.flag_chat_info, 0);
            actionSheetDialog.addItem(R.string.flag_chat_message, 0);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.chat.detail.ThreadDetailFragment.4
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (i == 0) {
                        ThreadDetailFragment.this.showFlagReportDialog();
                        dialogInterface.dismiss();
                    } else {
                        if (i != 1) {
                            return;
                        }
                        AlertDialog alertDialog = new AlertDialog(ThreadDetailFragment.this.getContext());
                        alertDialog.setTitle(R.string.flag_notify_title);
                        alertDialog.setMessage(R.string.flag_chat_message_note_hint);
                        alertDialog.addButton(android.R.string.ok, 4, (View.OnClickListener) null);
                        alertDialog.show();
                        dialogInterface.dismiss();
                    }
                }
            });
            actionSheetDialog.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showFlagReportDialog() {
        new FlagReportOptionDialog.Builder(this).nvObject(this.adapter.getObject()).build().show();
    }

    public void userOptions(final User user) {
        if (user == null) {
            return;
        }
        Adapter adapter = this.adapter;
        ChatThread object = adapter == null ? null : adapter.getObject();
        if (object == null) {
            return;
        }
        new ChatUserInfoEntryHelper(this).showUserInfoInChatThread(object, user, "Chat Thread More Info", new UserDialog.UserDialogClickListener() { // from class: com.narvii.chat.detail.ThreadDetailFragment.5
            @Override // com.narvii.onlinestatus.UserDialog.UserDialogClickListener
            public void onClicked(int i, NVObject nVObject) {
                Adapter adapter2;
                List<User> list;
                if (i == 1) {
                    ChatInviteFragment chatInviteFragment = (ChatInviteFragment) ThreadDetailFragment.this.getFragmentManager().findFragmentByTag("chatInvite");
                    if (chatInviteFragment != null) {
                        chatInviteFragment.startChat(user.uid());
                        return;
                    }
                    return;
                }
                if (i == 2) {
                    Intent intent = UserProfileFragment.intent(ThreadDetailFragment.this, user);
                    if (intent == null) {
                        return;
                    }
                    intent.putExtra("Source", "Chat Thread More Info");
                    ThreadDetailFragment.this.startActivity(intent);
                    return;
                }
                if (i == 3) {
                    new FlagReportOptionDialog.Builder(ThreadDetailFragment.this).nvObject(user).miniProfile(true).build().show();
                    return;
                }
                if (i != 4) {
                    if (i == 7 && (adapter2 = ThreadDetailFragment.this.adapter) != null && (list = adapter2.memberList) != null && Utils.removeId(list, user.id()) > 0) {
                        ThreadDetailFragment.this.adapter.notifyDataSetChanged();
                        return;
                    }
                    return;
                }
                ThreadDetailFragment.this.deleteMember(user);
            }
        });
    }

    public void deleteMember(final User user) {
        ChatThread object = this.adapter.getObject();
        if (object == null) {
            return;
        }
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        new ChatRequestHelper(this).sendDeleteThreadRequest(user.uid, object.threadId, object, new Callback<Object>() { // from class: com.narvii.chat.detail.ThreadDetailFragment.6
            @Override // com.narvii.util.Callback
            public void call(Object obj) {
                progressDialog.dismiss();
                if (obj == Boolean.TRUE) {
                    ThreadDetailFragment.this.removeUser(user);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeUser(User user) {
        List<User> list;
        Adapter adapter = this.adapter;
        if (adapter == null || (list = adapter.memberList) == null) {
            return;
        }
        Iterator<User> it = list.iterator();
        while (it.hasNext()) {
            if (Utils.isEquals(it.next().uid, user.uid)) {
                it.remove();
            }
        }
        this.adapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isMeInfluencer() {
        User userProfile = this.accountService.getUserProfile();
        return userProfile != null && userProfile.isInfluencer();
    }

    public void inviteMembers() {
        ChatThread object = this.adapter.getObject();
        if (object == null) {
            return;
        }
        if (object.type == 0 && object.membershipStatus == 1) {
            Intent intent = FragmentWrapperActivity.intent(MultiUserPickerFragment.class);
            ArrayList arrayList = new ArrayList();
            List<User> list = this.adapter.memberList;
            if (list != null) {
                for (User user : list) {
                    int i = user.membershipStatus;
                    if (i == 2 || i == 1) {
                        arrayList.add(user);
                    }
                }
            }
            intent.putExtra("exists", JacksonUtils.writeAsString(arrayList));
            intent.putExtra("showSearchBar", true);
            intent.putExtra("maxMember", 100);
            intent.putExtra("threadId", object.id());
            startActivityForResult(intent, 1);
            return;
        }
        int i2 = object.type;
        if (i2 == 1 || i2 == 2) {
            ArrayList arrayList2 = new ArrayList();
            List<User> list2 = this.adapter.memberList;
            if (list2 != null) {
                for (User user2 : list2) {
                    int i3 = user2.membershipStatus;
                    if (i3 == 2 || i3 == 1) {
                        arrayList2.add(user2.id());
                    }
                }
            }
            int iMax = object.membersCount;
            List<User> list3 = this.adapter.memberList;
            if (list3 != null) {
                iMax = Math.max(iMax, list3.size());
            } else {
                List<User> list4 = object.membersSummary;
                if (list4 != null) {
                    iMax = Math.max(iMax, list4.size());
                }
            }
            if (iMax >= object.membersQuota) {
                AlertDialog alertDialog = new AlertDialog(getContext());
                alertDialog.setTitle(getString(R.string.chat_reach_limit, Integer.valueOf(object.membersQuota)));
                alertDialog.addButton(android.R.string.ok, 0, (View.OnClickListener) null);
                alertDialog.show();
                return;
            }
            Intent intent2 = FragmentWrapperActivity.intent(MultiUserPickerFragment.class);
            intent2.putExtra("showSearchBar", true);
            List<User> list5 = this.adapter.memberList;
            if (list5 == null) {
                list5 = object.membersSummary;
            }
            intent2.putExtra("exists", JacksonUtils.writeAsString(list5));
            intent2.putExtra("maxMember", object.membersQuota);
            intent2.putExtra("threadId", object.id());
            intent2.putExtra("userids", JacksonUtils.writeAsString(arrayList2));
            startActivityForResult(intent2, 2);
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        ArrayList listAs;
        if (i == 2 && i2 == -1 && intent != null && (listAs = JacksonUtils.readListAs(intent.getStringExtra("users"), User.class)) != null && !listAs.isEmpty()) {
            addMembers(listAs);
        }
        if (i == 1 && i2 == -1 && intent != null) {
            String userId = ((AccountService) getService("account")).getUserId();
            ArrayList<User> listAs2 = JacksonUtils.readListAs(intent.getStringExtra("users"), User.class);
            ChatThread object = this.adapter.getObject();
            if (object != null && object.membersSummary != null && listAs2 != null && listAs2.size() > 0) {
                ArrayList arrayList = new ArrayList();
                String str = null;
                for (User user : object.membersSummary) {
                    if (!Utils.isEquals(user.uid, userId)) {
                        arrayList.add(user.uid);
                        str = user.uid;
                        if (user.membershipStatus == 0) {
                            user.membershipStatus = 2;
                        }
                    }
                }
                for (User user2 : listAs2) {
                    if (!Utils.isEquals(user2.uid, userId) && !arrayList.contains(user2.uid)) {
                        arrayList.add(user2.uid);
                    }
                }
                if (arrayList.size() == 1 && Utils.isEqualsNotNull(arrayList.get(0), str)) {
                    new ChatRequestHelper(this).sendInviteMemberToExistedChatRequest(str, new Callback<Object>() { // from class: com.narvii.chat.detail.ThreadDetailFragment.7
                        @Override // com.narvii.util.Callback
                        public void call(Object obj) {
                            if ((obj instanceof Boolean) && ((Boolean) obj).booleanValue()) {
                                ThreadDetailFragment.this.finish();
                            }
                        }
                    });
                    return;
                }
                ChatInviteFragment chatInviteFragment = (ChatInviteFragment) getFragmentManager().findFragmentByTag("chatInvite");
                if (chatInviteFragment != null && arrayList.size() > 1) {
                    chatInviteFragment.askInvite((String[]) arrayList.toArray(new String[0]));
                }
                chatInviteFragment.onStartListener = new Callback<ChatThread>() { // from class: com.narvii.chat.detail.ThreadDetailFragment.8
                    @Override // com.narvii.util.Callback
                    public void call(ChatThread chatThread) {
                        ThreadDetailFragment.this.finish();
                    }
                };
            }
        }
        super.onActivityResult(i, i2, intent);
    }

    public void addMembers(List<User> list) {
        final ChatThread object = this.adapter.getObject();
        if (object == null) {
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
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.chat.detail.ThreadDetailFragment.9
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                List<User> list2;
                Adapter adapter = ThreadDetailFragment.this.adapter;
                int i = 0;
                if (adapter != null && (list2 = adapter.memberList) != null) {
                    Iterator<User> it = list2.iterator();
                    while (it.hasNext()) {
                        if (arrayList2.contains(it.next().uid)) {
                            it.remove();
                        }
                    }
                    ThreadDetailFragment.this.adapter.memberList.addAll(0, arrayList);
                    ThreadDetailFragment.this.adapter.notifyDataSetChanged();
                }
                ChatThread chatThread = (ChatThread) object.m46clone();
                List<User> list3 = chatThread.membersSummary;
                if (list3 != null) {
                    Iterator<User> it2 = list3.iterator();
                    while (it2.hasNext()) {
                        if (arrayList2.contains(it2.next().uid)) {
                            it2.remove();
                        }
                    }
                    chatThread.membersSummary.addAll(arrayList);
                }
                Iterator it3 = arrayList.iterator();
                while (it3.hasNext()) {
                    if (((User) it3.next()).membershipStatus == 1) {
                        i++;
                    }
                }
                chatThread.membersCount += i;
                ThreadDetailFragment.this.sendNotification(new Notification("update", chatThread));
            }
        };
        progressDialog.show();
        ((ApiService) getService("api")).exec(ApiRequest.builder().chatServer().post().path("/chat/thread/" + object.threadId + "/member/invite").param("uids", arrayNodeCreateArrayNode).build(), progressDialog.dismissListener);
    }

    public void switchProperties(int i) {
        switchProperties(i, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x01a0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void switchProperties(final int r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 453
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.chat.detail.ThreadDetailFragment.switchProperties(int, boolean):void");
    }

    private void showPtgAndFansOnlyConflictDialog(final boolean z) {
        final ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
        aCMAlertDialog.setMessage(getString(z ? R.string.thread_publish_to_global_comfirm : R.string.thread_fans_only_confirm));
        aCMAlertDialog.addButton(R.string.cancel, new View.OnClickListener() { // from class: com.narvii.chat.detail.-$$Lambda$ThreadDetailFragment$a21rVzKuqJFFuGvsRDdPb0uImgE
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showPtgAndFansOnlyConflictDialog$0$ThreadDetailFragment(aCMAlertDialog, view);
            }
        });
        aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.chat.detail.-$$Lambda$ThreadDetailFragment$onaVqTl0rEr8GTbMAJ2lchQoNX0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$showPtgAndFansOnlyConflictDialog$1$ThreadDetailFragment(z, aCMAlertDialog, view);
            }
        });
        aCMAlertDialog.setCancelable(false);
        aCMAlertDialog.show();
    }

    public /* synthetic */ void lambda$showPtgAndFansOnlyConflictDialog$0$ThreadDetailFragment(ACMAlertDialog aCMAlertDialog, View view) {
        this.adapter.notifyDataSetChanged();
        aCMAlertDialog.dismiss();
    }

    public /* synthetic */ void lambda$showPtgAndFansOnlyConflictDialog$1$ThreadDetailFragment(boolean z, ACMAlertDialog aCMAlertDialog, View view) {
        if (z) {
            switchProperties(3, false);
        } else {
            switchProperties(4, false);
        }
        aCMAlertDialog.dismiss();
    }

    public void switchClicked(final boolean z) {
        ApiRequest apiRequestBuild;
        ChatThread object = this.adapter.getObject();
        if (object == null) {
            return;
        }
        AccountService accountService = (AccountService) getService("account");
        if (accountService.hasAccount()) {
            final int i = object.alertOption == 2 ? 1 : 2;
            final boolean z2 = object.isPinned;
            final ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.show();
            if (z) {
                LogEvent.clickBuilder(this, i == 2 ? ActSemantic.turnOn : ActSemantic.turnOff).area("DoNotDisturb").send();
                apiRequestBuild = ApiRequest.builder().chatServer().post().path("/chat/thread/" + object.threadId + "/member/" + accountService.getUserId() + "/alert").param("alertOption", Integer.valueOf(i)).build();
            } else {
                ApiRequest.Builder builderPost = ApiRequest.builder().chatServer().post();
                StringBuilder sb = new StringBuilder();
                sb.append("/chat/thread/");
                sb.append(object.threadId);
                sb.append(z2 ? "/unpin" : "/pin");
                apiRequestBuild = builderPost.path(sb.toString()).build();
            }
            ((ApiService) getService("api")).exec(apiRequestBuild, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.chat.detail.ThreadDetailFragment.11
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                    progressDialog.dismiss();
                    ChatThread chatThread = (ChatThread) ThreadDetailFragment.this.adapter.getObject().m46clone();
                    if (z) {
                        chatThread.alertOption = i;
                    } else {
                        chatThread.isPinned = !z2;
                    }
                    NotificationUtils.sendNotificationIncludeGlobal((NotificationCenter) ThreadDetailFragment.this.getService("notification"), new Notification("update", chatThread));
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    NVToast.makeText(ThreadDetailFragment.this.getContext(), str, 0).show();
                    progressDialog.dismiss();
                    ThreadDetailFragment.this.adapter.notifyDataSetChanged();
                }
            });
        }
    }

    public void switchUserCanInviteClicked() {
        ChatThread object = this.adapter.getObject();
        if (object != null && ((AccountService) getService("account")).hasAccount()) {
            final boolean zCanMemberInvite = object.canMemberInvite();
            final ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.show();
            ApiRequest.Builder builderPost = ApiRequest.builder().chatServer().post();
            StringBuilder sb = new StringBuilder();
            sb.append("/chat/thread/");
            sb.append(object.threadId);
            sb.append("/members-can-invite/");
            sb.append(zCanMemberInvite ? "disable" : "enable");
            ((ApiService) getService("api")).exec(builderPost.path(sb.toString()).build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.chat.detail.ThreadDetailFragment.12
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                    progressDialog.dismiss();
                    ChatThread chatThread = (ChatThread) ThreadDetailFragment.this.adapter.getObject().m46clone();
                    chatThread.setCanMemberInvite(!zCanMemberInvite);
                    ThreadDetailFragment.this.sendNotification(new Notification("update", chatThread));
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    NVToast.makeText(ThreadDetailFragment.this.getContext(), str, 0).show();
                    progressDialog.dismiss();
                    ThreadDetailFragment.this.adapter.notifyDataSetChanged();
                }
            });
        }
    }

    public void changeBackground() {
        int i = this.adapter.getObject().getBackground() != null ? 70 : 6;
        this.photoDir.mkdirs();
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MediaPickerFragment.Option(100, getString(R.string.thread_choose_default_background), 0, 0));
        this.mediaPicker.pickMedia(this.photoDir, (Bundle) null, i, arrayList);
    }

    public void transOrganizer() {
        ChatThread mainChannelChatThread;
        RtcService rtcService = (RtcService) getService("rtc");
        final ChatThread object = this.adapter.getObject();
        if (rtcService.getMainChannelType() == 5 && (mainChannelChatThread = rtcService.getMainChannelChatThread()) != null && TextUtils.equals(mainChannelChatThread.threadId, object.threadId)) {
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
            aCMAlertDialog.setTitle(R.string.heads_up_ex);
            aCMAlertDialog.setMessage(R.string.trans_organizer_hint_dialog_screenroom_title);
            aCMAlertDialog.addButton(R.string.cancel, null);
            aCMAlertDialog.addButton(R.string.continue_, new View.OnClickListener() { // from class: com.narvii.chat.detail.ThreadDetailFragment.13
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Intent intent = FragmentWrapperActivity.intent(ChatOrganizerPickerFragment.class);
                    intent.putExtra("thread", JacksonUtils.writeAsString(object));
                    ThreadDetailFragment.this.startActivity(intent);
                }
            });
            aCMAlertDialog.show();
            return;
        }
        Intent intent = FragmentWrapperActivity.intent(ChatOrganizerPickerFragment.class);
        intent.putExtra("thread", JacksonUtils.writeAsString(object));
        startActivity(intent);
    }

    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(List<Media> list, Bundle bundle) throws Throwable {
        BackgroundPickerFragment backgroundPickerFragment = this.backgroundPickerFragment;
        if (backgroundPickerFragment != null) {
            backgroundPickerFragment.setChatThread(this.adapter.getObject());
            if (list == null || list.isEmpty()) {
                this.backgroundPickerFragment.deleteBackground();
            } else {
                this.backgroundPickerFragment.setBackground(list.get(0));
            }
        }
    }

    @Override // com.narvii.media.MediaPickerFragment.OnCustomOptionSelectedListener
    public void onCustomOptionSelected(MediaPickerFragment.Option option, Bundle bundle) {
        BackgroundPickerFragment backgroundPickerFragment = this.backgroundPickerFragment;
        if (backgroundPickerFragment != null) {
            backgroundPickerFragment.setChatThread(this.adapter.getObject());
            this.backgroundPickerFragment.show();
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        this.affiliationsService.removeAffiliationChangeListener(this);
        super.onDestroy();
        MediaPickerFragment mediaPickerFragment = this.mediaPicker;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.removeOnResultListener(this);
        }
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        BackgroundPickerFragment backgroundPickerFragment = this.backgroundPickerFragment;
        if (backgroundPickerFragment == null || !backgroundPickerFragment.isShown()) {
            return false;
        }
        this.backgroundPickerFragment.dismiss();
        return true;
    }

    @Override // com.narvii.theme.IFakeActionBar
    public void updateFakeActionBarThemeUI() {
        View view = this.fakeActionBar;
        if (view != null) {
            view.setBackgroundDrawable(this.configService.getTheme() == null ? null : this.configService.getTheme().fakeActionbarBackground());
        }
    }
}
