package com.narvii.master.home.profile;

import android.app.ActionBar;
import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.app.NotificationCompat;
import android.support.v4.app.SharedElementCallback;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.account.LoginActivity;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVScrollablePagerAdapter;
import com.narvii.chat.invite.ChatInviteFragment;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.video.VVChatEntryHelper;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.config.ConfigService;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.list.NVListFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.logging.ObjectType;
import com.narvii.master.CommunityHelper;
import com.narvii.master.MasterTopBarAvailable;
import com.narvii.master.home.story.PublishedStoryListFragment;
import com.narvii.master.home.widgets.GlobalProfileHeaderView;
import com.narvii.master.theme.MasterThemeExtensionKt;
import com.narvii.model.Blog;
import com.narvii.model.Comment;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.modulization.Module;
import com.narvii.monetization.avatarframe.AvatarFrameMediaGalleryActivity;
import com.narvii.nested.CoordinateTabFragment;
import com.narvii.nested.NVAppBarLayout;
import com.narvii.nested.tab.ScrollTabViewDelegate;
import com.narvii.nested.tab.UpdateTabViewDelegate;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.prefs.MoreSettingFragment;
import com.narvii.prefs.SettingsFragment;
import com.narvii.share.ShareDialog;
import com.narvii.user.follow.FollowNotificationHelper;
import com.narvii.user.profile.post.GlobalBioPostActivity;
import com.narvii.user.profile.post.UserProfilePost;
import com.narvii.userblock.BlockListResponse;
import com.narvii.userblock.GlobalBlockService;
import com.narvii.userblock.UserBlockService;
import com.narvii.util.Callback;
import com.narvii.util.Constants;
import com.narvii.util.DetailTransition;
import com.narvii.util.FilterHelper;
import com.narvii.util.ImageCacheUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.RequestResult;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingSource;
import com.narvii.util.text.TextUtils;
import com.narvii.wallet.MembershipService;
import com.narvii.widget.FullscreenBackgroundView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.NicknameView;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.UserAvatarLayout;
import com.narvii.widget.WalletBalanceView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Triple;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: GlobalProfileFragment.kt */
/* loaded from: classes3.dex */
public final class GlobalProfileFragment extends CoordinateTabFragment implements FragmentOnBackListener, NotificationListener, MasterTopBarAvailable {
    public static final Companion Companion = new Companion(null);
    public static final String KEY_SHOW_SETTING = "show_setting";
    public static final String KEY_UID = "id";
    public static final String KEY_USER = "user";
    private HashMap _$_findViewCache;
    public AccountService accountService;
    public FullscreenBackgroundView backgroundView;
    private WalletBalanceView balanceView;
    public View bodyContentView;
    private int commentTabIndex;
    private View contentView;
    public View disablePage;
    private FilterHelper filterHelper;
    private FollowNotificationHelper followNotificationHelper;
    private boolean isMyProfilePage;
    private boolean isSendingFollow;
    private Boolean isUserBlocked;
    public View loginPage;
    public View mainPage;
    public TextView membershipHint;
    public View membershipLayout;
    private MembershipService membershipService;
    private View moreView;
    private boolean performFollowAnimation;
    public GlobalProfileHeaderView profileView;
    private View settingsView;
    private View shareView;
    public View systemUserPage;
    private UserAvatarLayout topAvatar;
    private String uid;
    private User user;
    private UserBlockService userBlockService;
    private final List<Fragment> fragmentsList = new ArrayList();
    private final GlobalProfileFragment$receiver$1 receiver = new BroadcastReceiver() { // from class: com.narvii.master.home.profile.GlobalProfileFragment$receiver$1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) throws Resources.NotFoundException {
            MembershipService membershipService;
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(intent, "intent");
            if (Intrinsics.areEqual(AccountService.ACTION_ACCOUNT_CHANGED, intent.getAction()) && (this.this$0.isMyProfile() || !this.this$0.getAccountService().hasAccount() || (this.this$0.getUid() == null && this.this$0.getAccountService().hasAccount()))) {
                GlobalProfileFragment globalProfileFragment = this.this$0;
                globalProfileFragment.setUid(globalProfileFragment.getAccountService().getUserId());
                GlobalProfileFragment globalProfileFragment2 = this.this$0;
                globalProfileFragment2.isUserBlocked = globalProfileFragment2.getUid() == null ? null : Boolean.valueOf(GlobalProfileFragment.access$getUserBlockService$p(this.this$0).isInBlockedList(this.this$0.getUid()));
                if (this.this$0.isMyProfilePage() && !this.this$0.getAccountService().hasAccount()) {
                    this.this$0.setUser(null);
                    GlobalProfileHeaderView profileView = this.this$0.getProfileView();
                    NVImageView nVImageView = profileView != null ? (NVImageView) profileView.findViewById(R.id.avatar) : null;
                    if (nVImageView != null) {
                        nVImageView.defaultDrawable = this.this$0.getResources().getDrawable(R.drawable.user_avatar_placeholder);
                    }
                    if (nVImageView != null) {
                        nVImageView.loadingDrawable = this.this$0.getResources().getDrawable(R.drawable.user_avatar_placeholder);
                    }
                }
                this.this$0.updateViews();
                this.this$0.sendGlobalProfileRequest();
                this.this$0.resetAdapter();
            }
            if ((Intrinsics.areEqual(MembershipService.ACTION_MEMBERSHIP_CHANGED, intent.getAction()) || Intrinsics.areEqual(MembershipService.ACTION_WALLET_CHANGED, intent.getAction()) || Intrinsics.areEqual(MembershipService.ACTION_COUPONS_CHANGED, intent.getAction())) && this.this$0.isMyProfile()) {
                this.this$0.updateMembershipView();
                this.this$0.updateMenu();
            }
            if (Intrinsics.areEqual(Constants.ACTION_STREAK_REPAIR_SUCCESS, intent.getAction()) && this.this$0.isMyProfile() && (membershipService = this.this$0.membershipService) != null) {
                membershipService.refreshWallet(true);
            }
            if (Intrinsics.areEqual(GlobalBlockService.ACTION_BLOCK_LIST_CHANGED, intent.getAction())) {
                Boolean boolValueOf = this.this$0.getUid() != null ? Boolean.valueOf(GlobalProfileFragment.access$getUserBlockService$p(this.this$0).isInBlockedList(this.this$0.getUid())) : null;
                if (!Intrinsics.areEqual(this.this$0.isUserBlocked, boolValueOf)) {
                    this.this$0.isUserBlocked = boolValueOf;
                    this.this$0.resetAdapter();
                    this.this$0.updateViews();
                }
            }
            if (Intrinsics.areEqual(AccountService.ACTION_PRIVACY_MODE_CHANGED, intent.getAction())) {
                int visitorPrivacyMode = this.this$0.getAccountService().getVisitorPrivacyMode();
                User user = this.this$0.getUser();
                if (user == null || user.visitPrivacy == visitorPrivacyMode) {
                    return;
                }
                user.visitPrivacy = visitorPrivacyMode;
                this.this$0.getProfileView().updateViews(this.this$0.getUser());
            }
        }
    };
    private final AccountService.RecentVisitorListener recentVisitorListener = new AccountService.RecentVisitorListener() { // from class: com.narvii.master.home.profile.GlobalProfileFragment$recentVisitorListener$1
        @Override // com.narvii.account.AccountService.RecentVisitorListener
        public final void onVisitorCountChanged(int i, int i2) {
            if (i2 >= 0) {
                User user = this.this$0.getUser();
                if (user != null) {
                    user.visitorsCount = i2;
                }
                this.this$0.getProfileView().updateViews(this.this$0.getUser());
            }
            this.this$0.getProfileView().updateVisitorIncreaseView(i);
        }
    };

    @Override // com.narvii.nested.CoordinateTabFragment, com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.nested.CoordinateTabFragment, com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "GlobalUserProfile";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isGlobal() {
        return true;
    }

    @Override // com.narvii.master.MasterTopBarAvailable
    public boolean isTopBarAvailable() {
        return false;
    }

    @Override // com.narvii.nested.CoordinateTabFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    /* compiled from: GlobalProfileFragment.kt */
    /* renamed from: com.narvii.master.home.profile.GlobalProfileFragment$follow$1, reason: invalid class name and case insensitive filesystem */
    static final class C10161 extends Lambda implements Function2<Boolean, User, Unit> {
        C10161() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Boolean bool, User user) {
            invoke(bool.booleanValue(), user);
            return Unit.INSTANCE;
        }

        public final void invoke(boolean z, User user) {
            Intrinsics.checkParameterIsNotNull(user, "user");
            GlobalProfileFragment.this.isSendingFollow = z;
            GlobalProfileFragment.this.getProfileView().setSendingFollow(z);
            GlobalProfileFragment.this.getProfileView().updateViews(user);
        }
    }

    /* compiled from: GlobalProfileFragment.kt */
    /* renamed from: com.narvii.master.home.profile.GlobalProfileFragment$onNotification$2, reason: invalid class name and case insensitive filesystem */
    static final class C10242 extends Lambda implements Function1<Object, Boolean> {
        public static final C10242 INSTANCE = new C10242();

        C10242() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(Object obj) {
            return Boolean.valueOf(invoke2(obj));
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final boolean invoke2(Object obj) {
            Intrinsics.checkParameterIsNotNull(obj, "obj");
            if (obj instanceof Blog) {
                Blog blog = (Blog) obj;
                if (blog.type == 9 && (blog.publishToGlobal == 1 || blog.ndcId == 0)) {
                    return true;
                }
            }
            return false;
        }
    }

    /* compiled from: GlobalProfileFragment.kt */
    /* renamed from: com.narvii.master.home.profile.GlobalProfileFragment$updateTabCount$1, reason: invalid class name and case insensitive filesystem */
    static final class C10311 extends Lambda implements Function3<TextView, String, Integer, Unit> {
        public static final C10311 INSTANCE = new C10311();

        C10311() {
            super(3);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(TextView textView, String str, Integer num) {
            invoke2(textView, str, num);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(TextView tv2, String title, Integer num) {
            Intrinsics.checkParameterIsNotNull(tv2, "tv");
            Intrinsics.checkParameterIsNotNull(title, "title");
            int iIntValue = num != null ? num.intValue() : 0;
            if (iIntValue == 0) {
                tv2.setText(title);
                return;
            }
            tv2.setText(title + ' ' + TextUtils.getLiteCountWithCeil2(iIntValue));
        }
    }

    public static final /* synthetic */ View access$getContentView$p(GlobalProfileFragment globalProfileFragment) {
        View view = globalProfileFragment.contentView;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("contentView");
        throw null;
    }

    public static final /* synthetic */ FollowNotificationHelper access$getFollowNotificationHelper$p(GlobalProfileFragment globalProfileFragment) {
        FollowNotificationHelper followNotificationHelper = globalProfileFragment.followNotificationHelper;
        if (followNotificationHelper != null) {
            return followNotificationHelper;
        }
        Intrinsics.throwUninitializedPropertyAccessException("followNotificationHelper");
        throw null;
    }

    public static final /* synthetic */ UserBlockService access$getUserBlockService$p(GlobalProfileFragment globalProfileFragment) {
        UserBlockService userBlockService = globalProfileFragment.userBlockService;
        if (userBlockService != null) {
            return userBlockService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("userBlockService");
        throw null;
    }

    public final AccountService getAccountService() {
        AccountService accountService = this.accountService;
        if (accountService != null) {
            return accountService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("accountService");
        throw null;
    }

    public final void setAccountService(AccountService accountService) {
        Intrinsics.checkParameterIsNotNull(accountService, "<set-?>");
        this.accountService = accountService;
    }

    public final GlobalProfileHeaderView getProfileView() {
        GlobalProfileHeaderView globalProfileHeaderView = this.profileView;
        if (globalProfileHeaderView != null) {
            return globalProfileHeaderView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("profileView");
        throw null;
    }

    public final void setProfileView(GlobalProfileHeaderView globalProfileHeaderView) {
        Intrinsics.checkParameterIsNotNull(globalProfileHeaderView, "<set-?>");
        this.profileView = globalProfileHeaderView;
    }

    public final View getLoginPage() {
        View view = this.loginPage;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("loginPage");
        throw null;
    }

    public final void setLoginPage(View view) {
        Intrinsics.checkParameterIsNotNull(view, "<set-?>");
        this.loginPage = view;
    }

    public final View getDisablePage() {
        View view = this.disablePage;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("disablePage");
        throw null;
    }

    public final void setDisablePage(View view) {
        Intrinsics.checkParameterIsNotNull(view, "<set-?>");
        this.disablePage = view;
    }

    public final View getSystemUserPage() {
        View view = this.systemUserPage;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("systemUserPage");
        throw null;
    }

    public final void setSystemUserPage(View view) {
        Intrinsics.checkParameterIsNotNull(view, "<set-?>");
        this.systemUserPage = view;
    }

    public final View getMainPage() {
        View view = this.mainPage;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mainPage");
        throw null;
    }

    public final void setMainPage(View view) {
        Intrinsics.checkParameterIsNotNull(view, "<set-?>");
        this.mainPage = view;
    }

    public final View getBodyContentView() {
        View view = this.bodyContentView;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("bodyContentView");
        throw null;
    }

    public final void setBodyContentView(View view) {
        Intrinsics.checkParameterIsNotNull(view, "<set-?>");
        this.bodyContentView = view;
    }

    public final View getMembershipLayout() {
        View view = this.membershipLayout;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("membershipLayout");
        throw null;
    }

    public final void setMembershipLayout(View view) {
        Intrinsics.checkParameterIsNotNull(view, "<set-?>");
        this.membershipLayout = view;
    }

    public final TextView getMembershipHint() {
        TextView textView = this.membershipHint;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("membershipHint");
        throw null;
    }

    public final void setMembershipHint(TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
        this.membershipHint = textView;
    }

    public final FullscreenBackgroundView getBackgroundView() {
        FullscreenBackgroundView fullscreenBackgroundView = this.backgroundView;
        if (fullscreenBackgroundView != null) {
            return fullscreenBackgroundView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("backgroundView");
        throw null;
    }

    public final void setBackgroundView(FullscreenBackgroundView fullscreenBackgroundView) {
        Intrinsics.checkParameterIsNotNull(fullscreenBackgroundView, "<set-?>");
        this.backgroundView = fullscreenBackgroundView;
    }

    public final User getUser() {
        return this.user;
    }

    public final void setUser(User user) {
        this.user = user;
    }

    public final String getUid() {
        return this.uid;
    }

    public final void setUid(String str) {
        this.uid = str;
    }

    public final UserAvatarLayout getTopAvatar() {
        return this.topAvatar;
    }

    public final void setTopAvatar(UserAvatarLayout userAvatarLayout) {
        this.topAvatar = userAvatarLayout;
    }

    public final boolean isMyProfilePage() {
        return this.isMyProfilePage;
    }

    public final void setMyProfilePage(boolean z) {
        this.isMyProfilePage = z;
    }

    /* compiled from: GlobalProfileFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    public void onAppBarLayoutOffsetChanged(NVAppBarLayout nVAppBarLayout, int i) {
        WalletBalanceView walletBalanceView;
        WalletBalanceView walletBalanceView2;
        super.onAppBarLayoutOffsetChanged(nVAppBarLayout, i);
        GlobalProfileHeaderView globalProfileHeaderView = this.profileView;
        if (globalProfileHeaderView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("profileView");
            throw null;
        }
        if (globalProfileHeaderView.getHeight() != 0 && i < 0) {
            float f = 1;
            float f2 = i * 1.0f;
            GlobalProfileHeaderView globalProfileHeaderView2 = this.profileView;
            if (globalProfileHeaderView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("profileView");
                throw null;
            }
            int height = globalProfileHeaderView2.getHeight();
            if (this.profileView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("profileView");
                throw null;
            }
            float minimumHeight = f + (f2 / (height - r4.getMinimumHeight()));
            GlobalProfileHeaderView globalProfileHeaderView3 = this.profileView;
            if (globalProfileHeaderView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("profileView");
                throw null;
            }
            globalProfileHeaderView3.setAlpha(minimumHeight);
            WalletBalanceView walletBalanceView3 = this.balanceView;
            if (walletBalanceView3 != null) {
                walletBalanceView3.setAlpha(minimumHeight);
            }
            GlobalProfileHeaderView globalProfileHeaderView4 = this.profileView;
            if (globalProfileHeaderView4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("profileView");
                throw null;
            }
            double d = minimumHeight;
            globalProfileHeaderView4.setVisibility(d < 0.1d ? 4 : 0);
            if (!isMyProfile() || (walletBalanceView2 = this.balanceView) == null) {
                return;
            }
            walletBalanceView2.setVisibility(d >= 0.1d ? 0 : 4);
            return;
        }
        GlobalProfileHeaderView globalProfileHeaderView5 = this.profileView;
        if (globalProfileHeaderView5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("profileView");
            throw null;
        }
        globalProfileHeaderView5.setAlpha(1.0f);
        WalletBalanceView walletBalanceView4 = this.balanceView;
        if (walletBalanceView4 != null) {
            walletBalanceView4.setAlpha(1.0f);
        }
        GlobalProfileHeaderView globalProfileHeaderView6 = this.profileView;
        if (globalProfileHeaderView6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("profileView");
            throw null;
        }
        globalProfileHeaderView6.setVisibility(0);
        if (!isMyProfile() || (walletBalanceView = this.balanceView) == null) {
            return;
        }
        walletBalanceView.setVisibility(0);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        Window window;
        FragmentTransaction fragmentTransactionBeginTransaction;
        FragmentTransaction fragmentTransactionAdd;
        FragmentManager fragmentManager;
        super.onCreate(bundle);
        Object service = getService("account");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"account\")");
        this.accountService = (AccountService) service;
        Object service2 = getService("block");
        Intrinsics.checkExpressionValueIsNotNull(service2, "getService(\"block\")");
        this.userBlockService = (UserBlockService) service2;
        FilterHelper filterHelperKeepForLeaderAndCurator = new FilterHelper(this).keepForLeaderAndCurator();
        Intrinsics.checkExpressionValueIsNotNull(filterHelperKeepForLeaderAndCurator, "FilterHelper(this).keepForLeaderAndCurator()");
        this.filterHelper = filterHelperKeepForLeaderAndCurator;
        this.followNotificationHelper = new FollowNotificationHelper(this);
        FollowNotificationHelper followNotificationHelper = this.followNotificationHelper;
        Boolean boolValueOf = null;
        if (followNotificationHelper == null) {
            Intrinsics.throwUninitializedPropertyAccessException("followNotificationHelper");
            throw null;
        }
        followNotificationHelper.setLoading(new Function0<Unit>() { // from class: com.narvii.master.home.profile.GlobalProfileFragment.onCreate.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                GlobalProfileFragment.this.getProfileView().setSendingFollowNotification(true);
                GlobalProfileFragment.this.getProfileView().updateViews(GlobalProfileFragment.this.getUser());
            }
        });
        FollowNotificationHelper followNotificationHelper2 = this.followNotificationHelper;
        if (followNotificationHelper2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("followNotificationHelper");
            throw null;
        }
        followNotificationHelper2.setSuccess(new Function1<Boolean, Unit>() { // from class: com.narvii.master.home.profile.GlobalProfileFragment.onCreate.2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(boolean z) {
                GlobalProfileFragment.this.getProfileView().setSendingFollowNotification(false);
            }
        });
        FollowNotificationHelper followNotificationHelper3 = this.followNotificationHelper;
        if (followNotificationHelper3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("followNotificationHelper");
            throw null;
        }
        followNotificationHelper3.setFail(new Function1<String, Unit>() { // from class: com.narvii.master.home.profile.GlobalProfileFragment.onCreate.3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(String str) {
                GlobalProfileFragment.this.getProfileView().setSendingFollowNotification(false);
                GlobalProfileFragment.this.getProfileView().updateViews(GlobalProfileFragment.this.getUser());
            }
        });
        setTitle((CharSequence) null);
        this.membershipService = (MembershipService) getService("membership");
        registerLocalReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_MEMBERSHIP_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_WALLET_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_COUPONS_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(Constants.ACTION_STREAK_REPAIR_SUCCESS));
        registerLocalReceiver(this.receiver, new IntentFilter(GlobalBlockService.ACTION_BLOCK_LIST_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(AccountService.ACTION_PRIVACY_MODE_CHANGED));
        this.user = (User) JacksonUtils.readAs(getStringParam(KEY_USER), User.class);
        this.uid = getStringParam("id");
        if (!isRootFragment() && this.uid == null) {
            AccountService accountService = this.accountService;
            if (accountService == null) {
                Intrinsics.throwUninitializedPropertyAccessException("accountService");
                throw null;
            }
            this.uid = accountService.getUserId();
            AccountService accountService2 = this.accountService;
            if (accountService2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("accountService");
                throw null;
            }
            this.user = accountService2.getUserProfile();
        }
        String str = this.uid;
        if (str != null) {
            UserBlockService userBlockService = this.userBlockService;
            if (userBlockService == null) {
                Intrinsics.throwUninitializedPropertyAccessException("userBlockService");
                throw null;
            }
            boolValueOf = Boolean.valueOf(userBlockService.isInBlockedList(str));
        }
        this.isUserBlocked = boolValueOf;
        this.isMyProfilePage = isMyProfile();
        sendGlobalProfileRequest();
        if (isRootFragment() && (fragmentManager = getFragmentManager()) != null) {
            MasterThemeExtensionKt.addMasterThemeFragment(fragmentManager);
        }
        setHasOptionsMenu(false);
        if (bundle == null) {
            ChatInviteFragment chatInviteFragment = new ChatInviteFragment();
            chatInviteFragment.setArguments(new Bundle());
            FragmentManager fragmentManager2 = getFragmentManager();
            if (fragmentManager2 != null && (fragmentTransactionBeginTransaction = fragmentManager2.beginTransaction()) != null && (fragmentTransactionAdd = fragmentTransactionBeginTransaction.add(chatInviteFragment, "chatInvite")) != null) {
                fragmentTransactionAdd.commitAllowingStateLoss();
            }
        }
        if (Build.VERSION.SDK_INT >= 21) {
            DetailTransition detailTransition = new DetailTransition();
            detailTransition.setDuration(200L);
            FragmentActivity activity = getActivity();
            if (activity != null && (window = activity.getWindow()) != null) {
                window.setBackgroundDrawable(new ColorDrawable(0));
                window.setSharedElementEnterTransition(detailTransition);
                window.setSharedElementExitTransition(detailTransition);
            }
            FragmentActivity activity2 = getActivity();
            if (activity2 != null) {
                activity2.setEnterSharedElementCallback(new SharedElementCallback() { // from class: com.narvii.master.home.profile.GlobalProfileFragment.onCreate.5
                    private boolean started;

                    public final boolean getStarted() {
                        return this.started;
                    }

                    public final void setStarted(boolean z) {
                        this.started = z;
                    }

                    @Override // android.support.v4.app.SharedElementCallback
                    public void onSharedElementEnd(List<String> list, List<View> list2, List<View> list3) {
                        NicknameView nicknameView;
                        NicknameView nicknameView2;
                        super.onSharedElementEnd(list, list2, list3);
                        if (this.started) {
                            GlobalProfileHeaderView profileView = GlobalProfileFragment.this.getProfileView();
                            if (profileView != null && (nicknameView2 = profileView.getNicknameView()) != null) {
                                nicknameView2.setAlpha(1.0f);
                            }
                            NVPagerTabLayout tabLayout = GlobalProfileFragment.this.getTabLayout();
                            if (tabLayout != null) {
                                tabLayout.setIndicatorAlpha(1.0f);
                            }
                            this.started = false;
                            return;
                        }
                        GlobalProfileHeaderView profileView2 = GlobalProfileFragment.this.getProfileView();
                        if (profileView2 != null && (nicknameView = profileView2.getNicknameView()) != null) {
                            nicknameView.setAlpha(0.1f);
                        }
                        NVPagerTabLayout tabLayout2 = GlobalProfileFragment.this.getTabLayout();
                        if (tabLayout2 != null) {
                            tabLayout2.setIndicatorAlpha(0.1f);
                        }
                    }

                    @Override // android.support.v4.app.SharedElementCallback
                    public void onSharedElementsArrived(List<String> list, List<View> list2, SharedElementCallback.OnSharedElementsReadyListener onSharedElementsReadyListener) {
                        NicknameView nicknameView;
                        super.onSharedElementsArrived(list, list2, onSharedElementsReadyListener);
                        this.started = true;
                        GlobalProfileHeaderView profileView = GlobalProfileFragment.this.getProfileView();
                        if (profileView != null && (nicknameView = profileView.getNicknameView()) != null) {
                            nicknameView.setAlpha(0.1f);
                        }
                        NVPagerTabLayout tabLayout = GlobalProfileFragment.this.getTabLayout();
                        if (tabLayout != null) {
                            tabLayout.setIndicatorAlpha(0.1f);
                        }
                    }
                });
            }
        }
    }

    @Override // com.narvii.nested.CoordinateTabFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.checkParameterIsNotNull(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putString("id", this.uid);
        outState.putString(KEY_USER, JacksonUtils.writeAsString(this.user));
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    public void onAppBarLayoutScroll(int i) {
        super.onAppBarLayoutScroll(i);
        GlobalProfileHeaderView globalProfileHeaderView = this.profileView;
        if (globalProfileHeaderView != null) {
            globalProfileHeaderView.hideToolTip();
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("profileView");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void blockUser(boolean z) {
        blockUser(false, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void blockUser(final boolean z, boolean z2) {
        ApiRequest.Builder builderPost;
        if (!z2) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
            builder.setMessage(z ? R.string.unblock_confirm : R.string.block_confirm);
            builder.setPositiveButton(R.string.continue_, new DialogInterface.OnClickListener() { // from class: com.narvii.master.home.profile.GlobalProfileFragment.blockUser.1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    GlobalProfileFragment.this.blockUser(z, true);
                }
            });
            builder.setNegativeButton(android.R.string.cancel, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
            builder.show();
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext(), BlockListResponse.class);
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.master.home.profile.GlobalProfileFragment.blockUser.2
            @Override // com.narvii.util.Callback
            public final void call(ApiResponse apiResponse) {
                if (apiResponse != null) {
                    BlockListResponse blockListResponse = (BlockListResponse) apiResponse;
                    GlobalProfileFragment.access$getUserBlockService$p(GlobalProfileFragment.this).updateBlockList(blockListResponse.blockedUidList, blockListResponse.blockerUidList);
                    NVActivity nVActivity = (NVActivity) GlobalProfileFragment.this.getActivity();
                    if (nVActivity != null) {
                        nVActivity.toastImage(R.drawable.ic_createa_account_check);
                        nVActivity.supportInvalidateOptionsMenu();
                        return;
                    }
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.userblock.BlockListResponse");
            }
        };
        progressDialog.show();
        if (z) {
            builderPost = ApiRequest.builder().delete();
        } else {
            builderPost = ApiRequest.builder().post();
        }
        ((ApiService) getService("api")).exec(builderPost.path("/block/" + getStringParam("id")).global().build(), progressDialog.dismissListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startEditBio() {
        User user = this.user;
        if (user != null) {
            Intent intent = new Intent(getContext(), (Class<?>) GlobalBioPostActivity.class);
            intent.putExtra("uid", user.uid);
            intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(new UserProfilePost(user)));
            intent.putExtra("userProfile", JacksonUtils.writeAsString(user));
            intent.putExtra("bio", true);
            intent.putExtra("supportImage", false);
            intent.putExtra("Source", "Edit Bio");
            intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_SOURCE, LoggingSource.UserProfileView.name());
            startActivity(intent);
        }
    }

    private final boolean showMultiTab() {
        return getShowTabCount() > 1;
    }

    public final boolean isMyProfile() {
        AccountService accountService = this.accountService;
        if (accountService != null) {
            return Utils.isEqualsNotNull(accountService.getUserId(), this.uid);
        }
        Intrinsics.throwUninitializedPropertyAccessException("accountService");
        throw null;
    }

    @Override // com.narvii.nested.CoordinateTabFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        View viewInflate = inflater.inflate(R.layout.fragment_global_profile, viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(viewInflate, "inflater.inflate(R.layou…rofile, container, false)");
        this.contentView = viewInflate;
        View view = this.contentView;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("contentView");
        throw null;
    }

    @Override // com.narvii.nested.CoordinateTabFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        initFakeActionBar(view);
        View viewFindViewById = view.findViewById(R.id.profile);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "view.findViewById(R.id.profile)");
        this.profileView = (GlobalProfileHeaderView) viewFindViewById;
        GlobalProfileHeaderView globalProfileHeaderView = this.profileView;
        if (globalProfileHeaderView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("profileView");
            throw null;
        }
        globalProfileHeaderView.setPage(this);
        GlobalProfileHeaderView globalProfileHeaderView2 = this.profileView;
        if (globalProfileHeaderView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("profileView");
            throw null;
        }
        globalProfileHeaderView2.findViewById(R.id.user_avatar_layout).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.GlobalProfileFragment.onViewCreated.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                if (GlobalProfileFragment.this.getAccountService().hasAccount()) {
                    LogEvent.Builder builderArea = LogEvent.clickBuilder(GlobalProfileFragment.this, ActSemantic.checkDetail).area("UserIcon");
                    User user = GlobalProfileFragment.this.getUser();
                    builderArea.extraParam("isLiveChatting", Boolean.valueOf((user != null ? user.activePublicLiveThreadId : null) != null)).send();
                    User user2 = GlobalProfileFragment.this.getUser();
                    if (user2 != null && !android.text.TextUtils.isEmpty(user2.activePublicLiveThreadId)) {
                        GlobalProfileFragment.this.openChatRoom();
                        return;
                    } else {
                        GlobalProfileFragment.this.showGallery();
                        return;
                    }
                }
                Intent intent = new Intent(GlobalProfileFragment.this.getContext(), (Class<?>) LoginActivity.class);
                Context context = GlobalProfileFragment.this.getContext();
                if (context != null) {
                    context.startActivity(intent);
                }
            }
        });
        GlobalProfileHeaderView globalProfileHeaderView3 = this.profileView;
        if (globalProfileHeaderView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("profileView");
            throw null;
        }
        globalProfileHeaderView3.setMembershipPreClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.GlobalProfileFragment.onViewCreated.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LogEvent.clickBuilder(GlobalProfileFragment.this, ActSemantic.checkDetail).area("MembershipBar").send();
            }
        });
        GlobalProfileHeaderView globalProfileHeaderView4 = this.profileView;
        if (globalProfileHeaderView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("profileView");
            throw null;
        }
        globalProfileHeaderView4.setAddBioPreClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.GlobalProfileFragment.onViewCreated.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LogEvent.clickBuilder(GlobalProfileFragment.this, ActSemantic.checkDetail).area("AddBio").send();
            }
        });
        GlobalProfileHeaderView globalProfileHeaderView5 = this.profileView;
        if (globalProfileHeaderView5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("profileView");
            throw null;
        }
        globalProfileHeaderView5.setShowBioDetailClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.GlobalProfileFragment.onViewCreated.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                GlobalProfileFragment.this.startEditBio();
            }
        });
        GlobalProfileHeaderView globalProfileHeaderView6 = this.profileView;
        if (globalProfileHeaderView6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("profileView");
            throw null;
        }
        globalProfileHeaderView6.setFollowClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.GlobalProfileFragment.onViewCreated.5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                GlobalProfileFragment.this.ensureLogin(new Intent("follow"));
            }
        });
        GlobalProfileHeaderView globalProfileHeaderView7 = this.profileView;
        if (globalProfileHeaderView7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("profileView");
            throw null;
        }
        globalProfileHeaderView7.setStartChatListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.GlobalProfileFragment.onViewCreated.6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LogEvent.clickBuilder(GlobalProfileFragment.this, ActSemantic.chat).area("ChatButton").send();
                GlobalProfileFragment.this.startPrivateChat();
            }
        });
        GlobalProfileHeaderView globalProfileHeaderView8 = this.profileView;
        if (globalProfileHeaderView8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("profileView");
            throw null;
        }
        globalProfileHeaderView8.setFollowNotificationListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.GlobalProfileFragment.onViewCreated.7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                FollowNotificationHelper.subscribe$default(GlobalProfileFragment.access$getFollowNotificationHelper$p(GlobalProfileFragment.this), GlobalProfileFragment.this.getUser(), null, 2, null);
                User user = GlobalProfileFragment.this.getUser();
                LogEvent.clickBuilder(GlobalProfileFragment.this, user != null && user.notificationSubscriptionStatus == 0 ? ActSemantic.turnOnAlert : ActSemantic.turnOffAlert).area("AlertIcon").send();
            }
        });
        View viewFindViewById2 = view.findViewById(R.id.login_page);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "view.findViewById(R.id.login_page)");
        this.loginPage = viewFindViewById2;
        View view2 = this.loginPage;
        if (view2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loginPage");
            throw null;
        }
        view2.findViewById(R.id.login_main_layout).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.GlobalProfileFragment.onViewCreated.8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                LogEvent.clickBuilder(GlobalProfileFragment.this, ActSemantic.pageEnter).area("LoginArea").send();
                Intent intent = new Intent(GlobalProfileFragment.this.getContext(), (Class<?>) LoginActivity.class);
                Context context = GlobalProfileFragment.this.getContext();
                if (context != null) {
                    context.startActivity(intent);
                }
            }
        });
        View viewFindViewById3 = view.findViewById(R.id.disabled_user_page);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "view.findViewById(R.id.disabled_user_page)");
        this.disablePage = viewFindViewById3;
        View viewFindViewById4 = view.findViewById(R.id.team_amino_page);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById4, "view.findViewById(R.id.team_amino_page)");
        this.systemUserPage = viewFindViewById4;
        View view3 = this.systemUserPage;
        if (view3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("systemUserPage");
            throw null;
        }
        view3.findViewById(R.id.submit_feedbak).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.GlobalProfileFragment.onViewCreated.9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view4) {
                GlobalProfileFragment.this.startActivity(new CommunityHelper(GlobalProfileFragment.this).getFeedBackIntent());
            }
        });
        View viewFindViewById5 = view.findViewById(R.id.swipe_refresh_layout);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById5, "view.findViewById(R.id.swipe_refresh_layout)");
        this.mainPage = viewFindViewById5;
        View viewFindViewById6 = view.findViewById(R.id.body_content);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById6, "view.findViewById(R.id.body_content)");
        this.bodyContentView = viewFindViewById6;
        this.topAvatar = (UserAvatarLayout) view.findViewById(R.id.avatar_top);
        UserAvatarLayout userAvatarLayout = this.topAvatar;
        if (userAvatarLayout != null) {
            userAvatarLayout.setOnClickListener(new AnonymousClass10());
        }
        if (Build.VERSION.SDK_INT >= 21) {
            GlobalProfileHeaderView globalProfileHeaderView9 = this.profileView;
            if (globalProfileHeaderView9 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("profileView");
                throw null;
            }
            View viewFindViewById7 = globalProfileHeaderView9.findViewById(R.id.user_avatar_layout);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById7, "profileView.findViewById…(R.id.user_avatar_layout)");
            viewFindViewById7.setTransitionName("avatar");
        }
        ImageCacheUtils imageCacheUtils = new ImageCacheUtils(this);
        User user = this.user;
        Drawable cachedDrawable = imageCacheUtils.getCachedDrawable(user != null ? user.icon : null);
        if (cachedDrawable != null) {
            GlobalProfileHeaderView globalProfileHeaderView10 = this.profileView;
            if (globalProfileHeaderView10 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("profileView");
                throw null;
            }
            NVImageView nVImageView = (NVImageView) globalProfileHeaderView10.findViewById(R.id.avatar);
            nVImageView.defaultDrawable = cachedDrawable;
            nVImageView.loadingDrawable = cachedDrawable;
        }
        setAppbarLayout((NVAppBarLayout) view.findViewById(R.id.appbar_layout));
        GlobalProfileHeaderView globalProfileHeaderView11 = this.profileView;
        if (globalProfileHeaderView11 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("profileView");
            throw null;
        }
        globalProfileHeaderView11.setMinimumHeight(getStatusBarOverlaySize() + getActionBarOverlaySize());
        GlobalProfileHeaderView globalProfileHeaderView12 = this.profileView;
        if (globalProfileHeaderView12 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("profileView");
            throw null;
        }
        globalProfileHeaderView12.setTag(R.id.coordinate_top_content, true);
        View viewFindViewById8 = view.findViewById(R.id.membership_layout);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById8, "view.findViewById(R.id.membership_layout)");
        this.membershipLayout = viewFindViewById8;
        View viewFindViewById9 = view.findViewById(R.id.membership_hint);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById9, "view.findViewById(R.id.membership_hint)");
        this.membershipHint = (TextView) viewFindViewById9;
        Object service = getService("config");
        if (service == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.narvii.config.ConfigService");
        }
        int iColorPrimary = ((ConfigService) service).getTheme().colorPrimary();
        float fDpToPx = Utils.dpToPx(getContext(), 10.0f);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{fDpToPx, fDpToPx, fDpToPx, fDpToPx, 0.0f, 0.0f, 0.0f, 0.0f}, null, null));
        Paint paint = shapeDrawable.getPaint();
        Intrinsics.checkExpressionValueIsNotNull(paint, "drawable.paint");
        paint.setColor(Color.argb(ApiService.API_ERR_USER_NOT_IN_COMMUNITY, Color.red(iColorPrimary), Color.green(iColorPrimary), Color.blue(iColorPrimary)));
        View view4 = this.bodyContentView;
        if (view4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bodyContentView");
            throw null;
        }
        view4.setBackground(shapeDrawable);
        if (!isRootFragment()) {
            if (this.bodyContentView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("bodyContentView");
                throw null;
            }
            getResources().getDimensionPixelOffset(R.dimen.master_tab_bar_height);
        }
        View viewFindViewById10 = view.findViewById(R.id.background);
        Intrinsics.checkExpressionValueIsNotNull(viewFindViewById10, "view.findViewById(R.id.background)");
        this.backgroundView = (FullscreenBackgroundView) viewFindViewById10;
        FullscreenBackgroundView fullscreenBackgroundView = this.backgroundView;
        if (fullscreenBackgroundView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundView");
            throw null;
        }
        fullscreenBackgroundView.setOverlayColor((int) 3004107308L);
        updateViews();
        if (this.isMyProfilePage) {
            AccountService accountService = this.accountService;
            if (accountService == null) {
                Intrinsics.throwUninitializedPropertyAccessException("accountService");
                throw null;
            }
            accountService.addRecentVisitorListener(this.recentVisitorListener);
            AccountService accountService2 = this.accountService;
            if (accountService2 != null) {
                accountService2.updateRecentVisitorCount();
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("accountService");
                throw null;
            }
        }
    }

    /* compiled from: GlobalProfileFragment.kt */
    /* renamed from: com.narvii.master.home.profile.GlobalProfileFragment$onViewCreated$10, reason: invalid class name */
    static final class AnonymousClass10 implements View.OnClickListener {
        AnonymousClass10() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            for (Fragment fragment : GlobalProfileFragment.this.fragmentsList) {
                if (fragment instanceof NVRecyclerViewFragment) {
                    NVRecyclerViewFragment nVRecyclerViewFragment = (NVRecyclerViewFragment) fragment;
                    RecyclerView recyclerView = nVRecyclerViewFragment.getRecyclerView();
                    if ((recyclerView != null ? recyclerView.getLayoutManager() : null) instanceof LinearLayoutManager) {
                        RecyclerView recyclerView2 = nVRecyclerViewFragment.getRecyclerView();
                        RecyclerView.LayoutManager layoutManager = recyclerView2 != null ? recyclerView2.getLayoutManager() : null;
                        if (layoutManager == null) {
                            throw new TypeCastException("null cannot be cast to non-null type android.support.v7.widget.LinearLayoutManager");
                        }
                        if (((LinearLayoutManager) layoutManager).findFirstVisibleItemPosition() < 5) {
                            RecyclerView recyclerView3 = nVRecyclerViewFragment.getRecyclerView();
                            if (recyclerView3 != null) {
                                recyclerView3.smoothScrollToPosition(0);
                            }
                        } else {
                            RecyclerView recyclerView4 = nVRecyclerViewFragment.getRecyclerView();
                            if (recyclerView4 != null) {
                                recyclerView4.scrollToPosition(0);
                            }
                        }
                    }
                    NVAppBarLayout appbarLayout = GlobalProfileFragment.this.getAppbarLayout();
                    if (appbarLayout != null) {
                        appbarLayout.setExpanded(true, true);
                    }
                } else if (fragment instanceof NVListFragment) {
                    NVListFragment nVListFragment = (NVListFragment) fragment;
                    ListView listView = nVListFragment.getListView();
                    if (listView != null) {
                        listView.smoothScrollToPosition(0);
                    }
                    ListView listView2 = nVListFragment.getListView();
                    if (listView2 != null) {
                        listView2.post(new Runnable() { // from class: com.narvii.master.home.profile.GlobalProfileFragment$onViewCreated$10$$special$$inlined$forEach$lambda$1
                            @Override // java.lang.Runnable
                            public final void run() {
                                NVAppBarLayout appbarLayout2 = GlobalProfileFragment.this.getAppbarLayout();
                                if (appbarLayout2 != null) {
                                    appbarLayout2.setExpanded(true, true);
                                }
                            }
                        });
                    }
                }
            }
        }
    }

    private final void initFakeActionBar(View view) {
        ActionBar actionBar;
        View backView = view.findViewById(R.id.actionbar_left);
        if (isRootFragment()) {
            Intrinsics.checkExpressionValueIsNotNull(backView, "backView");
            backView.setVisibility(0);
            backView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.GlobalProfileFragment.initFakeActionBar.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    GlobalProfileFragment.this.finish();
                }
            });
            FragmentActivity activity = getActivity();
            if (activity != null && (actionBar = activity.getActionBar()) != null) {
                actionBar.hide();
            }
        } else {
            Intrinsics.checkExpressionValueIsNotNull(backView, "backView");
            backView.setVisibility(8);
        }
        this.balanceView = (WalletBalanceView) view.findViewById(R.id.wallet_balance_view);
        WalletBalanceView walletBalanceView = this.balanceView;
        if (walletBalanceView != null) {
            walletBalanceView.setOnWalletPreClickListener(new WalletBalanceView.OnPreClickListener() { // from class: com.narvii.master.home.profile.GlobalProfileFragment$initFakeActionBar$$inlined$let$lambda$1
                @Override // com.narvii.widget.WalletBalanceView.OnPreClickListener
                public final void onPreClick() {
                    LogEvent.clickBuilder(this.this$0, ActSemantic.checkDetail).area("WalletIcon").send();
                }
            });
            walletBalanceView.setOnClaimIconPreClickListener(new WalletBalanceView.OnPreClickListener() { // from class: com.narvii.master.home.profile.GlobalProfileFragment$initFakeActionBar$$inlined$let$lambda$2
                @Override // com.narvii.widget.WalletBalanceView.OnPreClickListener
                public final void onPreClick() {
                    LogEvent.clickBuilder(this.this$0, ActSemantic.checkDetail).area("ClaimCoinsIcon").send();
                }
            });
        }
        this.shareView = view.findViewById(R.id.share_view);
        View view2 = this.shareView;
        if (view2 != null) {
            view2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.GlobalProfileFragment.initFakeActionBar.3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    User user = GlobalProfileFragment.this.getUser();
                    if (user != null) {
                        LogEvent.clickBuilder(GlobalProfileFragment.this, ActSemantic.share).area("ShareIcon").object(GlobalProfileFragment.this.getUser()).send();
                        GlobalProfileFragment globalProfileFragment = GlobalProfileFragment.this;
                        ShareDialog.getShareDialogForGlobalProfile(globalProfileFragment, user, globalProfileFragment.isMyProfile()).show();
                    }
                }
            });
        }
        this.moreView = view.findViewById(R.id.more_view);
        View view3 = this.moreView;
        if (view3 != null) {
            view3.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.GlobalProfileFragment.initFakeActionBar.4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view4) {
                    LogEvent.clickBuilder(GlobalProfileFragment.this, ActSemantic.checkDetail).area("MoreIcon").send();
                    if (GlobalProfileFragment.this.getUid() == null) {
                        GlobalProfileFragment.this.startActivity(new Intent(GlobalProfileFragment.this.getContext(), (Class<?>) LoginActivity.class));
                        return;
                    }
                    ActionSheetDialog actionSheetDialog = new ActionSheetDialog(GlobalProfileFragment.this.getContext());
                    actionSheetDialog.addItem(R.string.flag_for_review, 0);
                    final boolean zIsInBlockedList = GlobalProfileFragment.access$getUserBlockService$p(GlobalProfileFragment.this).isInBlockedList(GlobalProfileFragment.this.getUid());
                    if (zIsInBlockedList) {
                        actionSheetDialog.addItem(R.string.user_unblock, 0);
                    } else {
                        actionSheetDialog.addItem(R.string.user_block_this_user, 1);
                    }
                    actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.master.home.profile.GlobalProfileFragment.initFakeActionBar.4.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            if (i == 0) {
                                new FlagReportOptionDialog.Builder(GlobalProfileFragment.this).miniProfile(false).nvObject(GlobalProfileFragment.this.getUser()).build().show();
                            } else {
                                if (i != 1) {
                                    return;
                                }
                                if (zIsInBlockedList) {
                                    GlobalProfileFragment.this.blockUser(true, false);
                                } else {
                                    GlobalProfileFragment.this.blockUser(false);
                                }
                            }
                        }
                    });
                    actionSheetDialog.show();
                }
            });
        }
        this.settingsView = view.findViewById(R.id.settings_view);
        View view4 = this.settingsView;
        if (view4 != null) {
            view4.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.GlobalProfileFragment.initFakeActionBar.5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view5) {
                    Intent intent;
                    LogEvent.clickBuilder(GlobalProfileFragment.this, ActSemantic.checkDetail).area("SettingIcon").send();
                    if (GlobalProfileFragment.this.getAccountService().hasAccount()) {
                        intent = FragmentWrapperActivity.intent(MoreSettingFragment.class);
                    } else {
                        intent = FragmentWrapperActivity.intent(SettingsFragment.class);
                    }
                    GlobalProfileFragment.this.startActivity(intent);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:63:0x009d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateMenu() {
        /*
            r6 = this;
            com.narvii.widget.WalletBalanceView r0 = r6.balanceView
            r1 = 0
            r2 = 8
            if (r0 == 0) goto L17
            boolean r3 = r6.isMyProfile()
            if (r3 == 0) goto Lf
            r3 = 0
            goto L11
        Lf:
            r3 = 8
        L11:
            r0.setVisibility(r3)
            r0.refresh()
        L17:
            android.view.View r0 = r6.shareView
            r3 = 1
            if (r0 == 0) goto L45
            java.lang.String r4 = r6.uid
            if (r4 == 0) goto L40
            com.narvii.model.User r4 = r6.user
            if (r4 == 0) goto L2a
            int r4 = r4.status
            r5 = 9
            if (r4 == r5) goto L40
        L2a:
            com.narvii.model.User r4 = r6.user
            if (r4 == 0) goto L34
            int r4 = r4.status
            r5 = 10
            if (r4 == r5) goto L40
        L34:
            com.narvii.model.User r4 = r6.user
            if (r4 == 0) goto L3e
            boolean r4 = r4.isSystem()
            if (r4 == r3) goto L40
        L3e:
            r4 = 0
            goto L42
        L40:
            r4 = 8
        L42:
            r0.setVisibility(r4)
        L45:
            android.view.View r0 = r6.settingsView
            if (r0 == 0) goto L73
            java.lang.String r4 = "show_setting"
            boolean r4 = r6.getBooleanParam(r4)
            if (r4 != 0) goto L57
            boolean r4 = r6.isRootFragment()
            if (r4 != 0) goto L6c
        L57:
            boolean r4 = r6.isMyProfile()
            if (r4 != 0) goto L61
            java.lang.String r4 = r6.uid
            if (r4 != 0) goto L6c
        L61:
            com.narvii.model.User r4 = r6.user
            if (r4 == 0) goto L6f
            boolean r4 = r4.isSystem()
            if (r4 == r3) goto L6c
            goto L6f
        L6c:
            r4 = 8
            goto L70
        L6f:
            r4 = 0
        L70:
            r0.setVisibility(r4)
        L73:
            android.view.View r0 = r6.moreView
            if (r0 == 0) goto La2
            java.lang.String r4 = r6.uid
            if (r4 == 0) goto L9d
            boolean r4 = r6.isMyProfile()
            if (r4 != 0) goto L9d
            com.narvii.account.AccountService r4 = r6.accountService
            if (r4 == 0) goto L96
            boolean r4 = r4.hasAccount()
            if (r4 == 0) goto L9d
            com.narvii.model.User r4 = r6.user
            if (r4 == 0) goto L9f
            boolean r4 = r4.isSystem()
            if (r4 == r3) goto L9d
            goto L9f
        L96:
            java.lang.String r0 = "accountService"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r0)
            r0 = 0
            throw r0
        L9d:
            r1 = 8
        L9f:
            r0.setVisibility(r1)
        La2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.master.home.profile.GlobalProfileFragment.updateMenu():void");
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        MembershipService membershipService = this.membershipService;
        if (membershipService != null) {
            membershipService.refresh(false);
        }
    }

    public final void startPrivateChat() {
        AccountService accountService = (AccountService) getService("account");
        Context context = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        ChatHelper chatHelper = new ChatHelper(context);
        if (!accountService.hasAccount()) {
            ensureLogin(new Intent());
            return;
        }
        if (chatHelper.canChatWithCurrentUserInGlobalLevel(this.user)) {
            FragmentManager fragmentManager = getFragmentManager();
            if (fragmentManager == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            Fragment fragmentFindFragmentByTag = fragmentManager.findFragmentByTag("chatInvite");
            if (fragmentFindFragmentByTag == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.chat.invite.ChatInviteFragment");
            }
            ChatInviteFragment chatInviteFragment = (ChatInviteFragment) fragmentFindFragmentByTag;
            if (chatInviteFragment != null) {
                chatInviteFragment.startChat(this.uid);
            }
        }
    }

    @Override // com.narvii.nested.CoordinateTabFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        unregisterLocalReceiver(this.receiver);
        if (this.isMyProfilePage) {
            AccountService accountService = this.accountService;
            if (accountService != null) {
                accountService.removeRecentVisitorListener(this.recentVisitorListener);
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("accountService");
                throw null;
            }
        }
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    public void onSubFragmentCreated(Fragment f, int i) {
        Intrinsics.checkParameterIsNotNull(f, "f");
        super.onSubFragmentCreated(f, i);
        if (f instanceof GlobalProfileCommentFragment) {
            ((GlobalProfileCommentFragment) f).updateUser(this.user);
        }
        this.fragmentsList.add(f);
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    public void onInstantiateItem(Object any) {
        Intrinsics.checkParameterIsNotNull(any, "any");
        super.onInstantiateItem(any);
        if (any instanceof GlobalProfileCommentFragment) {
            ((GlobalProfileCommentFragment) any).setOnCommentToTop(new Function0<Unit>() { // from class: com.narvii.master.home.profile.GlobalProfileFragment.onInstantiateItem.1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    NVAppBarLayout appbarLayout = GlobalProfileFragment.this.getAppbarLayout();
                    if (appbarLayout != null) {
                        appbarLayout.setExpanded(false);
                    }
                }
            });
        } else {
            boolean z = any instanceof PublishedStoryListFragment;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        Function1<Object, Boolean> function1 = new Function1<Object, Boolean>() { // from class: com.narvii.master.home.profile.GlobalProfileFragment.onNotification.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Object obj) {
                return Boolean.valueOf(invoke2(obj));
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final boolean invoke2(Object obj) {
                if (obj instanceof Comment) {
                    Comment comment = (Comment) obj;
                    if (Utils.isEqualsNotNull(comment.parentId, GlobalProfileFragment.this.getUid()) && comment.ndcId == 0) {
                        return true;
                    }
                }
                return false;
            }
        };
        C10242 c10242 = C10242.INSTANCE;
        String str = notification != null ? notification.action : null;
        if (str == null) {
            return;
        }
        switch (str.hashCode()) {
            case -1335458389:
                if (str.equals("delete")) {
                    if (!function1.invoke2(notification.obj)) {
                        Object obj = notification.obj;
                        Intrinsics.checkExpressionValueIsNotNull(obj, "n.obj");
                        if (c10242.invoke2(obj)) {
                            if (this.user != null) {
                                r9.storiesCount--;
                            }
                            updateTabCount();
                            break;
                        }
                    } else {
                        if (this.user != null) {
                            r9.commentsCount--;
                        }
                        updateTabCount();
                        break;
                    }
                }
                break;
            case -838846263:
                if (str.equals("update")) {
                    Object obj2 = notification.obj;
                    if (!(obj2 instanceof User)) {
                        obj2 = null;
                    }
                    User user = (User) obj2;
                    if (user != null && user.ndcId == 0 && Utils.isEqualsNotNull(user.uid, this.uid)) {
                        if (user.visitorsCount < 0) {
                            User user2 = this.user;
                            user.visitorsCount = user2 != null ? user2.visitorsCount : 0;
                        }
                        if (user.visitPrivacy < 0) {
                            User user3 = this.user;
                            user.visitPrivacy = user3 != null ? user3.visitPrivacy : -1;
                        }
                        this.user = user;
                        updateViews();
                        break;
                    }
                }
                break;
            case 108960:
                if (str.equals("new")) {
                    if (!function1.invoke2(notification.obj)) {
                        Object obj3 = notification.obj;
                        Intrinsics.checkExpressionValueIsNotNull(obj3, "n.obj");
                        if (c10242.invoke2(obj3)) {
                            User user4 = this.user;
                            if (user4 != null) {
                                user4.storiesCount++;
                            }
                            updateTabCount();
                            break;
                        }
                    } else {
                        User user5 = this.user;
                        if (user5 != null) {
                            user5.commentsCount++;
                        }
                        updateTabCount();
                        break;
                    }
                }
                break;
            case 3108362:
                if (str.equals("edit")) {
                    Bundle bundle = notification.bundle;
                    if (bundle != null && bundle.getBoolean("publishToGlobalTurnOff")) {
                        if (this.user != null) {
                            r9.storiesCount--;
                        }
                        updateTabCount();
                        break;
                    } else {
                        Bundle bundle2 = notification.bundle;
                        if (bundle2 != null && bundle2.getBoolean("publishToGlobalTurnOn")) {
                            User user6 = this.user;
                            if (user6 != null) {
                                user6.storiesCount++;
                            }
                            updateTabCount();
                            break;
                        }
                    }
                }
                break;
        }
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    public void sendHeaderRequest(Callback<Integer> callback) {
        super.sendHeaderRequest(callback);
        sendGlobalProfileRequest();
        if (isMyProfile()) {
            AccountService accountService = this.accountService;
            if (accountService != null) {
                accountService.forceUpdateRecentVisitorCount();
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("accountService");
                throw null;
            }
        }
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    protected int defaultTabIndex() {
        if (android.text.TextUtils.equals(getStringParam("tab"), "comment")) {
            return this.commentTabIndex;
        }
        return super.defaultTabIndex();
    }

    public final void sendGlobalProfileRequest() {
        String str = this.uid;
        if (str != null) {
            GlobalProfileHelper.sendGlobalProfileRequest$default(new GlobalProfileHelper(this, "visit"), str, new Callback<RequestResult>() { // from class: com.narvii.master.home.profile.GlobalProfileFragment.sendGlobalProfileRequest.1
                @Override // com.narvii.util.Callback
                public final void call(RequestResult requestResult) {
                    NVObject nVObject;
                    if (requestResult.code != 0 || (nVObject = requestResult.object) == null) {
                        return;
                    }
                    GlobalProfileFragment globalProfileFragment = GlobalProfileFragment.this;
                    if (!(nVObject instanceof User)) {
                        nVObject = null;
                    }
                    globalProfileFragment.setUser((User) nVObject);
                    GlobalProfileFragment.this.updateViews();
                    GlobalProfileFragment.this.getProfileView().updateTooltipHints(GlobalProfileFragment.access$getContentView$p(GlobalProfileFragment.this));
                    NVScrollablePagerAdapter pagerAdapter = GlobalProfileFragment.this.getPagerAdapter();
                    Fragment fragmentAt = pagerAdapter != null ? pagerAdapter.getFragmentAt(GlobalProfileFragment.this.commentTabIndex) : null;
                    if (fragmentAt instanceof GlobalProfileCommentFragment) {
                        ((GlobalProfileCommentFragment) fragmentAt).updateUser(GlobalProfileFragment.this.getUser());
                    }
                }
            }, false, this._pushTrackId, 4, null);
        }
    }

    @Override // com.narvii.app.NVFragment
    protected void completePageViewEvent(LogEvent.Builder builder, boolean z) {
        Intrinsics.checkParameterIsNotNull(builder, "builder");
        super.completePageViewEvent(builder, z);
        User user = this.user;
        if (user != null) {
            builder.object(user);
        } else {
            builder.objectId(this.uid).objectType(ObjectType.user);
        }
    }

    public final void updateViews() {
        User user;
        String str;
        ImageView imageView;
        updateMenu();
        View view = this.settingsView;
        if (view != null && (imageView = (ImageView) view.findViewById(R.id.settings_image_view)) != null) {
            imageView.setImageResource(this.uid == null ? R.drawable.ic_menu_setting : R.drawable.ic_menu);
        }
        if (this.uid == null) {
            View view2 = this.loginPage;
            if (view2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("loginPage");
                throw null;
            }
            view2.setVisibility(0);
            View view3 = this.mainPage;
            if (view3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mainPage");
                throw null;
            }
            view3.setVisibility(8);
            View view4 = this.disablePage;
            if (view4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("disablePage");
                throw null;
            }
            view4.setVisibility(8);
            View view5 = this.systemUserPage;
            if (view5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("systemUserPage");
                throw null;
            }
            view5.setVisibility(8);
            updateBackground(null);
            return;
        }
        User user2 = this.user;
        if ((user2 != null && user2.status == 9) || ((user = this.user) != null && user.status == 10)) {
            View view6 = this.loginPage;
            if (view6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("loginPage");
                throw null;
            }
            view6.setVisibility(8);
            View view7 = this.mainPage;
            if (view7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mainPage");
                throw null;
            }
            view7.setVisibility(8);
            View view8 = this.disablePage;
            if (view8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("disablePage");
                throw null;
            }
            view8.setVisibility(0);
            View view9 = this.systemUserPage;
            if (view9 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("systemUserPage");
                throw null;
            }
            view9.setVisibility(8);
            updateBackground(null);
            View view10 = this.disablePage;
            if (view10 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("disablePage");
                throw null;
            }
            ThumbImageView thumbImageView = (ThumbImageView) view10.findViewById(R.id.disabled_user_avatar);
            User user3 = this.user;
            thumbImageView.setImageUrl(user3 != null ? user3.icon() : null);
            View viewFindViewById = view10.findViewById(R.id.disabled_user_name);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "findViewById<TextView>(R.id.disabled_user_name)");
            TextView textView = (TextView) viewFindViewById;
            User user4 = this.user;
            textView.setText(user4 != null ? user4.nickname : null);
            View viewFindViewById2 = view10.findViewById(R.id.disabled_user_id);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById2, "findViewById<TextView>(R.id.disabled_user_id)");
            TextView textView2 = (TextView) viewFindViewById2;
            Object[] objArr = new Object[1];
            User user5 = this.user;
            if (user5 == null || (str = user5.aminoId) == null) {
                str = "";
            }
            objArr[0] = str;
            textView2.setText(getString(R.string.amino_id_with_name, objArr));
            TextView textView3 = (TextView) view10.findViewById(R.id.disable_content_hint);
            User user6 = this.user;
            textView3.setText((user6 == null || user6.status != 9) ? R.string.detail_deleted_message_user : R.string.user_disabled_hint);
            return;
        }
        User user7 = this.user;
        if (user7 != null ? user7.isSystem() : false) {
            View view11 = this.loginPage;
            if (view11 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("loginPage");
                throw null;
            }
            view11.setVisibility(8);
            View view12 = this.mainPage;
            if (view12 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mainPage");
                throw null;
            }
            view12.setVisibility(8);
            View view13 = this.disablePage;
            if (view13 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("disablePage");
                throw null;
            }
            view13.setVisibility(8);
            View view14 = this.systemUserPage;
            if (view14 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("systemUserPage");
                throw null;
            }
            view14.setVisibility(0);
            View view15 = this.systemUserPage;
            if (view15 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("systemUserPage");
                throw null;
            }
            ((UserAvatarLayout) view15.findViewById(R.id.amino_team_user_avatar)).setUser(this.user);
            View viewFindViewById3 = view15.findViewById(R.id.amino_team_user_name);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById3, "findViewById<TextView>(R.id.amino_team_user_name)");
            TextView textView4 = (TextView) viewFindViewById3;
            User user8 = this.user;
            textView4.setText(user8 != null ? user8.nickname() : null);
            return;
        }
        View view16 = this.loginPage;
        if (view16 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loginPage");
            throw null;
        }
        view16.setVisibility(8);
        View view17 = this.mainPage;
        if (view17 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mainPage");
            throw null;
        }
        view17.setVisibility(0);
        View view18 = this.disablePage;
        if (view18 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("disablePage");
            throw null;
        }
        view18.setVisibility(8);
        View view19 = this.systemUserPage;
        if (view19 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("systemUserPage");
            throw null;
        }
        view19.setVisibility(8);
        updateMembershipView();
        updateBackground(this.user);
        NVPagerTabLayout tabLayout = getTabLayout();
        if (tabLayout != null) {
            tabLayout.setVisibility(showMultiTab() ? 0 : 8);
        }
        updateTabCount();
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateMembershipView() {
        /*
            Method dump skipped, instructions count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.master.home.profile.GlobalProfileFragment.updateMembershipView():void");
    }

    private final void updateTabCount() {
        boolean z;
        Integer numValueOf;
        Integer numValueOf2;
        List<NVScrollablePagerAdapter.TabInfo> tabs;
        C10311 c10311 = C10311.INSTANCE;
        User user = this.user;
        if (user != null) {
            FilterHelper filterHelper = this.filterHelper;
            if (filterHelper == null) {
                Intrinsics.throwUninitializedPropertyAccessException("filterHelper");
                throw null;
            }
            z = !filterHelper.isAccessible(user);
        } else {
            z = false;
        }
        NVPagerTabLayout tabLayout = getTabLayout();
        if (tabLayout != null) {
            int tabCount = tabLayout.getTabCount();
            for (int i = 0; i < tabCount; i++) {
                TextView tv2 = (TextView) tabLayout.getChildTabAt(i).findViewById(R.id.tab_title);
                NVScrollablePagerAdapter pagerAdapter = getPagerAdapter();
                NVScrollablePagerAdapter.TabInfo tabInfo = (pagerAdapter == null || (tabs = pagerAdapter.getTabs()) == null) ? null : tabs.get(i);
                Class<?> cls = tabInfo != null ? tabInfo.clazz : null;
                if (Intrinsics.areEqual(cls, PublishedStoryListFragment.class)) {
                    C10311 c103112 = C10311.INSTANCE;
                    Intrinsics.checkExpressionValueIsNotNull(tv2, "tv");
                    String str = tabInfo.title;
                    Intrinsics.checkExpressionValueIsNotNull(str, "tabInfo.title");
                    if (z) {
                        numValueOf2 = 0;
                    } else {
                        User user2 = this.user;
                        numValueOf2 = user2 != null ? Integer.valueOf(user2.storiesCount) : null;
                    }
                    c103112.invoke2(tv2, str, numValueOf2);
                } else if (Intrinsics.areEqual(cls, GlobalProfileCommentFragment.class)) {
                    C10311 c103113 = C10311.INSTANCE;
                    Intrinsics.checkExpressionValueIsNotNull(tv2, "tv");
                    String str2 = tabInfo.title;
                    Intrinsics.checkExpressionValueIsNotNull(str2, "tabInfo.title");
                    if (z) {
                        numValueOf = 0;
                    } else {
                        User user3 = this.user;
                        numValueOf = user3 != null ? Integer.valueOf(user3.commentsCount) : null;
                    }
                    c103113.invoke2(tv2, str2, numValueOf);
                }
            }
        }
    }

    private final void updateBackground(User user) {
        FullscreenBackgroundView fullscreenBackgroundView = this.backgroundView;
        if (fullscreenBackgroundView != null) {
            fullscreenBackgroundView.setBackgroundSource(user);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("backgroundView");
            throw null;
        }
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    protected NVScrollablePagerAdapter createAdapter() {
        ArrayList arrayList = new ArrayList();
        this.commentTabIndex = 0;
        Integer numValueOf = Integer.valueOf(R.string.stories);
        Bundle bundle = new Bundle();
        bundle.putString("id", this.uid);
        arrayList.add(new Triple(numValueOf, PublishedStoryListFragment.class, bundle));
        this.commentTabIndex++;
        Integer numValueOf2 = Integer.valueOf(R.string.user_switch_comments);
        Bundle bundle2 = new Bundle();
        bundle2.putString("uid", this.uid);
        bundle2.putString(KEY_USER, JacksonUtils.writeAsString(this.user));
        bundle2.putBoolean("isMe", isMyProfile());
        arrayList.add(new Triple(numValueOf2, GlobalProfileCommentFragment.class, bundle2));
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(Integer.valueOf(((Number) ((Triple) it.next()).getFirst()).intValue()));
        }
        ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList3.add((Class) ((Triple) it2.next()).getSecond());
        }
        ArrayList arrayList4 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            arrayList4.add((Bundle) ((Triple) it3.next()).getThird());
        }
        return CoordinateTabFragment.getBaseAdapter$default(this, arrayList2, arrayList3, arrayList4, null, 8, null);
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    public View getTabView(int i, String str) {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.tab_layout_global_profile, (ViewGroup) null);
        TextView tv2 = (TextView) viewInflate.findViewById(R.id.tab_title);
        Intrinsics.checkExpressionValueIsNotNull(tv2, "tv");
        tv2.setText(str);
        tv2.setTextSize(1, 14.0f);
        return viewInflate;
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    public UpdateTabViewDelegate createUpdateTabViewDelegate() {
        return new ScrollTabViewDelegate();
    }

    @Override // com.narvii.nested.CoordinateTabFragment, com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        FragmentManager fragmentManager = getFragmentManager();
        List<Fragment> fragments = fragmentManager != null ? fragmentManager.getFragments() : null;
        if (fragments != null && isAdded() && fragments.size() > 1) {
            int size = fragments.size();
            for (int i = 0; i < size; i++) {
                ComponentCallbacks componentCallbacks = (Fragment) fragments.get(i);
                if (!Intrinsics.areEqual(componentCallbacks, this) && (componentCallbacks instanceof FragmentOnBackListener) && ((FragmentOnBackListener) componentCallbacks).onBackPressed(nVActivity)) {
                    return true;
                }
            }
        }
        return super.onBackPressed(nVActivity);
    }

    @Override // com.narvii.app.NVFragment
    protected void onLoginResult(boolean z, Intent intent) {
        if (z) {
            if (Intrinsics.areEqual("follow", intent != null ? intent.getAction() : null)) {
                follow(false);
            }
        }
        super.onLoginResult(z, intent);
    }

    public final void follow(final boolean z) {
        ApiRequest apiRequestBuild;
        if (this.isSendingFollow) {
            return;
        }
        final C10161 c10161 = new C10161();
        final User user = this.user;
        if (user != null) {
            int i = user.followingStatus;
            final boolean z2 = i == 1 || i == 3;
            if (!z2) {
                LogEvent.clickBuilder(this, ActSemantic.follow).area("FollowIcon").send();
                apiRequestBuild = ApiRequest.builder().post().path("/user-profile/" + getStringParam("id") + "/member").build();
            } else {
                if (!z) {
                    ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
                    actionSheetDialog.addItem(R.string.user_unfollow, true);
                    actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.master.home.profile.GlobalProfileFragment$follow$$inlined$let$lambda$1
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i2) {
                            if (i2 == 0) {
                                this.this$0.follow(true);
                            }
                        }
                    });
                    actionSheetDialog.show();
                    return;
                }
                LogEvent.clickBuilder(this, ActSemantic.unfollow).area("FollowIcon").send();
                ApiRequest.Builder builderDelete = ApiRequest.builder().delete();
                StringBuilder sb = new StringBuilder();
                sb.append("/user-profile/");
                sb.append(getStringParam("id"));
                sb.append("/member/");
                AccountService accountService = this.accountService;
                if (accountService == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("accountService");
                    throw null;
                }
                sb.append(accountService.getUserId());
                apiRequestBuild = builderDelete.path(sb.toString()).build();
            }
            final Class<ApiResponse> cls = ApiResponse.class;
            ((ApiService) getService("api")).exec(apiRequestBuild, new ApiResponseListener<ApiResponse>(cls) { // from class: com.narvii.master.home.profile.GlobalProfileFragment$follow$$inlined$let$lambda$2
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) {
                    this.isSendingFollow = false;
                    this.getProfileView().setSendingFollow(false);
                    this.performFollowAnimation = true;
                    User userProfile = this.getAccountService().getUserProfile();
                    if (userProfile != null) {
                        Notification notification = new Notification(z2 ? "delete" : "new", userProfile);
                        notification.parentId = this.getStringParam("id");
                        this.sendNotification(notification);
                        if (z2) {
                            User user2 = user;
                            user2.followingStatus &= 2;
                            user2.membershipStatus &= 2;
                            user2.membersCount--;
                            user2.notificationSubscriptionStatus = 0;
                        } else {
                            User user3 = user;
                            user3.followingStatus |= 1;
                            user3.membershipStatus |= 1;
                            user3.membersCount++;
                        }
                        this.sendNotification(new Notification("update", user));
                        User userProfile2 = this.getAccountService().getUserProfile();
                        if (z2) {
                            userProfile2.joinedCount--;
                        } else {
                            userProfile2.joinedCount++;
                        }
                        this.getAccountService().updateProfile(userProfile2, apiResponse != null ? apiResponse.timestamp : null, true);
                    }
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i2, list, str, apiResponse, th);
                    c10161.invoke(false, user);
                    NVToast.makeText(this.getContext(), str, 0).show();
                }
            });
            c10161.invoke(true, user);
        }
    }

    public final void showGallery() {
        ArrayList arrayList = new ArrayList();
        Media media = new Media();
        media.type = 100;
        User user = this.user;
        media.url = user != null ? user.icon : null;
        arrayList.add(media);
        User user2 = this.user;
        if ((user2 != null ? user2.icon : null) == null) {
            return;
        }
        Intent intent = new Intent(getContext(), (Class<?>) AvatarFrameMediaGalleryActivity.class);
        User user3 = this.user;
        if (user3 != null) {
            user3.isGlobal = true;
        }
        intent.putExtra("parent", JacksonUtils.writeAsString(this.user));
        intent.putExtra("parentClass", User.class);
        intent.putExtra("list", JacksonUtils.writeAsString(arrayList));
        startActivity(intent);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public void completeLogEvent(LogEvent.Builder builder) {
        String str;
        Intrinsics.checkParameterIsNotNull(builder, "builder");
        super.completeLogEvent(builder);
        if (this.uid == null) {
            str = "notLogin";
        } else {
            str = isMyProfile() ? "self" : "other";
        }
        builder.extraParam(NotificationCompat.CATEGORY_STATUS, str);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getStrategyInfo() {
        User user = this.user;
        if (user != null) {
            return user.getStrategyInfo();
        }
        return super.getStrategyInfo();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void openChatRoom() {
        VVChatEntryHelper vVChatEntryHelper = new VVChatEntryHelper(this);
        Bundle bundle = new Bundle();
        User user = this.user;
        bundle.putString("id", user != null ? user.activePublicLiveThreadId : null);
        startActivity(vVChatEntryHelper.getLaunchIntent(bundle, true));
    }
}
