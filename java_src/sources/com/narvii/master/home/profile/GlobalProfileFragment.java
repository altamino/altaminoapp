package com.narvii.master.home.profile;

import android.app.ActionBar;
import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import androidx.activity.result.ActivityResultCaller;
import androidx.core.app.NotificationCompat;
import androidx.core.app.SharedElementCallback;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.Scopes;
import com.narvii.account.AccountService;
import com.narvii.account.LoginActivity;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVScrollablePagerAdapter;
import com.narvii.birthday.EnterBirthdayFragment;
import com.narvii.chat.invite.ChatInviteFragment;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.video.VVChatEntryHelper;
import com.narvii.comment.list.CommentListAdapter;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.config.ConfigService;
import com.narvii.flag.report.FlagReportOptionDialog;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.NVListFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.logging.ObjectType;
import com.narvii.master.CommunityHelper;
import com.narvii.master.MasterTopBarAvailable;
import com.narvii.master.home.widgets.GlobalProfileHeaderView;
import com.narvii.master.theme.MasterThemeExtensionKt;
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
import com.narvii.services.EventLogProfileService;
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
import com.narvii.wallet.MembershipService;
import com.narvii.widget.FullscreenBackgroundView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVPagerTabLayout;
import com.narvii.widget.NicknameView;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.UserAvatarLayout;
import com.narvii.widget.WalletBalanceView;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
public final class GlobalProfileFragment extends CoordinateTabFragment implements NotificationListener, MasterTopBarAvailable {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String KEY_SHOW_SETTING = "show_setting";

    @NotNull
    public static final String KEY_UID = "id";

    @NotNull
    public static final String KEY_USER = "user";

    @NotNull
    public static final String PREFS_LAST_BIRTHDAY_VERIFY_SID = "last_birthday_verify_sid";
    public AccountService accountService;
    public FullscreenBackgroundView backgroundView;

    @Nullable
    private WalletBalanceView balanceView;
    public View bodyContentView;
    private int commentTabIndex;
    private View contentView;
    public View disablePage;
    public EventLogProfileService eventLogProfileService;
    private FilterHelper filterHelper;
    private FollowNotificationHelper followNotificationHelper;
    private boolean isMyProfilePage;
    private boolean isSendingFollow;

    @Nullable
    private Boolean isUserBlocked;
    public View loginPage;
    public View mainPage;
    public TextView membershipHint;
    public View membershipLayout;

    @Nullable
    private MembershipService membershipService;

    @Nullable
    private View moreView;
    private boolean performFollowAnimation;
    public GlobalProfileHeaderView profileView;

    @Nullable
    private View settingsView;

    @Nullable
    private View shareView;
    public View systemUserPage;

    @Nullable
    private UserAvatarLayout topAvatar;

    @Nullable
    private String uid;

    @Nullable
    private User user;
    private UserBlockService userBlockService;

    @NotNull
    private final List<Fragment> fragmentsList = new ArrayList();

    @NotNull
    private final w7.m prefs$delegate = w7.o.a(new GlobalProfileFragment$prefs$2(this));

    @NotNull
    private final GlobalProfileFragment$receiver$1 receiver = new BroadcastReceiver() { // from class: com.narvii.master.home.profile.GlobalProfileFragment$receiver$1
        @Override // android.content.BroadcastReceiver
        public void onReceive(@NotNull Context context, @NotNull Intent intent) {
            MembershipService membershipService;
            Boolean boolValueOf;
            kotlin.jvm.internal.t.j(context, "context");
            kotlin.jvm.internal.t.j(intent, "intent");
            Boolean boolValueOf2 = null;
            UserBlockService userBlockService = null;
            if (this.this$0.isAdded() && kotlin.jvm.internal.t.e(AccountService.ACTION_ACCOUNT_CHANGED, intent.getAction()) && (this.this$0.isMyProfile() || !this.this$0.getAccountService().hasAccount() || (this.this$0.getUid() == null && this.this$0.getAccountService().hasAccount()))) {
                GlobalProfileFragment globalProfileFragment = this.this$0;
                globalProfileFragment.setUid(globalProfileFragment.getAccountService().getUserId());
                GlobalProfileFragment globalProfileFragment2 = this.this$0;
                if (globalProfileFragment2.getUid() == null) {
                    boolValueOf = null;
                } else {
                    UserBlockService userBlockService2 = this.this$0.userBlockService;
                    if (userBlockService2 == null) {
                        kotlin.jvm.internal.t.B("userBlockService");
                        userBlockService2 = null;
                    }
                    boolValueOf = Boolean.valueOf(userBlockService2.isInBlockedList(this.this$0.getUid()));
                }
                globalProfileFragment2.isUserBlocked = boolValueOf;
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
            if ((kotlin.jvm.internal.t.e(MembershipService.ACTION_MEMBERSHIP_CHANGED, intent.getAction()) || kotlin.jvm.internal.t.e(MembershipService.ACTION_WALLET_CHANGED, intent.getAction()) || kotlin.jvm.internal.t.e(MembershipService.ACTION_COUPONS_CHANGED, intent.getAction())) && this.this$0.isMyProfile()) {
                this.this$0.updateMembershipView();
                this.this$0.updateMenu();
            }
            if (kotlin.jvm.internal.t.e(Constants.ACTION_STREAK_REPAIR_SUCCESS, intent.getAction()) && this.this$0.isMyProfile() && (membershipService = this.this$0.membershipService) != null) {
                membershipService.refreshWallet(true);
            }
            if (kotlin.jvm.internal.t.e(GlobalBlockService.ACTION_BLOCK_LIST_CHANGED, intent.getAction())) {
                if (this.this$0.getUid() != null) {
                    UserBlockService userBlockService3 = this.this$0.userBlockService;
                    if (userBlockService3 == null) {
                        kotlin.jvm.internal.t.B("userBlockService");
                    } else {
                        userBlockService = userBlockService3;
                    }
                    boolValueOf2 = Boolean.valueOf(userBlockService.isInBlockedList(this.this$0.getUid()));
                }
                if (kotlin.jvm.internal.t.e(this.this$0.isUserBlocked, boolValueOf2)) {
                    return;
                }
                this.this$0.isUserBlocked = boolValueOf2;
                this.this$0.resetAdapter();
                this.this$0.updateViews();
            }
        }
    };

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: com.narvii.master.home.profile.GlobalProfileFragment$onCreate$1, reason: invalid class name */
    static final class AnonymousClass1 extends kotlin.jvm.internal.v implements e8.a<l0> {
        AnonymousClass1() {
            super(0);
        }

        @Override // e8.a
        public /* bridge */ /* synthetic */ l0 invoke() {
            invoke2();
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            GlobalProfileFragment.this.getProfileView().setSendingFollowNotification(true);
            GlobalProfileFragment.this.getProfileView().updateViews(GlobalProfileFragment.this.getUser());
        }
    }

    /* JADX INFO: renamed from: com.narvii.master.home.profile.GlobalProfileFragment$onCreate$2, reason: invalid class name */
    static final class AnonymousClass2 extends kotlin.jvm.internal.v implements e8.l<Boolean, l0> {
        AnonymousClass2() {
            super(1);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Boolean bool) {
            invoke(bool.booleanValue());
            return l0.INSTANCE;
        }

        public final void invoke(boolean z6) {
            GlobalProfileFragment.this.getProfileView().setSendingFollowNotification(false);
            GlobalProfileFragment.this.getProfileView().updateViews(GlobalProfileFragment.this.getUser());
        }
    }

    /* JADX INFO: renamed from: com.narvii.master.home.profile.GlobalProfileFragment$onCreate$3, reason: invalid class name */
    static final class AnonymousClass3 extends kotlin.jvm.internal.v implements e8.l<String, l0> {
        AnonymousClass3() {
            super(1);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(String str) {
            invoke2(str);
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@Nullable String str) {
            GlobalProfileFragment.this.getProfileView().setSendingFollowNotification(false);
            GlobalProfileFragment.this.getProfileView().updateViews(GlobalProfileFragment.this.getUser());
        }
    }

    /* JADX INFO: renamed from: com.narvii.master.home.profile.GlobalProfileFragment$onInstantiateItem$1, reason: invalid class name and case insensitive filesystem */
    static final class C05381 extends kotlin.jvm.internal.v implements e8.a<l0> {
        C05381() {
            super(0);
        }

        @Override // e8.a
        public /* bridge */ /* synthetic */ l0 invoke() {
            invoke2();
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            NVAppBarLayout appbarLayout = GlobalProfileFragment.this.getAppbarLayout();
            if (appbarLayout != null) {
                appbarLayout.setExpanded(false);
            }
        }
    }

    private final void blockUser(boolean z6) {
        blockUser(false, z6);
    }

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131951629;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return Scopes.PROFILE;
    }

    @Nullable
    public final UserAvatarLayout getTopAvatar() {
        return this.topAvatar;
    }

    @Nullable
    public final String getUid() {
        return this.uid;
    }

    @Nullable
    public final User getUser() {
        return this.user;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isGlobal() {
        return true;
    }

    public final boolean isMyProfilePage() {
        return this.isMyProfilePage;
    }

    @Override // com.narvii.master.MasterTopBarAvailable
    public boolean isTopBarAvailable() {
        return false;
    }

    public final void setAccountService(@NotNull AccountService accountService) {
        kotlin.jvm.internal.t.j(accountService, "<set-?>");
        this.accountService = accountService;
    }

    public final void setBackgroundView(@NotNull FullscreenBackgroundView fullscreenBackgroundView) {
        kotlin.jvm.internal.t.j(fullscreenBackgroundView, "<set-?>");
        this.backgroundView = fullscreenBackgroundView;
    }

    public final void setBodyContentView(@NotNull View view) {
        kotlin.jvm.internal.t.j(view, "<set-?>");
        this.bodyContentView = view;
    }

    public final void setDisablePage(@NotNull View view) {
        kotlin.jvm.internal.t.j(view, "<set-?>");
        this.disablePage = view;
    }

    public final void setEventLogProfileService(@NotNull EventLogProfileService eventLogProfileService) {
        kotlin.jvm.internal.t.j(eventLogProfileService, "<set-?>");
        this.eventLogProfileService = eventLogProfileService;
    }

    public final void setLoginPage(@NotNull View view) {
        kotlin.jvm.internal.t.j(view, "<set-?>");
        this.loginPage = view;
    }

    public final void setMainPage(@NotNull View view) {
        kotlin.jvm.internal.t.j(view, "<set-?>");
        this.mainPage = view;
    }

    public final void setMembershipHint(@NotNull TextView textView) {
        kotlin.jvm.internal.t.j(textView, "<set-?>");
        this.membershipHint = textView;
    }

    public final void setMembershipLayout(@NotNull View view) {
        kotlin.jvm.internal.t.j(view, "<set-?>");
        this.membershipLayout = view;
    }

    public final void setMyProfilePage(boolean z6) {
        this.isMyProfilePage = z6;
    }

    public final void setProfileView(@NotNull GlobalProfileHeaderView globalProfileHeaderView) {
        kotlin.jvm.internal.t.j(globalProfileHeaderView, "<set-?>");
        this.profileView = globalProfileHeaderView;
    }

    public final void setSystemUserPage(@NotNull View view) {
        kotlin.jvm.internal.t.j(view, "<set-?>");
        this.systemUserPage = view;
    }

    public final void setTopAvatar(@Nullable UserAvatarLayout userAvatarLayout) {
        this.topAvatar = userAvatarLayout;
    }

    public final void setUid(@Nullable String str) {
        this.uid = str;
    }

    public final void setUser(@Nullable User user) {
        this.user = user;
    }

    private final void blockUser(final boolean z6, boolean z10) {
        if (!z10) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
            builder.setMessage(z6 ? R.string.unblock_confirm : R.string.block_confirm);
            builder.setPositiveButton(R.string.continue_, new DialogInterface.OnClickListener() { // from class: com.narvii.master.home.profile.z
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i10) {
                    GlobalProfileFragment.blockUser$lambda$4(this.f2382a, z6, dialogInterface, i10);
                }
            });
            builder.setNegativeButton(android.R.string.cancel, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
            builder.show();
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext(), BlockListResponse.class);
        progressDialog.successListener = new Callback() { // from class: com.narvii.master.home.profile.a0
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                GlobalProfileFragment.blockUser$lambda$6(this.f2345a, (ApiResponse) obj);
            }
        };
        progressDialog.show();
        ApiRequest.Builder builderDelete = z6 ? ApiRequest.builder().delete() : ApiRequest.builder().post();
        ((ApiService) getService("api")).exec(builderDelete.path("/block/" + getStringParam("id")).global().build(), progressDialog.dismissListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void blockUser$lambda$4(GlobalProfileFragment this$0, boolean z6, DialogInterface dialogInterface, int i10) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.blockUser(z6, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void blockUser$lambda$6(GlobalProfileFragment this$0, ApiResponse apiResponse) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        kotlin.jvm.internal.t.h(apiResponse, "null cannot be cast to non-null type com.narvii.userblock.BlockListResponse");
        BlockListResponse blockListResponse = (BlockListResponse) apiResponse;
        UserBlockService userBlockService = this$0.userBlockService;
        if (userBlockService == null) {
            kotlin.jvm.internal.t.B("userBlockService");
            userBlockService = null;
        }
        userBlockService.updateBlockList(blockListResponse.blockedUidList, blockListResponse.blockerUidList);
        NVActivity nVActivity = (NVActivity) this$0.getActivity();
        if (nVActivity != null) {
            nVActivity.toastImage(R.drawable.ic_createa_account_check);
            nVActivity.supportInvalidateOptionsMenu();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void follow$lambda$47$lambda$46(GlobalProfileFragment this$0, DialogInterface dialogInterface, int i10) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        if (i10 == 0) {
            this$0.follow(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void follow$updateFollowState(GlobalProfileFragment globalProfileFragment, boolean z6, User user) {
        globalProfileFragment.isSendingFollow = z6;
        globalProfileFragment.getProfileView().setSendingFollow(z6);
        globalProfileFragment.getProfileView().updateViews(user);
    }

    private final SharedPreferences getPrefs() {
        Object value = this.prefs$delegate.getValue();
        kotlin.jvm.internal.t.i(value, "getValue(...)");
        return (SharedPreferences) value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initFakeActionBar$lambda$22(GlobalProfileFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initFakeActionBar$lambda$25$lambda$23(GlobalProfileFragment this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        LogEvent.clickBuilder(this$0, ActSemantic.checkDetail).area("WalletIcon").send();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initFakeActionBar$lambda$25$lambda$24(GlobalProfileFragment this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        LogEvent.clickBuilder(this$0, ActSemantic.checkDetail).area("ClaimCoinsIcon").send();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initFakeActionBar$lambda$27(GlobalProfileFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        User user = this$0.user;
        if (user != null) {
            LogEvent.clickBuilder(this$0, ActSemantic.share).area("ShareIcon").object(this$0.user).send();
            ShareDialog.getShareDialogForGlobalProfile(this$0, user, this$0.isMyProfile()).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initFakeActionBar$lambda$29(final GlobalProfileFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        LogEvent.clickBuilder(this$0, ActSemantic.checkDetail).area("MoreIcon").send();
        if (this$0.uid == null) {
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this$0, new Intent(this$0.getContext(), (Class<?>) LoginActivity.class));
            return;
        }
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(this$0.getContext());
        actionSheetDialog.addItem(R.string.flag_for_review, 0);
        UserBlockService userBlockService = this$0.userBlockService;
        if (userBlockService == null) {
            kotlin.jvm.internal.t.B("userBlockService");
            userBlockService = null;
        }
        final boolean zIsInBlockedList = userBlockService.isInBlockedList(this$0.uid);
        if (zIsInBlockedList) {
            actionSheetDialog.addItem(R.string.user_unblock, 0);
        } else {
            actionSheetDialog.addItem(R.string.user_block_this_user, 1);
        }
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.master.home.profile.r
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i10) {
                GlobalProfileFragment.initFakeActionBar$lambda$29$lambda$28(this.f2373a, zIsInBlockedList, dialogInterface, i10);
            }
        });
        actionSheetDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initFakeActionBar$lambda$29$lambda$28(GlobalProfileFragment this$0, boolean z6, DialogInterface dialogInterface, int i10) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        if (i10 == 0) {
            new FlagReportOptionDialog.Builder(this$0).miniProfile(false).nvObject(this$0.user).build().show();
        } else {
            if (i10 != 1) {
                return;
            }
            if (z6) {
                this$0.blockUser(true, false);
            } else {
                this$0.blockUser(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initFakeActionBar$lambda$30(GlobalProfileFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        LogEvent.clickBuilder(this$0, ActSemantic.checkDetail).area("SettingIcon").send();
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this$0, this$0.getAccountService().hasAccount() ? FragmentWrapperActivity.intent(MoreSettingFragment.class) : FragmentWrapperActivity.intent(SettingsFragment.class));
    }

    private static final boolean onNotification$isValidCommentAtGlobal(GlobalProfileFragment globalProfileFragment, Object obj) {
        if (obj instanceof Comment) {
            Comment comment = (Comment) obj;
            if (Utils.isEqualsNotNull(comment.parentId, globalProfileFragment.uid) && comment.ndcId == 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$10(GlobalProfileFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        LogEvent.clickBuilder(this$0, ActSemantic.checkDetail).area("MembershipBar").send();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$11(GlobalProfileFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        LogEvent.clickBuilder(this$0, ActSemantic.checkDetail).area("AddBio").send();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$12(GlobalProfileFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.startEditBio();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$13(GlobalProfileFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.ensureLogin(new Intent("follow"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$14(GlobalProfileFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        LogEvent.clickBuilder(this$0, ActSemantic.chat).area("ChatButton").send();
        this$0.startPrivateChat();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$15(GlobalProfileFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        FollowNotificationHelper followNotificationHelper = this$0.followNotificationHelper;
        if (followNotificationHelper == null) {
            kotlin.jvm.internal.t.B("followNotificationHelper");
            followNotificationHelper = null;
        }
        FollowNotificationHelper.subscribe$default(followNotificationHelper, this$0.user, null, 2, null);
        User user = this$0.user;
        LogEvent.clickBuilder(this$0, (user == null || user.notificationSubscriptionStatus != 0) ? ActSemantic.turnOffAlert : ActSemantic.turnOnAlert).area("AlertIcon").send();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$16(GlobalProfileFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        LogEvent.clickBuilder(this$0, ActSemantic.pageEnter).area("LoginArea").send();
        Intent intent = new Intent(this$0.getContext(), (Class<?>) LoginActivity.class);
        Context context = this$0.getContext();
        if (context != null) {
            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(context, intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$17(GlobalProfileFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this$0, new CommunityHelper(this$0).getFeedBackIntent());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$20(final GlobalProfileFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        for (Fragment fragment : this$0.fragmentsList) {
            if (fragment instanceof NVRecyclerViewFragment) {
                NVRecyclerViewFragment nVRecyclerViewFragment = (NVRecyclerViewFragment) fragment;
                RecyclerView recyclerView = nVRecyclerViewFragment.getRecyclerView();
                if ((recyclerView != null ? recyclerView.getLayoutManager() : null) instanceof LinearLayoutManager) {
                    RecyclerView recyclerView2 = nVRecyclerViewFragment.getRecyclerView();
                    RecyclerView.LayoutManager layoutManager = recyclerView2 != null ? recyclerView2.getLayoutManager() : null;
                    kotlin.jvm.internal.t.h(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
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
                NVAppBarLayout appbarLayout = this$0.getAppbarLayout();
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
                    listView2.post(new Runnable() { // from class: com.narvii.master.home.profile.f
                        @Override // java.lang.Runnable
                        public final void run() {
                            GlobalProfileFragment.onViewCreated$lambda$20$lambda$19$lambda$18(this.f2357a);
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$20$lambda$19$lambda$18(GlobalProfileFragment this$0) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        NVAppBarLayout appbarLayout = this$0.getAppbarLayout();
        if (appbarLayout != null) {
            appbarLayout.setExpanded(true, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$9(GlobalProfileFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        if (!this$0.getAccountService().hasAccount()) {
            Intent intent = new Intent(this$0.getContext(), (Class<?>) LoginActivity.class);
            Context context = this$0.getContext();
            if (context != null) {
                safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(context, intent);
                return;
            }
            return;
        }
        LogEvent.Builder builderArea = LogEvent.clickBuilder(this$0, ActSemantic.checkDetail).area("UserIcon");
        User user = this$0.user;
        builderArea.extraParam("isLiveChatting", Boolean.valueOf((user != null ? user.activePublicLiveThreadId : null) != null)).send();
        User user2 = this$0.user;
        if (user2 == null || TextUtils.isEmpty(user2.activePublicLiveThreadId)) {
            this$0.showGallery();
        } else {
            this$0.openChatRoom();
        }
    }

    private final void openChatRoom() {
        VVChatEntryHelper vVChatEntryHelper = new VVChatEntryHelper(this);
        Bundle bundle = new Bundle();
        User user = this.user;
        bundle.putString("id", user != null ? user.activePublicLiveThreadId : null);
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, vVChatEntryHelper.getLaunchIntent(bundle, true));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sendGlobalProfileRequest$lambda$34(GlobalProfileFragment this$0, RequestResult requestResult) {
        NVObject nVObject;
        kotlin.jvm.internal.t.j(this$0, "this$0");
        if (requestResult.code != 0 || (nVObject = requestResult.object) == null) {
            return;
        }
        this$0.user = nVObject instanceof User ? (User) nVObject : null;
        this$0.updateViews();
        NVScrollablePagerAdapter pagerAdapter = this$0.getPagerAdapter();
        Fragment fragmentAt = pagerAdapter != null ? pagerAdapter.getFragmentAt(this$0.commentTabIndex) : null;
        if (fragmentAt instanceof GlobalProfileCommentFragment) {
            ((GlobalProfileCommentFragment) fragmentAt).updateUser(this$0.user);
        }
    }

    private final void startEditBio() {
        User user = this.user;
        if (user != null) {
            Intent intent = new Intent(getContext(), (Class<?>) GlobalBioPostActivity.class);
            intent.putExtra("uid", user.uid);
            intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(new UserProfilePost(user)));
            intent.putExtra("userProfile", JacksonUtils.writeAsString(user));
            intent.putExtra("bio", true);
            intent.putExtra("supportImage", false);
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Edit Bio");
            intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_SOURCE, "UserProfileView");
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateMenu() {
        User user;
        User user2;
        User user3;
        WalletBalanceView walletBalanceView = this.balanceView;
        int i10 = 8;
        if (walletBalanceView != null) {
            walletBalanceView.setVisibility(isMyProfile() ? 0 : 8);
            walletBalanceView.refresh();
        }
        View view = this.shareView;
        if (view != null) {
            view.setVisibility((this.uid == null || ((user3 = this.user) != null && user3.status == 9) || ((user3 != null && user3.status == 10) || (user3 != null && user3.isSystem()))) ? 8 : 0);
        }
        View view2 = this.settingsView;
        if (view2 != null) {
            view2.setVisibility(((getBooleanParam(KEY_SHOW_SETTING) || !isRootFragment()) && (isMyProfile() || this.uid == null) && ((user2 = this.user) == null || !user2.isSystem())) ? 0 : 8);
        }
        View view3 = this.moreView;
        if (view3 == null) {
            return;
        }
        if (this.uid != null && !isMyProfile() && getAccountService().hasAccount() && ((user = this.user) == null || !user.isSystem())) {
            i10 = 0;
        }
        view3.setVisibility(i10);
    }

    private final void updateTabCount() {
        boolean z6;
        Integer numValueOf;
        List<NVScrollablePagerAdapter.TabInfo> tabs;
        if (this.user != null) {
            FilterHelper filterHelper = this.filterHelper;
            if (filterHelper == null) {
                kotlin.jvm.internal.t.B("filterHelper");
                filterHelper = null;
            }
            z6 = !filterHelper.isAccessible(this.user);
        } else {
            z6 = false;
        }
        NVPagerTabLayout tabLayout = getTabLayout();
        if (tabLayout != null) {
            int tabCount = tabLayout.getTabCount();
            for (int i10 = 0; i10 < tabCount; i10++) {
                TextView textView = (TextView) tabLayout.getChildTabAt(i10).findViewById(R.id.tab_title);
                NVScrollablePagerAdapter pagerAdapter = getPagerAdapter();
                NVScrollablePagerAdapter.TabInfo tabInfo = (pagerAdapter == null || (tabs = pagerAdapter.getTabs()) == null) ? null : tabs.get(i10);
                if (kotlin.jvm.internal.t.e(tabInfo != null ? tabInfo.clazz : null, GlobalProfileCommentFragment.class)) {
                    kotlin.jvm.internal.t.g(textView);
                    String title = tabInfo.title;
                    kotlin.jvm.internal.t.i(title, "title");
                    if (z6) {
                        numValueOf = 0;
                    } else {
                        User user = this.user;
                        numValueOf = user != null ? Integer.valueOf(user.commentsCount) : null;
                    }
                    updateTabCount$updateCount(textView, title, numValueOf);
                }
            }
        }
    }

    private static final void updateTabCount$updateCount(TextView textView, String str, Integer num) {
        int iIntValue = num != null ? num.intValue() : 0;
        if (iIntValue == 0) {
            textView.setText(str);
            return;
        }
        textView.setText(str + " " + com.narvii.util.text.TextUtils.getLiteCountWithCeil2(iIntValue));
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public void completeLogEvent(@NotNull LogEvent.Builder builder) {
        String str;
        kotlin.jvm.internal.t.j(builder, "builder");
        super.completeLogEvent(builder);
        if (this.uid == null) {
            str = "notLogin";
        } else {
            str = isMyProfile() ? "self" : "other";
        }
        builder.extraParam(NotificationCompat.CATEGORY_STATUS, str);
    }

    @Override // com.narvii.app.NVFragment
    protected void completePageViewEvent(@NotNull LogEvent.Builder builder, boolean z6) {
        kotlin.jvm.internal.t.j(builder, "builder");
        super.completePageViewEvent(builder, z6);
        User user = this.user;
        if (user != null) {
            builder.object(user);
        } else {
            builder.objectId(this.uid).objectType(ObjectType.user);
        }
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    @NotNull
    protected NVScrollablePagerAdapter createAdapter() {
        ArrayList arrayList = new ArrayList();
        this.commentTabIndex = 0;
        Integer numValueOf = Integer.valueOf(R.string.user_switch_comments);
        Bundle bundle = new Bundle();
        bundle.putString("uid", this.uid);
        bundle.putString(KEY_USER, JacksonUtils.writeAsString(this.user));
        bundle.putBoolean("isMe", isMyProfile());
        l0 l0Var = l0.INSTANCE;
        arrayList.add(new w7.z(numValueOf, GlobalProfileCommentFragment.class, bundle));
        ArrayList arrayList2 = new ArrayList(kotlin.collections.w.x(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(Integer.valueOf(((Number) ((w7.z) it.next()).d()).intValue()));
        }
        ArrayList arrayList3 = new ArrayList(kotlin.collections.w.x(arrayList, 10));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList3.add((Class) ((w7.z) it2.next()).e());
        }
        ArrayList arrayList4 = new ArrayList(kotlin.collections.w.x(arrayList, 10));
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            arrayList4.add((Bundle) ((w7.z) it3.next()).f());
        }
        return CoordinateTabFragment.getBaseAdapter$default(this, arrayList2, arrayList3, arrayList4, null, 8, null);
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    @Nullable
    public UpdateTabViewDelegate createUpdateTabViewDelegate() {
        return new ScrollTabViewDelegate();
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    protected int defaultTabIndex() {
        return TextUtils.equals(getStringParam("tab"), CommentListAdapter.COMMENT) ? this.commentTabIndex : super.defaultTabIndex();
    }

    public final void follow(boolean z6) {
        final User user;
        ApiRequest apiRequestBuild;
        if (this.isSendingFollow || (user = this.user) == null) {
            return;
        }
        int i10 = user.followingStatus;
        final boolean z10 = i10 == 1 || i10 == 3;
        if (!z10) {
            LogEvent.clickBuilder(this, ActSemantic.follow).area("FollowIcon").send();
            apiRequestBuild = ApiRequest.builder().post().path("/user-profile/" + getStringParam("id") + "/member").build();
        } else {
            if (!z6) {
                ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
                actionSheetDialog.addItem(R.string.user_unfollow, true);
                actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.master.home.profile.y
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i11) {
                        GlobalProfileFragment.follow$lambda$47$lambda$46(this.f2381a, dialogInterface, i11);
                    }
                });
                actionSheetDialog.show();
                return;
            }
            LogEvent.clickBuilder(this, ActSemantic.unfollow).area("FollowIcon").send();
            apiRequestBuild = ApiRequest.builder().delete().path("/user-profile/" + getStringParam("id") + "/member/" + getAccountService().getUserId()).build();
        }
        final Class<ApiResponse> cls = ApiResponse.class;
        ((ApiService) getService("api")).exec(apiRequestBuild, new ApiResponseListener<ApiResponse>(cls) { // from class: com.narvii.master.home.profile.GlobalProfileFragment$follow$1$1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@Nullable ApiRequest apiRequest, @Nullable ApiResponse apiResponse) {
                this.this$0.performFollowAnimation = true;
                User userProfile = this.this$0.getAccountService().getUserProfile();
                if (userProfile == null) {
                    return;
                }
                Notification notification = new Notification(z10 ? "delete" : "new", userProfile);
                notification.parentId = this.this$0.getStringParam("id");
                this.this$0.sendNotification(notification);
                if (z10) {
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
                this.this$0.sendNotification(new Notification("update", user));
                User userProfile2 = this.this$0.getAccountService().getUserProfile();
                if (z10) {
                    userProfile2.joinedCount--;
                } else {
                    userProfile2.joinedCount++;
                }
                this.this$0.getAccountService().updateProfile(userProfile2, apiResponse != null ? apiResponse.timestamp : null, true);
                GlobalProfileFragment.follow$updateFollowState(this.this$0, false, user);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i11, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                super.onFail(apiRequest, i11, list, str, apiResponse, th);
                GlobalProfileFragment.follow$updateFollowState(this.this$0, false, user);
                NVToast.makeText(this.this$0.getContext(), str, 0).show();
            }
        });
        follow$updateFollowState(this, true, user);
    }

    @NotNull
    public final AccountService getAccountService() {
        AccountService accountService = this.accountService;
        if (accountService != null) {
            return accountService;
        }
        kotlin.jvm.internal.t.B("accountService");
        return null;
    }

    @NotNull
    public final FullscreenBackgroundView getBackgroundView() {
        FullscreenBackgroundView fullscreenBackgroundView = this.backgroundView;
        if (fullscreenBackgroundView != null) {
            return fullscreenBackgroundView;
        }
        kotlin.jvm.internal.t.B("backgroundView");
        return null;
    }

    @NotNull
    public final View getBodyContentView() {
        View view = this.bodyContentView;
        if (view != null) {
            return view;
        }
        kotlin.jvm.internal.t.B("bodyContentView");
        return null;
    }

    @NotNull
    public final View getDisablePage() {
        View view = this.disablePage;
        if (view != null) {
            return view;
        }
        kotlin.jvm.internal.t.B("disablePage");
        return null;
    }

    @NotNull
    public final EventLogProfileService getEventLogProfileService() {
        EventLogProfileService eventLogProfileService = this.eventLogProfileService;
        if (eventLogProfileService != null) {
            return eventLogProfileService;
        }
        kotlin.jvm.internal.t.B("eventLogProfileService");
        return null;
    }

    @NotNull
    public final View getLoginPage() {
        View view = this.loginPage;
        if (view != null) {
            return view;
        }
        kotlin.jvm.internal.t.B("loginPage");
        return null;
    }

    @NotNull
    public final View getMainPage() {
        View view = this.mainPage;
        if (view != null) {
            return view;
        }
        kotlin.jvm.internal.t.B("mainPage");
        return null;
    }

    @NotNull
    public final TextView getMembershipHint() {
        TextView textView = this.membershipHint;
        if (textView != null) {
            return textView;
        }
        kotlin.jvm.internal.t.B("membershipHint");
        return null;
    }

    @NotNull
    public final View getMembershipLayout() {
        View view = this.membershipLayout;
        if (view != null) {
            return view;
        }
        kotlin.jvm.internal.t.B("membershipLayout");
        return null;
    }

    @NotNull
    public final GlobalProfileHeaderView getProfileView() {
        GlobalProfileHeaderView globalProfileHeaderView = this.profileView;
        if (globalProfileHeaderView != null) {
            return globalProfileHeaderView;
        }
        kotlin.jvm.internal.t.B("profileView");
        return null;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getStrategyInfo() {
        User user = this.user;
        return user != null ? user.getStrategyInfo() : super.getStrategyInfo();
    }

    @NotNull
    public final View getSystemUserPage() {
        View view = this.systemUserPage;
        if (view != null) {
            return view;
        }
        kotlin.jvm.internal.t.B("systemUserPage");
        return null;
    }

    @Override // com.narvii.nested.CoordinateTabFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(inflater, "inflater");
        View viewInflate = inflater.inflate(R.layout.fragment_global_profile, viewGroup, false);
        kotlin.jvm.internal.t.i(viewInflate, "inflate(...)");
        this.contentView = viewInflate;
        if (viewInflate != null) {
            return viewInflate;
        }
        kotlin.jvm.internal.t.B("contentView");
        return null;
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    public void onInstantiateItem(@NotNull Object any) {
        kotlin.jvm.internal.t.j(any, "any");
        super.onInstantiateItem(any);
        if (any instanceof GlobalProfileCommentFragment) {
            ((GlobalProfileCommentFragment) any).setOnCommentToTop(new C05381());
        }
    }

    @Override // com.narvii.app.NVFragment
    protected void onLoginResult(boolean z6, @Nullable Intent intent) {
        if (z6) {
            if (kotlin.jvm.internal.t.e("follow", intent != null ? intent.getAction() : null)) {
                follow(false);
            }
        }
        super.onLoginResult(z6, intent);
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(@Nullable Notification notification) {
        String str = notification != null ? notification.action : null;
        if (str != null) {
            int iHashCode = str.hashCode();
            if (iHashCode == -1335458389) {
                if (str.equals("delete") && onNotification$isValidCommentAtGlobal(this, notification.obj)) {
                    User user = this.user;
                    if (user != null) {
                        user.commentsCount--;
                    }
                    updateTabCount();
                    return;
                }
                return;
            }
            if (iHashCode == -838846263) {
                str.equals("update");
                return;
            }
            if (iHashCode == 108960 && str.equals("new") && onNotification$isValidCommentAtGlobal(this, notification.obj)) {
                User user2 = this.user;
                if (user2 != null) {
                    user2.commentsCount++;
                }
                updateTabCount();
            }
        }
    }

    @Override // com.narvii.nested.CoordinateTabFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NotNull Bundle outState) {
        kotlin.jvm.internal.t.j(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putString("id", this.uid);
        outState.putString(KEY_USER, JacksonUtils.writeAsString(this.user));
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    public void onSubFragmentCreated(@NotNull Fragment f, int i10) {
        kotlin.jvm.internal.t.j(f, "f");
        super.onSubFragmentCreated(f, i10);
        if (f instanceof GlobalProfileCommentFragment) {
            ((GlobalProfileCommentFragment) f).updateUser(this.user);
        }
        this.fragmentsList.add(f);
    }

    @Override // com.narvii.nested.CoordinateTabFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(view, "view");
        super.onViewCreated(view, bundle);
        initFakeActionBar(view);
        View viewFindViewById = view.findViewById(R.id.profile);
        kotlin.jvm.internal.t.i(viewFindViewById, "findViewById(...)");
        setProfileView((GlobalProfileHeaderView) viewFindViewById);
        getProfileView().setPage(this);
        getProfileView().findViewById(R.id.user_avatar_layout).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                GlobalProfileFragment.onViewCreated$lambda$9(this.f2359a, view2);
            }
        });
        getProfileView().setMembershipPreClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                GlobalProfileFragment.onViewCreated$lambda$10(this.f2362a, view2);
            }
        });
        getProfileView().setAddBioPreClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                GlobalProfileFragment.onViewCreated$lambda$11(this.f2364a, view2);
            }
        });
        getProfileView().setShowBioDetailClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                GlobalProfileFragment.onViewCreated$lambda$12(this.f2365a, view2);
            }
        });
        getProfileView().setFollowClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                GlobalProfileFragment.onViewCreated$lambda$13(this.f2366a, view2);
            }
        });
        getProfileView().setStartChatListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                GlobalProfileFragment.onViewCreated$lambda$14(this.f2367a, view2);
            }
        });
        getProfileView().setFollowNotificationListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                GlobalProfileFragment.onViewCreated$lambda$15(this.f2368a, view2);
            }
        });
        View viewFindViewById2 = view.findViewById(R.id.login_page);
        kotlin.jvm.internal.t.i(viewFindViewById2, "findViewById(...)");
        setLoginPage(viewFindViewById2);
        getLoginPage().findViewById(R.id.login_main_layout).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                GlobalProfileFragment.onViewCreated$lambda$16(this.f2369a, view2);
            }
        });
        View viewFindViewById3 = view.findViewById(R.id.disabled_user_page);
        kotlin.jvm.internal.t.i(viewFindViewById3, "findViewById(...)");
        setDisablePage(viewFindViewById3);
        View viewFindViewById4 = view.findViewById(R.id.team_amino_page);
        kotlin.jvm.internal.t.i(viewFindViewById4, "findViewById(...)");
        setSystemUserPage(viewFindViewById4);
        getSystemUserPage().findViewById(R.id.submit_feedbak).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                GlobalProfileFragment.onViewCreated$lambda$17(this.f2370a, view2);
            }
        });
        View viewFindViewById5 = view.findViewById(R.id.swipe_refresh_layout);
        kotlin.jvm.internal.t.i(viewFindViewById5, "findViewById(...)");
        setMainPage(viewFindViewById5);
        View viewFindViewById6 = view.findViewById(R.id.body_content);
        kotlin.jvm.internal.t.i(viewFindViewById6, "findViewById(...)");
        setBodyContentView(viewFindViewById6);
        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) view.findViewById(R.id.avatar_top);
        this.topAvatar = userAvatarLayout;
        if (userAvatarLayout != null) {
            userAvatarLayout.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.p
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    GlobalProfileFragment.onViewCreated$lambda$20(this.f2371a, view2);
                }
            });
        }
        getProfileView().findViewById(R.id.user_avatar_layout).setTransitionName("avatar");
        ImageCacheUtils imageCacheUtils = new ImageCacheUtils(this);
        User user = this.user;
        Drawable cachedDrawable = imageCacheUtils.getCachedDrawable(user != null ? user.icon : null);
        if (cachedDrawable != null) {
            NVImageView nVImageView = (NVImageView) getProfileView().findViewById(R.id.avatar);
            nVImageView.defaultDrawable = cachedDrawable;
            nVImageView.loadingDrawable = cachedDrawable;
        }
        setAppbarLayout((NVAppBarLayout) view.findViewById(R.id.appbar_layout));
        getProfileView().setMinimumHeight(getStatusBarOverlaySize() + getActionBarOverlaySize());
        getProfileView().setTag(R.id.coordinate_top_content, Boolean.TRUE);
        View viewFindViewById7 = view.findViewById(R.id.membership_layout);
        kotlin.jvm.internal.t.i(viewFindViewById7, "findViewById(...)");
        setMembershipLayout(viewFindViewById7);
        View viewFindViewById8 = view.findViewById(R.id.membership_hint);
        kotlin.jvm.internal.t.i(viewFindViewById8, "findViewById(...)");
        setMembershipHint((TextView) viewFindViewById8);
        Object service = getService("config");
        kotlin.jvm.internal.t.h(service, "null cannot be cast to non-null type com.narvii.config.ConfigService");
        int iColorPrimary = ((ConfigService) service).getTheme().colorPrimary();
        float fDpToPx = Utils.dpToPx(getContext(), 10.0f);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{fDpToPx, fDpToPx, fDpToPx, fDpToPx, 0.0f, 0.0f, 0.0f, 0.0f}, null, null));
        shapeDrawable.getPaint().setColor(Color.argb(ApiService.API_ERR_USER_NOT_IN_COMMUNITY, Color.red(iColorPrimary), Color.green(iColorPrimary), Color.blue(iColorPrimary)));
        getBodyContentView().setBackground(shapeDrawable);
        if (!isRootFragment()) {
            getBodyContentView().setPadding(0, 0, 0, getResources().getDimensionPixelOffset(R.dimen.master_tab_bar_height));
        }
        View viewFindViewById9 = view.findViewById(R.id.background);
        kotlin.jvm.internal.t.i(viewFindViewById9, "findViewById(...)");
        setBackgroundView((FullscreenBackgroundView) viewFindViewById9);
        getBackgroundView().setOverlayColor(-1290859988);
        updateViews();
    }

    public final void sendGlobalProfileRequest() {
        String str = this.uid;
        if (str == null) {
            return;
        }
        GlobalProfileHelper.sendGlobalProfileRequest$default(new GlobalProfileHelper(this, "visit"), str, new Callback() { // from class: com.narvii.master.home.profile.s
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                GlobalProfileFragment.sendGlobalProfileRequest$lambda$34(this.f2375a, (RequestResult) obj);
            }
        }, false, this._pushTrackId, 4, null);
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
        intent.putExtra("parent", JacksonUtils.writeAsString(user3));
        intent.putExtra("parentClass", User.class);
        intent.putExtra("list", JacksonUtils.writeAsString(arrayList));
        safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
    }

    public final void startPrivateChat() {
        AccountService accountService = (AccountService) getService("account");
        Context context = getContext();
        kotlin.jvm.internal.t.i(context, "getContext(...)");
        ChatHelper chatHelper = new ChatHelper(context);
        if (!accountService.hasAccount()) {
            ensureLogin(new Intent());
            return;
        }
        if (chatHelper.canChatWithCurrentUserInGlobalLevel(this.user)) {
            FragmentManager fragmentManager = getFragmentManager();
            kotlin.jvm.internal.t.g(fragmentManager);
            Fragment fragmentM0 = fragmentManager.m0("chatInvite");
            kotlin.jvm.internal.t.h(fragmentM0, "null cannot be cast to non-null type com.narvii.chat.invite.ChatInviteFragment");
            ((ChatInviteFragment) fragmentM0).startChat(this.uid);
        }
    }

    public final void updateMembershipView() {
        String string;
        if (this.performFollowAnimation) {
            this.performFollowAnimation = false;
            getProfileView().performFollowAnimation();
        }
        getProfileView().updateViews(this.user);
        UserAvatarLayout userAvatarLayout = this.topAvatar;
        if (userAvatarLayout != null) {
            userAvatarLayout.setUser(this.user);
        }
        View membershipLayout = getMembershipLayout();
        MembershipService membershipService = this.membershipService;
        membershipLayout.setVisibility((membershipService == null || membershipService.isMembership() || !getAccountService().hasAccount() || !isMyProfile()) ? 8 : 0);
        MembershipService membershipService2 = this.membershipService;
        if (membershipService2 != null && !membershipService2.isMembership()) {
            int iDaysExpired = membershipService2.daysExpired();
            if (iDaysExpired >= 0) {
                TextView membershipHint = getMembershipHint();
                if (iDaysExpired != 0) {
                    string = iDaysExpired != 1 ? getString(R.string.membership_status_wallet_expired_n_day, Integer.valueOf(iDaysExpired)) : getString(R.string.membership_status_wallet_expired_1_day);
                } else {
                    string = getString(R.string.membership_status_wallet_expired_0_day);
                }
                membershipHint.setText(string);
            } else {
                getMembershipHint().setText(getString(membershipService2.freeTrial() ? R.string.membership_status_wallet_inactive_trial : R.string.membership_status_wallet_inactive));
            }
        }
        User user = this.user;
        if (user == null || !(!TextUtils.isEmpty(user.activePublicLiveThreadId))) {
            return;
        }
        getMembershipLayout().setVisibility(8);
    }

    private final boolean alreadyShownBirthDateUpdate() {
        return !getEventLogProfileService().alreadyShownBirthdayFlowThreeTimes();
    }

    private final String getCurrentSessionId() {
        return getAccountService().getPrefs().getString(CmcdConfiguration.KEY_SESSION_ID, null);
    }

    private final String getLastBirthdayVerifySessionId() {
        return getPrefs().getString(PREFS_LAST_BIRTHDAY_VERIFY_SID, null);
    }

    private final void initFakeActionBar(View view) {
        ActionBar actionBar;
        View viewFindViewById = view.findViewById(R.id.actionbar_left);
        if (isRootFragment()) {
            viewFindViewById.setVisibility(0);
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.q
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    GlobalProfileFragment.initFakeActionBar$lambda$22(this.f2372a, view2);
                }
            });
            FragmentActivity activity = getActivity();
            if (activity != null && (actionBar = activity.getActionBar()) != null) {
                actionBar.hide();
            }
        } else {
            viewFindViewById.setVisibility(8);
        }
        WalletBalanceView walletBalanceView = (WalletBalanceView) view.findViewById(R.id.wallet_balance_view);
        this.balanceView = walletBalanceView;
        if (walletBalanceView != null) {
            walletBalanceView.setOnWalletPreClickListener(new WalletBalanceView.OnPreClickListener() { // from class: com.narvii.master.home.profile.t
                @Override // com.narvii.widget.WalletBalanceView.OnPreClickListener
                public final void onPreClick() {
                    GlobalProfileFragment.initFakeActionBar$lambda$25$lambda$23(this.f2376a);
                }
            });
            walletBalanceView.setOnClaimIconPreClickListener(new WalletBalanceView.OnPreClickListener() { // from class: com.narvii.master.home.profile.u
                @Override // com.narvii.widget.WalletBalanceView.OnPreClickListener
                public final void onPreClick() {
                    GlobalProfileFragment.initFakeActionBar$lambda$25$lambda$24(this.f2377a);
                }
            });
        }
        View viewFindViewById2 = view.findViewById(R.id.share_view);
        this.shareView = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.v
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    GlobalProfileFragment.initFakeActionBar$lambda$27(this.f2378a, view2);
                }
            });
        }
        View viewFindViewById3 = view.findViewById(R.id.more_view);
        this.moreView = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.w
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    GlobalProfileFragment.initFakeActionBar$lambda$29(this.f2379a, view2);
                }
            });
        }
        View viewFindViewById4 = view.findViewById(R.id.settings_view);
        this.settingsView = viewFindViewById4;
        if (viewFindViewById4 != null) {
            viewFindViewById4.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.profile.x
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    GlobalProfileFragment.initFakeActionBar$lambda$30(this.f2380a, view2);
                }
            });
        }
    }

    private final void setLastBirthdayVerifySessionId(String str) {
        SharedPreferences.Editor editorEdit = getPrefs().edit();
        if (str == null || editorEdit.putString(PREFS_LAST_BIRTHDAY_VERIFY_SID, str) == null) {
            editorEdit.remove(PREFS_LAST_BIRTHDAY_VERIFY_SID);
        }
        editorEdit.apply();
    }

    private final boolean showMultiTab() {
        if (getShowTabCount() > 1) {
            return true;
        }
        return false;
    }

    private final void updateBackground(User user) {
        getBackgroundView().setBackgroundSource(user);
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    @Nullable
    public View getTabView(int i10, @Nullable String str) {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.tab_layout_global_profile, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tab_title);
        textView.setText(str);
        textView.setTextSize(1, 14.0f);
        return viewInflate;
    }

    public final boolean isMyProfile() {
        return Utils.isEqualsNotNull(getAccountService().getUserId(), this.uid);
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    public void onAppBarLayoutOffsetChanged(@Nullable NVAppBarLayout nVAppBarLayout, int i10) {
        WalletBalanceView walletBalanceView;
        int i11;
        WalletBalanceView walletBalanceView2;
        super.onAppBarLayoutOffsetChanged(nVAppBarLayout, i10);
        int i12 = 0;
        if (getProfileView().getHeight() != 0 && i10 < 0) {
            float height = 1 + ((i10 * 1.0f) / (getProfileView().getHeight() - getProfileView().getMinimumHeight()));
            getProfileView().setAlpha(height);
            WalletBalanceView walletBalanceView3 = this.balanceView;
            if (walletBalanceView3 != null) {
                walletBalanceView3.setAlpha(height);
            }
            GlobalProfileHeaderView profileView = getProfileView();
            double d = height;
            if (d < 0.1d) {
                i11 = 4;
            } else {
                i11 = 0;
            }
            profileView.setVisibility(i11);
            if (isMyProfile() && (walletBalanceView2 = this.balanceView) != null) {
                if (d < 0.1d) {
                    i12 = 4;
                }
                walletBalanceView2.setVisibility(i12);
                return;
            }
            return;
        }
        getProfileView().setAlpha(1.0f);
        WalletBalanceView walletBalanceView4 = this.balanceView;
        if (walletBalanceView4 != null) {
            walletBalanceView4.setAlpha(1.0f);
        }
        getProfileView().setVisibility(0);
        if (isMyProfile() && (walletBalanceView = this.balanceView) != null) {
            walletBalanceView.setVisibility(0);
        }
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    public void onAppBarLayoutScroll(int i10) {
        super.onAppBarLayoutScroll(i10);
        getProfileView().hideToolTip();
    }

    @Override // com.narvii.nested.CoordinateTabFragment, com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(@Nullable NVActivity nVActivity) {
        List<Fragment> listB0 = getChildFragmentManager().B0();
        kotlin.jvm.internal.t.i(listB0, "getFragments(...)");
        if (isAdded() && listB0.size() > 1) {
            int size = listB0.size();
            for (int i10 = 0; i10 < size; i10++) {
                ActivityResultCaller activityResultCaller = (Fragment) listB0.get(i10);
                if (!kotlin.jvm.internal.t.e(activityResultCaller, this) && (activityResultCaller instanceof FragmentOnBackListener) && ((FragmentOnBackListener) activityResultCaller).onBackPressed((NVActivity) getActivity())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        Window window;
        FragmentTransaction fragmentTransactionQ;
        FragmentTransaction fragmentTransactionE;
        FragmentManager fragmentManager;
        super.onCreate(bundle);
        Object service = getService("account");
        kotlin.jvm.internal.t.i(service, "getService(...)");
        setAccountService((AccountService) service);
        Object service2 = getService("eventLogProfile");
        kotlin.jvm.internal.t.i(service2, "getService(...)");
        setEventLogProfileService((EventLogProfileService) service2);
        Object service3 = getService("block");
        kotlin.jvm.internal.t.i(service3, "getService(...)");
        this.userBlockService = (UserBlockService) service3;
        FilterHelper filterHelperKeepForLeaderAndCurator = new FilterHelper(this).keepForLeaderAndCurator();
        kotlin.jvm.internal.t.i(filterHelperKeepForLeaderAndCurator, "keepForLeaderAndCurator(...)");
        this.filterHelper = filterHelperKeepForLeaderAndCurator;
        FollowNotificationHelper followNotificationHelper = new FollowNotificationHelper(this);
        this.followNotificationHelper = followNotificationHelper;
        followNotificationHelper.setLoading(new AnonymousClass1());
        FollowNotificationHelper followNotificationHelper2 = this.followNotificationHelper;
        Boolean boolValueOf = null;
        UserBlockService userBlockService = null;
        if (followNotificationHelper2 == null) {
            kotlin.jvm.internal.t.B("followNotificationHelper");
            followNotificationHelper2 = null;
        }
        followNotificationHelper2.setSuccess(new AnonymousClass2());
        FollowNotificationHelper followNotificationHelper3 = this.followNotificationHelper;
        if (followNotificationHelper3 == null) {
            kotlin.jvm.internal.t.B("followNotificationHelper");
            followNotificationHelper3 = null;
        }
        followNotificationHelper3.setFail(new AnonymousClass3());
        setTitle((CharSequence) null);
        this.membershipService = (MembershipService) getService("membership");
        registerLocalReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_MEMBERSHIP_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_WALLET_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_COUPONS_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(Constants.ACTION_STREAK_REPAIR_SUCCESS));
        registerLocalReceiver(this.receiver, new IntentFilter(GlobalBlockService.ACTION_BLOCK_LIST_CHANGED));
        this.user = (User) JacksonUtils.readAs(getStringParam(KEY_USER), User.class);
        this.uid = getStringParam("id");
        if (!isRootFragment() && this.uid == null) {
            this.uid = getAccountService().getUserId();
            this.user = getAccountService().getUserProfile();
        }
        if (this.uid != null) {
            UserBlockService userBlockService2 = this.userBlockService;
            if (userBlockService2 == null) {
                kotlin.jvm.internal.t.B("userBlockService");
            } else {
                userBlockService = userBlockService2;
            }
            boolValueOf = Boolean.valueOf(userBlockService.isInBlockedList(this.uid));
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
            if (fragmentManager2 != null && (fragmentTransactionQ = fragmentManager2.q()) != null && (fragmentTransactionE = fragmentTransactionQ.e(chatInviteFragment, "chatInvite")) != null) {
                fragmentTransactionE.k();
            }
        }
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

                public final void setStarted(boolean z6) {
                    this.started = z6;
                }

                @Override // androidx.core.app.SharedElementCallback
                public void onSharedElementEnd(@Nullable List<String> list, @Nullable List<View> list2, @Nullable List<View> list3) {
                    super.onSharedElementEnd(list, list2, list3);
                    NicknameView nicknameView = null;
                    if (this.started) {
                        GlobalProfileHeaderView profileView = GlobalProfileFragment.this.getProfileView();
                        if (profileView != null) {
                            nicknameView = profileView.getNicknameView();
                        }
                        if (nicknameView != null) {
                            nicknameView.setAlpha(1.0f);
                        }
                        NVPagerTabLayout tabLayout = GlobalProfileFragment.this.getTabLayout();
                        if (tabLayout != null) {
                            tabLayout.setIndicatorAlpha(1.0f);
                        }
                        this.started = false;
                        return;
                    }
                    GlobalProfileHeaderView profileView2 = GlobalProfileFragment.this.getProfileView();
                    if (profileView2 != null) {
                        nicknameView = profileView2.getNicknameView();
                    }
                    if (nicknameView != null) {
                        nicknameView.setAlpha(0.1f);
                    }
                    NVPagerTabLayout tabLayout2 = GlobalProfileFragment.this.getTabLayout();
                    if (tabLayout2 != null) {
                        tabLayout2.setIndicatorAlpha(0.1f);
                    }
                }

                @Override // androidx.core.app.SharedElementCallback
                public void onSharedElementsArrived(@Nullable List<String> list, @Nullable List<View> list2, @Nullable SharedElementCallback.OnSharedElementsReadyListener onSharedElementsReadyListener) {
                    NicknameView nicknameView;
                    super.onSharedElementsArrived(list, list2, onSharedElementsReadyListener);
                    this.started = true;
                    GlobalProfileHeaderView profileView = GlobalProfileFragment.this.getProfileView();
                    if (profileView != null) {
                        nicknameView = profileView.getNicknameView();
                    } else {
                        nicknameView = null;
                    }
                    if (nicknameView != null) {
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

    @Override // com.narvii.nested.CoordinateTabFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        unregisterLocalReceiver(this.receiver);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        MembershipService membershipService = this.membershipService;
        if (membershipService != null) {
            membershipService.refresh(false);
        }
        tryOpenSetBirthday();
    }

    @Override // com.narvii.nested.CoordinateTabFragment
    public void sendHeaderRequest(@Nullable Callback<Integer> callback) {
        super.sendHeaderRequest(callback);
        sendGlobalProfileRequest();
    }

    public final void tryOpenSetBirthday() {
        if (!alreadyShownBirthDateUpdate() && getEventLogProfileService().getNeedsBirthDateUpdate() && getCurrentSessionId() != null) {
            if (getLastBirthdayVerifySessionId() == null || !kotlin.jvm.internal.t.e(getLastBirthdayVerifySessionId(), getCurrentSessionId())) {
                setLastBirthdayVerifySessionId(getCurrentSessionId());
                Intent intent = FragmentWrapperActivity.intent(EnterBirthdayFragment.class);
                intent.putExtra(Constants.PARAM_BIRTHDAY_TYPE, EnterBirthdayFragment.BirthdayType.GLOBAL_PROFILE);
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
            }
        }
    }

    public final void updateViews() {
        String strIcon;
        String str;
        int i10;
        ImageView imageView;
        int i11;
        updateMenu();
        View view = this.settingsView;
        if (view != null && (imageView = (ImageView) view.findViewById(R.id.settings_image_view)) != null) {
            if (this.uid == null) {
                i11 = R.drawable.ic_menu_setting;
            } else {
                i11 = R.drawable.ic_menu;
            }
            imageView.setImageResource(i11);
        }
        String strNickname = null;
        int i12 = 0;
        if (this.uid == null) {
            getLoginPage().setVisibility(0);
            getMainPage().setVisibility(8);
            getDisablePage().setVisibility(8);
            getSystemUserPage().setVisibility(8);
            updateBackground(null);
            return;
        }
        User user = this.user;
        if ((user != null && user.status == 9) || (user != null && user.status == 10)) {
            getLoginPage().setVisibility(8);
            getMainPage().setVisibility(8);
            getDisablePage().setVisibility(0);
            getSystemUserPage().setVisibility(8);
            updateBackground(null);
            View disablePage = getDisablePage();
            ThumbImageView thumbImageView = (ThumbImageView) disablePage.findViewById(R.id.disabled_user_avatar);
            User user2 = this.user;
            if (user2 != null) {
                strIcon = user2.icon();
            } else {
                strIcon = null;
            }
            thumbImageView.setImageUrl(strIcon);
            TextView textView = (TextView) disablePage.findViewById(R.id.disabled_user_name);
            User user3 = this.user;
            if (user3 != null) {
                str = user3.nickname;
            } else {
                str = null;
            }
            textView.setText(str);
            TextView textView2 = (TextView) disablePage.findViewById(R.id.disabled_user_id);
            Object[] objArr = new Object[1];
            User user4 = this.user;
            if (user4 != null) {
                strNickname = user4.aminoId;
            }
            if (strNickname == null) {
                strNickname = "";
            }
            objArr[0] = strNickname;
            textView2.setText(getString(R.string.amino_id_with_name, objArr));
            TextView textView3 = (TextView) disablePage.findViewById(R.id.disable_content_hint);
            User user5 = this.user;
            if (user5 != null && user5.status == 9) {
                i10 = R.string.user_disabled_hint;
            } else {
                i10 = R.string.detail_deleted_message_user;
            }
            textView3.setText(i10);
            return;
        }
        if (user != null && user.isSystem()) {
            getLoginPage().setVisibility(8);
            getMainPage().setVisibility(8);
            getDisablePage().setVisibility(8);
            getSystemUserPage().setVisibility(0);
            View systemUserPage = getSystemUserPage();
            ((UserAvatarLayout) systemUserPage.findViewById(R.id.amino_team_user_avatar)).setUser(this.user);
            TextView textView4 = (TextView) systemUserPage.findViewById(R.id.amino_team_user_name);
            User user6 = this.user;
            if (user6 != null) {
                strNickname = user6.nickname();
            }
            textView4.setText(strNickname);
            return;
        }
        getLoginPage().setVisibility(8);
        getMainPage().setVisibility(0);
        getDisablePage().setVisibility(8);
        getSystemUserPage().setVisibility(8);
        updateMembershipView();
        updateBackground(this.user);
        NVPagerTabLayout tabLayout = getTabLayout();
        if (tabLayout != null) {
            if (!showMultiTab()) {
                i12 = 8;
            }
            tabLayout.setVisibility(i12);
        }
        updateTabCount();
    }
}
