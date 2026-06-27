package com.narvii.user.profile;

import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RectShape;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.NotificationCompat;
import android.support.v4.content.LocalBroadcastManager;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.Scopes;
import com.narvii.account.AccountService;
import com.narvii.account.visitor.RecentVisitorHelper;
import com.narvii.achievements.AchievementsFragment;
import com.narvii.achievements.AllRanksFragment;
import com.narvii.achievements.StreakStatusResponse;
import com.narvii.amino.mastes.R;
import com.narvii.app.DrawerActivity;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.bookmark.BookmarkAdapter;
import com.narvii.catalog.CatalogFragment;
import com.narvii.catalog.picker.CatalogPickerFragment;
import com.narvii.chat.ChatFragment;
import com.narvii.chat.invite.ChatInviteFragment;
import com.narvii.comment.list.CommentListAdapter;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.comment.post.CommentPostActivity;
import com.narvii.community.CBBHost;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.detail.DetailAdapter;
import com.narvii.detail.DetailFragment;
import com.narvii.detail.DetailPushUtils;
import com.narvii.detail.FeedDetailFragment;
import com.narvii.feed.FeedListAdapter;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.influencer.FanClub;
import com.narvii.influencer.FanClubSubscriptionDialog;
import com.narvii.influencer.FansInfo;
import com.narvii.influencer.FansInfoListResponse;
import com.narvii.influencer.FansListFragment;
import com.narvii.invite.InviteMembersFragment;
import com.narvii.item.post.ItemPost;
import com.narvii.item.post.ItemPostActivity;
import com.narvii.list.DividerAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVPagedAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.SwitchAdapter;
import com.narvii.list.overlay.OverlayLayout;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.livelayer.LiveLayerOnlineBar;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.logging.ObjectType;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.master.home.profile.GlobalProfileFragment;
import com.narvii.model.Blog;
import com.narvii.model.Feed;
import com.narvii.model.InfluencerInfo;
import com.narvii.model.Item;
import com.narvii.model.ItemCategory;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.Sticker;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.BlogListResponse;
import com.narvii.model.api.ItemListResponse;
import com.narvii.model.api.UserResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.modulization.Module;
import com.narvii.monetization.avatarframe.AvatarFrameMediaGalleryActivity;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.onlinestatus.ChooseMoodFragment;
import com.narvii.permisson.NVPermission;
import com.narvii.post.entry.PostEntryDialog;
import com.narvii.poweruser.AdvancedOptionDialog;
import com.narvii.prefs.AccountSettingFragment;
import com.narvii.share.ShareDarkRoomFragment;
import com.narvii.share.ShareDarkRoomHelper;
import com.narvii.share.ShareViewHelper;
import com.narvii.story.StoryApi;
import com.narvii.story.StoryListFragment;
import com.narvii.user.favorite.FavoriteUserListFragment;
import com.narvii.user.list.FollowersListFragment;
import com.narvii.user.list.FollowingListFragment;
import com.narvii.user.profile.UserFavoriteGallery;
import com.narvii.user.profile.adapter.CommentAddAdapter;
import com.narvii.user.profile.adapter.CommentHeaderAdapter;
import com.narvii.user.profile.post.UserProfilePost;
import com.narvii.user.profile.post.UserProfilePostActivity;
import com.narvii.user.title.UserTitleFlowView;
import com.narvii.userblock.BlockListResponse;
import com.narvii.userblock.UserBlockService;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.Callback;
import com.narvii.util.Constants;
import com.narvii.util.DBAminoLightHelper;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.FilterHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.NotificationUtils;
import com.narvii.util.PackageUtils;
import com.narvii.util.PaletteUtils;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.crashlytics.OomHelper;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.image.Screenshot;
import com.narvii.util.logging.LoggingSource;
import com.narvii.visitor.RecentVisitorListFragment;
import com.narvii.wallet.MembershipService;
import com.narvii.widget.ACMAlertDialog;
import com.narvii.widget.BubbleBackground;
import com.narvii.widget.MoodView;
import com.narvii.widget.NVListView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.RankingTitleView;
import com.narvii.widget.SlideshowView;
import com.narvii.widget.SpinningView;
import com.narvii.widget.SwitchButton;
import com.narvii.widget.TintButton;
import com.narvii.widget.UserAvatarLayout;
import com.narvii.widget.WalletBalanceView;
import java.io.File;
import java.io.FileOutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class UserProfileFragment extends DetailFragment implements NotificationListener {
    static final int ACTIVATION_REQUEST = 5;
    private static final int CONSECUTIVE_CHECKIN_DAY_LIMIT = 2;
    public static final float GRADIENT_RATIO = 0.3f;
    static final int ITEM_PAGE_SIZE = 25;
    static final int PICK_CATALOG_REQUEST = 3;
    public static final String SEND_NOTIFICATION = "send_notification";
    private AccountService accountService;
    private AddBlogAdapter addBlogAdapter;
    BioAdapter bioAdapter;
    private BioDividerAdapter bioDividerAdapter;
    ArrayList<Media> bioMedias;
    public BookmarkAdapter bookmarkAdapter;
    public DividerAdapter bookmarkDividerAdapter;
    private int brokenStreaks;
    CommentAdapter commentAdapter;
    CommentAddAdapter commentAddAdapter;
    public DividerAdapter commentDividerAdapter;
    CommentHeaderAdapter commentHeaderAdapter;
    CommunityConfigHelper communityConfigHelper;
    ConfigService configService;
    private int consecutiveCheckInDays;
    DateFormat dateFmt;
    DateTimeFormatter datetime;
    boolean disableSwitchListener;
    private FanClubAdapter fanClubAdapter;
    FavoriteAdapter favoriteAdapter;
    OverlayLayout header;
    private int headerLayoutHeight;
    private View headerPlaceHolder;
    boolean instagramInstalled;
    LocalBroadcastManager localBroadcastManager;
    MembershipService membershipService;
    View notActivated;
    public Callback<User> onFinishListener;
    PostAdapter postAdapter;
    public DividerAdapter postDividerAdapter;
    AccountService.ProfileListener profileListener;
    private RecentVisitorHelper recentVisitorHelper;
    boolean sendingFollow;
    ArrayList<Media> slideShowMedias;
    SwipeRefreshLayout swipeRefreshLayout;
    SwitchAdapter switchAdapter;
    NVAdapter tab1Adapter;
    NVAdapter tab2Adapter;
    NVAdapter tab3Adapter;
    TabAdapter tabAdapter;
    public TopAdapter topAdapter;
    UserBlockService userBlockService;
    static final DetailAdapter.CellType BIO_SNIPPET = new DetailAdapter.CellType("user.bio.snippet");
    static final DetailAdapter.CellType SWITCH = new DetailAdapter.CellType("user.switch");
    private boolean isAccessible = true;
    private int recentVisitorCount = 0;
    private AccountService.RecentVisitorListener recentVisitorListener = new AccountService.RecentVisitorListener() { // from class: com.narvii.user.profile.-$$Lambda$UserProfileFragment$Mxpy5efN4mmCpWnPl60EfhIb-qo
        @Override // com.narvii.account.AccountService.RecentVisitorListener
        public final void onVisitorCountChanged(int i, int i2) {
            this.f$0.lambda$new$0$UserProfileFragment(i, i2);
        }
    };
    BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.user.profile.UserProfileFragment.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            User object;
            int visitorPrivacyMode;
            if (AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction())) {
                UserProfileFragment.this.updateAccessible();
                return;
            }
            if (CommunityService.ACTION_COMMUNITY_CHANGED.equals(intent.getAction())) {
                if (intent.getIntExtra("id", 0) == UserProfileFragment.this.configService.getCommunityId()) {
                    UserProfileFragment.this.onCommunityUpdate();
                    return;
                }
                return;
            }
            if (Constants.ACTION_STREAK_REPAIR_SUCCESS.equals(intent.getAction())) {
                if (intent.getIntExtra("cid", 0) == UserProfileFragment.this.configService.getCommunityId()) {
                    UserProfileFragment.this.onSteakRepairSuccessed();
                    MembershipService membershipService = UserProfileFragment.this.membershipService;
                    if (membershipService != null) {
                        membershipService.refreshWallet(true);
                        return;
                    }
                    return;
                }
                return;
            }
            if (MembershipService.ACTION_WALLET_CHANGED.equals(intent.getAction())) {
                if (UserProfileFragment.this.isAdded()) {
                    UserProfileFragment.this.updateHeader();
                }
            } else if (AccountService.ACTION_PRIVACY_MODE_CHANGED.equals(intent.getAction()) && UserProfileFragment.this.isMe()) {
                UserProfileFragment userProfileFragment = UserProfileFragment.this;
                if (userProfileFragment.bioAdapter == null || !userProfileFragment.isAdded() || (object = UserProfileFragment.this.bioAdapter.getObject()) == null || object.visitPrivacy == (visitorPrivacyMode = UserProfileFragment.this.accountService.getVisitorPrivacyMode())) {
                    return;
                }
                object.visitPrivacy = visitorPrivacyMode;
                UserProfileFragment.this.updateHeader();
            }
        }
    };
    private final View.OnClickListener menuClickListener = new View.OnClickListener() { // from class: com.narvii.user.profile.UserProfileFragment.7
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view.getId() == R.id.menu_ops) {
                UserProfileFragment.this.popupCustomMenu();
            } else if (view.getId() == R.id.menu_online_status) {
                UserProfileFragment.this.popupOnlineStatusMenu();
            }
        }
    };
    private final View.OnClickListener headerClickListener = new View.OnClickListener() { // from class: com.narvii.user.profile.UserProfileFragment.13
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view != null && UserProfileFragment.this.preview && view.getId() != R.id.slideshow) {
                DetailFragment.showPreviewToast(UserProfileFragment.this.getContext());
                return;
            }
            if (view == null) {
                return;
            }
            if (view.getId() == R.id.user_following) {
                Intent intent = FragmentWrapperActivity.intent(FollowingListFragment.class);
                intent.putExtra("id", UserProfileFragment.this.getStringParam("id"));
                UserProfileFragment.this.startActivity(intent);
                return;
            }
            if (view.getId() == R.id.user_follower) {
                Intent intent2 = FragmentWrapperActivity.intent(FollowersListFragment.class);
                intent2.putExtra("id", UserProfileFragment.this.getStringParam("id"));
                UserProfileFragment.this.startActivity(intent2);
                return;
            }
            if (view.getId() == R.id.user_visitors) {
                BioAdapter bioAdapter = UserProfileFragment.this.bioAdapter;
                if (bioAdapter == null || bioAdapter.getObject() == null) {
                    return;
                }
                int i = UserProfileFragment.this.bioAdapter.getObject().visitPrivacy;
                if (i <= 0) {
                    i = 0;
                }
                LogEvent.clickBuilder(UserProfileFragment.this, ActSemantic.listViewEnter).area("VisitorIcon").extraParam("privacyMode", Integer.valueOf(i)).send();
                Intent intent3 = FragmentWrapperActivity.intent(RecentVisitorListFragment.class);
                intent3.putExtra("uid", UserProfileFragment.this.getStringParam("id"));
                intent3.putExtra("privacyMode", i);
                UserProfileFragment.this.startActivity(intent3);
                return;
            }
            if (view.getId() == R.id.user_avatar_layout || view.getId() == R.id.nickname) {
                User object = UserProfileFragment.this.bioAdapter.getObject();
                if (view.getId() == R.id.user_avatar_layout) {
                    LogEvent.clickBuilder(UserProfileFragment.this, ActSemantic.checkDetail).area("UserIcon").extraParam("isLiveChatting", Boolean.valueOf((object == null || object.activePublicLiveThreadId == null) ? false : true)).send();
                }
                if (object != null && !TextUtils.isEmpty(object.activePublicLiveThreadId)) {
                    Intent intent4 = FragmentWrapperActivity.intent(ChatFragment.class);
                    intent4.putExtra("id", object.activePublicLiveThreadId);
                    UserProfileFragment.this.startActivity(intent4);
                    return;
                } else {
                    if (UserProfileFragment.this.isMe()) {
                        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(UserProfileFragment.this.getContext());
                        actionSheetDialog.addItem(R.string.user_edit_avatar_frame, false);
                        actionSheetDialog.addItem(R.string.user_profile_photos, false);
                        actionSheetDialog.addItem(R.string.user_edit_my_profile, false);
                        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.user.profile.UserProfileFragment.13.1
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i2) {
                                if (i2 == 0) {
                                    UserProfileFragment.this.openUserProfilePostActivity("Action Sheet avatar frame", false, true);
                                } else if (i2 == 1) {
                                    UserProfileFragment.this.gallery(null);
                                } else {
                                    UserProfileFragment.this.editProfile("Action Sheet", false);
                                }
                            }
                        });
                        actionSheetDialog.show();
                        return;
                    }
                    UserProfileFragment.this.gallery(null);
                    return;
                }
            }
            if (view.getId() == R.id.edit_button) {
                UserProfileFragment.this.editProfile("edit button", false);
                return;
            }
            if (view.getId() == R.id.mood) {
                if (UserProfileFragment.this.isMe()) {
                    UserProfileFragment.this.popupOnlineStatusMenu();
                    return;
                } else {
                    MoodView.SHAKE_ON_CLICK_LISTENER.onClick(view);
                    return;
                }
            }
            if (view.getId() == R.id.chat_layout) {
                UserProfileFragment.this.startChat();
                return;
            }
            if (view.getId() == R.id.user_follow) {
                UserProfileFragment.this.ensureLogin(new Intent("follow"));
                return;
            }
            if (view.getId() == R.id.membership_title || view.getId() == R.id.user_reputation) {
                if (UserProfileFragment.this.isMe()) {
                    UserProfileFragment.this.goAchievements(view.getId() != R.id.membership_title ? "Reputation" : "Ranking Bar");
                    return;
                }
                Intent intent5 = FragmentWrapperActivity.intent(AllRanksFragment.class);
                intent5.putExtra("Source", view.getId() != R.id.membership_title ? "Reputation" : "Ranking Bar");
                UserProfileFragment.this.startActivity(intent5);
                return;
            }
            if (view.getId() == R.id.achievements) {
                UserProfileFragment.this.goAchievements("My User Profile Page");
            } else if (view.getId() == R.id.amino_staff_badge) {
                UserProfileFragment.this.showAminoStaffDialog();
            }
        }
    };
    private UserFavoriteGallery.OnItemClickListener itemListener = new UserFavoriteGallery.OnItemClickListener() { // from class: com.narvii.user.profile.UserProfileFragment.14
        @Override // com.narvii.user.profile.UserFavoriteGallery.OnItemClickListener
        public void onItemClick(Object obj, int i) {
            UserProfileFragment userProfileFragment = UserProfileFragment.this;
            if (userProfileFragment.preview) {
                DetailFragment.showPreviewToast(userProfileFragment.getContext());
                return;
            }
            if (obj instanceof Item) {
                Intent intent = FeedDetailFragment.intent(userProfileFragment, (Item) obj, userProfileFragment.favoriteAdapter.collection, null, null, i - 1);
                intent.putExtra("fromMyCatalog", UserProfileFragment.this.isMe());
                intent.putExtra("Source", "User Profile");
                intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_SOURCE, LoggingSource.UserProfileView.name());
                UserProfileFragment.this.startActivity(intent);
                return;
            }
            if (obj == UserFavoriteGallery.ADD) {
                Intent intent2 = new Intent(userProfileFragment.getContext(), (Class<?>) ItemPostActivity.class);
                intent2.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(new ItemPost()));
                intent2.putExtra("Source", "User Profile > Add favorite");
                intent2.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_SOURCE, LoggingSource.UserProfileView.name());
                UserProfileFragment.this.startActivity(intent2);
                return;
            }
            if (obj == UserFavoriteGallery.GOTO) {
                userProfileFragment.gotoFavorites();
            }
        }
    };
    private RadioGroup.OnCheckedChangeListener switchListener = new RadioGroup.OnCheckedChangeListener() { // from class: com.narvii.user.profile.UserProfileFragment.16
        boolean checked3;

        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public void onCheckedChanged(RadioGroup radioGroup, int i) {
            UserProfileFragment userProfileFragment = UserProfileFragment.this;
            if (userProfileFragment.disableSwitchListener) {
                return;
            }
            if (i == R.id.user_switch_posts) {
                userProfileFragment.switchAdapter.setAdapter(userProfileFragment.tab1Adapter);
            }
            if (i == R.id.user_switch_comments) {
                UserProfileFragment userProfileFragment2 = UserProfileFragment.this;
                userProfileFragment2.switchAdapter.setAdapter(userProfileFragment2.tab2Adapter);
            }
            if (i == R.id.user_switch_saved_posts) {
                UserProfileFragment userProfileFragment3 = UserProfileFragment.this;
                userProfileFragment3.switchAdapter.setAdapter(userProfileFragment3.tab3Adapter);
                if (this.checked3) {
                    return;
                }
                this.checked3 = true;
            }
        }
    };

    private void createAvatar() {
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "UserProfile";
    }

    @Override // com.narvii.app.NVFragment
    protected boolean hasVisitorBar() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.NVInteractionScope
    public boolean isGlobalInteractionScope() {
        return false;
    }

    public /* synthetic */ void lambda$new$0$UserProfileFragment(int i, int i2) {
        this.recentVisitorCount = i;
        if (i2 >= 0) {
            updateUserVisitorsCount(i2);
        }
        updateHeader();
    }

    public static Intent intent(NVContext nVContext, User user) {
        int i;
        if (user == null) {
            return null;
        }
        boolean z = ((ConfigService) nVContext.getService("config")).getCommunityId() == 0;
        if (user.isGlobal || (i = user.ndcId) == 0 || (i == -1 && z)) {
            Intent intent = FragmentWrapperActivity.intent(GlobalProfileFragment.class);
            intent.putExtra("id", user.id());
            intent.putExtra(GlobalProfileFragment.KEY_USER, JacksonUtils.writeAsString(user));
            return intent;
        }
        if (user.isSystem() || user.isModerator()) {
            Intent intent2 = FragmentWrapperActivity.intent(AccountUserProfileFragment.class);
            intent2.putExtra("id", user.uid);
            intent2.putExtra(GlobalProfileFragment.KEY_USER, JacksonUtils.writeAsString(user));
            return intent2;
        }
        Intent intent3 = FragmentWrapperActivity.intent(UserProfileFragment.class);
        intent3.putExtra("id", user.uid);
        intent3.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(user));
        intent3.putExtra(NVActivity.INTERACTION_SCOPE, false);
        int i2 = user.ndcId;
        if (i2 > 0) {
            intent3.putExtra("__communityId", i2);
        }
        return intent3;
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle("");
        this.accountService = (AccountService) getService("account");
        this.datetime = DateTimeFormatter.getInstance(getContext());
        if (TextUtils.isEmpty(id())) {
            finish();
            return;
        }
        this.headerLayoutHeight = getResources().getDimensionPixelSize(R.dimen.user_profile_header_height);
        if (bundle == null) {
            ChatInviteFragment chatInviteFragment = new ChatInviteFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putString("Source", "User Profile");
            chatInviteFragment.setArguments(bundle2);
            getFragmentManager().beginTransaction().add(chatInviteFragment, "chatInvite").commit();
        }
        if (isMe()) {
            AccountService accountService = (AccountService) getService("account");
            this.profileListener = new AccountService.ProfileListener() { // from class: com.narvii.user.profile.UserProfileFragment.1
                @Override // com.narvii.account.AccountService.ProfileListener
                public void onProfileChanged(int i, User user) {
                }

                @Override // com.narvii.account.AccountService.ProfileListener
                public void onOnlineStatusChanged(int i) {
                    UserProfileFragment.this.updateHeader();
                    UserProfileFragment.this.invalidateOptionsMenu();
                }
            };
            accountService.addProfileListener(this.profileListener);
            if (getBooleanParam("selectMood") && bundle == null) {
                popupOnlineStatusMenu();
            }
        }
        this.recentVisitorHelper = new RecentVisitorHelper(this);
        this.communityConfigHelper = new CommunityConfigHelper(this);
        this.configService = (ConfigService) getService("config");
        this.userBlockService = (UserBlockService) NVApplication.instance().getService("block");
        this.membershipService = (MembershipService) getService("membership");
        this.membershipService.refreshWallet(true);
        if (!this.preview) {
            setHasOptionsMenu(true);
        }
        if (bundle != null) {
            this.consecutiveCheckInDays = bundle.getInt("consecutiveCheckInDays", -1);
            this.brokenStreaks = bundle.getInt("brokenStreaks", -1);
        }
        sendStreakStatusRequest();
        this.localBroadcastManager = LocalBroadcastManager.getInstance(getContext());
        this.localBroadcastManager.registerReceiver(this.receiver, new IntentFilter(CommunityService.ACTION_COMMUNITY_CHANGED));
        this.localBroadcastManager.registerReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        this.localBroadcastManager.registerReceiver(this.receiver, new IntentFilter(Constants.ACTION_STREAK_REPAIR_SUCCESS));
        this.localBroadcastManager.registerReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_WALLET_CHANGED));
        this.localBroadcastManager.registerReceiver(this.receiver, new IntentFilter(AccountService.ACTION_PRIVACY_MODE_CHANGED));
        if (isMe()) {
            this.accountService.forceUpdateRecentVisitorCount();
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        LocalBroadcastManager localBroadcastManager = this.localBroadcastManager;
        if (localBroadcastManager != null) {
            localBroadcastManager.unregisterReceiver(this.receiver);
        }
        if (this.profileListener != null) {
            ((AccountService) getService("account")).removeProfileListener(this.profileListener);
        }
        if (isMe()) {
            this.accountService.removeRecentVisitorListener(this.recentVisitorListener);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("consecutiveCheckInDays", this.consecutiveCheckInDays);
        bundle.putInt("brokenStreaks", this.brokenStreaks);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        this.instagramInstalled = new PackageUtils(getContext()).isPackageInstalled("com.instagram.android");
        invalidateOptionsMenu();
    }

    @Override // com.narvii.app.NVFragment
    protected void completePageViewEvent(LogEvent.Builder builder, boolean z) {
        super.completePageViewEvent(builder, z);
        BioAdapter bioAdapter = this.bioAdapter;
        if (bioAdapter != null && bioAdapter.getObject() != null) {
            builder.object(this.bioAdapter.getObject());
        } else {
            builder.objectId(id()).objectType(ObjectType.user);
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onStop() {
        super.onStop();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCommunityUpdate() {
        if (getActivity() == null) {
            return;
        }
        invalidateOptionsMenu();
        updateHeader();
        AddBlogAdapter addBlogAdapter = this.addBlogAdapter;
        if (addBlogAdapter != null) {
            addBlogAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        super.onActiveChanged(z);
        LiveLayerService liveLayerService = (LiveLayerService) getService("liveLayer");
        if (liveLayerService == null || id() == null) {
            return;
        }
        liveLayerService.reportBrowsing("user-profile/" + id(), z);
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.list_overlay_user_layout, viewGroup, false);
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        this.notActivated = view.findViewById(R.id.not_activated);
        TextView textView = (TextView) this.notActivated.findViewById(R.id.activate);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(textView.getText().toString());
        spannableStringBuilder.setSpan(new UnderlineSpan(), 0, spannableStringBuilder.length(), 0);
        textView.setText(spannableStringBuilder);
        this.notActivated.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.user.profile.UserProfileFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                UserProfileFragment.this.activateAccount();
            }
        });
        this.header = (OverlayLayout) view.findViewById(R.id.overlay);
        super.onViewCreated(view, bundle);
        this.header.attach((NVListView) getListView());
        updateHeader();
        this.swipeRefreshLayout = (SwipeRefreshLayout) view.findViewById(R.id.swipe_refresh);
        this.swipeRefreshLayout.setEnabled(false);
        this.swipeRefreshLayout.setVisibility(0);
        this.swipeRefreshLayout.setTarget((NVListView) getListView());
        this.swipeRefreshLayout.setOnRefreshListener(this);
        this.header.setHeight1(getActionBarOverlaySize() + getStatusBarOverlaySize());
        if (isRootFragment()) {
            View view2 = new View(getContext());
            view2.setLayoutParams(new FrameLayout.LayoutParams((int) Utils.dpToPx(getContext(), 56.0f), -1));
            view2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.user.profile.UserProfileFragment.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view3) {
                    View viewFindViewById;
                    OverlayLayout overlayLayout = UserProfileFragment.this.header;
                    if (overlayLayout == null || (viewFindViewById = overlayLayout.findViewById(R.id.user_avatar_layout)) == null || viewFindViewById.getHeight() >= viewFindViewById.getLayoutParams().height) {
                        return;
                    }
                    UserProfileFragment.this.getListView().smoothScrollToPosition(0);
                }
            });
            FrameLayout frameLayout = new FrameLayout(getContext());
            frameLayout.addView(view2);
            setActionBarTitleView(frameLayout);
        }
        if (isMe()) {
            this.accountService.addRecentVisitorListener(this.recentVisitorListener);
            this.accountService.updateRecentVisitorCount();
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.topAdapter = new TopAdapter();
        this.favoriteAdapter = new FavoriteAdapter();
        this.tabAdapter = new TabAdapter();
        this.postAdapter = new PostAdapter();
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        this.addBlogAdapter = new AddBlogAdapter();
        if (isMe()) {
            mergeAdapter.addAdapter(this.addBlogAdapter);
        }
        mergeAdapter.addAdapter(this.favoriteAdapter);
        mergeAdapter.addAdapter(this.postAdapter, true);
        this.postDividerAdapter = new DividerAdapter(this);
        this.postDividerAdapter.setAdapter(mergeAdapter);
        this.tab1Adapter = this.postDividerAdapter;
        this.commentAdapter = new CommentAdapter();
        this.commentDividerAdapter = new DividerAdapter(this);
        this.commentDividerAdapter.setAdapter(this.commentAdapter);
        this.commentHeaderAdapter = new ProfileCommentHeaderAdapter(this, isMe());
        this.commentAddAdapter = new ProfileCommentAddAdapter(this);
        MergeAdapter mergeAdapter2 = new MergeAdapter(this);
        mergeAdapter2.addAdapter(this.commentHeaderAdapter);
        mergeAdapter2.addAdapter(this.commentAddAdapter);
        mergeAdapter2.addAdapter(this.commentAdapter, true);
        this.tab2Adapter = mergeAdapter2;
        MergeAdapter mergeAdapter3 = new MergeAdapter(this);
        this.bookmarkDividerAdapter = new DividerAdapter(this);
        this.bookmarkAdapter = new BookmarkAdapter(this) { // from class: com.narvii.user.profile.UserProfileFragment.5
            @Override // com.narvii.list.NVPagedAdapter
            public boolean showListEnd(int i) {
                return i == 0;
            }
        };
        this.bookmarkDividerAdapter.setAdapter(this.bookmarkAdapter);
        mergeAdapter3.addAdapter(this.bookmarkDividerAdapter);
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
        staticViewAdapter.addLayouts(R.layout.list_bottom_placeholder);
        mergeAdapter3.addAdapter(staticViewAdapter);
        this.tab3Adapter = mergeAdapter3;
        this.bioAdapter = new BioAdapter();
        this.switchAdapter = new MySwitchAdapter();
        this.switchAdapter.addAdapter(this.tab1Adapter, true);
        this.switchAdapter.addAdapter(this.tab2Adapter, true);
        if (isMe()) {
            this.switchAdapter.addAdapter(this.tab3Adapter, true);
        }
        if (bundle == null && "comment".equals(getStringParam("tab"))) {
            this.switchAdapter.setAdapter(1);
        }
        MergeAdapter mergeAdapter4 = new MergeAdapter(this) { // from class: com.narvii.user.profile.UserProfileFragment.6
            @Override // com.narvii.list.MergeAdapter, android.widget.BaseAdapter, android.widget.Adapter
            public boolean isEmpty() {
                return false;
            }

            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
            public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
                if (UserProfileFragment.this.shouldBlockClick(obj)) {
                    return true;
                }
                return super.onItemClick(listAdapter, i, obj, view, view2);
            }

            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public boolean onLongClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
                if (UserProfileFragment.this.shouldBlockClick(obj)) {
                    return true;
                }
                return super.onLongClick(listAdapter, i, obj, view, view2);
            }
        };
        mergeAdapter4.addAdapter(this.topAdapter);
        mergeAdapter4.addAdapter(this.bioAdapter);
        this.fanClubAdapter = new FanClubAdapter(this);
        mergeAdapter4.addAdapter(this.fanClubAdapter);
        this.bioDividerAdapter = new BioDividerAdapter(this);
        mergeAdapter4.addAdapter(this.bioDividerAdapter);
        mergeAdapter4.addAdapter(this.tabAdapter);
        mergeAdapter4.addAdapter(this.switchAdapter);
        return mergeAdapter4;
    }

    @Override // com.narvii.detail.DetailFragment
    protected boolean shouldBlockClick(Object obj) {
        if (obj == BIO_SNIPPET) {
            return false;
        }
        return super.shouldBlockClick(obj);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        View actionView = menu.add(0, R.id.menu_online_status, 0, R.string.online_status_online).setActionView(R.layout.user_profile_menu_online_status).setShowAsActionFlags(2).getActionView();
        actionView.setOnClickListener(this.menuClickListener);
        actionView.setTag(R.id.embed_menu_background, 0);
        actionView.setTag(R.id.embed_menu_scale, Float.valueOf(1.0f));
        View actionView2 = menu.add(0, R.id.menu_ops, 0, R.string.more).setActionView(R.layout.menu_item_ops).setShowAsActionFlags(2).getActionView();
        actionView2.setOnClickListener(this.menuClickListener);
        if (isEmbedFragment()) {
            actionView2.setMinimumWidth(0);
        }
        menu.add(0, R.string.user_start_a_chat, 0, R.string.user_start_a_chat);
        String string = getString(R.string.user_activate_my_account);
        if (Build.VERSION.SDK_INT < 18) {
            menu.add(0, R.string.user_activate_my_account, 0, string);
        } else {
            SpannableString spannableString = new SpannableString(string);
            spannableString.setSpan(new ForegroundColorSpan(-2013623), 0, string.length(), 0);
            menu.add(0, R.string.user_activate_my_account, 0, spannableString);
        }
        menu.add(0, R.string.share_copy_link, 0, R.string.share_copy_link);
        menu.add(0, R.string.share, 0, R.string.share);
        menu.add(0, R.string.user_add_to_favorite_members, 0, R.string.user_add_to_favorite_members);
        menu.add(0, R.string.user_edit_my_profile, 0, R.string.user_edit_my_profile).setIcon(new ActionBarIcon(getContext(), R.string.fa_pencil));
        menu.add(0, R.string.flag_for_review, 0, R.string.flag_for_review).setShowAsAction(0);
        menu.add(0, R.string.user_block_this_user, 0, R.string.user_block_this_user).setShowAsAction(0);
        menu.add(0, R.string.user_unblock, 0, R.string.user_unblock).setShowAsAction(0);
        menu.add(0, R.string.advanced, 0, R.string.advanced).setShowAsAction(0);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public void completeLogEvent(LogEvent.Builder builder) {
        super.completeLogEvent(builder);
        builder.extraParam(NotificationCompat.CATEGORY_STATUS, isMe() ? "self" : "other");
    }

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        int i;
        super.onPrepareOptionsMenu(menu);
        AccountService accountService = (AccountService) getService("account");
        boolean zIsMe = isMe();
        boolean z = false;
        boolean z2 = (zIsMe && this.instagramInstalled) ? false : true;
        boolean zHasActivation = accountService.hasActivation();
        boolean zHasAccount = accountService.hasAccount();
        boolean zIsOnline = isOnline();
        BioAdapter bioAdapter = this.bioAdapter;
        User object = bioAdapter == null ? null : bioAdapter.getObject();
        if (object != null && object.role == 253) {
            for (int i2 = 0; i2 < menu.size(); i2++) {
                menu.getItem(i2).setVisible(false);
            }
            return;
        }
        menu.findItem(R.id.menu_online_status).setVisible(zIsMe && getOnlineStatus() != 0);
        menu.findItem(R.id.menu_ops).setVisible(!z2);
        if (zIsMe) {
            View actionView = menu.findItem(R.id.menu_online_status).getActionView();
            ((TextView) actionView.findViewById(R.id.online_status_text)).setText(zIsOnline ? R.string.online_status_online : R.string.online_status_offline);
            actionView.findViewById(R.id.online_status_oval).setBackgroundResource(zIsOnline ? R.drawable.online_status_oval : R.drawable.online_status_oval_offline);
        }
        menu.findItem(R.string.user_start_a_chat).setVisible(canChat() && this.communityConfigHelper.isChatEnabled() && z2 && !zIsMe);
        menu.findItem(R.string.share).setVisible(z2 && !zIsMe);
        menu.findItem(R.string.flag_for_review).setVisible(z2 && !zIsMe);
        menu.findItem(R.string.user_block_this_user).setVisible(z2 && !zIsMe && zHasAccount && !this.userBlockService.isInBlockedList(id()));
        menu.findItem(R.string.user_unblock).setVisible(z2 && !zIsMe && zHasAccount && this.userBlockService.isInBlockedList(id()));
        menu.findItem(R.string.user_activate_my_account).setVisible(z2 && zIsMe && !zHasActivation);
        menu.findItem(R.string.share_copy_link).setVisible(z2);
        menu.findItem(R.string.user_add_to_favorite_members).setVisible(z2 && !zIsMe);
        menu.findItem(R.string.user_edit_my_profile).setVisible(z2 && zIsMe);
        User userProfile = accountService.getUserProfile();
        boolean z3 = userProfile != null && userProfile.role == 101 && object != null && ((i = object.role) == 100 || i == 102);
        MenuItem menuItemFindItem = menu.findItem(R.string.advanced);
        if (z2 && userProfile != null && userProfile.isCurator() && !z3) {
            z = true;
        }
        menuItemFindItem.setVisible(z);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.string.advanced /* 2131689620 */:
                new AdvancedOptionDialog.Builder(this).nvObject(this.bioAdapter.getObject()).build().show();
                return true;
            case R.string.create_your_3d_avatar /* 2131690256 */:
                NVPermission.builder(this).requestCode(109).permissionListener(this).permissions(new String[]{"android.permission.CAMERA", "android.permission.RECORD_AUDIO"}).request();
                return true;
            case R.string.flag_for_review /* 2131691221 */:
                flagForReview();
                return true;
            case R.string.share /* 2131693474 */:
                shareUserProfile(null);
                return true;
            case R.string.share_copy_link /* 2131693488 */:
                ShareViewHelper shareViewHelper = new ShareViewHelper(this);
                shareViewHelper.source = "User Profile";
                shareViewHelper.copyLink(this.bioAdapter.getObject());
                return true;
            case R.string.user_activate_my_account /* 2131693853 */:
                activateAccount();
                return true;
            case R.string.user_add_to_favorite_members /* 2131693856 */:
                addToFavoriteMembers();
                return true;
            case R.string.user_block_this_user /* 2131693857 */:
                blockUser(false);
                return true;
            case R.string.user_edit_my_profile /* 2131693864 */:
                editProfile("Action Sheet", false);
                return true;
            case R.string.user_start_a_chat /* 2131693885 */:
                startChat();
                return true;
            case R.string.user_unblock /* 2131693892 */:
                blockUser(true, false);
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }

    void popupCustomMenu() {
        final ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        int i = 1;
        final Bitmap bitmapScreenshotForSharing = null;
        try {
            HeaderLayout headerLayout = (HeaderLayout) this.header.findViewById(R.id.user_profile_header);
            if (headerLayout != null) {
                bitmapScreenshotForSharing = headerLayout.screenshotForSharing(this.consecutiveCheckInDays > 2);
            }
        } catch (OutOfMemoryError e) {
            Log.w("OutOfMemory when create profile image", e);
        }
        if (bitmapScreenshotForSharing != null) {
            View customView = actionSheetDialog.setCustomView(R.layout.user_profile_share_preview);
            ((ImageView) customView.findViewById(R.id.image)).setImageBitmap(bitmapScreenshotForSharing);
            customView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.user.profile.UserProfileFragment.8
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    UserProfileFragment.this.shareUserProfile(bitmapScreenshotForSharing);
                    actionSheetDialog.dismiss();
                }
            });
        }
        final int[] iArr = new int[6];
        AccountService accountService = (AccountService) getService("account");
        if (accountService.hasActivation()) {
            i = 0;
        } else {
            actionSheetDialog.addItem(R.string.user_activate_my_account, true);
            iArr[0] = R.string.user_activate_my_account;
        }
        actionSheetDialog.addItem(R.string.share_copy_link, false);
        int i2 = i + 1;
        iArr[i] = R.string.share_copy_link;
        actionSheetDialog.addItem(R.string.user_edit_my_profile, false);
        int i3 = i2 + 1;
        iArr[i2] = R.string.user_edit_my_profile;
        User userProfile = accountService.getUserProfile();
        if (userProfile != null && userProfile.isCurator()) {
            actionSheetDialog.addItem(R.string.advanced, false);
            iArr[i3] = R.string.advanced;
        }
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.user.profile.UserProfileFragment.9
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i4) {
                switch (iArr[i4]) {
                    case R.string.advanced /* 2131689620 */:
                        new AdvancedOptionDialog.Builder(UserProfileFragment.this).nvObject(UserProfileFragment.this.bioAdapter.getObject()).build().show();
                        break;
                    case R.string.create_your_3d_avatar /* 2131690256 */:
                        NVPermission.builder(UserProfileFragment.this).requestCode(109).permissionListener(UserProfileFragment.this).permissions(new String[]{"android.permission.CAMERA", "android.permission.RECORD_AUDIO"}).request();
                        break;
                    case R.string.share_copy_link /* 2131693488 */:
                        ShareViewHelper shareViewHelper = new ShareViewHelper(UserProfileFragment.this);
                        shareViewHelper.source = "User Profile";
                        shareViewHelper.copyLink(UserProfileFragment.this.bioAdapter.getObject());
                        break;
                    case R.string.user_activate_my_account /* 2131693853 */:
                        UserProfileFragment.this.activateAccount();
                        break;
                    case R.string.user_edit_my_profile /* 2131693864 */:
                        UserProfileFragment.this.editProfile("Action Sheet", false);
                        break;
                }
            }
        });
        actionSheetDialog.show();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.permisson.PermissionListener
    public void onPermissionGranted(int i) {
        super.onPermissionGranted(i);
        if (i == 109) {
            createAvatar();
        }
    }

    void popupOnlineStatusMenu() {
        final ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        actionSheetDialog.setCustomView(R.layout.mood_picker_dialog_custom);
        boolean zIsOnline = isOnline();
        ((TextView) actionSheetDialog.findCustomViewById(R.id.mood_pick).findViewById(R.id.text)).setText(Sticker.isEmpty(zIsOnline ? getMood() : null) ? R.string.mood_choose : R.string.mood_change);
        actionSheetDialog.findCustomViewById(R.id.mood_pick).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.user.profile.UserProfileFragment.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                actionSheetDialog.dismiss();
                if (((AccountService) UserProfileFragment.this.getService("account")).hasActivation() && UserProfileFragment.this.bioAdapter != null) {
                    Intent intent = FragmentWrapperActivity.intent(ChooseMoodFragment.class);
                    intent.putExtra(GlobalProfileFragment.KEY_USER, JacksonUtils.writeAsString(UserProfileFragment.this.bioAdapter.getObject()));
                    intent.putExtra("moodSticker", JacksonUtils.writeAsString(UserProfileFragment.this.getMood()));
                    UserProfileFragment.this.startActivity(intent);
                    return;
                }
                AlertDialog.Builder builder = new AlertDialog.Builder(UserProfileFragment.this.getContext());
                builder.setMessage(R.string.mood_activation_required);
                builder.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.narvii.user.profile.UserProfileFragment.10.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        UserProfileFragment.this.activateAccount();
                    }
                });
                builder.setNegativeButton(android.R.string.cancel, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
                builder.show();
            }
        });
        ((TextView) actionSheetDialog.findCustomViewById(R.id.online_status_online).findViewById(R.id.text)).setText(zIsOnline ? R.string.online_status_online : R.string.online_status_go_online);
        if (zIsOnline) {
            actionSheetDialog.findCustomViewById(R.id.online_status_online).findViewById(R.id.check).setVisibility(0);
            actionSheetDialog.findCustomViewById(R.id.online_status_offline).findViewById(R.id.check).setVisibility(4);
        } else {
            actionSheetDialog.findCustomViewById(R.id.online_status_online).findViewById(R.id.check).setVisibility(4);
            actionSheetDialog.findCustomViewById(R.id.online_status_offline).findViewById(R.id.check).setVisibility(0);
            actionSheetDialog.findCustomViewById(R.id.online_status_offline).setVisibility(8);
            actionSheetDialog.findCustomViewById(R.id.online_status_offline_divider).setVisibility(8);
        }
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.narvii.user.profile.UserProfileFragment.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                actionSheetDialog.dismiss();
                final int i = view.getId() == R.id.online_status_online ? 1 : 2;
                LogEvent.clickBuilder(UserProfileFragment.this, view.getId() == R.id.online_status_online ? ActSemantic.goOnline : ActSemantic.goOffline).area("OnlineArea").send();
                ProgressDialog progressDialog = new ProgressDialog(UserProfileFragment.this.getContext());
                progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.user.profile.UserProfileFragment.11.1
                    @Override // com.narvii.util.Callback
                    public void call(ApiResponse apiResponse) {
                        ((AccountService) UserProfileFragment.this.getService("account")).updateOnlineStatus(i, apiResponse.timestamp, true);
                        User object = UserProfileFragment.this.bioAdapter.getObject();
                        object.onlineStatus = i;
                        UserProfileFragment.this.bioAdapter.setObject(object);
                        LiveLayerService liveLayerService = (LiveLayerService) UserProfileFragment.this.getService("liveLayer");
                        if (liveLayerService != null) {
                            liveLayerService.refreshOnlineMembers();
                        }
                    }
                };
                progressDialog.show();
                ApiRequest.Builder builderParam = ApiRequest.builder().post().path("user-profile/" + UserProfileFragment.this.getStringParam("id") + "/online-status").param("onlineStatus", Integer.valueOf(i));
                if (i == 2) {
                    builderParam.param("duration", Integer.valueOf(InviteMembersFragment.SECOND_DAY));
                }
                ((ApiService) UserProfileFragment.this.getService("api")).exec(builderParam.build(), progressDialog.dismissListener);
            }
        };
        actionSheetDialog.findCustomViewById(R.id.online_status_online).setOnClickListener(onClickListener);
        actionSheetDialog.findCustomViewById(R.id.online_status_offline).setOnClickListener(onClickListener);
        actionSheetDialog.show();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        final int i = (this.postAdapter.isAttached() ? 1 : 0) + 2 + (this.commentAdapter.isAttached() ? 1 : 0) + (this.bookmarkAdapter.isAttached() ? 1 : 0);
        Callback<Integer> callback = new Callback<Integer>() { // from class: com.narvii.user.profile.UserProfileFragment.12
            int n;

            @Override // com.narvii.util.Callback
            public void call(Integer num) {
                int i2 = this.n + 1;
                this.n = i2;
                if (i2 == i) {
                    UserProfileFragment.this.swipeRefreshLayout.setRefreshing(false);
                }
            }
        };
        sendStreakStatusRequest();
        this.favoriteAdapter.refresh(1, callback);
        this.bioAdapter.refresh(1, callback);
        this.postAdapter.refresh(1, callback);
        this.commentAdapter.refresh(1, callback);
        this.bookmarkAdapter.refresh(1, callback);
        this.membershipService.refreshWallet(true);
        this.fanClubAdapter.refresh(0, null);
        if (isMe()) {
            this.accountService.forceUpdateRecentVisitorCount();
        }
    }

    public boolean isMe() {
        return Utils.isEqualsNotNull(((AccountService) getService("account")).getUserId(), getStringParam("id"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAccessible() {
        User object;
        BioAdapter bioAdapter = this.bioAdapter;
        boolean zIsAccessible = (bioAdapter == null || (object = bioAdapter.getObject()) == null) ? true : new FilterHelper(this).keepForLeaderAndCurator().isAccessible(object);
        if (zIsAccessible != this.isAccessible) {
            this.isAccessible = zIsAccessible;
            BioAdapter bioAdapter2 = this.bioAdapter;
            if (bioAdapter2 != null) {
                bioAdapter2.notifyDataSetChanged();
            }
        }
    }

    public int getOnlineStatus() {
        if (isMe()) {
            return ((AccountService) getService("account")).getOnlineStatus();
        }
        BioAdapter bioAdapter = this.bioAdapter;
        User object = bioAdapter == null ? null : bioAdapter.getObject();
        if (object == null) {
            return 0;
        }
        return object.onlineStatus;
    }

    public boolean isOnline() {
        int onlineStatus = getOnlineStatus();
        return (onlineStatus == 0 || onlineStatus == 2) ? false : true;
    }

    public Sticker getMood() {
        if (!isOnline()) {
            return null;
        }
        BioAdapter bioAdapter = this.bioAdapter;
        User object = bioAdapter == null ? null : bioAdapter.getObject();
        if (object == null && isMe()) {
            object = ((AccountService) getService("account")).getUserProfile();
        }
        if (object == null) {
            return null;
        }
        return object.getMoodSticker();
    }

    private void updateUserVisitorsCount(int i) {
        User object = this.bioAdapter.getObject();
        if (object != null) {
            object.visitorsCount = i;
        }
    }

    void updateHeader() {
        List<Media> list;
        CommunityConfigHelper communityConfigHelper;
        User object = this.bioAdapter.getObject();
        if (object == null) {
            this.header.setVisibility(8);
            return;
        }
        this.header.setVisibility(0);
        int statusBarOverlaySize = (showDisabled() || showNotActivated()) ? (int) (getStatusBarOverlaySize() + getActionBarOverlaySize() + Utils.dpToPx(getContext(), 60.0f)) : 0;
        this.headerLayoutHeight = getResources().getDimensionPixelSize(R.dimen.user_profile_header_height) + statusBarOverlaySize;
        this.header.setLayout(R.layout.user_profile_header, this.headerLayoutHeight);
        updateHeaderPlaceHolder();
        HeaderLayout headerLayout = (HeaderLayout) this.header.findViewById(R.id.user_profile_header);
        if (headerLayout != null) {
            headerLayout.setOffset(statusBarOverlaySize / 2);
            headerLayout.setH0(this.headerLayoutHeight);
            ViewGroup.LayoutParams layoutParams = headerLayout.gradient.getLayoutParams();
            layoutParams.height = getResources().getDimensionPixelSize(R.dimen.user_profile_header_height) / 4;
            headerLayout.gradient.setLayoutParams(layoutParams);
            headerLayout.setNewsFeed(object.role == 253);
        }
        AccountService accountService = (AccountService) getService("account");
        boolean z = object != null && object.isProfileAccessibleByUser(accountService.getUserProfile());
        boolean zIsMe = isMe();
        View.OnClickListener onClickListener = (object == null || !object.isAccessibleByUser(accountService.getUserProfile())) ? null : this.headerClickListener;
        ((TextView) this.header.findViewById(R.id.user_n_reputation)).setText(com.narvii.util.text.TextUtils.getLiteCountWithCeil2(object.reputation));
        ((TextView) this.header.findViewById(R.id.user_n_following)).setText(com.narvii.util.text.TextUtils.getLiteCountWithCeil2(object.joinedCount));
        ((TextView) this.header.findViewById(R.id.user_n_followers)).setText(com.narvii.util.text.TextUtils.getLiteCountWithCeil2(object.membersCount));
        ((TextView) this.header.findViewById(R.id.user_n_visitors)).setText(com.narvii.util.text.TextUtils.getLiteCountWithCeil2(Math.max(object.visitorsCount, 0)));
        if (DBAminoLightHelper.getBoolean("show_visitor_count", false)) {
            this.header.findViewById(R.id.user_visitors).setVisibility(0);
        } else {
            this.header.findViewById(R.id.user_visitors).setVisibility(8);
        }
        TextView textView = (TextView) this.header.findViewById(R.id.user_n_unit_visitors);
        if (object.visitorsCount == 1) {
            textView.setText(R.string.user_visit);
        } else {
            textView.setText(R.string.user_visits);
        }
        if (this.recentVisitorCount == 0) {
            this.header.findViewById(R.id.visitor_increase_ll).setVisibility(8);
        } else {
            this.header.findViewById(R.id.visitor_increase_ll).setVisibility(0);
            int i = this.recentVisitorCount;
            ((TextView) this.header.findViewById(R.id.visitor_increase_tv)).setText(i > 99 ? "99+" : String.valueOf(i));
        }
        boolean z2 = object.visitPrivacy == 2;
        this.header.findViewById(R.id.user_n_visitors).setVisibility((!z2 || zIsMe) ? 0 : 4);
        this.header.findViewById(R.id.visit_privacy_private).setVisibility((z2 && zIsMe) ? 0 : 4);
        this.header.findViewById(R.id.center_visit_privacy_private).setVisibility((!z2 || zIsMe) ? 8 : 0);
        int iDpToPxInt = zIsMe ? Utils.dpToPxInt(getContext(), 15.0f) : 0;
        updateBottomMargin(iDpToPxInt, R.id.achievements, this.header);
        updateBottomMargin(iDpToPxInt, R.id.wallet_balance_view, this.header);
        CommunityConfigHelper communityConfigHelper2 = this.communityConfigHelper;
        boolean z3 = communityConfigHelper2 != null && communityConfigHelper2.isRankingModuleEnabled();
        if (zIsMe) {
            this.header.findViewById(R.id.user_reputation).setOnClickListener(onClickListener);
        } else {
            this.header.findViewById(R.id.user_reputation).setOnClickListener(z3 ? onClickListener : null);
        }
        this.header.findViewById(R.id.amino_staff_badge).setOnClickListener(onClickListener);
        this.header.findViewById(R.id.user_following).setOnClickListener(onClickListener);
        this.header.findViewById(R.id.user_follower).setOnClickListener(onClickListener);
        this.header.findViewById(R.id.achievements).setOnClickListener(onClickListener);
        this.header.findViewById(R.id.user_visitors).setOnClickListener(onClickListener);
        this.header.findViewById(R.id.achievements).setBackgroundResource(Utils.isRtl() ? R.drawable.achievements_bg : R.drawable.achievements_bg_rtl);
        WalletBalanceView walletBalanceView = (WalletBalanceView) this.header.findViewById(R.id.wallet_balance_view);
        walletBalanceView.source = "Profile";
        walletBalanceView.setCoinBackground(R.drawable.wallet_balance_bg_store, R.drawable.wallet_balance_bg_store_rtl);
        walletBalanceView.setVisibility((zIsMe && (communityConfigHelper = this.communityConfigHelper) != null && communityConfigHelper.isPremiumFeatureEnabled()) ? 0 : 8);
        walletBalanceView.refresh();
        this.header.findViewById(R.id.edit_button).setVisibility(zIsMe ? 0 : 8);
        this.header.findViewById(R.id.edit_button).setOnClickListener(onClickListener);
        if (zIsMe) {
            this.header.findViewById(R.id.membership_title).setOnClickListener(onClickListener);
        } else {
            this.header.findViewById(R.id.membership_title).setOnClickListener(z3 ? onClickListener : null);
        }
        RankingTitleView rankingTitleView = (RankingTitleView) this.header.findViewById(R.id.membership_title);
        if (!z3 || shouldHideUserPrivateInfo()) {
            rankingTitleView.setVisibility(8);
        } else {
            rankingTitleView.setVisibility(0);
            rankingTitleView.setShowBadge(true);
        }
        rankingTitleView.setUser(object, this);
        SlideshowView slideshowView = (SlideshowView) this.header.findViewById(R.id.slideshow);
        slideshowView.noSlide = "none".equals(JacksonUtils.nodeString(object.extensions, "coverAnimation"));
        slideshowView.setMediaList(z ? this.slideShowMedias : Collections.emptyList());
        BubbleBackground bubbleBackground = (BubbleBackground) this.header.findViewById(R.id.bubble);
        bubbleBackground.setVisibility((!z || (list = object.mediaList) == null || list.isEmpty()) ? 0 : 4);
        bubbleBackground.set(zIsMe ? null : object.uid);
        View viewFindViewById = this.header.findViewById(R.id.user_avatar_layout);
        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) viewFindViewById;
        userAvatarLayout.setUser(object);
        viewFindViewById.setOnClickListener(onClickListener);
        userAvatarLayout.getAvatarView().setImageUrl(z ? object.icon(true) : "res://disabled_user_icon");
        MoodView moodView = (MoodView) this.header.findViewById(R.id.mood);
        Sticker mood = getMood();
        moodView.setOnClickListener(onClickListener);
        moodView.setVisibility((!zIsMe ? !Sticker.isEmpty(mood) : accountService.hasActivation()) ? 4 : 0);
        moodView.setAnimate(!Sticker.isEmpty(mood));
        moodView.setMoodSticker(object, mood);
        boolean zNodeBoolean = JacksonUtils.nodeBoolean(object.extensions, "isMemberOfTeamAmino");
        View viewFindViewById2 = this.header.findViewById(R.id.amino_staff_badge);
        viewFindViewById2.setVisibility(zNodeBoolean ? 0 : 4);
        viewFindViewById2.setOnClickListener(onClickListener);
        NicknameView nicknameView = (NicknameView) this.header.findViewById(R.id.nickname);
        nicknameView.setUser(object);
        nicknameView.setOnClickListener(onClickListener);
        if (this.dateFmt == null) {
            this.dateFmt = new SimpleDateFormat("MMMM yyyy");
        }
        View viewFindViewById3 = this.header.findViewById(R.id.chat_layout);
        CommunityConfigHelper communityConfigHelper3 = this.communityConfigHelper;
        viewFindViewById3.setVisibility((communityConfigHelper3 == null || !communityConfigHelper3.isChatEnabled() || zIsMe || userDisabled()) ? 8 : 0);
        this.header.findViewById(R.id.user_profile_chat_online_oval).setVisibility(isOnline() ? 0 : 4);
        this.header.findViewById(R.id.chat_layout).setOnClickListener(onClickListener);
        this.header.findViewById(R.id.button_layout).setVisibility(shouldHideUserPrivateInfo() ? 8 : 0);
        this.header.findViewById(R.id.scorebar).setVisibility(shouldHideUserPrivateInfo() ? 8 : 0);
        UserTitleFlowView userTitleFlowView = (UserTitleFlowView) this.header.findViewById(R.id.user_title_flow);
        userTitleFlowView.setVisibility(shouldHideUserPrivateInfo() ? 8 : 0);
        userTitleFlowView.setUser(object);
        View viewFindViewById4 = this.header.findViewById(R.id.user_follow);
        if (zIsMe || object == null || object.isSystem()) {
            viewFindViewById4.setVisibility(8);
        } else {
            viewFindViewById4.setVisibility(0);
            boolean z4 = object.membershipStatus == 3;
            boolean z5 = object.membershipStatus == 1;
            ImageView imageView = (ImageView) viewFindViewById4.findViewById(R.id.user_follow_icon);
            TextView textView2 = (TextView) viewFindViewById4.findViewById(R.id.user_follow_text);
            View viewFindViewById5 = viewFindViewById4.findViewById(R.id.user_follow_progress);
            viewFindViewById4.setBackgroundResource(z5 ? R.drawable.button_round_unfollow : z4 ? R.drawable.button_round_friends : R.drawable.button_round_follow);
            int i2 = R.drawable.ic_follow_plus_padding;
            if (z4) {
                i2 = R.drawable.ic_follow_friends;
            } else if (z5) {
                i2 = R.drawable.ic_user_profile_following;
            }
            imageView.setImageDrawable(getResources().getDrawable(i2));
            imageView.setVisibility(this.sendingFollow ? 4 : 0);
            int i3 = z4 ? R.string.user_friends : z5 ? 0 : R.string.user_follow;
            if (i3 != 0) {
                textView2.setText(i3);
            } else {
                textView2.setText((CharSequence) null);
            }
            if (z5) {
                textView2.setVisibility(8);
            } else {
                textView2.setVisibility(this.sendingFollow ? 4 : 0);
            }
            if (z5) {
                viewFindViewById4.setMinimumWidth(0);
            } else {
                viewFindViewById4.setMinimumWidth(getResources().getDimensionPixelSize(R.dimen.user_profile_button_min_width));
            }
            viewFindViewById4.setOnClickListener(onClickListener);
            viewFindViewById5.setVisibility(this.sendingFollow ? 0 : 8);
        }
        updateStreakInfo();
        updateBadge(object, this.header);
    }

    private void updateBadge(User user, View view) {
        if (user == null) {
            return;
        }
        boolean z = !TextUtils.isEmpty(user.activePublicLiveThreadId);
        View viewFindViewById = view.findViewById(R.id.amino_staff_badge);
        if (!z || viewFindViewById == null) {
            return;
        }
        viewFindViewById.setVisibility(8);
    }

    private void updateBottomMargin(int i, int i2, ViewGroup viewGroup) {
        View viewFindViewById = viewGroup.findViewById(i2);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) viewFindViewById.getLayoutParams();
        marginLayoutParams.bottomMargin = i;
        viewFindViewById.setLayoutParams(marginLayoutParams);
    }

    class TopAdapter extends NVAdapter {
        private final View.OnTouchListener headerTouchListener;

        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public TopAdapter() {
            super(UserProfileFragment.this);
            this.headerTouchListener = new View.OnTouchListener() { // from class: com.narvii.user.profile.UserProfileFragment.TopAdapter.1
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    OverlayLayout overlayLayout = UserProfileFragment.this.header;
                    HeaderLayout headerLayout = overlayLayout == null ? null : (HeaderLayout) overlayLayout.findViewById(R.id.user_profile_header);
                    if (headerLayout == null) {
                        return false;
                    }
                    headerLayout.allowTouch = true;
                    motionEvent.offsetLocation(0.0f, view.getTop());
                    boolean zDispatchTouchEvent = UserProfileFragment.this.header.dispatchTouchEvent(motionEvent);
                    motionEvent.offsetLocation(0.0f, -r5);
                    headerLayout.allowTouch = false;
                    return zDispatchTouchEvent;
                }
            };
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            UserProfileFragment.this.headerPlaceHolder = createView(R.layout.user_profile_header_placeholder, viewGroup, view);
            UserProfileFragment.this.updateHeaderPlaceHolder();
            UserProfileFragment.this.headerPlaceHolder.setOnTouchListener(this.headerTouchListener);
            return UserProfileFragment.this.headerPlaceHolder;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateHeaderPlaceHolder() {
        View view = this.headerPlaceHolder;
        if (view == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height = this.headerLayoutHeight;
        this.headerPlaceHolder.setLayoutParams(layoutParams);
    }

    private void sendStreakStatusRequest() {
        ApiService apiService = (ApiService) getService("api");
        int timeZoneInMin = Utils.getTimeZoneInMin();
        apiService.exec(new ApiRequest.Builder().path("/check-in/stats/" + id()).param("timezone", Integer.valueOf(timeZoneInMin)).build(), new ApiResponseListener<StreakStatusResponse>(StreakStatusResponse.class) { // from class: com.narvii.user.profile.UserProfileFragment.15
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, StreakStatusResponse streakStatusResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) streakStatusResponse);
                UserProfileFragment.this.consecutiveCheckInDays = streakStatusResponse.consecutiveCheckInDays;
                UserProfileFragment.this.brokenStreaks = streakStatusResponse.brokenStreaks;
                UserProfileFragment.this.updateStreakInfo();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStreakInfo() {
        OverlayLayout overlayLayout = this.header;
        if (overlayLayout == null || overlayLayout.getChildCount() == 0) {
            return;
        }
        View viewFindViewById = this.header.findViewById(R.id.achievements);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.user.profile.-$$Lambda$UserProfileFragment$wrwM2Nromkz2LvJM5VWSHzMSunE
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$updateStreakInfo$1$UserProfileFragment(view);
                }
            });
        }
        TextView textView = (TextView) this.header.findViewById(R.id.achievements_hint);
        if (textView != null) {
            int i = this.consecutiveCheckInDays;
            textView.setText(i >= 2 ? getString(R.string.n_day_streak, String.valueOf(i)) : getString(R.string.achievements));
        }
        this.header.findViewById(R.id.streak_broken_tag).setVisibility((this.brokenStreaks <= 0 || !this.communityConfigHelper.isPremiumFeatureEnabled()) ? 8 : 0);
    }

    public /* synthetic */ void lambda$updateStreakInfo$1$UserProfileFragment(View view) {
        goAchievements(null);
    }

    protected boolean shouldHideUserPrivateInfo() {
        User object;
        BioAdapter bioAdapter = this.bioAdapter;
        if (bioAdapter == null || (object = bioAdapter.getObject()) == null) {
            return false;
        }
        return object.role == 253 || object.status == 10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAminoStaffDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setMessage(R.string.amino_staff_message);
        builder.setPositiveButton(android.R.string.ok, (DialogInterface.OnClickListener) null);
        builder.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void goAchievements(String str) {
        Intent intent = FragmentWrapperActivity.intent(AchievementsFragment.class);
        intent.putExtra("id", getStringParam("id"));
        User object = this.bioAdapter.getObject();
        if (object != null) {
            intent.putExtra("mediaList", JacksonUtils.writeAsString(object.mediaList));
            intent.putExtra(GlobalProfileFragment.KEY_USER, JacksonUtils.writeAsString(object));
        }
        intent.putExtra("Source", str);
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gotoFavorites() {
        Intent intent = FragmentWrapperActivity.intent(CatalogFragment.class);
        intent.putExtra("uid", getStringParam("id"));
        User object = this.bioAdapter.getObject();
        if (object != null) {
            intent.putExtra("title", getString(R.string.users_favorites, object.nickname()));
        }
        intent.putExtra("fromMyCatalog", isMe());
        intent.putExtra("Source", "User Profile");
        startActivity(intent);
    }

    public void onSteakRepairSuccessed() {
        if (isAdded() && isMe()) {
            this.consecutiveCheckInDays++;
            this.brokenStreaks--;
            updateStreakInfo();
        }
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        FanClubAdapter fanClubAdapter = this.fanClubAdapter;
        if (fanClubAdapter == null || fanClubAdapter.getCount() == 0 || !(notification.obj instanceof FanClub)) {
            return;
        }
        String str = notification.action;
        if ((str == "update" || str == "new") && Utils.isEqualsNotNull(((FanClub) notification.obj).targetUid, id())) {
            this.fanClubAdapter.onFanClubSubscriptionChanged();
        }
    }

    private class MySwitchAdapter extends SwitchAdapter {
        public MySwitchAdapter() {
            super(UserProfileFragment.this);
        }

        @Override // com.narvii.list.ProxyAdapter, android.widget.Adapter
        public int getCount() {
            if (UserProfileFragment.this.isAccessible) {
                return super.getCount();
            }
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBackground() {
        User object = this.bioAdapter.getObject();
        if (object == null || isDestoryed()) {
            return;
        }
        int backgroundColor = object.getBackgroundColor();
        View viewFindViewById = getView().findViewById(R.id.gradient);
        if (viewFindViewById != null) {
            if (backgroundColor == 0 || !PaletteUtils.isDarkColor(backgroundColor)) {
                viewFindViewById.setBackgroundDrawable(null);
            } else {
                ShapeDrawable shapeDrawable = new ShapeDrawable(new RectShape());
                int i = getContext().getResources().getDisplayMetrics().widthPixels;
                float dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.user_profile_header_height) / 4;
                float f = 0.3f * dimensionPixelSize;
                float f2 = ((f * f) + ((i * i) / 4)) / (2.0f * f);
                float f3 = f2 + (dimensionPixelSize - f);
                int i2 = 16777215 & backgroundColor;
                shapeDrawable.getPaint().setShader(new RadialGradient(i / 2, -(f2 - f), f3, new int[]{i2, i2, backgroundColor}, new float[]{0.0f, f2 / f3, 1.0f}, Shader.TileMode.CLAMP));
                viewFindViewById.setBackgroundDrawable(shapeDrawable);
            }
        }
        if (this.header != null) {
            int i3 = (backgroundColor == 0 || !PaletteUtils.isDarkColor(backgroundColor)) ? R.drawable.user_header_btn : R.drawable.user_header_btn_dark;
            this.header.findViewById(R.id.user_reputation).setBackgroundResource(i3);
            this.header.findViewById(R.id.user_follower).setBackgroundResource(i3);
            this.header.findViewById(R.id.user_following).setBackgroundResource(i3);
            this.header.findViewById(R.id.user_visitors).setBackgroundResource(i3);
        }
        this.backgroundView.setBackgroundSource(object);
        setDarkTheme(isBackgroundColorDark());
        resetDarkTheme(this.tabAdapter);
        resetDarkTheme(this.favoriteAdapter);
        resetDarkTheme(this.postAdapter);
        resetDarkTheme(this.commentDividerAdapter);
        resetDarkTheme(this.postDividerAdapter);
        resetDarkTheme(this.bookmarkDividerAdapter);
        resetDarkTheme(this.commentHeaderAdapter);
        resetDarkTheme(this.commentAddAdapter);
        resetDarkTheme(this.commentAdapter);
        resetDarkTheme(this.bioAdapter);
        resetDarkTheme(this.addBlogAdapter);
        resetDarkTheme(this.bookmarkAdapter);
        resetDarkTheme(this.fanClubAdapter);
        resetDarkTheme(this.bioDividerAdapter);
    }

    public void follow(boolean z) {
        ApiRequest apiRequestBuild;
        if (this.sendingFollow) {
            return;
        }
        int i = this.bioAdapter.getObject().membershipStatus;
        final boolean z2 = i == 1 || i == 3;
        if (!z2) {
            apiRequestBuild = ApiRequest.builder().post().path("/user-profile/" + getStringParam("id") + "/member").build();
        } else {
            if (!z) {
                ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
                actionSheetDialog.addItem(R.string.user_unfollow, true);
                actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.user.profile.UserProfileFragment.17
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i2) {
                        if (i2 == 0) {
                            UserProfileFragment.this.follow(true);
                        }
                    }
                });
                actionSheetDialog.show();
                return;
            }
            AccountService accountService = (AccountService) getService("account");
            apiRequestBuild = ApiRequest.builder().delete().path("/user-profile/" + getStringParam("id") + "/member/" + accountService.getUserId()).build();
        }
        ((ApiService) getService("api")).exec(apiRequestBuild, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.user.profile.UserProfileFragment.18
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) {
                UserProfileFragment userProfileFragment = UserProfileFragment.this;
                userProfileFragment.sendingFollow = false;
                userProfileFragment.updateHeader();
                AccountService accountService2 = (AccountService) UserProfileFragment.this.getService("account");
                User userProfile = accountService2.getUserProfile();
                if (userProfile == null) {
                    return;
                }
                Notification notification = new Notification(z2 ? "delete" : "new", userProfile);
                notification.parentId = UserProfileFragment.this.getStringParam("id");
                NotificationUtils.sendNotificationIncludeGlobal(UserProfileFragment.this, notification);
                if (UserProfileFragment.this.bioAdapter.getObject() != null) {
                    User user = (User) UserProfileFragment.this.bioAdapter.getObject().m46clone();
                    if (z2) {
                        user.removeFollowingStatus(1);
                        user.membersCount--;
                    } else {
                        user.addFollowingStatus(1);
                        user.membersCount++;
                    }
                    NotificationUtils.sendNotificationIncludeGlobal(UserProfileFragment.this, new Notification("update", user));
                }
                User userProfile2 = accountService2.getUserProfile();
                if (z2) {
                    userProfile2.joinedCount--;
                } else {
                    userProfile2.joinedCount++;
                }
                if (Utils.isEqualsNotNull(accountService2.getUserId(), UserProfileFragment.this.getStringParam("id"))) {
                    accountService2.updateProfile(userProfile2, apiResponse.timestamp, true);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                UserProfileFragment userProfileFragment = UserProfileFragment.this;
                userProfileFragment.sendingFollow = false;
                userProfileFragment.updateHeader();
                NVToast.makeText(UserProfileFragment.this.getContext(), str, 0).show();
            }
        });
        this.sendingFollow = true;
        updateHeader();
    }

    private class AddBlogAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public AddBlogAdapter() {
            super(UserProfileFragment.this);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            CommunityConfigHelper communityConfigHelper = UserProfileFragment.this.communityConfigHelper;
            return (communityConfigHelper != null && communityConfigHelper.isPostEnabled() && UserProfileFragment.this.communityConfigHelper.isPostBlogEnabled()) ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return Integer.valueOf(i);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.user_profile_add_blog, viewGroup, view);
            ((ImageView) viewCreateView.findViewById(R.id.create_plus)).setImageResource(!this.darkTheme ? R.drawable.ic_create_plus_green : R.drawable.ic_create_plus_white);
            UserProfileFragment.this.setTextColor(viewCreateView, R.id.write_new_blog, -7829368);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (i == 0) {
                if ((UserProfileFragment.this.getActivity() instanceof DrawerActivity) && ((DrawerActivity) UserProfileFragment.this.getActivity()).hasCBB()) {
                    ((CBBHost) getService("cbbHost")).openPostEntry();
                    return true;
                }
                ((PostEntryDialog) getService("postEntry")).show(0, "User Profile", LoggingSource.UserProfileView);
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }

    private class PostAdapter extends FeedListAdapter {
        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "Posts";
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return 5;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public boolean showListEnd(int i) {
            return true;
        }

        public PostAdapter() {
            super(UserProfileFragment.this);
            this.source = "User Profile";
            this.shareSource = "User Profile";
            this.loggingSource = LoggingSource.UserProfileView;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected Class<BlogListResponse> responseType() {
            return BlogListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/blog");
            builderPath.param("type", GlobalProfileFragment.KEY_USER);
            builderPath.param("q", UserProfileFragment.this.id());
            return builderPath.build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected List<Feed> filterResponseList(List<Feed> list, int i) {
            return new FilterHelper(this).keepForLeaderAndCurator().filter(list);
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            if (getItem(i) == NVPagedAdapter.LIST_END && (list() == null || list().isEmpty())) {
                return false;
            }
            return super.isEnabled(i);
        }

        @Override // com.narvii.list.NVPagedAdapter
        public View createListEndItem(ViewGroup viewGroup, View view, int i) {
            if ((list() == null || list().isEmpty()) && UserProfileFragment.this.isMe()) {
                View viewCreateView = createView(R.layout.user_profile_blog_empty, viewGroup, view, "blogEmpty");
                UserProfileFragment.this.setTextColor(viewCreateView, R.id.empty_text, -5592406);
                return viewCreateView;
            }
            View viewCreateListEndItem = super.createListEndItem(viewGroup, view, i);
            viewCreateListEndItem.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.user.profile.UserProfileFragment.PostAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    PostAdapter.this.refresh(0, null);
                }
            });
            if (i > 0) {
                viewCreateListEndItem.setVisibility(8);
            }
            return viewCreateListEndItem;
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            if (UserProfileFragment.this.isMe() && (notification.obj instanceof Blog)) {
                if (Utils.isEqualsNotNull(notification.uid, ((AccountService) getService("account")).getUserId())) {
                    editList(notification, false);
                    return;
                }
            }
            super.onNotification(notification);
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            View itemView = super.getItemView(obj, view, viewGroup);
            View viewFindViewById = itemView.findViewById(R.id.nickname);
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(8);
            }
            View viewFindViewById2 = itemView.findViewById(R.id.avatar);
            if (viewFindViewById2 != null) {
                viewFindViewById2.setVisibility(8);
            }
            View viewFindViewById3 = itemView.findViewById(R.id.user_avatar_layout);
            if (viewFindViewById3 != null) {
                viewFindViewById3.setVisibility(8);
            }
            View viewFindViewById4 = itemView.findViewById(R.id.user_click);
            if (viewFindViewById4 != null && (viewFindViewById4.getLayoutParams() instanceof RelativeLayout.LayoutParams)) {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) viewFindViewById4.getLayoutParams();
                layoutParams.width = -1;
                layoutParams.height = -2;
                layoutParams.topMargin = (int) Utils.dpToPx(getContext(), 4.0f);
                layoutParams.bottomMargin = (int) Utils.dpToPx(getContext(), 6.0f);
            }
            return itemView;
        }

        @Override // com.narvii.feed.BaseFeedListAdapter
        public Intent getStoryDetailPageIntent(Blog blog) {
            return new StoryListFragment.IntentBuilder(blog).source(StoryApi.USER_PROFILE_PLAYER).showCommentBar(showCommentBarInStoryDetail()).forceVideoAutoPlay(true).uid(UserProfileFragment.this.id()).build();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean showNotActivated() {
        return (!isMe() || ((AccountService) getService("account")).hasActivation() || showDisabled()) ? false : true;
    }

    @Override // com.narvii.detail.DetailFragment
    protected int getDisableStrId(NVObject nVObject) {
        if (!(nVObject instanceof User)) {
            return 0;
        }
        int i = ((User) nVObject).status;
        setDisabledText(getText(i == 10 ? R.string.detail_deleted_message_user : i == 9 ? R.string.detail_disabled_message_user : R.string.detail_disabled_message_profile));
        return 0;
    }

    @Override // com.narvii.detail.DetailFragment
    protected boolean shouldShowDisableBar(NVObject nVObject) {
        if (!(nVObject instanceof User)) {
            return false;
        }
        User user = (User) nVObject;
        int i = user.status;
        return i == 9 || i == 10 || user.hideUserProfile();
    }

    private boolean showDisabled() {
        User object = this.bioAdapter.getObject();
        if (object == null) {
            return false;
        }
        return shouldShowDisableBar(object);
    }

    private boolean userDisabled() {
        User object;
        BioAdapter bioAdapter = this.bioAdapter;
        if (bioAdapter == null || (object = bioAdapter.getObject()) == null) {
            return false;
        }
        int i = object.status;
        return i == 9 || i == 10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void shareUserProfile(Bitmap bitmap) {
        if (bitmap == null) {
            try {
                HeaderLayout headerLayout = (HeaderLayout) this.header.findViewById(R.id.user_profile_header);
                if (headerLayout != null) {
                    bitmap = headerLayout.screenshotForSharing(this.consecutiveCheckInDays >= 2);
                }
            } catch (OutOfMemoryError e) {
                Log.w("OutOfMemory when create profile image", e);
            }
        }
        if (bitmap != null) {
            new ShareDarkRoomHelper(this).saveDynamicThemeBg(getActivity());
            Intent intent = FragmentWrapperActivity.intent(UserProfileShareFragment.class);
            intent.putExtra(ShareDarkRoomFragment.KEY_STATISTIC_SOURCE, "User Profile");
            intent.putExtra(ShareDarkRoomFragment.KEY_SHARE_OBJECT, JacksonUtils.writeAsString(this.bioAdapter.getObject()));
            UserProfileShareFragment.saveDynamicProfileImg(bitmap);
            startActivity(intent);
        }
    }

    public void editProfile(String str, boolean z) {
        openUserProfilePostActivity(str, z, false);
    }

    public void openUserProfilePostActivity(final String str, final boolean z, final boolean z2) {
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        ((ApiService) getService("api")).exec(this.bioAdapter.createRequest(), new ApiResponseListener<UserResponse>(UserResponse.class) { // from class: com.narvii.user.profile.UserProfileFragment.19
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, UserResponse userResponse) {
                progressDialog.dismiss();
                Intent intent = new Intent(UserProfileFragment.this.getContext(), (Class<?>) UserProfilePostActivity.class);
                intent.putExtra("uid", userResponse.user.uid);
                intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(new UserProfilePost(userResponse.user)));
                intent.putExtra("userProfile", JacksonUtils.writeAsString(userResponse.user));
                intent.putExtra("bio", z);
                intent.putExtra("isOpenAvatarFrame", z2);
                intent.putExtra("Source", str);
                UserProfileFragment.this.startActivity(intent);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                progressDialog.dismiss();
                NVToast.makeText(UserProfileFragment.this.getContext(), str2, 0).show();
            }
        });
    }

    class BioAdapter extends DetailAdapter<User, UserResponse> implements NotificationListener {
        private BioBriefStyle bioBriefStyle;
        View.OnClickListener editBioListener;
        View.OnClickListener goBioDetailListener;
        private boolean ignoreAccountUserProfileNotification;
        private String visitorParam;

        public BioAdapter() {
            super(UserProfileFragment.this);
            this.visitorParam = "visit";
            this.ignoreAccountUserProfileNotification = false;
            this.editBioListener = new View.OnClickListener() { // from class: com.narvii.user.profile.UserProfileFragment.BioAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    BioAdapter bioAdapter = BioAdapter.this;
                    UserProfileFragment userProfileFragment = UserProfileFragment.this;
                    if (userProfileFragment.preview) {
                        DetailFragment.showPreviewToast(bioAdapter.getContext());
                    } else {
                        userProfileFragment.editProfile("Add short bio", true);
                    }
                }
            };
            this.goBioDetailListener = new View.OnClickListener() { // from class: com.narvii.user.profile.UserProfileFragment.BioAdapter.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    User object = BioAdapter.this.getObject();
                    if (object == null || TextUtils.isEmpty(object.content)) {
                        return;
                    }
                    Intent intent = FragmentWrapperActivity.intent(BioDetailFragment.class);
                    intent.putExtra("id", UserProfileFragment.this.id());
                    intent.putExtra("preview", UserProfileFragment.this.preview);
                    intent.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(object));
                    intent.putExtra("Source", "Profile");
                    BioAdapter.this.startActivity(intent);
                }
            };
            this.loggingSource = LoggingSource.UserProfileView;
            this.bioBriefStyle = new CommunityBioBriefStyle();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            User object = getObject();
            if (object == null || object.role != 253) {
                return super.isEmpty();
            }
            return false;
        }

        @Override // com.narvii.detail.DetailAdapter, android.widget.Adapter
        public int getCount() {
            User object = getObject();
            if (object == null || object.role == 253) {
                return 0;
            }
            return super.getCount();
        }

        @Override // com.narvii.detail.DetailAdapter, android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            UserProfileFragment.this.topAdapter.notifyDataSetChanged();
            invalidateOptionsMenu();
            UserProfileFragment.this.updateHeader();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void getCellTypes(List<DetailAdapter.CellType> list) {
            super.getCellTypes(list);
            list.add(UserProfileFragment.BIO_SNIPPET);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.detail.DetailAdapter
        public void onObjectResponse(ApiRequest apiRequest, UserResponse userResponse) {
            if (UserProfileFragment.this.preview) {
                User object = getObject();
                if (object != null) {
                    User user = userResponse.user;
                    user.mediaList = object.mediaList;
                    user.nickname = object.nickname;
                    user.content = object.content;
                    user.extensions = object.extensions;
                    user.address = object.address;
                    user.latitude = object.latitude;
                    user.longitude = object.longitude;
                    user.icon = object.icon;
                    user.mediaList = object.mediaList;
                    user.avatarFrame = object.avatarFrame;
                    super.onObjectResponse(apiRequest, (ApiRequest) userResponse);
                    return;
                }
                return;
            }
            super.onObjectResponse(apiRequest, (ApiRequest) userResponse);
            invalidateOptionsMenu();
            if (UserProfileFragment.this.getBooleanParam(UserProfileFragment.SEND_NOTIFICATION)) {
                Notification notification = new Notification("update", getObject().m46clone());
                notification.bundle = new Bundle();
                notification.bundle.putBoolean("fromUserProfileFullInfo", true);
                sendNotification(notification);
            }
            AccountService accountService = (AccountService) this.context.getService("account");
            if (Utils.isEqualsNotNull(accountService.getUserId(), userResponse.user.uid)) {
                this.ignoreAccountUserProfileNotification = true;
                accountService.updateProfile(userResponse.user, userResponse.timestamp, true);
                this.ignoreAccountUserProfileNotification = false;
            }
            UserProfileFragment.this.recentVisitorHelper.checkVisitorTooltips(userResponse.user, UserProfileFragment.this.isMe(), UserProfileFragment.this.header.findViewById(R.id.user_visitors), UserProfileFragment.this.header.findViewById(R.id.chat_layout), null);
        }

        @Override // com.narvii.detail.DetailAdapter
        public void setResponse(UserResponse userResponse) {
            Callback<User> callback;
            User user = userResponse.user;
            if (user != null) {
                UserProfileFragment.this.slideShowMedias = user.getSlideShowMedias();
                UserProfileFragment.this.bioMedias = userResponse.user.getBioMedias();
            }
            super.setResponse((BioAdapter) userResponse);
            ((DetailFragment) UserProfileFragment.this)._hasBackground = userResponse.user.hasBackground();
            ((DetailFragment) UserProfileFragment.this)._isBackgroundDark = userResponse.user.getBackgroundMedia() != null || PaletteUtils.isDarkColor(userResponse.user.getBackgroundColor());
            ((NVFragment) UserProfileFragment.this)._backgroundColor = userResponse.user.getBackgroundColor();
            UserProfileFragment.this.updateListViewContentBackground();
            UserProfileFragment.this.updateBackground();
            if (userResponse != null && userResponse.timestamp != null && (callback = UserProfileFragment.this.onFinishListener) != null) {
                callback.call(userResponse.object());
            }
            UserProfileFragment userProfileFragment = UserProfileFragment.this;
            BioAdapter bioAdapter = userProfileFragment.bioAdapter;
            userProfileFragment.setDisabledStatus(bioAdapter == null ? null : bioAdapter.getObject());
            if (UserProfileFragment.this.showNotActivated()) {
                UserProfileFragment.this.notActivated.setVisibility(0);
            } else {
                UserProfileFragment.this.notActivated.setVisibility(8);
            }
            if (userResponse.user.isModerator()) {
                UserProfileFragment userProfileFragment2 = UserProfileFragment.this;
                userProfileFragment2.switchAdapter.setAdapter(userProfileFragment2.bioAdapter);
            }
            CommentAddAdapter commentAddAdapter = UserProfileFragment.this.commentAddAdapter;
            if (commentAddAdapter != null) {
                commentAddAdapter.setVisibleInList(!userResponse.user.isModerator());
            }
            UserProfileFragment.this.updateAccessible();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected ApiRequest createUserListRequest(int i, int i2) {
            return ApiRequest.builder().path("/user-profile/" + UserProfileFragment.this.id() + "/member").param(TtmlNode.START, Integer.valueOf(i)).param("size", Integer.valueOf(i2)).param("cv", "1.2").build();
        }

        /* JADX WARN: Removed duplicated region for block: B:63:0x00df  */
        @Override // com.narvii.detail.DetailAdapter, com.narvii.notification.NotificationListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onNotification(com.narvii.notification.Notification r8) {
            /*
                Method dump skipped, instructions count: 244
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.user.profile.UserProfileFragment.BioAdapter.onNotification(com.narvii.notification.Notification):void");
        }

        @Override // com.narvii.detail.DetailAdapter
        public Class<? extends User> objectType() {
            return User.class;
        }

        @Override // com.narvii.detail.DetailAdapter
        protected Class<UserResponse> responseType() {
            return UserResponse.class;
        }

        @Override // com.narvii.detail.DetailAdapter
        public void setObject(User user) {
            UserResponse userResponse = new UserResponse();
            userResponse.user = user;
            setResponse(userResponse);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected ApiRequest createRequest() {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/user-profile/" + UserProfileFragment.this.id());
            if (!TextUtils.isEmpty(this.visitorParam) && !UserProfileFragment.this.isMe()) {
                builderPath.param("action", this.visitorParam);
                this.visitorParam = "";
            }
            DetailPushUtils.addPushTrackIdInRequest(builderPath, this);
            return builderPath.build();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void buildCells(List<Object> list) {
            User user = getResponse().user;
            AccountService accountService = (AccountService) getService("account");
            if (user == null || !user.isProfileAccessibleByUser(accountService.getUserProfile())) {
                return;
            }
            list.add(UserProfileFragment.BIO_SNIPPET);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected View getCell(Object obj, View view, ViewGroup viewGroup) {
            if (obj == UserProfileFragment.BIO_SNIPPET) {
                boolean zIsMe = UserProfileFragment.this.isMe();
                User user = getResponse().user;
                View viewCreateView = createView(R.layout.bio_snippet, viewGroup, view);
                viewCreateView.findViewById(R.id.top_divider).setVisibility(user.getBackgroundColor() == 0 ? 8 : 0);
                setTextColor(viewCreateView, R.id.bio_title, -11908534);
                UserProfileFragment userProfileFragment = UserProfileFragment.this;
                if (userProfileFragment.dateFmt == null) {
                    userProfileFragment.dateFmt = new SimpleDateFormat("MMMM yyyy");
                }
                Date iso8601 = DateTimeFormatter.parseISO8601(user.createdTime);
                UserProfileFragment userProfileFragment2 = UserProfileFragment.this;
                String string = userProfileFragment2.getString(R.string.user_profile_since_date, userProfileFragment2.dateFmt.format(iso8601), UserProfileFragment.this.datetime.daysSince(iso8601));
                TextView textView = (TextView) viewCreateView.findViewById(R.id.member_since);
                if (TextUtils.isEmpty(user.createdTime)) {
                    string = null;
                }
                textView.setText(string);
                setTextColor(viewCreateView, R.id.member_since, -6579301, -1996488705);
                BioBriefView bioBriefView = (BioBriefView) viewCreateView.findViewById(R.id.bio_brief);
                bioBriefView.setBio(user, UserProfileFragment.this.isMe(), this.darkTheme, this.bioBriefStyle);
                if (bioBriefView.hasBioContent()) {
                    viewCreateView.findViewById(R.id.bio_main).setOnClickListener(this.goBioDetailListener);
                    viewCreateView.findViewById(R.id.bio_main).setClickable(true);
                } else {
                    viewCreateView.findViewById(R.id.bio_main).setOnClickListener(zIsMe ? this.editBioListener : null);
                    viewCreateView.findViewById(R.id.bio_main).setClickable(zIsMe);
                }
                ((TintButton) viewCreateView.findViewById(R.id.location_icon)).setTintColor(this.darkTheme ? -1996488705 : -6579301);
                viewCreateView.findViewById(R.id.location).setVisibility(8);
                ((TextView) viewCreateView.findViewById(R.id.address)).setText(user.address);
                setTextColor(viewCreateView, R.id.address, -6579301, -1996488705);
                return viewCreateView;
            }
            return super.getCell(obj, view, viewGroup);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected boolean onUserGridClick(View view, String str) {
            if (super.onUserGridClick(view, "Followers")) {
                return true;
            }
            Intent intent = FragmentWrapperActivity.intent(FollowersListFragment.class);
            intent.putExtra("id", UserProfileFragment.this.getStringParam("id"));
            startActivity(intent);
            return true;
        }

        @Override // com.narvii.detail.DetailAdapter
        public void commentNew(String str) {
            super.commentNew(str);
            CommentPostActivity.setStatusListener(UserProfileFragment.this.commentAdapter);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected int commentSort() {
            return UserProfileFragment.this.commentAdapter.sort();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void setCommentSort(int i) {
            UserProfileFragment userProfileFragment = UserProfileFragment.this;
            userProfileFragment.commentAdapter.flHeight = userProfileFragment.commentExtraHeight();
            UserProfileFragment.this.commentAdapter.setSort(i);
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void commentRefresh() {
            UserProfileFragment userProfileFragment = UserProfileFragment.this;
            userProfileFragment.commentAdapter.flHeight = userProfileFragment.commentExtraHeight();
            UserProfileFragment.this.commentAdapter.resetList();
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected boolean setListContentBgWhenHasPageBackground() {
        return !this._hasBackground;
    }

    private class FavoriteAdapter extends NVAdapter implements NotificationListener {
        public List<Item> collection;
        Integer collectionCount;
        private ApiResponseListener<ItemListResponse> collectionListener;

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public FavoriteAdapter() {
            super(UserProfileFragment.this);
            this.collectionListener = new ApiResponseListener<ItemListResponse>(ItemListResponse.class) { // from class: com.narvii.user.profile.UserProfileFragment.FavoriteAdapter.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, ItemListResponse itemListResponse) {
                    if (itemListResponse.itemList.size() < 25) {
                        FavoriteAdapter.this.collectionCount = Integer.valueOf(itemListResponse.itemList.size());
                    }
                    FavoriteAdapter favoriteAdapter = FavoriteAdapter.this;
                    favoriteAdapter.collection = new FilterHelper(UserProfileFragment.this).keepForLeaderAndCurator().filter(itemListResponse.itemList);
                    FavoriteAdapter.this.notifyDataSetChanged();
                }
            };
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            if (this.collection == null) {
                sendCollectionRequest();
            }
        }

        void sendCollectionRequest() {
            ((ApiService) getService("api")).exec(ApiRequest.builder().path("/item").param("type", "user-all").param(TtmlNode.START, 0).param("size", 25).param("cv", "1.2").param("uid", UserProfileFragment.this.id()).build(), this.collectionListener);
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            refreshMonitorStart(i, callback);
            sendCollectionRequest();
            refreshMonitorEnd();
        }

        @Override // com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            if (notification.obj instanceof Item) {
                String userId = ((AccountService) getService("account")).getUserId();
                if (UserProfileFragment.this.isMe() && Utils.isEqualsNotNull(notification.uid, userId)) {
                    Item item = (Item) notification.obj;
                    ArrayList arrayList = new ArrayList();
                    List<Item> list = this.collection;
                    if (list != null) {
                        arrayList.addAll(list);
                    }
                    int iIndexOfId = Utils.indexOfId(arrayList, item.id());
                    String str = notification.action;
                    if (str == "delete") {
                        if (iIndexOfId >= 0) {
                            arrayList.remove(iIndexOfId);
                        }
                    } else if (str == "new") {
                        arrayList.add(0, item);
                    } else if (iIndexOfId >= 0) {
                        arrayList.set(iIndexOfId, item);
                    }
                    this.collection = arrayList;
                    notifyDataSetChanged();
                }
            }
            if (notification.objectType == 13 && Utils.isEqualsNotNull(notification.uid, UserProfileFragment.this.getStringParam("id"))) {
                sendCollectionRequest();
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            CommunityConfigHelper communityConfigHelper = UserProfileFragment.this.communityConfigHelper;
            if ((communityConfigHelper != null && !communityConfigHelper.isCatalogEnable()) || !UserProfileFragment.this.isAccessible) {
                return 0;
            }
            List<Item> list = this.collection;
            return (list == null || !list.isEmpty() || UserProfileFragment.this.isMe()) ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.user_profile_favorites, viewGroup, view);
            User object = UserProfileFragment.this.bioAdapter.getObject();
            Integer num = this.collectionCount;
            if (num != null) {
                num.intValue();
            } else if (object != null) {
                int i2 = object.itemsCount;
            }
            viewCreateView.findViewById(R.id.user_collection).setOnClickListener(this.subviewClickListener);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.user_collection_n);
            textView.setTextColor(this.darkTheme ? -1 : -7829368);
            if (UserProfileFragment.this.isMe()) {
                textView.setText(UserProfileFragment.this.getString(R.string.my_collection_n));
            } else {
                textView.setText(UserProfileFragment.this.getString(R.string.user_collection_n));
            }
            ((TintButton) viewCreateView.findViewById(R.id.user_collection_chevron)).setTintColor(this.darkTheme ? -1 : -7829368);
            UserFavoriteGallery userFavoriteGallery = (UserFavoriteGallery) viewCreateView.findViewById(R.id.pager);
            userFavoriteGallery.setDarkTheme(this.darkTheme);
            List<Item> list = this.collection;
            userFavoriteGallery.setItems(this.collection, UserProfileFragment.this.isMe(), list != null && list.size() >= 25);
            userFavoriteGallery.setOnItemClickListener(UserProfileFragment.this.itemListener);
            viewCreateView.findViewById(R.id.user_no_collection).setVisibility(4);
            SpinningView spinningView = (SpinningView) viewCreateView.findViewById(R.id.user_loading_collection);
            if (spinningView != null) {
                spinningView.setSpinColor(this.darkTheme ? -1 : -7829368);
                spinningView.setVisibility(this.collection == null ? 0 : 4);
            }
            userFavoriteGallery.setVisibility(this.collection == null ? 4 : 0);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (view2 != null && view2.getId() == R.id.user_collection) {
                UserProfileFragment.this.gotoFavorites();
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }

    private void resetDarkTheme(NVAdapter nVAdapter) {
        if (nVAdapter != null) {
            nVAdapter.setDarkTheme(isBackgroundColorDark());
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    protected void onLoginResult(boolean z, Intent intent) {
        if (z && "follow".equals(intent.getAction())) {
            follow(false);
        } else {
            super.onLoginResult(z, intent);
        }
    }

    private class TabAdapter extends NVAdapter {
        public TabAdapter() {
            super(UserProfileFragment.this);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (!UserProfileFragment.this.isAccessible) {
                return 0;
            }
            User object = UserProfileFragment.this.bioAdapter.getObject();
            return (object == null || object.role != 253) ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return UserProfileFragment.SWITCH;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return UserProfileFragment.SWITCH.hashCode();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.user_profile_switch_item, viewGroup, view);
            RadioGroup radioGroup = (RadioGroup) viewCreateView.findViewById(R.id.user_switch_group);
            int childCount = radioGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = radioGroup.getChildAt(i2);
                if (childAt instanceof SwitchButton) {
                    SwitchButton switchButton = (SwitchButton) childAt;
                    switchButton.setDarkTheme(this.darkTheme);
                    BioAdapter bioAdapter = UserProfileFragment.this.bioAdapter;
                    if (bioAdapter != null && bioAdapter.getObject() != null) {
                        User object = UserProfileFragment.this.bioAdapter.getObject();
                        if (switchButton.getId() == R.id.user_switch_posts) {
                            switchButton.setText(createTabTitleText(R.string.user_switch_posts, object.postsCount));
                        } else if (switchButton.getId() == R.id.user_switch_comments) {
                            switchButton.setText(createTabTitleText(R.string.user_switch_comments, object.commentsCount));
                        } else if (switchButton.getId() == R.id.user_switch_saved_posts) {
                            switchButton.setText(createTabTitleText(R.string.user_switch_saved_posts, 0));
                        }
                    }
                }
            }
            if (!UserProfileFragment.this.isMe()) {
                radioGroup.findViewById(R.id.user_switch_saved_posts).setVisibility(8);
            }
            int i3 = -1;
            ListAdapter adapter = UserProfileFragment.this.switchAdapter.getAdapter();
            UserProfileFragment userProfileFragment = UserProfileFragment.this;
            if (adapter == userProfileFragment.tab1Adapter) {
                i3 = R.id.user_switch_posts;
            } else {
                ListAdapter adapter2 = userProfileFragment.switchAdapter.getAdapter();
                UserProfileFragment userProfileFragment2 = UserProfileFragment.this;
                if (adapter2 == userProfileFragment2.tab2Adapter) {
                    i3 = R.id.user_switch_comments;
                } else if (userProfileFragment2.switchAdapter.getAdapter() == UserProfileFragment.this.tab3Adapter) {
                    i3 = R.id.user_switch_saved_posts;
                }
            }
            UserProfileFragment.this.disableSwitchListener = true;
            if (radioGroup != null) {
                radioGroup.check(i3);
                radioGroup.setOnCheckedChangeListener(UserProfileFragment.this.switchListener);
            }
            UserProfileFragment.this.disableSwitchListener = false;
            viewCreateView.findViewById(R.id.list_divider).setBackgroundResource(this.darkTheme ? R.color.list_divider_dark : R.color.list_divider);
            return viewCreateView;
        }

        private SpannableString createTabTitleText(int i, int i2) {
            String string = UserProfileFragment.this.getString(i);
            if (i2 <= 0) {
                SpannableString spannableString = new SpannableString(UserProfileFragment.this.getString(i));
                spannableString.setSpan(new StyleSpan(1), 0, string.length(), 17);
                return spannableString;
            }
            SpannableString spannableString2 = new SpannableString(string + " " + com.narvii.util.text.TextUtils.getLiteCountWithCeil2(i2));
            spannableString2.setSpan(new StyleSpan(1), 0, string.length(), 17);
            spannableString2.setSpan(new StyleSpan(0), string.length(), spannableString2.length(), 17);
            spannableString2.setSpan(new RelativeSizeSpan(0.8f), string.length(), spannableString2.length(), 33);
            return spannableString2;
        }
    }

    public void gallery(Media media) {
        int iIndexOf;
        ArrayList arrayList = new ArrayList();
        User object = this.bioAdapter.getObject();
        Media media2 = new Media();
        media2.type = 100;
        media2.url = object.icon;
        arrayList.add(media2);
        if (object.icon == null) {
            return;
        }
        ArrayList<Media> arrayList2 = this.slideShowMedias;
        if (arrayList2 != null) {
            arrayList.addAll(arrayList2);
            iIndexOf = arrayList.indexOf(media);
        } else {
            iIndexOf = 0;
        }
        Intent intent = new Intent(getContext(), (Class<?>) AvatarFrameMediaGalleryActivity.class);
        intent.putExtra("parent", JacksonUtils.writeAsString(object));
        intent.putExtra("parentClass", User.class);
        intent.putExtra("list", JacksonUtils.writeAsString(arrayList));
        if (iIndexOf > 0) {
            intent.putExtra("position", iIndexOf);
        }
        intent.putExtra("preview", this.preview);
        startActivity(intent);
    }

    public void galleryBioMedias(Media media) {
        ArrayList<Media> arrayList = this.bioMedias;
        if (arrayList != null) {
            int iIndexOf = arrayList.indexOf(media);
            Intent intent = new Intent(getContext(), (Class<?>) AvatarFrameMediaGalleryActivity.class);
            BioAdapter bioAdapter = this.bioAdapter;
            if (bioAdapter != null) {
                intent.putExtra("parent", JacksonUtils.writeAsString(bioAdapter.getObject()));
                intent.putExtra("parentClass", User.class);
            }
            intent.putExtra("list", JacksonUtils.writeAsString(this.bioMedias));
            if (iIndexOf > 0) {
                intent.putExtra("position", iIndexOf);
            }
            intent.putExtra("preview", this.preview);
            startActivity(intent);
        }
    }

    @Override // com.narvii.detail.DetailFragment
    protected void onNotAvailableChanged(boolean z) {
        super.onNotAvailableChanged(z);
        ViewUtils.show(getView(), R.id.user_profile_header, !z);
    }

    class FanClubAdapter extends NVAdapter {
        private FanClub info;
        boolean isMeOrFan;
        ApiRequest request;
        ArrayList<User> userList;
        String userListError;
        private final ApiResponseListener<FansInfoListResponse> userListListener;
        FansInfoListResponse userListResponse;

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public FanClubAdapter(NVContext nVContext) {
            super(nVContext);
            this.userList = new ArrayList<>();
            this.userListListener = new ApiResponseListener<FansInfoListResponse>(FansInfoListResponse.class) { // from class: com.narvii.user.profile.UserProfileFragment.FanClubAdapter.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, FansInfoListResponse fansInfoListResponse) {
                    User userProfile;
                    FanClubAdapter fanClubAdapter = FanClubAdapter.this;
                    fanClubAdapter.request = null;
                    fanClubAdapter.userListResponse = fansInfoListResponse;
                    if (fansInfoListResponse.fanClubList != null) {
                        fansInfoListResponse.fanClubList = new FilterHelper(fanClubAdapter.getParentContext()).keepBlockedUser(UserProfileFragment.this.isMe()).filter(fansInfoListResponse.fanClubList);
                    }
                    FanClubAdapter.this.userList.clear();
                    List<FansInfo> list = fansInfoListResponse.fanClubList;
                    if (list != null) {
                        Iterator<FansInfo> it = list.iterator();
                        while (it.hasNext()) {
                            User user = it.next().fansUserProfile;
                            if (user != null) {
                                FanClubAdapter.this.userList.add(user);
                            }
                        }
                        if (!UserProfileFragment.this.isMe()) {
                            FansInfo fansInfo = fansInfoListResponse.myFanClub;
                            if (fansInfo == null || (userProfile = fansInfo.fansUserProfile) == null) {
                                userProfile = null;
                            }
                            if (userProfile == null) {
                                userProfile = UserProfileFragment.this.accountService.getUserProfile();
                            }
                            if (userProfile != null) {
                                Utils.removeId(FanClubAdapter.this.userList, userProfile.id());
                                FanClubAdapter.this.userList.add(0, userProfile);
                            }
                        }
                    }
                    FanClubAdapter.this.notifyDataSetChanged();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    FanClubAdapter fanClubAdapter = FanClubAdapter.this;
                    fanClubAdapter.request = null;
                    fanClubAdapter.userListError = str;
                    fanClubAdapter.notifyDataSetChanged();
                }
            };
            this.isMeOrFan = isMeOrFan();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            User object;
            BioAdapter bioAdapter = UserProfileFragment.this.bioAdapter;
            return (bioAdapter == null || (object = bioAdapter.getObject()) == null || !object.isInfluencer()) ? 0 : 1;
        }

        private boolean isMeOrFan() {
            if (UserProfileFragment.this.isMe()) {
                return true;
            }
            this.info = UserProfileFragment.this.accountService.getFanClub(UserProfileFragment.this.id());
            FanClub fanClub = this.info;
            return fanClub != null && fanClub.isActive();
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            this.userListError = null;
            this.userListResponse = null;
            notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            InfluencerInfo influencerInfo = UserProfileFragment.this.bioAdapter.getObject().influencerInfo;
            View viewCreateView = createView(R.layout.user_profile_item_fan_club, viewGroup, view);
            View viewFindViewById = viewCreateView.findViewById(R.id.influencer_right_container);
            ViewUtils.show(viewFindViewById, this.isMeOrFan);
            LiveLayerOnlineBar liveLayerOnlineBar = (LiveLayerOnlineBar) viewFindViewById.findViewById(R.id.member_list);
            liveLayerOnlineBar.setShouldFilterUserList(false);
            liveLayerOnlineBar.setForceHideOnlineTextLayout(true);
            liveLayerOnlineBar.setUserList(this.userList, influencerInfo.fansCount);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.become_fans);
            FanClub fanClub = this.info;
            if (fanClub != null) {
                textView.setText(fanClub.hasSubscriptionBefore() ? R.string.renew : R.string.become_a_fan);
            }
            ViewUtils.show(viewCreateView, R.id.become_fans_container, !this.isMeOrFan);
            textView.setOnClickListener(this.subviewClickListener);
            UserProfileFragment.this.setTextColor(viewCreateView, R.id.tv_fan_club, -11908534);
            TextView textView2 = (TextView) viewCreateView.findViewById(R.id.tv_fans_count);
            UserProfileFragment.this.setTextColor(viewCreateView, R.id.tv_fans_count, -5000269, -1140850689);
            textView2.setText(com.narvii.util.text.TextUtils.getCountText(getContext(), influencerInfo.fansCount, R.string.one_fan, R.string.n_fans));
            ViewUtils.show(textView2, influencerInfo.fansCount > 0);
            viewCreateView.findViewById(R.id.list_divider).setBackgroundResource(this.darkTheme ? R.color.list_divider_dark : R.color.list_divider);
            if (this.isMeOrFan && this.userListResponse == null && this.request == null) {
                this.request = ApiRequest.builder().path("influencer/" + UserProfileFragment.this.id() + "/fans").param(TtmlNode.START, 0).param("size", 10).build();
                ((ApiService) getService("api")).exec(this.request, this.userListListener);
            }
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (this.isMeOrFan || view2 == null) {
                Intent intent = FragmentWrapperActivity.intent(FansListFragment.class);
                intent.putExtra("id", UserProfileFragment.this.id());
                BioAdapter bioAdapter = UserProfileFragment.this.bioAdapter;
                intent.putExtra(GlobalProfileFragment.KEY_USER, JacksonUtils.writeAsString(bioAdapter == null ? null : bioAdapter.getObject()));
                intent.putExtra("Source", "User Profile");
                startActivity(intent);
                return true;
            }
            FanClubSubscriptionDialog.showSubscriptionDialog(this, UserProfileFragment.this.id(), "User Profile");
            return true;
        }

        public void onFanClubSubscriptionChanged() {
            User object;
            InfluencerInfo influencerInfo;
            boolean zIsMeOrFan = isMeOrFan();
            if (zIsMeOrFan != this.isMeOrFan) {
                this.isMeOrFan = zIsMeOrFan;
                if (this.isMeOrFan) {
                    UserProfileFragment userProfileFragment = UserProfileFragment.this;
                    if (userProfileFragment.bioAdapter != null && !userProfileFragment.isMe() && (object = UserProfileFragment.this.bioAdapter.getObject()) != null && (influencerInfo = object.influencerInfo) != null) {
                        influencerInfo.fansCount++;
                    }
                }
                notifyDataSetChanged();
            }
        }
    }

    public void activateAccount() {
        Intent intent = FragmentWrapperActivity.intent(AccountSettingFragment.class);
        intent.putExtra("Source", "My User Profile");
        startActivityForResult(intent, 5);
    }

    class BioDividerAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }

        public BioDividerAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return UserProfileFragment.this.bioAdapter.getCount() != 0 ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.bio_divider, viewGroup, view);
            viewCreateView.findViewById(R.id.bottom_divider).setBackgroundColor(this.darkTheme ? 369098752 : 150994944);
            return viewCreateView;
        }
    }

    public void flagForReview() {
        new FlagReportOptionDialog.Builder(this).miniProfile(false).nvObject(this.bioAdapter.getObject()).build().show();
    }

    public void blockUser(boolean z) {
        blockUser(false, z);
    }

    public void blockUser(final boolean z, boolean z2) {
        ApiRequest.Builder builderPost;
        if (!z2) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
            builder.setMessage(z ? R.string.unblock_confirm : R.string.block_confirm);
            builder.setPositiveButton(R.string.continue_, new DialogInterface.OnClickListener() { // from class: com.narvii.user.profile.UserProfileFragment.20
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    UserProfileFragment.this.blockUser(z, true);
                }
            });
            builder.setNegativeButton(android.R.string.cancel, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
            builder.show();
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext(), BlockListResponse.class);
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.user.profile.UserProfileFragment.21
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                BlockListResponse blockListResponse = (BlockListResponse) apiResponse;
                ((UserBlockService) UserProfileFragment.this.getService("block")).updateBlockList(blockListResponse.blockedUidList, blockListResponse.blockerUidList);
                if (UserProfileFragment.this.getActivity() != null) {
                    ((NVActivity) UserProfileFragment.this.getActivity()).toastImage(R.drawable.ic_createa_account_check);
                    UserProfileFragment.this.getActivity().supportInvalidateOptionsMenu();
                }
                UserProfileFragment.this.updateAccessible();
                BioAdapter bioAdapter = UserProfileFragment.this.bioAdapter;
                if (bioAdapter != null) {
                    bioAdapter.notifyDataSetChanged();
                }
            }
        };
        progressDialog.show();
        ConfigService configService = (ConfigService) getService("config");
        if (z) {
            builderPost = ApiRequest.builder().delete();
        } else {
            builderPost = ApiRequest.builder().post();
        }
        ((ApiService) getService("api")).exec(builderPost.path("/block/" + getStringParam("id")).communityId(configService.getCommunityId()).build(), progressDialog.dismissListener);
    }

    public void startChat() {
        if (((AccountService) getService("account")).hasAccount()) {
            if (!canChat()) {
                ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
                aCMAlertDialog.setMessage(R.string.user_disable_chat_invite);
                aCMAlertDialog.addButton(android.R.string.ok, null);
                aCMAlertDialog.show();
                return;
            }
            ChatInviteFragment chatInviteFragment = (ChatInviteFragment) getFragmentManager().findFragmentByTag("chatInvite");
            if (chatInviteFragment != null) {
                chatInviteFragment.startChat(getStringParam("id"));
                return;
            }
            return;
        }
        ensureLogin(new Intent("chat"));
    }

    private boolean canChat() {
        User object;
        if (this.bioAdapter == null) {
            return true;
        }
        AccountService accountService = (AccountService) getService("account");
        if (!accountService.hasAccount()) {
            return true;
        }
        User userProfile = accountService.getUserProfile();
        if ((userProfile != null && userProfile.isCurator()) || (object = this.bioAdapter.getObject()) == null) {
            return true;
        }
        int privilege = object.getPrivilege(User.CHAT);
        if (privilege != 2) {
            return privilege != 3;
        }
        int i = object.membershipStatus;
        return i == 2 || i == 3;
    }

    public void addToFavoriteMembers() {
        final User object = this.bioAdapter.getObject();
        if (object == null) {
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.user.profile.UserProfileFragment.22
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                UserProfileFragment.this.sendNotification(new Notification(FavoriteUserListFragment.ACTION_ADD_FAVORITE_USER, object));
            }
        };
        progressDialog.show();
        ((ApiService) getService("api")).exec(ApiRequest.builder().post().path("/user-group/quick-access/" + object.uid).build(), progressDialog.dismissListener);
    }

    private class ProfileCommentHeaderAdapter extends CommentHeaderAdapter {
        ProfileCommentHeaderAdapter(NVContext nVContext, boolean z) {
            super(nVContext, z);
        }

        @Override // com.narvii.user.profile.adapter.CommentHeaderAdapter
        public void onCommentSort(int i) {
            UserProfileFragment.this.commentAdapter.setSort(i);
        }

        @Override // com.narvii.user.profile.adapter.CommentHeaderAdapter
        public void onCommentRefresh() {
            UserProfileFragment userProfileFragment = UserProfileFragment.this;
            userProfileFragment.commentAdapter.flHeight = userProfileFragment.commentExtraHeight();
            UserProfileFragment.this.commentAdapter.resetList();
        }
    }

    private class ProfileCommentAddAdapter extends CommentAddAdapter {
        public ProfileCommentAddAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.user.profile.adapter.CommentAddAdapter
        public void onCommentNew() {
            UserProfileFragment.this.bioAdapter.commentNew();
        }
    }

    private class CommentAdapter extends CommentListAdapter {
        int flHeight;

        public CommentAdapter() {
            super(UserProfileFragment.this);
            this.source = "User Profile";
            this.loggingSource = LoggingSource.UserProfileView;
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            User object = UserProfileFragment.this.bioAdapter.getObject();
            if (object == null || !object.isModerator()) {
                return super.getCount();
            }
            return 0;
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected NVObject getParent() {
            BioAdapter bioAdapter = UserProfileFragment.this.bioAdapter;
            if (bioAdapter == null) {
                return null;
            }
            return bioAdapter.getObject();
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected int firstLoadingHeight() {
            return this.flHeight;
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected void onViewStickerClicked(Intent intent) {
            UserProfileFragment.this.startActivityForResult(intent, 111);
        }
    }

    private void shareImage(Bitmap bitmap, String str) {
        try {
            File newScreenshotFile = Screenshot.getNewScreenshotFile(getContext(), Scopes.PROFILE, "png");
            FileOutputStream fileOutputStream = new FileOutputStream(newScreenshotFile);
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
            fileOutputStream.close();
            Uri uriFromFile = Uri.fromFile(newScreenshotFile);
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("image/*");
            intent.putExtra("android.intent.extra.STREAM", uriFromFile);
            PackageUtils packageUtils = new PackageUtils(getContext());
            if (str != null && packageUtils.isPackageInstalled(str)) {
                intent.setPackage(str);
            }
            try {
                startActivity(intent);
            } catch (Exception unused) {
            }
        } catch (Throwable th) {
            OomHelper.test(th);
            NVToast.makeText(getContext(), th instanceof OutOfMemoryError ? R.string.out_of_memory : R.string.normal_error, 0).show();
        }
    }

    void tagFavorites() {
        Intent intent = FragmentWrapperActivity.intent(CatalogPickerFragment.class);
        intent.putExtra("maximum", 50);
        startActivityForResult(intent, 3);
    }

    void tagFavorites(List<Item> list) {
        final String userId = ((AccountService) getService("account")).getUserId();
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.user.profile.UserProfileFragment.23
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                ItemCategory itemCategory = new ItemCategory();
                if (itemCategory.author == null) {
                    itemCategory.author = new User();
                }
                itemCategory.author.uid = userId;
                UserProfileFragment.this.sendNotification(new Notification("update", itemCategory));
            }
        };
        ApiRequest.Builder builder = new ApiRequest.Builder();
        builder.post().path("/item/" + list.get(0).itemId + "/tag");
        builder.param("destinationUid", userId);
        builder.param("categoryIdList", JacksonUtils.createArrayNode());
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        Iterator<Item> it = list.iterator();
        while (it.hasNext()) {
            arrayNodeCreateArrayNode.add(it.next().itemId);
        }
        builder.param("itemIdList", arrayNodeCreateArrayNode);
        ((ApiService) getService("api")).exec(builder.build(), progressDialog.dismissListener);
        progressDialog.show();
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        ArrayList listAs;
        if (i == 3 && i2 == -1 && intent != null && (listAs = JacksonUtils.readListAs(intent.getStringExtra("itemList"), Item.class)) != null && listAs.size() > 0) {
            tagFavorites(listAs);
        }
        if (i == 5) {
            updateHeader();
        }
        if (i == 111 && i2 == -1) {
            this.bioAdapter.commentNew(intent.getStringExtra("collectionId"));
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        ((NVListView) listView).addOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.narvii.user.profile.UserProfileFragment.24
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i) {
                if (i != 0) {
                    UserProfileFragment.this.recentVisitorHelper.hideToolTips();
                }
            }
        });
    }

    @Override // com.narvii.list.NVListFragment
    protected IVideoListDelegate initVideoListDelegate() {
        return new NVVideoListDelegate(this, getActivity());
    }

    @Override // com.narvii.detail.DetailFragment
    public NVObject getDetailNVObject() {
        BioAdapter bioAdapter = this.bioAdapter;
        if (bioAdapter != null) {
            return bioAdapter.getObject();
        }
        return null;
    }
}
