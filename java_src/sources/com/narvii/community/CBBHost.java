package com.narvii.community;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.DrawerActivity;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.core.ChatService;
import com.narvii.chat.thread.MyChatsListFragment;
import com.narvii.chat.util.ChatMessageDto;
import com.narvii.config.ConfigService;
import com.narvii.drawer.DrawerHost;
import com.narvii.headlines.ExternalPostPreviewFragment;
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
import com.safedk.android.utils.Logger;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
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
    private final BroadcastReceiver themeDownLoadReceiver;
    ChatService.ChatMessageReceptor threadCheckListener;
    private TranslateAnimation translateAnimation;

    public static void safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(Activity p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public static void safedk_CBBHost_startActivity_c3d4e6aae429e21e7f98a5b76aba8962(CBBHost p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/community/CBBHost;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public void onPause() {
    }

    public void onResume() {
    }

    public void onStop() {
    }

    public void unbind() {
        this.activity = null;
        if (this.dataSource.getLiveLayerView() == this) {
            this.dataSource.setLiveLayerView(null);
        }
        this.dataSource.setLiveLayerView(this.onlineBar);
        this.drawerHost.badgeCountListener.removeListener(this.badgeCountListener);
        this.accountService.removeProfileListener(this.profileListener);
        this.chatService.removeCommunityLevelReceptor(this.ndcId, this.threadCheckListener);
        LocalBroadcastManager.b(getContext()).f(this.receiver);
        LocalBroadcastManager.b(getContext()).f(this.themeDownLoadReceiver);
    }

    private int[] getButtonPressedLocation() {
        return getLocationInWindow(this.postEntry);
    }

    private int[] getLocationInWindow(View view) {
        if (view == null) {
            return null;
        }
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        return iArr;
    }

    private void openDrawer() {
        if (this.activity instanceof DrawerActivity) {
            DrawerHost.DRAWER_OPEN_SOURCE.set("HBB");
            ((DrawerActivity) this.activity).openDrawer();
        }
    }

    private void startActivity(Intent intent) {
        if (intent == null || this.activity == null) {
            return;
        }
        if (!intent.hasExtra("__communityId")) {
            intent.putExtra("__communityId", this.cid);
        }
        safedk_Activity_startActivity_9d898b58165fa4ba0e12c3900a2b8533(this.activity, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAvatar() {
        this.avatarLayout.setUser(this.accountService.getUserProfile());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateChatBadge() {
        ViewUtils.show(this.chatBadge, this.chatService.getUnreadChatCountInCurCommunity(this.ndcId) > 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateChatTab() {
        boolean zIsChatEnabled = this.communityConfigHelper.isChatEnabled();
        ViewUtils.show(this.chatTab, zIsChatEnabled);
        ViewUtils.show(this.chatTabDivider, zIsChatEnabled);
    }

    private void updateDataSource() {
        LiveLayerDataSource dataSource = ((LiveLayerService) this.context.getService("liveLayer")).getDataSource();
        this.dataSource = dataSource;
        this.onlineBar.dataSource = dataSource;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMenu() {
        View view = this.menuBadge;
        DrawerHost drawerHost = this.drawerHost;
        view.setVisibility((drawerHost == null || drawerHost.getTotalBadgeCount() <= 0) ? 4 : 0);
    }

    private void updateService() {
        this.accountService = (AccountService) this.context.getService("account");
        this.chatService = (ChatService) this.context.getService("chat");
        this.drawerHost = (DrawerHost) this.context.getService("drawerHost");
        this.ndcId = ((ConfigService) this.context.getService("config")).getCommunityId();
    }

    private void updateTabViews() {
        Activity activity = this.activity;
        boolean z6 = (activity instanceof NVActivity) && (((NVActivity) activity).getRootFragment() instanceof MyChatsListFragment);
        this.chatIcon.setImageResource(z6 ? R.drawable.ic_cbb_chat_selected : R.drawable.ic_cbb_chat);
        if (z6) {
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

    public void bind(Activity activity) {
        this.activity = activity;
        this.drawerHost.badgeCountListener.addListener(this.badgeCountListener);
        this.accountService.addProfileListener(this.profileListener);
        this.chatService.addCommunityLevelReceptor(this.ndcId, this.threadCheckListener);
        LocalBroadcastManager.b(getContext()).c(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        LocalBroadcastManager.b(getContext()).c(this.receiver, new IntentFilter(CommunityService.ACTION_COMMUNITY_CHANGED));
        LocalBroadcastManager.b(getContext()).c(this.themeDownLoadReceiver, new IntentFilter(ThemePackService.ACTION_THEME_DOWNLOAD_FINISH));
        updateTabViews();
    }

    @Override // com.narvii.livelayer.LiveLayerOnlineBar.OnAvatarShownChangeListener
    public void onAvatarShownChanged(boolean z6) {
        ViewUtils.show(this.onlineIcon, !z6);
        View view = this.onlineIcon;
        Context context = getContext();
        int i10 = R.anim.fade_in;
        view.startAnimation(AnimationUtils.loadAnimation(context, z6 ? R.anim.fade_out : R.anim.fade_in));
        this.onlineBar.startAnimation(AnimationUtils.loadAnimation(getContext(), z6 ? R.anim.fade_in : R.anim.fade_out));
        TextView textView = this.memberCount;
        Context context2 = getContext();
        if (!z6) {
            i10 = R.anim.fade_out;
        }
        textView.startAnimation(AnimationUtils.loadAnimation(context2, i10));
        ViewUtils.show(this.memberCount, z6);
    }

    @Override // com.narvii.livelayer.LiveLayerOnlineBar.OnUpdateMemberCountListener
    public void onUpdateMemberCount(int i10) {
        this.memberCount.setText(String.valueOf(i10));
    }

    public void openPostEntry() {
        this.postEntry.performClick();
    }

    public void setLift(int i10) {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        if (this.lift == i10) {
            return;
        }
        this.lift = i10;
        if (!(this.mainLayout.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) || (marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mainLayout.getLayoutParams()) == null) {
            return;
        }
        marginLayoutParams.bottomMargin = i10 + Utils.getDimenPixelSize(getContext(), R.dimen.cbb_margin);
        this.mainLayout.setLayoutParams(marginLayoutParams);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CBBHost(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.threadCheckListener = new ChatService.ChatMessageReceptor() { // from class: com.narvii.community.CBBHost.1
            @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
            public void onNewChatMessage(int i10, @NotNull ChatMessageDto chatMessageDto) {
            }

            @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
            public void onResetChatMessageList() {
            }

            @Override // com.narvii.chat.core.ChatService.ChatMessageReceptor
            public void onUnreadThreadCountChanged(int i10) {
                ConfigService configService = (ConfigService) CBBHost.this.context.getService("config");
                if (CBBHost.this.getAttachView() == null || configService.getCommunityId() != i10) {
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
        this.profileListener = new AccountService.ProfileListener() { // from class: com.narvii.community.CBBHost.4
            @Override // com.narvii.account.AccountService.ProfileListener
            public void onCheckInChanged(boolean z6, int i10) {
            }

            @Override // com.narvii.account.AccountService.ProfileListener
            public void onCheckInHistoryChanged(CheckInHistory checkInHistory) {
            }

            @Override // com.narvii.account.AccountService.ProfileListener
            public void onNoticeCountChanged(int i10) {
            }

            @Override // com.narvii.account.AccountService.ProfileListener
            public void onNotificationCountChanged(int i10) {
                CBBHost.this.updateMenu();
            }

            @Override // com.narvii.account.AccountService.ProfileListener
            public void onOnlineStatusChanged(int i10) {
                CBBHost.this.updateMenu();
            }

            @Override // com.narvii.account.AccountService.ProfileListener
            public void onProfileChanged(int i10, User user) {
                if (CBBHost.this.getAttachView() != null) {
                    CBBHost.this.updateAvatar();
                }
            }
        };
        this.themeDownLoadReceiver = new BroadcastReceiver() { // from class: com.narvii.community.CBBHost.5
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                ConfigService configService = (ConfigService) CBBHost.this.context.getService("config");
                if (ThemePackService.ACTION_THEME_DOWNLOAD_FINISH.equals(intent.getAction()) && configService.getCommunityId() == intent.getIntExtra(CmcdConfiguration.KEY_CONTENT_ID, -1)) {
                    CBBHost.this.updateThemeUI();
                }
            }
        };
        NVContext nVContext = (NVContext) context;
        this.context = nVContext;
        this.cid = ((ConfigService) nVContext.getService("config")).getCommunityId();
        this.communityConfigHelper = new CommunityConfigHelper(this.context);
        updateService();
    }

    private int[] getHostViewLocation() {
        return getLocationInWindow(this);
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
    public void updatePostEntryView() {
        int iColorPrimary;
        NVContext nVContext = Utils.getNVContext(getContext());
        if (nVContext != null) {
            iColorPrimary = ((ConfigService) nVContext.getService("config")).getTheme().colorPrimary();
        } else {
            iColorPrimary = -7829368;
        }
        ((ThumbImageView) findViewById(R.id.post_entry_btn2)).setImageDrawable(new ColorDrawable(iColorPrimary));
        View viewFindViewById = findViewById(R.id.theme_bg);
        if (viewFindViewById != null) {
            ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
            shapeDrawable.getPaint().setColor(Utils.getColor(iColorPrimary, 0.3f));
            viewFindViewById.setBackgroundDrawable(shapeDrawable);
        }
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

    @Override // com.narvii.widget.ProxyViewHost
    protected void onAttach(ProxyView proxyView) {
        super.onAttach(proxyView);
        updateAllViews();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Intent intent;
        PostEntryDialog postEntryDialog;
        switch (view.getId()) {
            case R.id.cbb_chat /* 2131362395 */:
                if (this.activity != null && !Utils.shouldShowLoginPage(this.context)) {
                    Activity activity = this.activity;
                    if (!(activity instanceof NVActivity) || !(((NVActivity) activity).getRootFragment() instanceof MyChatsListFragment)) {
                        Intent intent2 = FragmentWrapperActivity.intent(MyChatsListFragment.class);
                        intent2.putExtra(ExternalPostPreviewFragment.SOURCE, "HBB");
                        safedk_CBBHost_startActivity_c3d4e6aae429e21e7f98a5b76aba8962(this, intent2);
                    }
                    break;
                }
                break;
            case R.id.cbb_me /* 2131362399 */:
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
                        intent.putExtra(ExternalPostPreviewFragment.SOURCE, "HBB");
                        safedk_CBBHost_startActivity_c3d4e6aae429e21e7f98a5b76aba8962(this, intent);
                    }
                    break;
                }
                break;
            case R.id.cbb_menu /* 2131362401 */:
                openDrawer();
                break;
            case R.id.cbb_online /* 2131362402 */:
                if (this.activity != null) {
                    Intent intent3 = LiveLayerActivity.intent(LiveLayerFragment.class);
                    intent3.putExtra("customFinishAnimOut", R.anim.activity_push_bottom_out);
                    intent3.putExtra("customFinishAnimIn", 0);
                    intent3.putExtra(ExternalPostPreviewFragment.SOURCE, "HBB");
                    LiveLayerActivity.prepare(this.activity);
                    safedk_CBBHost_startActivity_c3d4e6aae429e21e7f98a5b76aba8962(this, intent3);
                    this.activity.overridePendingTransition(R.anim.activity_push_bottom_in, 0);
                }
                break;
            case R.id.cbb_post_entry /* 2131362404 */:
                if ((this.activity instanceof NVContext) && !Utils.shouldShowLoginPage(this.context) && (postEntryDialog = (PostEntryDialog) ((NVContext) this.activity).getService("postEntry")) != null) {
                    PostEntryDialog.MarginSpec marginSpec = new PostEntryDialog.MarginSpec();
                    int[] hostViewLocation = getHostViewLocation();
                    int[] buttonPressedLocation = getButtonPressedLocation();
                    int dimenPixelSize = Utils.getDimenPixelSize(getContext(), R.dimen.post_entry_padding_delta);
                    marginSpec.marginBottom = ((hostViewLocation[1] + getHeight()) - (buttonPressedLocation[1] + this.postEntry.getHeight())) - dimenPixelSize;
                    if (Utils.isRtl()) {
                        marginSpec.marginRight = (buttonPressedLocation[0] - hostViewLocation[0]) - dimenPixelSize;
                    } else {
                        marginSpec.marginRight = ((hostViewLocation[0] + getWidth()) - (buttonPressedLocation[0] + this.postEntry.getWidth())) - dimenPixelSize;
                    }
                    postEntryDialog.show(0, "HBB", LoggingSource.GlobalComposeMenu, marginSpec);
                    break;
                }
                break;
        }
    }

    @Override // com.narvii.widget.ProxyViewHost
    protected void onDetach(ProxyView proxyView) {
        super.onDetach(proxyView);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        findViewById(R.id.cbb_menu).setOnClickListener(this);
        findViewById(R.id.cbb_online).setOnClickListener(this);
        findViewById(R.id.cbb_chat).setOnClickListener(this);
        findViewById(R.id.cbb_me).setOnClickListener(this);
        View viewFindViewById = findViewById(R.id.cbb_post_entry);
        this.postEntry = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) findViewById(R.id.cbb_me).findViewById(R.id.user_avatar_layout);
        this.avatarLayout = userAvatarLayout;
        userAvatarLayout.disableFullAvatarFrame = true;
        this.chatBadge = findViewById(R.id.cbb_chat).findViewById(R.id.badge_chat);
        this.menuBadge = findViewById(R.id.cbb_menu).findViewById(R.id.badge_menu);
        this.meBadge = findViewById(R.id.cbb_me).findViewById(R.id.badge_me);
        this.mainLayout = findViewById(R.id.main_layout);
        this.onlineIcon = findViewById(R.id.cbb_online_icon);
        this.chatIcon = (ImageView) findViewById(R.id.cbb_chat_icon);
        this.chatText = (TextView) findViewById(R.id.cbb_chat_text);
        this.meText = (TextView) findViewById(R.id.cbb_me_text);
        this.memberCount = (TextView) findViewById(R.id.member_count);
        this.chatTab = findViewById(R.id.cbb_chat);
        this.chatTabDivider = findViewById(R.id.cbb_chat_divider);
        CBBLiveLayerOnlineBar cBBLiveLayerOnlineBar = (CBBLiveLayerOnlineBar) findViewById(R.id.online_bar);
        this.onlineBar = cBBLiveLayerOnlineBar;
        cBBLiveLayerOnlineBar.setOnUpdateMemberCountListener(this);
        this.onlineBar.setOnAvatarShownChangeListener(this);
        updatePostEntryView();
        updateDataSource();
    }

    public void onStart() {
        updateService();
        updateDataSource();
    }
}
