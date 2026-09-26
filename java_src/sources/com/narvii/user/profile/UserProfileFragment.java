package com.narvii.user.profile;

import ai.medialab.medialabads2.banners.MediaLabAdView;
import ai.medialab.medialabads2.data.AdSize;
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
import android.os.Bundle;
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
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.google.android.gms.common.Scopes;
import com.narvii.account.AccountService;
import com.narvii.achievements.AchievementsFragment;
import com.narvii.achievements.AllRanksFragment;
import com.narvii.achievements.StreakStatusResponse;
import com.narvii.amino.master.R;
import com.narvii.app.ComScoreSectionDispatcher;
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
import com.narvii.headlines.ExternalPostPreviewFragment;
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
import com.narvii.list.NVListFragment;
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
import com.narvii.master.home.profile.UserBlockHintAdapter;
import com.narvii.model.Blog;
import com.narvii.model.Comment;
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
import com.narvii.user.favorite.FavoriteUserListFragment;
import com.narvii.user.list.FollowersListFragment;
import com.narvii.user.list.FollowingListFragment;
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
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.FilterHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.MLUtilsKt;
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
import com.narvii.util.statistics.StatisticsService;
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
import com.safedk.android.utils.Logger;
import java.io.File;
import java.io.FileOutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
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
    BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.user.profile.UserProfileFragment.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction())) {
                UserProfileFragment.this.updateAccessible();
                return;
            }
            if (CommunityService.ACTION_COMMUNITY_CHANGED.equals(intent.getAction())) {
                if (intent.getIntExtra("id", 0) == UserProfileFragment.this.configService.getCommunityId()) {
                    UserProfileFragment.this.onCommunityUpdate();
                }
            } else {
                if (Constants.ACTION_STREAK_REPAIR_SUCCESS.equals(intent.getAction())) {
                    if (intent.getIntExtra(CmcdConfiguration.KEY_CONTENT_ID, 0) == UserProfileFragment.this.configService.getCommunityId()) {
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
                if (MembershipService.ACTION_WALLET_CHANGED.equals(intent.getAction()) && UserProfileFragment.this.isAdded()) {
                    UserProfileFragment.this.updateHeader();
                }
            }
        }
    };
    private final View.OnClickListener menuClickListener = new View.OnClickListener() { // from class: com.narvii.user.profile.UserProfileFragment.5
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view.getId() == R.id.menu_ops) {
                UserProfileFragment.this.popupCustomMenu();
            } else if (view.getId() == R.id.menu_online_status) {
                UserProfileFragment.this.popupOnlineStatusMenu();
            }
        }
    };
    private final View.OnClickListener headerClickListener = new View.OnClickListener() { // from class: com.narvii.user.profile.UserProfileFragment.11
        public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

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
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(UserProfileFragment.this, intent);
                return;
            }
            if (view.getId() == R.id.user_follower) {
                Intent intent2 = FragmentWrapperActivity.intent(FollowersListFragment.class);
                intent2.putExtra("id", UserProfileFragment.this.getStringParam("id"));
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(UserProfileFragment.this, intent2);
                return;
            }
            if (view.getId() == R.id.user_avatar_layout || view.getId() == R.id.nickname) {
                User object = UserProfileFragment.this.bioAdapter.getObject();
                if (view.getId() == R.id.user_avatar_layout) {
                    LogEvent.clickBuilder(UserProfileFragment.this, ActSemantic.checkDetail).area("UserIcon").extraParam("isLiveChatting", Boolean.valueOf((object == null || object.activePublicLiveThreadId == null) ? false : true)).send();
                }
                if (object != null && !TextUtils.isEmpty(object.activePublicLiveThreadId)) {
                    Intent intent3 = FragmentWrapperActivity.intent(ChatFragment.class);
                    intent3.putExtra("id", object.activePublicLiveThreadId);
                    safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(UserProfileFragment.this, intent3);
                    return;
                } else {
                    if (!UserProfileFragment.this.isMe()) {
                        UserProfileFragment.this.gallery(null);
                        return;
                    }
                    ActionSheetDialog actionSheetDialog = new ActionSheetDialog(UserProfileFragment.this.getContext());
                    actionSheetDialog.addItem(R.string.user_edit_avatar_frame, false);
                    actionSheetDialog.addItem(R.string.user_profile_photos, false);
                    actionSheetDialog.addItem(R.string.user_edit_my_profile, false);
                    actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.user.profile.UserProfileFragment.11.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i10) {
                            if (i10 == 0) {
                                UserProfileFragment.this.openUserProfilePostActivity("Action Sheet avatar frame", false, true);
                            } else if (i10 == 1) {
                                UserProfileFragment.this.gallery(null);
                            } else {
                                UserProfileFragment.this.editProfile("Action Sheet", false);
                            }
                        }
                    });
                    actionSheetDialog.show();
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
                ((StatisticsService) UserProfileFragment.this.getService("statistics")).event("Start Chat Button in User Profile").userPropInc("Start Chat Button in User Profile Totals");
                return;
            }
            if (view.getId() == R.id.user_follow) {
                UserProfileFragment.this.ensureLogin(new Intent("follow"));
                return;
            }
            if (view.getId() == R.id.membership_title || view.getId() == R.id.user_reputation) {
                if (UserProfileFragment.this.isMe()) {
                    UserProfileFragment.this.goAchievements(view.getId() == R.id.membership_title ? "Ranking Bar" : "Reputation");
                    return;
                }
                Intent intent4 = FragmentWrapperActivity.intent(AllRanksFragment.class);
                intent4.putExtra(ExternalPostPreviewFragment.SOURCE, view.getId() == R.id.membership_title ? "Ranking Bar" : "Reputation");
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(UserProfileFragment.this, intent4);
                return;
            }
            if (view.getId() == R.id.achievements) {
                UserProfileFragment.this.goAchievements("My User Profile Page");
            } else if (view.getId() == R.id.amino_staff_badge) {
                UserProfileFragment.this.showAminoStaffDialog();
            }
        }
    };
    private UserFavoriteGallery.OnItemClickListener itemListener = new UserFavoriteGallery.OnItemClickListener() { // from class: com.narvii.user.profile.UserProfileFragment.12
        public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // com.narvii.user.profile.UserFavoriteGallery.OnItemClickListener
        public void onItemClick(Object obj, int i10) {
            UserProfileFragment userProfileFragment = UserProfileFragment.this;
            if (userProfileFragment.preview) {
                DetailFragment.showPreviewToast(userProfileFragment.getContext());
                return;
            }
            if (obj instanceof Item) {
                Intent intent = FeedDetailFragment.intent(userProfileFragment, (Item) obj, userProfileFragment.favoriteAdapter.collection, null, null, i10 - 1);
                intent.putExtra("fromMyCatalog", UserProfileFragment.this.isMe());
                intent.putExtra(ExternalPostPreviewFragment.SOURCE, "User Profile");
                intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_SOURCE, LoggingSource.UserProfileView.name());
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(UserProfileFragment.this, intent);
                return;
            }
            if (obj != UserFavoriteGallery.ADD) {
                if (obj == UserFavoriteGallery.GOTO) {
                    userProfileFragment.gotoFavorites();
                }
            } else {
                Intent intent2 = new Intent(UserProfileFragment.this.getContext(), (Class<?>) ItemPostActivity.class);
                intent2.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(new ItemPost()));
                intent2.putExtra(ExternalPostPreviewFragment.SOURCE, "User Profile > Add favorite");
                intent2.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_SOURCE, LoggingSource.UserProfileView.name());
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(UserProfileFragment.this, intent2);
            }
        }
    };
    private RadioGroup.OnCheckedChangeListener switchListener = new RadioGroup.OnCheckedChangeListener() { // from class: com.narvii.user.profile.UserProfileFragment.14
        boolean checked3;

        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public void onCheckedChanged(RadioGroup radioGroup, int i10) {
            UserProfileFragment userProfileFragment = UserProfileFragment.this;
            if (userProfileFragment.disableSwitchListener) {
                return;
            }
            if (i10 == R.id.user_switch_posts) {
                userProfileFragment.switchAdapter.setAdapter(userProfileFragment.tab1Adapter);
            }
            if (i10 == R.id.user_switch_comments) {
                UserProfileFragment userProfileFragment2 = UserProfileFragment.this;
                userProfileFragment2.switchAdapter.setAdapter(userProfileFragment2.tab2Adapter);
            }
            if (i10 == R.id.user_switch_saved_posts) {
                UserProfileFragment userProfileFragment3 = UserProfileFragment.this;
                userProfileFragment3.switchAdapter.setAdapter(userProfileFragment3.tab3Adapter);
                if (this.checked3) {
                    return;
                }
                this.checked3 = true;
                ((StatisticsService) UserProfileFragment.this.getService("statistics")).event("Bookmarks Page Opened").userPropInc("Bookmarks Page Opened Total").source("My Profile");
            }
        }
    };

    private class AddBlogAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public long getItemId(int i10) {
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

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (i10 != 0) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            if ((UserProfileFragment.this.getActivity() instanceof DrawerActivity) && ((DrawerActivity) UserProfileFragment.this.getActivity()).hasCBB()) {
                ((CBBHost) getService("cbbHost")).openPostEntry();
                return true;
            }
            ((PostEntryDialog) getService("postEntry")).show(0, "User Profile", LoggingSource.UserProfileView);
            return true;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return Integer.valueOf(i10);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            int i11;
            View viewCreateView = createView(R.layout.user_profile_add_blog, viewGroup, view);
            ImageView imageView = (ImageView) viewCreateView.findViewById(R.id.create_plus);
            if (!this.darkTheme) {
                i11 = R.drawable.ic_create_plus_green;
            } else {
                i11 = R.drawable.ic_create_plus_white;
            }
            imageView.setImageResource(i11);
            UserProfileFragment.this.setTextColor(viewCreateView, R.id.write_new_blog, -7829368);
            return viewCreateView;
        }
    }

    class BioAdapter extends DetailAdapter<User, UserResponse> {
        private BioBriefStyle bioBriefStyle;
        View.OnClickListener editBioListener;
        View.OnClickListener goBioDetailListener;
        private boolean ignoreAccountUserProfileNotification;
        private String visitorParam;

        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // com.narvii.detail.DetailAdapter
        public Class<? extends User> objectType() {
            return User.class;
        }

        @Override // com.narvii.detail.DetailAdapter
        protected Class<UserResponse> responseType() {
            return UserResponse.class;
        }

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
                public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivity(p1);
                }

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
                    intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Profile");
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(BioAdapter.this, intent);
                }
            };
            this.loggingSource = LoggingSource.UserProfileView;
            this.bioBriefStyle = new CommunityBioBriefStyle();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void commentRefresh() {
            UserProfileFragment userProfileFragment = UserProfileFragment.this;
            userProfileFragment.commentAdapter.flHeight = userProfileFragment.commentExtraHeight();
            UserProfileFragment.this.commentAdapter.resetList();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected int commentSort() {
            return UserProfileFragment.this.commentAdapter.sort();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected View getCell(Object obj, View view, ViewGroup viewGroup) {
            if (obj != UserProfileFragment.BIO_SNIPPET) {
                return super.getCell(obj, view, viewGroup);
            }
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

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.detail.DetailAdapter
        public void onObjectResponse(ApiRequest apiRequest, UserResponse userResponse) {
            if (!UserProfileFragment.this.preview) {
                super.onObjectResponse(apiRequest, userResponse);
                invalidateOptionsMenu();
                if (UserProfileFragment.this.getBooleanParam(UserProfileFragment.SEND_NOTIFICATION)) {
                    Notification notification = new Notification("update", getObject().m1622clone());
                    Bundle bundle = new Bundle();
                    notification.bundle = bundle;
                    bundle.putBoolean("fromUserProfileFullInfo", true);
                    sendNotification(notification);
                }
                AccountService accountService = (AccountService) this.context.getService("account");
                if (Utils.isEqualsNotNull(accountService.getUserId(), userResponse.user.uid)) {
                    this.ignoreAccountUserProfileNotification = true;
                    accountService.updateProfile(userResponse.user, userResponse.timestamp, true);
                    this.ignoreAccountUserProfileNotification = false;
                    return;
                }
                return;
            }
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
                super.onObjectResponse(apiRequest, userResponse);
            }
        }

        @Override // com.narvii.detail.DetailAdapter
        protected boolean onUserGridClick(View view, String str) {
            if (super.onUserGridClick(view, "Followers")) {
                return true;
            }
            Intent intent = FragmentWrapperActivity.intent(FollowersListFragment.class);
            intent.putExtra("id", UserProfileFragment.this.getStringParam("id"));
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
            return true;
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void setCommentSort(int i10) {
            UserProfileFragment userProfileFragment = UserProfileFragment.this;
            userProfileFragment.commentAdapter.flHeight = userProfileFragment.commentExtraHeight();
            UserProfileFragment.this.commentAdapter.setSort(i10);
        }

        @Override // com.narvii.detail.DetailAdapter
        public void setObject(User user) {
            UserResponse userResponse = new UserResponse();
            userResponse.user = user;
            setResponse(userResponse);
        }

        @Override // com.narvii.detail.DetailAdapter
        public void setResponse(UserResponse userResponse) {
            Callback<User> callback;
            User user = userResponse.user;
            if (user != null) {
                UserProfileFragment.this.slideShowMedias = user.getSlideShowMedias();
                UserProfileFragment.this.bioMedias = userResponse.user.getBioMedias();
            }
            super.setResponse(userResponse);
            ((DetailFragment) UserProfileFragment.this)._hasBackground = userResponse.user.hasBackground();
            ((DetailFragment) UserProfileFragment.this)._isBackgroundDark = userResponse.user.getBackgroundMedia() != null || PaletteUtils.isDarkColor(userResponse.user.getBackgroundColor());
            ((NVFragment) UserProfileFragment.this)._backgroundColor = userResponse.user.getBackgroundColor();
            UserProfileFragment.this.updateListViewContentBackground();
            UserProfileFragment.this.updateBackground();
            if (userResponse.timestamp != null && (callback = UserProfileFragment.this.onFinishListener) != null) {
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
        protected void buildCells(List<Object> list) {
            User user = getResponse().user;
            AccountService accountService = (AccountService) getService("account");
            if (user != null && user.isProfileAccessibleByUser(accountService.getUserProfile())) {
                list.add(UserProfileFragment.BIO_SNIPPET);
            }
        }

        @Override // com.narvii.detail.DetailAdapter
        public void commentNew(String str) {
            super.commentNew(str);
            CommentPostActivity.setStatusListener(UserProfileFragment.this.commentAdapter);
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
        protected ApiRequest createUserListRequest(int i10, int i11) {
            return ApiRequest.builder().path("/user-profile/" + UserProfileFragment.this.id() + "/member").param("start", Integer.valueOf(i10)).param("size", Integer.valueOf(i11)).param("cv", "1.2").build();
        }

        @Override // com.narvii.detail.DetailAdapter
        protected void getCellTypes(List<DetailAdapter.CellType> list) {
            super.getCellTypes(list);
            list.add(UserProfileFragment.BIO_SNIPPET);
        }

        @Override // com.narvii.detail.DetailAdapter, android.widget.Adapter
        public int getCount() {
            User object = getObject();
            if (object == null || object.role == 253) {
                return 0;
            }
            return super.getCount();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            User object = getObject();
            if (object != null && object.role == 253) {
                return false;
            }
            return super.isEmpty();
        }

        @Override // com.narvii.detail.DetailAdapter, android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
            UserProfileFragment.this.topAdapter.notifyDataSetChanged();
            invalidateOptionsMenu();
            UserProfileFragment.this.updateHeader();
        }

        @Override // com.narvii.detail.DetailAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            User object = getObject();
            if (object == null) {
                return;
            }
            Object obj = notification.obj;
            if (obj instanceof User) {
                String str = notification.action;
                if ((str == "update" || str == "edit") && Utils.isEqualsNotNull(object.uid, notification.id)) {
                    if (this.ignoreAccountUserProfileNotification) {
                        return;
                    }
                    Bundle bundle = notification.bundle;
                    if (bundle != null && bundle.getBoolean("fromUserProfileFullInfo")) {
                        return;
                    }
                    UserResponse response = getResponse();
                    response.user = (User) notification.obj;
                    Bundle bundle2 = notification.bundle;
                    if (bundle2 != null && bundle2.getBoolean("keepInfluencerInfo", false)) {
                        response.user.influencerInfo = object.influencerInfo;
                    }
                    setResponse(response);
                    if (UserProfileFragment.this.isMe()) {
                        sendRequest();
                    }
                }
                super.onNotification(notification);
                return;
            }
            if ((obj instanceof Comment) && Utils.isEqualsNotNull(((Comment) obj).parentId, object.uid)) {
                if ("new".equals(notification.action)) {
                    object.commentsCount++;
                } else if ("delete".equals(notification.action)) {
                    object.commentsCount--;
                }
                UserResponse response2 = getResponse();
                response2.user = object;
                setResponse(response2);
                notifyDataSetChanged();
            } else {
                Object obj2 = notification.obj;
                if (((obj2 instanceof Blog) || (obj2 instanceof Item)) && Utils.isEqualsNotNull(notification.uid, object.uid)) {
                    if ("new".equals(notification.action)) {
                        object.postsCount++;
                    } else if ("delete".equals(notification.action)) {
                        object.postsCount--;
                    }
                    UserResponse response3 = getResponse();
                    response3.user = object;
                    setResponse(response3);
                    notifyDataSetChanged();
                }
            }
            super.onNotification(notification);
        }
    }

    class BioDividerAdapter extends NVAdapter {
        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
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
        public View getView(int i10, View view, ViewGroup viewGroup) {
            int i11;
            View viewCreateView = createView(R.layout.bio_divider, viewGroup, view);
            View viewFindViewById = viewCreateView.findViewById(R.id.bottom_divider);
            if (this.darkTheme) {
                i11 = 369098752;
            } else {
                i11 = 150994944;
            }
            viewFindViewById.setBackgroundColor(i11);
            return viewCreateView;
        }
    }

    private class CommentAdapter extends CommentListAdapter {
        MediaLabAdView adViewBkp;
        int flHeight;

        public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
            if (p1 == null) {
                return;
            }
            p0.startActivityForResult(p1, p5);
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        protected int firstLoadingHeight() {
            return this.flHeight;
        }

        public CommentAdapter() {
            super(UserProfileFragment.this);
            this.adViewBkp = null;
            this.source = "User Profile";
            this.loggingSource = LoggingSource.UserProfileView;
        }

        private void addAdOnTheLastPos(List<Comment> list, int i10) {
            if (UserProfileFragment.this.bioAdapter.getObject().commentsCount == i10) {
                Comment comment = new Comment();
                comment.type = 11;
                comment.content = "";
                list.add(comment);
            }
        }

        private int getSubCommentCount(List<Comment> list) {
            if (list == null) {
                return 0;
            }
            return Math.min(list.size(), 2);
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
        protected void onViewStickerClicked(Intent intent) {
            safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(UserProfileFragment.this, intent, 111);
        }

        public List<Comment> removeAds(List<Comment> list) {
            ArrayList arrayList = new ArrayList();
            for (Comment comment : list) {
                if (comment.type != 11) {
                    arrayList.add(comment);
                }
            }
            return arrayList;
        }

        @Override // com.narvii.comment.list.CommentListAdapter
        public List<? extends Comment> enhanceList(List<Comment> list) {
            int size = list.size();
            List<Comment> listRemoveAds = removeAds(list);
            int i10 = 0;
            int subCommentCount = 0;
            for (int i11 = 0; i11 < listRemoveAds.size(); i11++) {
                if (listRemoveAds.get(i11).type != 11) {
                    i10++;
                    subCommentCount += getSubCommentCount(listRemoveAds.get(i11).subcommentsPreview);
                    if (i10 + subCommentCount >= 9) {
                        Comment comment = new Comment();
                        comment.type = 11;
                        comment.content = "";
                        listRemoveAds.add(i11, comment);
                        i10 = 0;
                        subCommentCount = 0;
                    }
                }
            }
            addAdOnTheLastPos(listRemoveAds, size);
            return listRemoveAds;
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            View itemView = super.getItemView(obj, view, viewGroup);
            View viewFindViewById = itemView.findViewById(R.id.singleton_banner);
            if (viewFindViewById instanceof MediaLabAdView) {
                if (((NVListFragment) UserProfileFragment.this).adView != null && ((NVListFragment) UserProfileFragment.this).adView.showPreloadedAd()) {
                    Log.v("FeedDetailFrag ment", "MediaLab MedRect - New ad view ready");
                    ((NVListFragment) UserProfileFragment.this).adView.setLayoutParams(new ViewGroup.MarginLayoutParams(-1, (getContext().getResources().getDimensionPixelSize(R.dimen.ad_divider_padding) * 2) + AdSize.MEDIUM_RECTANGLE.getHeightPx(getContext())));
                    MLUtilsKt.centerMRECView(((NVListFragment) UserProfileFragment.this).adView);
                    this.adViewBkp = ((NVListFragment) UserProfileFragment.this).adView;
                    return ((NVListFragment) UserProfileFragment.this).adView;
                }
                MediaLabAdView mediaLabAdView = this.adViewBkp;
                if (mediaLabAdView != null) {
                    return mediaLabAdView;
                }
                viewFindViewById.setVisibility(8);
            }
            return itemView;
        }

        @Override // com.narvii.comment.list.CommentListAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            super.onNotification(notification);
        }
    }

    class FanClubAdapter extends NVAdapter {
        private FanClub info;
        boolean isMeOrFan;
        ApiRequest request;
        ArrayList<User> userList;
        String userListError;
        private final ApiResponseListener<FansInfoListResponse> userListListener;
        FansInfoListResponse userListResponse;

        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i10, Callback<Integer> callback) {
            this.userListError = null;
            this.userListResponse = null;
            notifyDataSetChanged();
        }

        public FanClubAdapter(NVContext nVContext) {
            super(nVContext);
            this.userList = new ArrayList<>();
            this.userListListener = new ApiResponseListener<FansInfoListResponse>(FansInfoListResponse.class) { // from class: com.narvii.user.profile.UserProfileFragment.FanClubAdapter.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    FanClubAdapter fanClubAdapter = FanClubAdapter.this;
                    fanClubAdapter.request = null;
                    fanClubAdapter.userListError = str;
                    fanClubAdapter.notifyDataSetChanged();
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, FansInfoListResponse fansInfoListResponse) {
                    User user;
                    FanClubAdapter fanClubAdapter = FanClubAdapter.this;
                    User userProfile = null;
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
                            User user2 = it.next().fansUserProfile;
                            if (user2 != null) {
                                FanClubAdapter.this.userList.add(user2);
                            }
                        }
                        if (!UserProfileFragment.this.isMe()) {
                            FansInfo fansInfo = fansInfoListResponse.myFanClub;
                            if (fansInfo != null && (user = fansInfo.fansUserProfile) != null) {
                                userProfile = user;
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
            };
            this.isMeOrFan = isMeOrFan();
        }

        private boolean isMeOrFan() {
            if (UserProfileFragment.this.isMe()) {
                return true;
            }
            FanClub fanClub = UserProfileFragment.this.accountService.getFanClub(UserProfileFragment.this.id());
            this.info = fanClub;
            return fanClub != null && fanClub.isActive();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            User object;
            BioAdapter bioAdapter = UserProfileFragment.this.bioAdapter;
            return (bioAdapter == null || (object = bioAdapter.getObject()) == null || !object.isInfluencer()) ? 0 : 1;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
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
                this.request = ApiRequest.builder().path("influencer/" + UserProfileFragment.this.id() + "/fans").param("start", 0).param("size", 10).build();
                ((ApiService) getService("api")).exec(this.request, this.userListListener);
            }
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (!this.isMeOrFan && view2 != null) {
                FanClubSubscriptionDialog.showSubscriptionDialog(this, UserProfileFragment.this.id(), "User Profile");
                return true;
            }
            Intent intent = FragmentWrapperActivity.intent(FansListFragment.class);
            intent.putExtra("id", UserProfileFragment.this.id());
            BioAdapter bioAdapter = UserProfileFragment.this.bioAdapter;
            intent.putExtra(GlobalProfileFragment.KEY_USER, JacksonUtils.writeAsString(bioAdapter == null ? null : bioAdapter.getObject()));
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, "User Profile");
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
            return true;
        }

        public void onFanClubSubscriptionChanged() {
            User object;
            InfluencerInfo influencerInfo;
            boolean zIsMeOrFan = isMeOrFan();
            if (zIsMeOrFan != this.isMeOrFan) {
                this.isMeOrFan = zIsMeOrFan;
                if (zIsMeOrFan) {
                    UserProfileFragment userProfileFragment = UserProfileFragment.this;
                    if (userProfileFragment.bioAdapter != null && !userProfileFragment.isMe() && (object = UserProfileFragment.this.bioAdapter.getObject()) != null && (influencerInfo = object.influencerInfo) != null) {
                        influencerInfo.fansCount++;
                    }
                }
                notifyDataSetChanged();
            }
        }
    }

    private class FavoriteAdapter extends NVAdapter implements NotificationListener {
        public List<Item> collection;
        Integer collectionCount;
        private ApiResponseListener<ItemListResponse> collectionListener;

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return this;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return 0L;
        }

        public FavoriteAdapter() {
            super(UserProfileFragment.this);
            this.collectionListener = new ApiResponseListener<ItemListResponse>(ItemListResponse.class) { // from class: com.narvii.user.profile.UserProfileFragment.FavoriteAdapter.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
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

        @Override // android.widget.Adapter
        public int getCount() {
            CommunityConfigHelper communityConfigHelper = UserProfileFragment.this.communityConfigHelper;
            if ((communityConfigHelper != null && !communityConfigHelper.isCatalogEnable()) || !UserProfileFragment.this.isAccessible) {
                return 0;
            }
            List<Item> list = this.collection;
            return (list == null || !list.isEmpty() || UserProfileFragment.this.isMe()) ? 1 : 0;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (view2 != null && view2.getId() == R.id.user_collection) {
                UserProfileFragment.this.gotoFavorites();
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
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

        void sendCollectionRequest() {
            ((ApiService) getService("api")).exec(ApiRequest.builder().path("/item").param("type", "user-all").param("start", 0).param("size", 25).param("cv", "1.2").param("uid", UserProfileFragment.this.id()).build(), this.collectionListener);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            int i11;
            int i12;
            boolean z6;
            int i13;
            View viewCreateView = createView(R.layout.user_profile_favorites, viewGroup, view);
            UserProfileFragment.this.bioAdapter.getObject();
            Integer num = this.collectionCount;
            if (num != null) {
                num.intValue();
            }
            viewCreateView.findViewById(R.id.user_collection).setOnClickListener(this.subviewClickListener);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.user_collection_n);
            int i14 = -7829368;
            if (this.darkTheme) {
                i11 = -1;
            } else {
                i11 = -7829368;
            }
            textView.setTextColor(i11);
            if (UserProfileFragment.this.isMe()) {
                textView.setText(UserProfileFragment.this.getString(R.string.my_collection_n));
            } else {
                textView.setText(UserProfileFragment.this.getString(R.string.user_collection_n));
            }
            TintButton tintButton = (TintButton) viewCreateView.findViewById(R.id.user_collection_chevron);
            if (this.darkTheme) {
                i12 = -1;
            } else {
                i12 = -7829368;
            }
            tintButton.setTintColor(i12);
            UserFavoriteGallery userFavoriteGallery = (UserFavoriteGallery) viewCreateView.findViewById(R.id.pager);
            userFavoriteGallery.setDarkTheme(this.darkTheme);
            List<Item> list = this.collection;
            int i15 = 0;
            if (list != null && list.size() >= 25) {
                z6 = true;
            } else {
                z6 = false;
            }
            userFavoriteGallery.setItems(this.collection, UserProfileFragment.this.isMe(), z6);
            userFavoriteGallery.setOnItemClickListener(UserProfileFragment.this.itemListener);
            viewCreateView.findViewById(R.id.user_no_collection).setVisibility(4);
            SpinningView spinningView = (SpinningView) viewCreateView.findViewById(R.id.user_loading_collection);
            if (spinningView != null) {
                if (this.darkTheme) {
                    i14 = -1;
                }
                spinningView.setSpinColor(i14);
                if (this.collection == null) {
                    i13 = 0;
                } else {
                    i13 = 4;
                }
                spinningView.setVisibility(i13);
            }
            if (this.collection == null) {
                i15 = 4;
            }
            userFavoriteGallery.setVisibility(i15);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            if (this.collection == null) {
                sendCollectionRequest();
            }
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i10, Callback<Integer> callback) {
            refreshMonitorStart(i10, callback);
            sendCollectionRequest();
            refreshMonitorEnd();
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

    private class PostAdapter extends FeedListAdapter {
        MediaLabAdView adViewBkp;

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "Posts";
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return 5;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected Class<BlogListResponse> responseType() {
            return BlogListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public boolean showListEnd(int i10) {
            return true;
        }

        public PostAdapter() {
            super(UserProfileFragment.this);
            this.adViewBkp = null;
            this.source = "User Profile";
            this.shareSource = "User Profile";
            this.loggingSource = LoggingSource.UserProfileView;
        }

        private Blog createAdItem() {
            Blog blog = new Blog();
            blog.type = 11;
            return blog;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected List<Feed> filterResponseList(List<Feed> list, int i10) {
            List<Feed> listFilter = new FilterHelper(this).keepForLeaderAndCurator().filter(list);
            if (listFilter == null) {
                listFilter = new ArrayList<>();
            }
            listFilter.add(createAdItem());
            return listFilter;
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

        @Override // com.narvii.list.NVPagedAdapter
        public View createListEndItem(ViewGroup viewGroup, View view, int i10) {
            if ((list() == null || list().isEmpty()) && UserProfileFragment.this.isMe()) {
                View viewCreateView = createView(R.layout.user_profile_blog_empty, viewGroup, view, "blogEmpty");
                UserProfileFragment.this.setTextColor(viewCreateView, R.id.empty_text, -5592406);
                return viewCreateView;
            }
            View viewCreateListEndItem = super.createListEndItem(viewGroup, view, i10);
            viewCreateListEndItem.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.user.profile.UserProfileFragment.PostAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    PostAdapter.this.refresh(0, null);
                }
            });
            if (i10 > 0) {
                viewCreateListEndItem.setVisibility(8);
            }
            return viewCreateListEndItem;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/blog");
            builderPath.param("type", GlobalProfileFragment.KEY_USER);
            builderPath.param("q", UserProfileFragment.this.id());
            return builderPath.build();
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
            if (itemView.findViewById(R.id.singleton_banner) instanceof MediaLabAdView) {
                if (((NVListFragment) UserProfileFragment.this).adView != null && ((NVListFragment) UserProfileFragment.this).adView.showPreloadedAd()) {
                    Log.v("FeedDetailFragment", "MediaLab MedRect - New ad view ready");
                    ((NVListFragment) UserProfileFragment.this).adView.setLayoutParams(new ViewGroup.MarginLayoutParams(-1, (getContext().getResources().getDimensionPixelSize(R.dimen.ad_divider_padding) * 2) + AdSize.MEDIUM_RECTANGLE.getHeightPx(getContext())));
                    MLUtilsKt.centerMRECView(((NVListFragment) UserProfileFragment.this).adView);
                    this.adViewBkp = ((NVListFragment) UserProfileFragment.this).adView;
                    return ((NVListFragment) UserProfileFragment.this).adView;
                }
                Log.v("FeedDetailFragment", "adView returns null");
                return this.adViewBkp;
            }
            return itemView;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i10) {
            if (getItem(i10) == NVPagedAdapter.LIST_END && (list() == null || list().isEmpty())) {
                return false;
            }
            return super.isEnabled(i10);
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

    private class ProfileCommentHeaderAdapter extends CommentHeaderAdapter {
        ProfileCommentHeaderAdapter(NVContext nVContext, boolean z6) {
            super(nVContext, z6);
        }

        @Override // com.narvii.user.profile.adapter.CommentHeaderAdapter
        public void onCommentRefresh() {
            UserProfileFragment userProfileFragment = UserProfileFragment.this;
            userProfileFragment.commentAdapter.flHeight = userProfileFragment.commentExtraHeight();
            UserProfileFragment.this.commentAdapter.resetList();
        }

        @Override // com.narvii.user.profile.adapter.CommentHeaderAdapter
        public void onCommentSort(int i10) {
            UserProfileFragment.this.commentAdapter.setSort(i10);
        }
    }

    private class TabAdapter extends NVAdapter {
        public TabAdapter() {
            super(UserProfileFragment.this);
        }

        private SpannableString createTabTitleText(int i10, int i11) {
            String string = UserProfileFragment.this.getString(i10);
            if (i11 <= 0) {
                SpannableString spannableString = new SpannableString(UserProfileFragment.this.getString(i10));
                spannableString.setSpan(new StyleSpan(1), 0, string.length(), 17);
                return spannableString;
            }
            SpannableString spannableString2 = new SpannableString(string + " " + com.narvii.util.text.TextUtils.getLiteCountWithCeil2(i11));
            spannableString2.setSpan(new StyleSpan(1), 0, string.length(), 17);
            spannableString2.setSpan(new StyleSpan(0), string.length(), spannableString2.length(), 17);
            spannableString2.setSpan(new RelativeSizeSpan(0.8f), string.length(), spannableString2.length(), 33);
            return spannableString2;
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
        public Object getItem(int i10) {
            return UserProfileFragment.SWITCH;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return UserProfileFragment.SWITCH.hashCode();
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            int i11;
            int i12;
            View viewCreateView = createView(R.layout.user_profile_switch_item, viewGroup, view);
            RadioGroup radioGroup = (RadioGroup) viewCreateView.findViewById(R.id.user_switch_group);
            int childCount = radioGroup.getChildCount();
            int i13 = 0;
            while (true) {
                i11 = R.id.user_switch_comments;
                if (i13 >= childCount) {
                    break;
                }
                View childAt = radioGroup.getChildAt(i13);
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
                i13++;
            }
            if (!UserProfileFragment.this.isMe()) {
                radioGroup.findViewById(R.id.user_switch_saved_posts).setVisibility(8);
            }
            ListAdapter adapter = UserProfileFragment.this.switchAdapter.getAdapter();
            UserProfileFragment userProfileFragment = UserProfileFragment.this;
            if (adapter == userProfileFragment.tab1Adapter) {
                i11 = R.id.user_switch_posts;
            } else {
                ListAdapter adapter2 = userProfileFragment.switchAdapter.getAdapter();
                UserProfileFragment userProfileFragment2 = UserProfileFragment.this;
                if (adapter2 != userProfileFragment2.tab2Adapter) {
                    if (userProfileFragment2.switchAdapter.getAdapter() == UserProfileFragment.this.tab3Adapter) {
                        i11 = R.id.user_switch_saved_posts;
                    } else {
                        i11 = -1;
                    }
                }
            }
            UserProfileFragment.this.disableSwitchListener = true;
            radioGroup.check(i11);
            radioGroup.setOnCheckedChangeListener(UserProfileFragment.this.switchListener);
            UserProfileFragment.this.disableSwitchListener = false;
            View viewFindViewById = viewCreateView.findViewById(R.id.list_divider);
            if (this.darkTheme) {
                i12 = R.color.list_divider_dark;
            } else {
                i12 = R.color.list_divider;
            }
            viewFindViewById.setBackgroundResource(i12);
            return viewCreateView;
        }
    }

    class TopAdapter extends NVAdapter {
        private final View.OnTouchListener headerTouchListener;

        @Override // android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
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
                    int top = view.getTop();
                    motionEvent.offsetLocation(0.0f, top);
                    boolean zDispatchTouchEvent = UserProfileFragment.this.header.dispatchTouchEvent(motionEvent);
                    motionEvent.offsetLocation(0.0f, -top);
                    headerLayout.allowTouch = false;
                    return zDispatchTouchEvent;
                }
            };
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            UserProfileFragment.this.headerPlaceHolder = createView(R.layout.user_profile_header_placeholder, viewGroup, view);
            UserProfileFragment.this.updateHeaderPlaceHolder();
            UserProfileFragment.this.headerPlaceHolder.setOnTouchListener(this.headerTouchListener);
            return UserProfileFragment.this.headerPlaceHolder;
        }
    }

    private void createAvatar() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateStreakInfo$2(View view) {
        goAchievements(null);
    }

    public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
        if (p1 == null) {
            return;
        }
        p0.startActivityForResult(p1, p5);
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public void blockUser(boolean z6) {
        blockUser(false, z6);
    }

    public void editProfile(String str, boolean z6) {
        openUserProfilePostActivity(str, z6, false);
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "user_profile";
    }

    @Override // com.narvii.app.NVFragment
    protected boolean hasVisitorBar() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.NVInteractionScope
    public boolean isGlobalInteractionScope() {
        return false;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        ArrayList listAs;
        if (i10 == 3 && i11 == -1 && intent != null && (listAs = JacksonUtils.readListAs(intent.getStringExtra("itemList"), Item.class)) != null && listAs.size() > 0) {
            tagFavorites(listAs);
        }
        if (i10 == 5) {
            updateHeader();
        }
        if (i10 == 111 && i11 == -1) {
            this.bioAdapter.commentNew(intent.getStringExtra("collectionId"));
        }
        super.onActivityResult(i10, i11, intent);
    }

    @Override // com.narvii.list.NVListFragment
    protected boolean setListContentBgWhenHasPageBackground() {
        return !this._hasBackground;
    }

    void tagFavorites() {
        Intent intent = FragmentWrapperActivity.intent(CatalogPickerFragment.class);
        intent.putExtra("maximum", 50);
        safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, intent, 3);
    }

    void updateHeader() {
        int i10;
        int i11;
        int i12;
        List<Media> list;
        CommunityConfigHelper communityConfigHelper;
        User object = this.bioAdapter.getObject();
        if (object == null) {
            this.header.setVisibility(8);
            return;
        }
        this.header.setVisibility(0);
        int statusBarOverlaySize = (showDisabled() || showNotActivated()) ? (int) (getStatusBarOverlaySize() + getActionBarOverlaySize() + Utils.dpToPx(getContext(), 60.0f)) : 0;
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.user_profile_header_height) + statusBarOverlaySize;
        this.headerLayoutHeight = dimensionPixelSize;
        this.header.setLayout(R.layout.user_profile_header, dimensionPixelSize);
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
        boolean zIsProfileAccessibleByUser = object.isProfileAccessibleByUser(accountService.getUserProfile());
        boolean zIsMe = isMe();
        View.OnClickListener onClickListener = object.isAccessibleByUser(accountService.getUserProfile()) ? this.headerClickListener : null;
        ((TextView) this.header.findViewById(R.id.user_n_reputation)).setText(com.narvii.util.text.TextUtils.getLiteCountWithCeil2(object.reputation));
        ((TextView) this.header.findViewById(R.id.user_n_following)).setText(com.narvii.util.text.TextUtils.getLiteCountWithCeil2(object.joinedCount));
        ((TextView) this.header.findViewById(R.id.user_n_followers)).setText(com.narvii.util.text.TextUtils.getLiteCountWithCeil2(object.membersCount));
        int iDpToPxInt = zIsMe ? Utils.dpToPxInt(getContext(), 15.0f) : 0;
        updateBottomMargin(iDpToPxInt, R.id.achievements, this.header);
        updateBottomMargin(iDpToPxInt, R.id.wallet_balance_view, this.header);
        CommunityConfigHelper communityConfigHelper2 = this.communityConfigHelper;
        boolean z6 = communityConfigHelper2 != null && communityConfigHelper2.isRankingModuleEnabled();
        if (zIsMe) {
            this.header.findViewById(R.id.user_reputation).setOnClickListener(onClickListener);
        } else {
            this.header.findViewById(R.id.user_reputation).setOnClickListener(z6 ? onClickListener : null);
        }
        this.header.findViewById(R.id.amino_staff_badge).setOnClickListener(onClickListener);
        this.header.findViewById(R.id.user_following).setOnClickListener(onClickListener);
        this.header.findViewById(R.id.user_follower).setOnClickListener(onClickListener);
        this.header.findViewById(R.id.achievements).setOnClickListener(onClickListener);
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
            this.header.findViewById(R.id.membership_title).setOnClickListener(z6 ? onClickListener : null);
        }
        RankingTitleView rankingTitleView = (RankingTitleView) this.header.findViewById(R.id.membership_title);
        if (!z6 || shouldHideUserPrivateInfo()) {
            rankingTitleView.setVisibility(8);
        } else {
            rankingTitleView.setVisibility(0);
            rankingTitleView.setShowBadge(true);
        }
        rankingTitleView.setUser(object, this);
        SlideshowView slideshowView = (SlideshowView) this.header.findViewById(R.id.slideshow);
        slideshowView.noSlide = "none".equals(JacksonUtils.nodeString(object.extensions, "coverAnimation"));
        slideshowView.setMediaList(zIsProfileAccessibleByUser ? this.slideShowMedias : Collections.emptyList());
        BubbleBackground bubbleBackground = (BubbleBackground) this.header.findViewById(R.id.bubble);
        bubbleBackground.setVisibility((!zIsProfileAccessibleByUser || (list = object.mediaList) == null || list.isEmpty()) ? 0 : 4);
        bubbleBackground.set(zIsMe ? null : object.uid);
        View viewFindViewById = this.header.findViewById(R.id.user_avatar_layout);
        ((UserAvatarLayout) viewFindViewById).setUser(object);
        viewFindViewById.setOnClickListener(onClickListener);
        ((UserAvatarLayout) viewFindViewById).getAvatarView().setImageUrl(zIsProfileAccessibleByUser ? object.icon(true) : "res://disabled_user_icon");
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
        if (zIsMe || object.isSystem()) {
            viewFindViewById4.setVisibility(8);
        } else {
            viewFindViewById4.setVisibility(0);
            int i13 = object.membershipStatus;
            boolean z10 = i13 == 3;
            boolean z11 = i13 == 1;
            ImageView imageView = (ImageView) viewFindViewById4.findViewById(R.id.user_follow_icon);
            TextView textView = (TextView) viewFindViewById4.findViewById(R.id.user_follow_text);
            View viewFindViewById5 = viewFindViewById4.findViewById(R.id.user_follow_progress);
            if (z11) {
                i10 = R.drawable.button_round_unfollow;
            } else {
                i10 = z10 ? R.drawable.button_round_friends : R.drawable.button_round_follow;
            }
            viewFindViewById4.setBackgroundResource(i10);
            if (z10) {
                i11 = R.drawable.ic_follow_friends;
            } else {
                i11 = z11 ? R.drawable.ic_user_profile_following : R.drawable.ic_follow_plus_padding;
            }
            imageView.setImageDrawable(getResources().getDrawable(i11));
            imageView.setVisibility(this.sendingFollow ? 4 : 0);
            if (z10) {
                i12 = R.string.user_friends;
            } else {
                i12 = z11 ? 0 : R.string.user_follow;
            }
            if (i12 != 0) {
                textView.setText(i12);
            } else {
                textView.setText((CharSequence) null);
            }
            if (z11) {
                textView.setVisibility(8);
            } else {
                textView.setVisibility(this.sendingFollow ? 4 : 0);
            }
            if (z11) {
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
        int i10 = object.membershipStatus;
        return i10 == 2 || i10 == 3;
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
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, str);
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
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
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, "User Profile");
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
    }

    @Nullable
    public static Intent intent(NVContext nVContext, User user) {
        int i10;
        if (user == null) {
            return null;
        }
        boolean z6 = ((ConfigService) nVContext.getService("config")).getCommunityId() == 0;
        if (user.isGlobal || (i10 = user.ndcId) == 0 || (i10 == -1 && z6)) {
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
        int i11 = user.ndcId;
        if (i11 > 0) {
            intent3.putExtra("__communityId", i11);
        }
        return intent3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$1(View view) {
        View viewFindViewById;
        OverlayLayout overlayLayout = this.header;
        if (overlayLayout == null || (viewFindViewById = overlayLayout.findViewById(R.id.user_avatar_layout)) == null || viewFindViewById.getHeight() >= viewFindViewById.getLayoutParams().height) {
            return;
        }
        getListView().smoothScrollToPosition(0);
    }

    private void resetDarkTheme(NVAdapter nVAdapter) {
        if (nVAdapter != null) {
            nVAdapter.setDarkTheme(isBackgroundColorDark());
        }
    }

    private void sendStreakStatusRequest() {
        ApiService apiService = (ApiService) getService("api");
        int timeZoneInMin = Utils.getTimeZoneInMin();
        apiService.exec(new ApiRequest.Builder().path("/check-in/stats/" + id()).param("timezone", Integer.valueOf(timeZoneInMin)).build(), new ApiResponseListener<StreakStatusResponse>(StreakStatusResponse.class) { // from class: com.narvii.user.profile.UserProfileFragment.13
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, StreakStatusResponse streakStatusResponse) throws Exception {
                super.onFinish(apiRequest, streakStatusResponse);
                UserProfileFragment.this.consecutiveCheckInDays = streakStatusResponse.consecutiveCheckInDays;
                UserProfileFragment.this.brokenStreaks = streakStatusResponse.brokenStreaks;
                UserProfileFragment.this.updateStreakInfo();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
            }
        });
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
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAminoStaffDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setMessage(R.string.amino_staff_message);
        builder.setPositiveButton(android.R.string.ok, (DialogInterface.OnClickListener) null);
        builder.show();
    }

    private boolean showDisabled() {
        User object = this.bioAdapter.getObject();
        if (object == null) {
            return false;
        }
        return shouldShowDisableBar(object);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean showNotActivated() {
        return (!isMe() || ((AccountService) getService("account")).hasActivation() || showDisabled()) ? false : true;
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
                int i10 = getContext().getResources().getDisplayMetrics().widthPixels;
                float dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.user_profile_header_height) / 4;
                float f = 0.3f * dimensionPixelSize;
                float f6 = ((f * f) + ((i10 * i10) / 4)) / (2.0f * f);
                float f7 = f6 + (dimensionPixelSize - f);
                int i11 = 16777215 & backgroundColor;
                shapeDrawable.getPaint().setShader(new RadialGradient(i10 / 2, -(f6 - f), f7, new int[]{i11, i11, backgroundColor}, new float[]{0.0f, f6 / f7, 1.0f}, Shader.TileMode.CLAMP));
                viewFindViewById.setBackgroundDrawable(shapeDrawable);
            }
        }
        if (this.header != null) {
            int i12 = (backgroundColor == 0 || !PaletteUtils.isDarkColor(backgroundColor)) ? R.drawable.user_header_btn : R.drawable.user_header_btn_dark;
            this.header.findViewById(R.id.user_reputation).setBackgroundResource(i12);
            this.header.findViewById(R.id.user_follower).setBackgroundResource(i12);
            this.header.findViewById(R.id.user_following).setBackgroundResource(i12);
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

    private void updateBadge(User user, View view) {
        if (user == null) {
            return;
        }
        boolean z6 = !TextUtils.isEmpty(user.activePublicLiveThreadId);
        View viewFindViewById = view.findViewById(R.id.amino_staff_badge);
        if (!z6 || viewFindViewById == null) {
            return;
        }
        viewFindViewById.setVisibility(8);
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

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStreakInfo() {
        OverlayLayout overlayLayout = this.header;
        if (overlayLayout == null || overlayLayout.getChildCount() == 0) {
            return;
        }
        View viewFindViewById = this.header.findViewById(R.id.achievements);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.user.profile.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f2812a.lambda$updateStreakInfo$2(view);
                }
            });
        }
        TextView textView = (TextView) this.header.findViewById(R.id.achievements_hint);
        if (textView != null) {
            int i10 = this.consecutiveCheckInDays;
            textView.setText(i10 >= 2 ? getString(R.string.n_day_streak, String.valueOf(i10)) : getString(R.string.achievements));
        }
        this.header.findViewById(R.id.streak_broken_tag).setVisibility((this.brokenStreaks <= 0 || !this.communityConfigHelper.isPremiumFeatureEnabled()) ? 8 : 0);
    }

    private boolean userDisabled() {
        User object;
        BioAdapter bioAdapter = this.bioAdapter;
        if (bioAdapter == null || (object = bioAdapter.getObject()) == null) {
            return false;
        }
        int i10 = object.status;
        return i10 == 9 || i10 == 10;
    }

    public void activateAccount() {
        Intent intent = FragmentWrapperActivity.intent(AccountSettingFragment.class);
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, "My User Profile");
        safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(this, intent, 5);
    }

    public void addToFavoriteMembers() {
        final User object = this.bioAdapter.getObject();
        if (object == null) {
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.user.profile.UserProfileFragment.20
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                UserProfileFragment.this.sendNotification(new Notification(FavoriteUserListFragment.ACTION_ADD_FAVORITE_USER, object));
                ((StatisticsService) UserProfileFragment.this.getService("statistics")).event("Favorite Members Added").source("User Profile").userPropInc("Favorite Members Total");
            }
        };
        progressDialog.show();
        ((ApiService) getService("api")).exec(ApiRequest.builder().post().path("/user-group/quick-access/" + object.uid).build(), progressDialog.dismissListener);
    }

    public void blockUser(final boolean z6, boolean z10) {
        if (!z10) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
            builder.setMessage(z6 ? R.string.unblock_confirm : R.string.block_confirm);
            builder.setPositiveButton(R.string.continue_, new DialogInterface.OnClickListener() { // from class: com.narvii.user.profile.UserProfileFragment.18
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i10) {
                    UserProfileFragment.this.blockUser(z6, true);
                }
            });
            builder.setNegativeButton(android.R.string.cancel, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
            builder.show();
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext(), BlockListResponse.class);
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.user.profile.UserProfileFragment.19
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
        ((ApiService) getService("api")).exec((z6 ? ApiRequest.builder().delete() : ApiRequest.builder().post()).path("/block/" + getStringParam("id")).communityId(configService.getCommunityId()).build(), progressDialog.dismissListener);
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
        DividerAdapter dividerAdapter = new DividerAdapter(this);
        this.postDividerAdapter = dividerAdapter;
        dividerAdapter.setAdapter(mergeAdapter);
        this.tab1Adapter = this.postDividerAdapter;
        this.commentAdapter = new CommentAdapter();
        DividerAdapter dividerAdapter2 = new DividerAdapter(this);
        this.commentDividerAdapter = dividerAdapter2;
        dividerAdapter2.setAdapter(this.commentAdapter);
        this.commentHeaderAdapter = new ProfileCommentHeaderAdapter(this, isMe());
        this.commentAddAdapter = new ProfileCommentAddAdapter(this);
        MergeAdapter mergeAdapter2 = new MergeAdapter(this);
        mergeAdapter2.addAdapter(this.commentHeaderAdapter);
        mergeAdapter2.addAdapter(this.commentAddAdapter);
        mergeAdapter2.addAdapter(this.commentAdapter, true);
        this.tab2Adapter = mergeAdapter2;
        MergeAdapter mergeAdapter3 = new MergeAdapter(this);
        this.bookmarkDividerAdapter = new DividerAdapter(this);
        BookmarkAdapter bookmarkAdapter = new BookmarkAdapter(this) { // from class: com.narvii.user.profile.UserProfileFragment.3
            @Override // com.narvii.list.NVPagedAdapter
            public boolean showListEnd(int i10) {
                return i10 == 0;
            }
        };
        this.bookmarkAdapter = bookmarkAdapter;
        this.bookmarkDividerAdapter.setAdapter(bookmarkAdapter);
        mergeAdapter3.addAdapter(this.bookmarkDividerAdapter);
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
        staticViewAdapter.addLayouts(R.layout.list_bottom_placeholder);
        mergeAdapter3.addAdapter(staticViewAdapter);
        this.tab3Adapter = mergeAdapter3;
        this.bioAdapter = new BioAdapter();
        MySwitchAdapter mySwitchAdapter = new MySwitchAdapter();
        this.switchAdapter = mySwitchAdapter;
        mySwitchAdapter.addAdapter(this.tab1Adapter, true);
        this.switchAdapter.addAdapter(this.tab2Adapter, true);
        if (isMe()) {
            this.switchAdapter.addAdapter(this.tab3Adapter, true);
        }
        if (bundle == null && CommentListAdapter.COMMENT.equals(getStringParam("tab"))) {
            this.switchAdapter.setAdapter(1);
        }
        MergeAdapter mergeAdapter4 = new MergeAdapter(this) { // from class: com.narvii.user.profile.UserProfileFragment.4
            @Override // com.narvii.list.MergeAdapter, android.widget.BaseAdapter, android.widget.Adapter
            public boolean isEmpty() {
                return false;
            }

            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
            public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
                if (UserProfileFragment.this.shouldBlockClick(obj)) {
                    return true;
                }
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }

            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public boolean onLongClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
                if (UserProfileFragment.this.shouldBlockClick(obj)) {
                    return true;
                }
                return super.onLongClick(listAdapter, i10, obj, view, view2);
            }
        };
        mergeAdapter4.addAdapter(this.topAdapter);
        mergeAdapter4.addAdapter(this.bioAdapter);
        FanClubAdapter fanClubAdapter = new FanClubAdapter(this);
        this.fanClubAdapter = fanClubAdapter;
        mergeAdapter4.addAdapter(fanClubAdapter);
        BioDividerAdapter bioDividerAdapter = new BioDividerAdapter(this);
        this.bioDividerAdapter = bioDividerAdapter;
        mergeAdapter4.addAdapter(bioDividerAdapter);
        mergeAdapter4.addAdapter(this.tabAdapter);
        mergeAdapter4.addAdapter(this.switchAdapter);
        String stringParam = getStringParam("id");
        if (!TextUtils.isEmpty(stringParam)) {
            mergeAdapter4.addAdapter(new UserBlockHintAdapter(this, stringParam, false));
        }
        return mergeAdapter4;
    }

    public void flagForReview() {
        new FlagReportOptionDialog.Builder(this).miniProfile(false).nvObject(this.bioAdapter.getObject()).build().show();
    }

    public void follow(boolean z6) {
        ApiRequest apiRequestBuild;
        if (this.sendingFollow) {
            return;
        }
        int i10 = this.bioAdapter.getObject().membershipStatus;
        final boolean z10 = i10 == 1 || i10 == 3;
        if (!z10) {
            apiRequestBuild = ApiRequest.builder().post().path("/user-profile/" + getStringParam("id") + "/member").build();
            ((StatisticsService) getService("statistics")).event("Follow User").userPropInc("Number of Friends").source("User Profile");
        } else {
            if (!z6) {
                ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
                actionSheetDialog.addItem(R.string.user_unfollow, true);
                actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.user.profile.UserProfileFragment.15
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i11) {
                        if (i11 == 0) {
                            UserProfileFragment.this.follow(true);
                        }
                    }
                });
                actionSheetDialog.show();
                return;
            }
            AccountService accountService = (AccountService) getService("account");
            apiRequestBuild = ApiRequest.builder().delete().path("/user-profile/" + getStringParam("id") + "/member/" + accountService.getUserId()).build();
            ((StatisticsService) getService("statistics")).event("Unfollow User").userPropDec("Number of Friends").source("User Profile");
        }
        ((ApiService) getService("api")).exec(apiRequestBuild, new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.user.profile.UserProfileFragment.16
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i11, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                UserProfileFragment userProfileFragment = UserProfileFragment.this;
                userProfileFragment.sendingFollow = false;
                userProfileFragment.updateHeader();
                NVToast.makeText(UserProfileFragment.this.getContext(), str, 0).show();
            }

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
                Notification notification = new Notification(z10 ? "delete" : "new", userProfile);
                notification.parentId = UserProfileFragment.this.getStringParam("id");
                NotificationUtils.sendNotificationIncludeGlobal(UserProfileFragment.this, notification);
                if (UserProfileFragment.this.bioAdapter.getObject() != null) {
                    User user = (User) UserProfileFragment.this.bioAdapter.getObject().m1622clone();
                    if (z10) {
                        user.removeFollowingStatus(1);
                        user.membersCount--;
                    } else {
                        user.addFollowingStatus(1);
                        user.membersCount++;
                    }
                    NotificationUtils.sendNotificationIncludeGlobal(UserProfileFragment.this, new Notification("update", user));
                }
                User userProfile2 = accountService2.getUserProfile();
                if (z10) {
                    userProfile2.joinedCount--;
                } else {
                    userProfile2.joinedCount++;
                }
                if (Utils.isEqualsNotNull(accountService2.getUserId(), UserProfileFragment.this.getStringParam("id"))) {
                    accountService2.updateProfile(userProfile2, apiResponse.timestamp, true);
                }
            }
        });
        this.sendingFollow = true;
        updateHeader();
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
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
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
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
        }
    }

    @Override // com.narvii.detail.DetailFragment
    public NVObject getDetailNVObject() {
        BioAdapter bioAdapter = this.bioAdapter;
        if (bioAdapter != null) {
            return bioAdapter.getObject();
        }
        return null;
    }

    @Override // com.narvii.detail.DetailFragment
    protected int getDisableStrId(NVObject nVObject) {
        int i10;
        if (!(nVObject instanceof User)) {
            return 0;
        }
        int i11 = ((User) nVObject).status;
        if (i11 == 10) {
            i10 = R.string.detail_deleted_message_user;
        } else {
            i10 = i11 == 9 ? R.string.detail_disabled_message_user : R.string.detail_disabled_message_profile;
        }
        setDisabledText(getText(i10));
        return 0;
    }

    @Override // com.narvii.list.NVListFragment
    protected IVideoListDelegate initVideoListDelegate() {
        return new NVVideoListDelegate(this, getActivity());
    }

    public boolean isMe() {
        return Utils.isEqualsNotNull(((AccountService) getService("account")).getUserId(), getStringParam("id"));
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    protected void onLoginResult(boolean z6, Intent intent) {
        if (z6 && "follow".equals(intent.getAction())) {
            follow(false);
        } else {
            super.onLoginResult(z6, intent);
        }
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        FanClubAdapter fanClubAdapter = this.fanClubAdapter;
        if (fanClubAdapter == null || fanClubAdapter.getCount() == 0) {
            return;
        }
        Object obj = notification.obj;
        if (obj instanceof FanClub) {
            String str = notification.action;
            if ((str == "update" || str == "new") && Utils.isEqualsNotNull(((FanClub) obj).targetUid, id())) {
                this.fanClubAdapter.onFanClubSubscriptionChanged();
            }
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.list.refresh.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        final int i10 = (this.postAdapter.isAttached() ? 1 : 0) + 2 + (this.commentAdapter.isAttached() ? 1 : 0) + (this.bookmarkAdapter.isAttached() ? 1 : 0);
        Callback<Integer> callback = new Callback<Integer>() { // from class: com.narvii.user.profile.UserProfileFragment.10
            int n;

            @Override // com.narvii.util.Callback
            public void call(Integer num) {
                int i11 = this.n + 1;
                this.n = i11;
                if (i11 == i10) {
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
    }

    public void openUserProfilePostActivity(final String str, final boolean z6, final boolean z10) {
        final ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.show();
        ((ApiService) getService("api")).exec(this.bioAdapter.createRequest(), new ApiResponseListener<UserResponse>(UserResponse.class) { // from class: com.narvii.user.profile.UserProfileFragment.17
            public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                progressDialog.dismiss();
                NVToast.makeText(UserProfileFragment.this.getContext(), str2, 0).show();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, UserResponse userResponse) {
                progressDialog.dismiss();
                Intent intent = new Intent(UserProfileFragment.this.getContext(), (Class<?>) UserProfilePostActivity.class);
                intent.putExtra("uid", userResponse.user.uid);
                intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(new UserProfilePost(userResponse.user)));
                intent.putExtra("userProfile", JacksonUtils.writeAsString(userResponse.user));
                intent.putExtra("bio", z6);
                intent.putExtra("isOpenAvatarFrame", z10);
                intent.putExtra(ExternalPostPreviewFragment.SOURCE, str);
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(UserProfileFragment.this, intent);
            }
        });
    }

    void popupCustomMenu() {
        final ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        int i10 = 1;
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
            customView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.user.profile.UserProfileFragment.6
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
            i10 = 0;
        } else {
            actionSheetDialog.addItem(R.string.user_activate_my_account, true);
            iArr[0] = R.string.user_activate_my_account;
        }
        actionSheetDialog.addItem(R.string.share_copy_link, false);
        int i11 = i10 + 1;
        iArr[i10] = R.string.share_copy_link;
        actionSheetDialog.addItem(R.string.user_edit_my_profile, false);
        int i12 = i10 + 2;
        iArr[i11] = R.string.user_edit_my_profile;
        User userProfile = accountService.getUserProfile();
        if (userProfile != null && userProfile.isCurator()) {
            actionSheetDialog.addItem(R.string.advanced, false);
            iArr[i12] = R.string.advanced;
        }
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.user.profile.UserProfileFragment.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i13) {
                switch (iArr[i13]) {
                    case R.string.advanced /* 2131886237 */:
                        new AdvancedOptionDialog.Builder(UserProfileFragment.this).nvObject(UserProfileFragment.this.bioAdapter.getObject()).build().show();
                        break;
                    case R.string.create_your_3d_avatar /* 2131886949 */:
                        NVPermission.builder(UserProfileFragment.this).requestCode(109).permissionListener(UserProfileFragment.this).permissions(new String[]{"android.permission.CAMERA", "android.permission.RECORD_AUDIO"}).request();
                        break;
                    case R.string.share_copy_link /* 2131890363 */:
                        ShareViewHelper shareViewHelper = new ShareViewHelper(UserProfileFragment.this);
                        shareViewHelper.source = "User Profile";
                        shareViewHelper.copyLink(UserProfileFragment.this.bioAdapter.getObject());
                        break;
                    case R.string.user_activate_my_account /* 2131890728 */:
                        UserProfileFragment.this.activateAccount();
                        break;
                    case R.string.user_edit_my_profile /* 2131890739 */:
                        UserProfileFragment.this.editProfile("Action Sheet", false);
                        break;
                }
            }
        });
        actionSheetDialog.show();
    }

    void popupOnlineStatusMenu() {
        final ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        actionSheetDialog.setCustomView(R.layout.mood_picker_dialog_custom);
        boolean zIsOnline = isOnline();
        ((TextView) actionSheetDialog.findCustomViewById(R.id.mood_pick).findViewById(R.id.mood_text)).setText(Sticker.isEmpty(zIsOnline ? getMood() : null) ? R.string.mood_choose : R.string.mood_change);
        actionSheetDialog.findCustomViewById(R.id.mood_pick).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.user.profile.UserProfileFragment.8
            public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                actionSheetDialog.dismiss();
                if (((AccountService) UserProfileFragment.this.getService("account")).hasActivation() && UserProfileFragment.this.bioAdapter != null) {
                    Intent intent = FragmentWrapperActivity.intent(ChooseMoodFragment.class);
                    intent.putExtra(GlobalProfileFragment.KEY_USER, JacksonUtils.writeAsString(UserProfileFragment.this.bioAdapter.getObject()));
                    intent.putExtra("moodSticker", JacksonUtils.writeAsString(UserProfileFragment.this.getMood()));
                    safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(UserProfileFragment.this, intent);
                    return;
                }
                AlertDialog.Builder builder = new AlertDialog.Builder(UserProfileFragment.this.getContext());
                builder.setMessage(R.string.mood_activation_required);
                builder.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.narvii.user.profile.UserProfileFragment.8.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i10) {
                        UserProfileFragment.this.activateAccount();
                    }
                });
                builder.setNegativeButton(android.R.string.cancel, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
                builder.show();
            }
        });
        ((TextView) actionSheetDialog.findCustomViewById(R.id.online_status_online).findViewById(R.id.text)).setText(zIsOnline ? R.string.online_status_online : R.string.online_status_go_online);
        if (zIsOnline) {
            actionSheetDialog.findCustomViewById(R.id.online_status_online).findViewById(R.id.online_check).setVisibility(0);
            actionSheetDialog.findCustomViewById(R.id.online_status_offline).findViewById(R.id.offline_check).setVisibility(4);
        } else {
            actionSheetDialog.findCustomViewById(R.id.online_status_online).findViewById(R.id.online_check).setVisibility(4);
            actionSheetDialog.findCustomViewById(R.id.online_status_offline).findViewById(R.id.offline_check).setVisibility(0);
            actionSheetDialog.findCustomViewById(R.id.online_status_offline).setVisibility(8);
            actionSheetDialog.findCustomViewById(R.id.online_status_offline_divider).setVisibility(8);
        }
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.narvii.user.profile.UserProfileFragment.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                actionSheetDialog.dismiss();
                final int i10 = view.getId() == R.id.online_status_online ? 1 : 2;
                LogEvent.clickBuilder(UserProfileFragment.this, view.getId() == R.id.online_status_online ? ActSemantic.goOnline : ActSemantic.goOffline).area("OnlineArea").send();
                ProgressDialog progressDialog = new ProgressDialog(UserProfileFragment.this.getContext());
                progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.user.profile.UserProfileFragment.9.1
                    @Override // com.narvii.util.Callback
                    public void call(ApiResponse apiResponse) {
                        ((AccountService) UserProfileFragment.this.getService("account")).updateOnlineStatus(i10, apiResponse.timestamp, true);
                        User object = UserProfileFragment.this.bioAdapter.getObject();
                        object.onlineStatus = i10;
                        UserProfileFragment.this.bioAdapter.setObject(object);
                        LiveLayerService liveLayerService = (LiveLayerService) UserProfileFragment.this.getService("liveLayer");
                        if (liveLayerService != null) {
                            liveLayerService.refreshOnlineMembers();
                        }
                    }
                };
                progressDialog.show();
                ApiRequest.Builder builderParam = ApiRequest.builder().post().path("user-profile/" + UserProfileFragment.this.getStringParam("id") + "/online-status").param("onlineStatus", Integer.valueOf(i10));
                if (i10 == 2) {
                    builderParam.param(TypedValues.TransitionType.S_DURATION, Integer.valueOf(InviteMembersFragment.SECOND_DAY));
                }
                ((ApiService) UserProfileFragment.this.getService("api")).exec(builderParam.build(), progressDialog.dismissListener);
            }
        };
        actionSheetDialog.findCustomViewById(R.id.online_status_online).setOnClickListener(onClickListener);
        actionSheetDialog.findCustomViewById(R.id.online_status_offline).setOnClickListener(onClickListener);
        actionSheetDialog.show();
    }

    @Override // com.narvii.detail.DetailFragment
    protected boolean shouldBlockClick(Object obj) {
        if (obj == BIO_SNIPPET) {
            return false;
        }
        return super.shouldBlockClick(obj);
    }

    protected boolean shouldHideUserPrivateInfo() {
        User object;
        BioAdapter bioAdapter = this.bioAdapter;
        if (bioAdapter == null || (object = bioAdapter.getObject()) == null) {
            return false;
        }
        return object.role == 253 || object.status == 10;
    }

    @Override // com.narvii.detail.DetailFragment
    protected boolean shouldShowDisableBar(NVObject nVObject) {
        if (!(nVObject instanceof User)) {
            return false;
        }
        User user = (User) nVObject;
        int i10 = user.status;
        return i10 == 9 || i10 == 10 || user.hideUserProfile();
    }

    public void startChat() {
        if (!((AccountService) getService("account")).hasAccount()) {
            ensureLogin(new Intent("chat"));
            return;
        }
        if (canChat()) {
            ChatInviteFragment chatInviteFragment = (ChatInviteFragment) getFragmentManager().m0("chatInvite");
            if (chatInviteFragment != null) {
                chatInviteFragment.startChat(getStringParam("id"));
                return;
            }
            return;
        }
        ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(getContext());
        aCMAlertDialog.setMessage(R.string.user_disable_chat_invite);
        aCMAlertDialog.addButton(android.R.string.ok, null);
        aCMAlertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$0(View view) {
        activateAccount();
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

    private void shareImage(Bitmap bitmap, String str) {
        int i10;
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
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
            } catch (Exception unused) {
            }
        } catch (Throwable th) {
            OomHelper.test(th);
            Context context = getContext();
            if (th instanceof OutOfMemoryError) {
                i10 = R.string.out_of_memory;
            } else {
                i10 = R.string.normal_error;
            }
            NVToast.makeText(context, i10, 0).show();
        }
    }

    private void updateBottomMargin(int i10, int i11, ViewGroup viewGroup) {
        View viewFindViewById = viewGroup.findViewById(i11);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) viewFindViewById.getLayoutParams();
        marginLayoutParams.bottomMargin = i10;
        viewFindViewById.setLayoutParams(marginLayoutParams);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public void completeLogEvent(@NotNull LogEvent.Builder builder) {
        String str;
        super.completeLogEvent(builder);
        if (isMe()) {
            str = "self";
        } else {
            str = "other";
        }
        builder.extraParam(NotificationCompat.CATEGORY_STATUS, str);
    }

    @Override // com.narvii.app.NVFragment
    protected void completePageViewEvent(LogEvent.Builder builder, boolean z6) {
        super.completePageViewEvent(builder, z6);
        BioAdapter bioAdapter = this.bioAdapter;
        if (bioAdapter != null && bioAdapter.getObject() != null) {
            builder.object(this.bioAdapter.getObject());
        } else {
            builder.objectId(id()).objectType(ObjectType.user);
        }
    }

    public Sticker getMood() {
        User object;
        if (!isOnline()) {
            return null;
        }
        BioAdapter bioAdapter = this.bioAdapter;
        if (bioAdapter == null) {
            object = null;
        } else {
            object = bioAdapter.getObject();
        }
        if (object == null && isMe()) {
            object = ((AccountService) getService("account")).getUserProfile();
        }
        if (object == null) {
            return null;
        }
        return object.getMoodSticker();
    }

    public int getOnlineStatus() {
        User object;
        if (isMe()) {
            return ((AccountService) getService("account")).getOnlineStatus();
        }
        BioAdapter bioAdapter = this.bioAdapter;
        if (bioAdapter == null) {
            object = null;
        } else {
            object = bioAdapter.getObject();
        }
        if (object == null) {
            return 0;
        }
        return object.onlineStatus;
    }

    public boolean isOnline() {
        int onlineStatus = getOnlineStatus();
        if (onlineStatus != 0 && onlineStatus != 2) {
            return true;
        }
        return false;
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z6) {
        super.onActiveChanged(z6);
        LiveLayerService liveLayerService = (LiveLayerService) getService("liveLayer");
        if (liveLayerService != null && id() != null) {
            liveLayerService.reportBrowsing("user-profile/" + id(), z6);
        }
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
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
            bundle2.putString(ExternalPostPreviewFragment.SOURCE, "User Profile");
            chatInviteFragment.setArguments(bundle2);
            getFragmentManager().q().e(chatInviteFragment, "chatInvite").j();
            StatisticsService statisticsService = (StatisticsService) getService("statistics");
            if (isMe()) {
                statisticsService.event("My Profile Page Opened").userPropInc("My Profile Page Opened Total").source(getStringParam(ExternalPostPreviewFragment.SOURCE));
            } else {
                statisticsService.event("Other Profile Page Opened").userPropInc("Other Profile Page Opened Total").source(getStringParam(ExternalPostPreviewFragment.SOURCE));
            }
        }
        if (isMe()) {
            AccountService accountService = (AccountService) getService("account");
            AccountService.ProfileListener profileListener = new AccountService.ProfileListener() { // from class: com.narvii.user.profile.UserProfileFragment.1
                @Override // com.narvii.account.AccountService.ProfileListener
                public void onProfileChanged(int i10, User user) {
                }

                @Override // com.narvii.account.AccountService.ProfileListener
                public void onOnlineStatusChanged(int i10) {
                    UserProfileFragment.this.updateHeader();
                    UserProfileFragment.this.invalidateOptionsMenu();
                }
            };
            this.profileListener = profileListener;
            accountService.addProfileListener(profileListener);
            if (getBooleanParam("selectMood") && bundle == null) {
                popupOnlineStatusMenu();
            }
        }
        this.communityConfigHelper = new CommunityConfigHelper(this);
        this.configService = (ConfigService) getService("config");
        this.userBlockService = (UserBlockService) NVApplication.instance().getService("block");
        MembershipService membershipService = (MembershipService) getService("membership");
        this.membershipService = membershipService;
        membershipService.refreshWallet(true);
        if (!this.preview) {
            setHasOptionsMenu(true);
        }
        if (bundle != null) {
            this.consecutiveCheckInDays = bundle.getInt("consecutiveCheckInDays", -1);
            this.brokenStreaks = bundle.getInt("brokenStreaks", -1);
        }
        sendStreakStatusRequest();
        LocalBroadcastManager localBroadcastManagerB = LocalBroadcastManager.b(getContext());
        this.localBroadcastManager = localBroadcastManagerB;
        localBroadcastManagerB.c(this.receiver, new IntentFilter(CommunityService.ACTION_COMMUNITY_CHANGED));
        this.localBroadcastManager.c(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        this.localBroadcastManager.c(this.receiver, new IntentFilter(Constants.ACTION_STREAK_REPAIR_SUCCESS));
        this.localBroadcastManager.c(this.receiver, new IntentFilter(MembershipService.ACTION_WALLET_CHANGED));
    }

    @Override // androidx.fragment.app.Fragment
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
        SpannableString spannableString = new SpannableString(string);
        spannableString.setSpan(new ForegroundColorSpan(-2013623), 0, string.length(), 0);
        menu.add(0, R.string.user_activate_my_account, 0, spannableString);
        menu.add(0, R.string.share_copy_link, 0, R.string.share_copy_link);
        menu.add(0, R.string.share, 0, R.string.share);
        menu.add(0, R.string.user_add_to_favorite_members, 0, R.string.user_add_to_favorite_members);
        menu.add(0, R.string.user_edit_my_profile, 0, R.string.user_edit_my_profile).setIcon(new ActionBarIcon(getContext(), R.string.fa_pencil));
        menu.add(0, R.string.flag_for_review, 0, R.string.flag_for_review).setShowAsAction(0);
        menu.add(0, R.string.user_block_this_user, 0, R.string.user_block_this_user).setShowAsAction(0);
        menu.add(0, R.string.user_unblock, 0, R.string.user_unblock).setShowAsAction(0);
        menu.add(0, R.string.advanced, 0, R.string.advanced).setShowAsAction(0);
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.list_overlay_user_layout, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        LocalBroadcastManager localBroadcastManager = this.localBroadcastManager;
        if (localBroadcastManager != null) {
            localBroadcastManager.f(this.receiver);
        }
        if (this.profileListener != null) {
            ((AccountService) getService("account")).removeProfileListener(this.profileListener);
        }
    }

    @Override // com.narvii.detail.DetailFragment
    protected void onNotAvailableChanged(boolean z6) {
        super.onNotAvailableChanged(z6);
        ViewUtils.show(getView(), R.id.user_profile_header, !z6);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.string.advanced /* 2131886237 */:
                new AdvancedOptionDialog.Builder(this).nvObject(this.bioAdapter.getObject()).build().show();
                return true;
            case R.string.create_your_3d_avatar /* 2131886949 */:
                NVPermission.builder(this).requestCode(109).permissionListener(this).permissions(new String[]{"android.permission.CAMERA", "android.permission.RECORD_AUDIO"}).request();
                return true;
            case R.string.flag_for_review /* 2131888001 */:
                flagForReview();
                return true;
            case R.string.share /* 2131890349 */:
                shareUserProfile(null);
                return true;
            case R.string.share_copy_link /* 2131890363 */:
                ShareViewHelper shareViewHelper = new ShareViewHelper(this);
                shareViewHelper.source = "User Profile";
                shareViewHelper.copyLink(this.bioAdapter.getObject());
                return true;
            case R.string.user_activate_my_account /* 2131890728 */:
                activateAccount();
                return true;
            case R.string.user_add_to_favorite_members /* 2131890731 */:
                addToFavoriteMembers();
                return true;
            case R.string.user_block_this_user /* 2131890732 */:
                blockUser(false);
                return true;
            case R.string.user_edit_my_profile /* 2131890739 */:
                editProfile("Action Sheet", false);
                return true;
            case R.string.user_start_a_chat /* 2131890760 */:
                startChat();
                return true;
            case R.string.user_unblock /* 2131890767 */:
                blockUser(true, false);
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.permisson.PermissionListener
    public void onPermissionGranted(int i10) {
        super.onPermissionGranted(i10);
        if (i10 == 109) {
            createAvatar();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        boolean z6;
        User object;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        boolean z17;
        boolean z18;
        boolean z19;
        int i10;
        int i11;
        int i12;
        super.onPrepareOptionsMenu(menu);
        AccountService accountService = (AccountService) getService("account");
        boolean zIsMe = isMe();
        boolean z20 = true;
        if (zIsMe && this.instagramInstalled) {
            z6 = false;
        } else {
            z6 = true;
        }
        boolean zHasActivation = accountService.hasActivation();
        boolean zHasAccount = accountService.hasAccount();
        boolean zIsOnline = isOnline();
        BioAdapter bioAdapter = this.bioAdapter;
        if (bioAdapter == null) {
            object = null;
        } else {
            object = bioAdapter.getObject();
        }
        if (object != null && object.role == 253) {
            for (int i13 = 0; i13 < menu.size(); i13++) {
                menu.getItem(i13).setVisible(false);
            }
            return;
        }
        MenuItem menuItemFindItem = menu.findItem(R.id.menu_online_status);
        if (zIsMe && getOnlineStatus() != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        menuItemFindItem.setVisible(z10);
        menu.findItem(R.id.menu_ops).setVisible(!z6);
        if (zIsMe) {
            View actionView = menu.findItem(R.id.menu_online_status).getActionView();
            TextView textView = (TextView) actionView.findViewById(R.id.online_status_text);
            if (zIsOnline) {
                i11 = R.string.online_status_online;
            } else {
                i11 = R.string.online_status_offline;
            }
            textView.setText(i11);
            View viewFindViewById = actionView.findViewById(R.id.online_status_oval);
            if (zIsOnline) {
                i12 = R.drawable.online_status_oval;
            } else {
                i12 = R.drawable.online_status_oval_offline;
            }
            viewFindViewById.setBackgroundResource(i12);
        }
        MenuItem menuItemFindItem2 = menu.findItem(R.string.user_start_a_chat);
        if (canChat() && this.communityConfigHelper.isChatEnabled() && z6 && !zIsMe) {
            z11 = true;
        } else {
            z11 = false;
        }
        menuItemFindItem2.setVisible(z11);
        MenuItem menuItemFindItem3 = menu.findItem(R.string.share);
        if (z6 && !zIsMe) {
            z12 = true;
        } else {
            z12 = false;
        }
        menuItemFindItem3.setVisible(z12);
        MenuItem menuItemFindItem4 = menu.findItem(R.string.flag_for_review);
        if (z6 && !zIsMe) {
            z13 = true;
        } else {
            z13 = false;
        }
        menuItemFindItem4.setVisible(z13);
        MenuItem menuItemFindItem5 = menu.findItem(R.string.user_block_this_user);
        if (z6 && !zIsMe && zHasAccount && !this.userBlockService.isInBlockedList(id())) {
            z14 = true;
        } else {
            z14 = false;
        }
        menuItemFindItem5.setVisible(z14);
        MenuItem menuItemFindItem6 = menu.findItem(R.string.user_unblock);
        if (z6 && !zIsMe && zHasAccount && this.userBlockService.isInBlockedList(id())) {
            z15 = true;
        } else {
            z15 = false;
        }
        menuItemFindItem6.setVisible(z15);
        MenuItem menuItemFindItem7 = menu.findItem(R.string.user_activate_my_account);
        if (z6 && zIsMe && !zHasActivation) {
            z16 = true;
        } else {
            z16 = false;
        }
        menuItemFindItem7.setVisible(z16);
        menu.findItem(R.string.share_copy_link).setVisible(z6);
        MenuItem menuItemFindItem8 = menu.findItem(R.string.user_add_to_favorite_members);
        if (z6 && !zIsMe) {
            z17 = true;
        } else {
            z17 = false;
        }
        menuItemFindItem8.setVisible(z17);
        MenuItem menuItemFindItem9 = menu.findItem(R.string.user_edit_my_profile);
        if (z6 && zIsMe) {
            z18 = true;
        } else {
            z18 = false;
        }
        menuItemFindItem9.setVisible(z18);
        User userProfile = accountService.getUserProfile();
        if (userProfile != null && userProfile.role == 101 && object != null && ((i10 = object.role) == 100 || i10 == 102)) {
            z19 = true;
        } else {
            z19 = false;
        }
        MenuItem menuItemFindItem10 = menu.findItem(R.string.advanced);
        if (!z6 || userProfile == null || !userProfile.isCurator() || z19) {
            z20 = false;
        }
        menuItemFindItem10.setVisible(z20);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        ComScoreSectionDispatcher.INSTANCE.sectionChangeToCommunity();
        setScreenName("community_profile");
        this.instagramInstalled = new PackageUtils(getContext()).isPackageInstalled("com.instagram.android");
        invalidateOptionsMenu();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("consecutiveCheckInDays", this.consecutiveCheckInDays);
        bundle.putInt("brokenStreaks", this.brokenStreaks);
    }

    public void onSteakRepairSuccessed() {
        if (isAdded() && isMe()) {
            this.consecutiveCheckInDays++;
            this.brokenStreaks--;
            updateStreakInfo();
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
    }

    @Override // com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        View viewFindViewById = view.findViewById(R.id.not_activated);
        this.notActivated = viewFindViewById;
        TextView textView = (TextView) viewFindViewById.findViewById(R.id.activate);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(textView.getText().toString());
        spannableStringBuilder.setSpan(new UnderlineSpan(), 0, spannableStringBuilder.length(), 0);
        textView.setText(spannableStringBuilder);
        this.notActivated.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.user.profile.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f2813a.lambda$onViewCreated$0(view2);
            }
        });
        this.header = (OverlayLayout) view.findViewById(R.id.overlay);
        super.onViewCreated(view, bundle);
        this.header.attach((NVListView) getListView());
        updateHeader();
        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) view.findViewById(R.id.swipe_refresh);
        this.swipeRefreshLayout = swipeRefreshLayout;
        swipeRefreshLayout.setEnabled(false);
        this.swipeRefreshLayout.setVisibility(0);
        this.swipeRefreshLayout.setTarget((NVListView) getListView());
        this.swipeRefreshLayout.setOnRefreshListener(this);
        this.header.setHeight1(getActionBarOverlaySize() + getStatusBarOverlaySize());
        if (isRootFragment()) {
            View view2 = new View(getContext());
            view2.setLayoutParams(new FrameLayout.LayoutParams((int) Utils.dpToPx(getContext(), 56.0f), -1));
            view2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.user.profile.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    this.f2814a.lambda$onViewCreated$1(view3);
                }
            });
            FrameLayout frameLayout = new FrameLayout(getContext());
            frameLayout.addView(view2);
            setActionBarTitleView(frameLayout);
        }
    }

    void tagFavorites(List<Item> list) {
        final String userId = ((AccountService) getService("account")).getUserId();
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.user.profile.UserProfileFragment.21
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
}
