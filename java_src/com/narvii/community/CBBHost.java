package com.narvii.community;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.support.v4.content.LocalBroadcastManager;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.DrawerActivity;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.thread.MyChatsListFragment;
import com.narvii.chat.util.ChatMessageDto;
import com.narvii.config.ConfigService;
import com.narvii.drawer.DrawerHost;
import com.narvii.livelayer.CBBLiveLayerOnlineBar;
import com.narvii.livelayer.LiveLayerActivity;
import com.narvii.livelayer.LiveLayerDataSource;
import com.narvii.livelayer.LiveLayerFragment;
import com.narvii.livelayer.LiveLayerOnlineBar;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.model.CheckInHistory;
import com.narvii.model.User;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.post.entry.PostEntryDialog;
import com.narvii.theme.ThemePackService;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.logging.LoggingSource;
import com.narvii.widget.ProxyView;
import com.narvii.widget.ProxyViewHost;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.UserAvatarLayout;

/* loaded from: classes.dex */
public class CBBHost extends ProxyViewHost implements View.OnClickListener, LiveLayerOnlineBar.OnUpdateMemberCountListener, LiveLayerOnlineBar.OnAvatarShownChangeListener {
    private AccountService accountService;
    Activity activity;
    UserAvatarLayout avatarLayout;
    private final Callback<Integer> badgeCountListener;
    View chatBadge;
    private ImageView chatIcon;
    private ChatService chatService;
    private View chatTab;
    private View chatTabDivider;
    private TextView chatText;
    int cid;
    CommunityConfigHelper communityConfigHelper;
    NVContext context;
    LiveLayerDataSource dataSource;
    private DrawerHost drawerHost;
    private int indicatorX;
    int lift;
    private View mainLayout;
    View meBadge;
    private TextView meText;
    private TextView memberCount;
    View menuBadge;
    private int ndcId;
    private CBBLiveLayerOnlineBar onlineBar;
    private View onlineIcon;
    private View postEntry;
    private final AccountService.ProfileListener profileListener;
    private final BroadcastReceiver receiver;
    private final AccountService.RecentVisitorListener recentVisitorListener;
    private final BroadcastReceiver themeDownLoadReceiver;
    ChatService.ChatMessageReceptor threadCheckListener;
    private TranslateAnimation translateAnimation;

    public void onPause() {
    }

    public void onResume() {
    }

    public void onStop() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CBBHost(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.threadCheckListener = new ChatService.ChatMessageReceptor() { // from class: com.narvii.community.CBBHost.1
            @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
            public void onNewChatMessage(int i, ChatMessageDto chatMessageDto) {
            }

            @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
            public void onResetChatMessageList() {
            }

            @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
            public void onUnreadThreadCountChanged(int i) {
                ConfigService configService = (ConfigService) CBBHost.this.context.getService("config");
                if (CBBHost.this.getAttachView() == null || configService.getCommunityId() != i) {
                    return;
                }
                CBBHost.this.updateChatBadge();
                CBBHost.this.updateMenu();
            }
        };
        this.badgeCountListener = new Callback<Integer>() { // from class: com.narvii.community.CBBHost.2
            @Override // com.narvii.util.Callback
            public void call(Integer num) {
                CBBHost.this.updateMenu();
            }
        };
        this.receiver = new BroadcastReceiver() { // from class: com.narvii.community.CBBHost.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                if (AccountService.ACTION_ACCOUNT_CHANGED.equals(action)) {
                    CBBHost.this.updateAllViews();
                    return;
                }
                if (CommunityService.ACTION_COMMUNITY_CHANGED.equals(action)) {
                    if (intent.getIntExtra("id", 0) == ((ConfigService) CBBHost.this.context.getService("config")).getCommunityId()) {
                        CBBHost.this.updateChatTab();
                        CBBHost.this.updatePostEntryView();
                    }
                }
            }
        };
        this.recentVisitorListener = new AccountService.RecentVisitorListener() { // from class: com.narvii.community.CBBHost.4
            @Override // com.narvii.account.AccountService.RecentVisitorListener
            public void onVisitorCountChanged(int i, int i2) {
                CBBHost.this.meBadge.setVisibility(i > 0 ? 0 : 8);
            }
        };
        this.profileListener = new AccountService.ProfileListener() { // from class: com.narvii.community.CBBHost.5
            @Override // com.narvii.account.AccountService.ProfileListener
            public void onCheckInChanged(boolean z, int i) {
            }

            @Override // com.narvii.account.AccountService.ProfileListener
            public void onCheckInHistoryChanged(CheckInHistory checkInHistory) {
            }

            @Override // com.narvii.account.AccountService.ProfileListener
            public void onNoticeCountChanged(int i) {
            }

            @Override // com.narvii.account.AccountService.ProfileListener
            public void onProfileChanged(int i, User user) {
                if (CBBHost.this.getAttachView() != null) {
                    CBBHost.this.updateAvatar();
                }
            }

            @Override // com.narvii.account.AccountService.ProfileListener
            public void onNotificationCountChanged(int i) {
                CBBHost.this.updateMenu();
            }

            @Override // com.narvii.account.AccountService.ProfileListener
            public void onOnlineStatusChanged(int i) {
                CBBHost.this.updateMenu();
            }
        };
        this.themeDownLoadReceiver = new BroadcastReceiver() { // from class: com.narvii.community.CBBHost.6
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                ConfigService configService = (ConfigService) CBBHost.this.context.getService("config");
                if (ThemePackService.ACTION_THEME_DOWNLOAD_FINISH.equals(intent.getAction()) && configService.getCommunityId() == intent.getIntExtra("cid", -1)) {
                    CBBHost.this.updateThemeUI();
                }
            }
        };
        this.context = (NVContext) context;
        this.cid = ((ConfigService) this.context.getService("config")).getCommunityId();
        this.communityConfigHelper = new CommunityConfigHelper(this.context);
        updateService();
    }

    private void updateService() {
        this.accountService = (AccountService) this.context.getService("account");
        this.chatService = (ChatService) this.context.getService("chat");
        this.drawerHost = (DrawerHost) this.context.getService("drawerHost");
        this.ndcId = ((ConfigService) this.context.getService("config")).getCommunityId();
    }

    public void onStart() {
        updateService();
        updateDataSource();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        findViewById(R.id.cbb_menu).setOnClickListener(this);
        findViewById(R.id.cbb_online).setOnClickListener(this);
        findViewById(R.id.cbb_chat).setOnClickListener(this);
        findViewById(R.id.cbb_me).setOnClickListener(this);
        this.postEntry = findViewById(R.id.cbb_post_entry);
        this.postEntry.setOnClickListener(this);
        this.avatarLayout = (UserAvatarLayout) findViewById(R.id.cbb_me).findViewById(R.id.user_avatar_layout);
        this.avatarLayout.disableFullAvatarFrame = true;
        this.chatBadge = findViewById(R.id.cbb_chat).findViewById(R.id.badge);
        this.menuBadge = findViewById(R.id.cbb_menu).findViewById(R.id.badge);
        this.meBadge = findViewById(R.id.cbb_me).findViewById(R.id.badge);
        this.mainLayout = findViewById(R.id.main_layout);
        this.onlineIcon = findViewById(R.id.cbb_online_icon);
        this.chatIcon = (ImageView) findViewById(R.id.cbb_chat_icon);
        this.chatText = (TextView) findViewById(R.id.cbb_chat_text);
        this.meText = (TextView) findViewById(R.id.cbb_me_text);
        this.memberCount = (TextView) findViewById(R.id.member_count);
        this.chatTab = findViewById(R.id.cbb_chat);
        this.chatTabDivider = findViewById(R.id.cbb_chat_divider);
        this.onlineBar = (CBBLiveLayerOnlineBar) findViewById(R.id.online_bar);
        this.onlineBar.setOnUpdateMemberCountListener(this);
        this.onlineBar.setOnAvatarShownChangeListener(this);
        updatePostEntryView();
        updateDataSource();
    }

    public void setLift(int i) {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        if (this.lift == i) {
            return;
        }
        this.lift = i;
        if (!(this.mainLayout.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) || (marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mainLayout.getLayoutParams()) == null) {
            return;
        }
        marginLayoutParams.bottomMargin = i + Utils.getDimenPixelSize(getContext(), R.dimen.cbb_margin);
        this.mainLayout.setLayoutParams(marginLayoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAvatar() {
        this.avatarLayout.setUser(this.accountService.getUserProfile());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePostEntryView() {
        NVContext nVContext = Utils.getNVContext(getContext());
        int iColorPrimary = nVContext != null ? ((ConfigService) nVContext.getService("config")).getTheme().colorPrimary() : -7829368;
        ((ThumbImageView) findViewById(R.id.post_entry_btn2)).setImageDrawable(new ColorDrawable(iColorPrimary));
        View viewFindViewById = findViewById(R.id.theme_bg);
        if (viewFindViewById != null) {
            ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
            shapeDrawable.getPaint().setColor(Utils.getColor(iColorPrimary, 0.3f));
            viewFindViewById.setBackgroundDrawable(shapeDrawable);
        }
    }

    private void updateDataSource() {
        this.dataSource = ((LiveLayerService) this.context.getService("liveLayer")).getDataSource();
        this.onlineBar.dataSource = this.dataSource;
    }

    public void bind(Activity activity) {
        this.activity = activity;
        this.drawerHost.badgeCountListener.addListener(this.badgeCountListener);
        this.accountService.addProfileListener(this.profileListener);
        this.accountService.addRecentVisitorListener(this.recentVisitorListener);
        this.chatService.addCommunityLevelReceptor(this.ndcId, this.threadCheckListener);
        LocalBroadcastManager.getInstance(getContext()).registerReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        LocalBroadcastManager.getInstance(getContext()).registerReceiver(this.receiver, new IntentFilter(CommunityService.ACTION_COMMUNITY_CHANGED));
        LocalBroadcastManager.getInstance(getContext()).registerReceiver(this.themeDownLoadReceiver, new IntentFilter(ThemePackService.ACTION_THEME_DOWNLOAD_FINISH));
        updateTabViews();
    }

    private void updateTabViews() {
        Activity activity = this.activity;
        boolean z = (activity instanceof NVActivity) && (((NVActivity) activity).getRootFragment() instanceof MyChatsListFragment);
        this.chatIcon.setImageResource(z ? R.drawable.ic_cbb_chat_selected : R.drawable.ic_cbb_chat);
        if (z) {
            this.chatText.setTextColor(-1);
        } else {
            this.chatText.setTextColor(getContext().getResources().getColorStateList(R.color.cbb_tab_text_selector));
        }
        Activity activity2 = this.activity;
        if ((activity2 instanceof NVActivity) && (((NVActivity) activity2).getRootFragment() instanceof UserProfileFragment)) {
            this.meText.setTextColor(-1);
        } else {
            this.meText.setTextColor(getContext().getResources().getColorStateList(R.color.cbb_tab_text_selector));
        }
    }

    @Override // com.narvii.widget.ProxyViewHost
    public void attachTo(ProxyView proxyView) {
        super.attachTo(proxyView);
        this.dataSource.setLiveLayerView(this.onlineBar);
        this.onlineBar.setUserList(this.dataSource.getUserList(), this.dataSource.getCurrentMembersCount());
    }

    @Override // com.narvii.widget.ProxyViewHost
    public void detachFrom(ProxyView proxyView) {
        super.detachFrom(proxyView);
        if (this.dataSource.getLiveLayerView() == this) {
            this.dataSource.setLiveLayerView(null);
        }
    }

    public void unbind() {
        this.activity = null;
        if (this.dataSource.getLiveLayerView() == this) {
            this.dataSource.setLiveLayerView(null);
        }
        this.dataSource.setLiveLayerView(this.onlineBar);
        this.drawerHost.badgeCountListener.removeListener(this.badgeCountListener);
        this.accountService.removeProfileListener(this.profileListener);
        this.accountService.removeRecentVisitorListener(this.recentVisitorListener);
        this.chatService.removeCommunityLevelReceptor(this.ndcId, this.threadCheckListener);
        LocalBroadcastManager.getInstance(getContext()).unregisterReceiver(this.receiver);
        LocalBroadcastManager.getInstance(getContext()).unregisterReceiver(this.themeDownLoadReceiver);
    }

    public void openPostEntry() {
        this.postEntry.performClick();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        Intent intent;
        PostEntryDialog postEntryDialog;
        switch (view.getId()) {
            case R.id.cbb_chat /* 2131296682 */:
                if (this.activity != null && !Utils.shouldShowLoginPage(this.context)) {
                    Activity activity = this.activity;
                    if (!(activity instanceof NVActivity) || !(((NVActivity) activity).getRootFragment() instanceof MyChatsListFragment)) {
                        Intent intent2 = FragmentWrapperActivity.intent(MyChatsListFragment.class);
                        intent2.putExtra("Source", "HBB");
                        startActivity(intent2);
                        break;
                    }
                }
                break;
            case R.id.cbb_me /* 2131296686 */:
                if (this.activity != null && !Utils.shouldShowLoginPage(this.context)) {
                    Activity activity2 = this.activity;
                    if (!(activity2 instanceof NVActivity) || !(((NVActivity) activity2).getRootFragment() instanceof UserProfileFragment)) {
                        AccountService accountService = (AccountService) this.context.getService("account");
                        User communityUserProfile = accountService.getCommunityUserProfile();
                        if (communityUserProfile == null) {
                            intent = FragmentWrapperActivity.intent(UserProfileFragment.class);
                            intent.putExtra("id", accountService.getUserId());
                            intent.putExtra(NVActivity.INTERACTION_SCOPE, false);
                        } else {
                            intent = UserProfileFragment.intent(this.context, communityUserProfile);
                        }
                        intent.putExtra("Source", "HBB");
                        startActivity(intent);
                        break;
                    }
                }
                break;
            case R.id.cbb_menu /* 2131296688 */:
                openDrawer();
                break;
            case R.id.cbb_online /* 2131296689 */:
                if (this.activity != null) {
                    Intent intent3 = LiveLayerActivity.intent(LiveLayerFragment.class);
                    intent3.putExtra("customFinishAnimOut", R.anim.activity_push_bottom_out);
                    intent3.putExtra("customFinishAnimIn", 0);
                    intent3.putExtra("Source", "HBB");
                    if (Build.VERSION.SDK_INT > 15) {
                        LiveLayerActivity.prepare(this.activity);
                    }
                    startActivity(intent3);
                    this.activity.overridePendingTransition(R.anim.activity_push_bottom_in, 0);
                    break;
                }
                break;
            case R.id.cbb_post_entry /* 2131296691 */:
                if ((this.activity instanceof NVContext) && !Utils.shouldShowLoginPage(this.context) && (postEntryDialog = (PostEntryDialog) ((NVContext) this.activity).getService("postEntry")) != null) {
                    PostEntryDialog.MarginSpec marginSpec = new PostEntryDialog.MarginSpec();
                    int[] iArr = new int[2];
                    getLocationInWindow(iArr);
                    int[] iArr2 = new int[2];
                    this.postEntry.getLocationInWindow(iArr2);
                    int dimenPixelSize = Utils.getDimenPixelSize(getContext(), R.dimen.post_entry_padding);
                    marginSpec.marginBottom = ((iArr[1] + getHeight()) - (iArr2[1] + this.postEntry.getHeight())) - dimenPixelSize;
                    if (Utils.isRtl()) {
                        marginSpec.marginRight = (iArr2[0] - iArr[0]) - dimenPixelSize;
                    } else {
                        marginSpec.marginRight = ((iArr[0] + getWidth()) - (iArr2[0] + this.postEntry.getWidth())) - dimenPixelSize;
                    }
                    postEntryDialog.show(0, "HBB", LoggingSource.GlobalComposeMenu, marginSpec);
                    break;
                }
                break;
        }
    }

    private void startActivity(Intent intent) {
        if (intent == null || this.activity == null) {
            return;
        }
        if (!intent.hasExtra("__communityId")) {
            intent.putExtra("__communityId", this.cid);
        }
        this.activity.startActivity(intent);
    }

    private void openDrawer() throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        if (this.activity instanceof DrawerActivity) {
            DrawerHost.DRAWER_OPEN_SOURCE.set("HBB");
            ((DrawerActivity) this.activity).openDrawer();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateChatBadge() {
        ViewUtils.show(this.chatBadge, this.chatService.getUnreadChatCountInCurCommunity(this.ndcId) > 0);
    }

    @Override // com.narvii.widget.ProxyViewHost
    protected void onAttach(ProxyView proxyView) {
        super.onAttach(proxyView);
        updateAllViews();
    }

    @Override // com.narvii.widget.ProxyViewHost
    protected void onDetach(ProxyView proxyView) {
        super.onDetach(proxyView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAllViews() {
        updateAvatar();
        updateChatBadge();
        updateMenu();
        updateChatTab();
        updatePostEntryView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateChatTab() {
        boolean zIsChatEnabled = this.communityConfigHelper.isChatEnabled();
        ViewUtils.show(this.chatTab, zIsChatEnabled);
        ViewUtils.show(this.chatTabDivider, zIsChatEnabled);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMenu() {
        View view = this.menuBadge;
        DrawerHost drawerHost = this.drawerHost;
        view.setVisibility((drawerHost == null || drawerHost.getTotalBadgeCount() <= 0) ? 4 : 0);
    }

    @Override // com.narvii.livelayer.LiveLayerOnlineBar.OnAvatarShownChangeListener
    public void onAvatarShownChanged(boolean z) {
        ViewUtils.show(this.onlineIcon, !z);
        View view = this.onlineIcon;
        Context context = getContext();
        int i = R.anim.fade_out;
        view.startAnimation(AnimationUtils.loadAnimation(context, z ? R.anim.fade_out : R.anim.fade_in));
        this.onlineBar.startAnimation(AnimationUtils.loadAnimation(getContext(), z ? R.anim.fade_in : R.anim.fade_out));
        TextView textView = this.memberCount;
        Context context2 = getContext();
        if (z) {
            i = R.anim.fade_in;
        }
        textView.startAnimation(AnimationUtils.loadAnimation(context2, i));
        ViewUtils.show(this.memberCount, z);
    }

    @Override // com.narvii.livelayer.LiveLayerOnlineBar.OnUpdateMemberCountListener
    public void onUpdateMemberCount(int i) {
        this.memberCount.setText(String.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateThemeUI() {
        NVContext nVContext = Utils.getNVContext(getContext());
        if (nVContext != null) {
            int iColorPrimary = ((ConfigService) nVContext.getService("config")).getTheme().colorPrimary();
            ThumbImageView thumbImageView = (ThumbImageView) findViewById(R.id.post_entry_btn2);
            if (thumbImageView != null) {
                thumbImageView.setImageDrawable(new ColorDrawable(iColorPrimary));
            }
            View viewFindViewById = findViewById(R.id.theme_bg);
            if (viewFindViewById != null) {
                ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
                shapeDrawable.getPaint().setColor(Utils.getColor(iColorPrimary, 0.3f));
                viewFindViewById.setBackgroundDrawable(shapeDrawable);
            }
        }
    }
}
