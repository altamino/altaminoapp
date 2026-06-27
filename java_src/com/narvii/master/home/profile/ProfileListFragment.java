package com.narvii.master.home.profile;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.app.theme.view.NVThemeLinearLayout;
import com.narvii.media.MediaPickerFragment;
import com.narvii.model.Community;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserResponse;
import com.narvii.monetization.avatarframe.AvatarFrame;
import com.narvii.monetization.avatarframe.AvatarFrameConfig;
import com.narvii.monetization.avatarframe.AvatarFrameSettingPickerFragment;
import com.narvii.monetization.avatarframe.DefaultAvatarFrame;
import com.narvii.monetization.avatarframe.SwipeableFragment;
import com.narvii.monetization.avatarframe.loader.AvatarFrameLoader;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.paging.state.PageStatusView;
import com.narvii.post.PostHelper;
import com.narvii.post.PostListener;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.RequestResult;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.text.NVText;
import com.narvii.wallet.MembershipService;
import com.narvii.widget.BackgroundPickerView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVScrollView;
import com.narvii.widget.SpinningView;
import com.narvii.widget.UserAvatarLayout;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: ProfileListFragment.kt */
/* loaded from: classes3.dex */
public final class ProfileListFragment extends NVFragment implements NotificationListener, View.OnClickListener, PostListener, MediaPickerFragment.OnResultListener, AvatarFrameSettingPickerFragment.OnPickAvatarFrameListener, FragmentOnBackListener {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ProfileListFragment.class), "edtNickname", "getEdtNickname()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ProfileListFragment.class), "btnEditAvatarFrame", "getBtnEditAvatarFrame()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ProfileListFragment.class), "avatarLayout", "getAvatarLayout()Lcom/narvii/widget/UserAvatarLayout;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ProfileListFragment.class), "contentLayout", "getContentLayout()Lcom/narvii/app/theme/view/NVThemeLinearLayout;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ProfileListFragment.class), "backgroundPickerView", "getBackgroundPickerView()Lcom/narvii/widget/BackgroundPickerView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ProfileListFragment.class), "editAminoIdLayout", "getEditAminoIdLayout()Landroid/widget/LinearLayout;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ProfileListFragment.class), "editUsernameLayout", "getEditUsernameLayout()Landroid/widget/LinearLayout;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ProfileListFragment.class), "editBioLayout", "getEditBioLayout()Landroid/widget/LinearLayout;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ProfileListFragment.class), "linkedCommunitiesLayout", "getLinkedCommunitiesLayout()Landroid/widget/LinearLayout;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ProfileListFragment.class), "commentPermissionLayout", "getCommentPermissionLayout()Landroid/widget/LinearLayout;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ProfileListFragment.class), "tvBio", "getTvBio()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ProfileListFragment.class), "tvAminoId", "getTvAminoId()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ProfileListFragment.class), "aminoIdRightChevron", "getAminoIdRightChevron()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ProfileListFragment.class), "scrollView", "getScrollView()Lcom/narvii/widget/NVScrollView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ProfileListFragment.class), "communityLogolayout", "getCommunityLogolayout()Landroid/widget/LinearLayout;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ProfileListFragment.class), "ivCommunity1", "getIvCommunity1()Lcom/narvii/widget/NVImageView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ProfileListFragment.class), "ivCommunity2", "getIvCommunity2()Lcom/narvii/widget/NVImageView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ProfileListFragment.class), "ivCommunity3", "getIvCommunity3()Lcom/narvii/widget/NVImageView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ProfileListFragment.class), "ivCommunity4", "getIvCommunity4()Lcom/narvii/widget/NVImageView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ProfileListFragment.class), "ivCommunity5", "getIvCommunity5()Lcom/narvii/widget/NVImageView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ProfileListFragment.class), "tvCommentPermission", "getTvCommentPermission()Landroid/widget/TextView;"))};
    public static final Companion Companion = new Companion(null);
    public static final String KEY_SHOW_AVATAR_FRAME_PICKER = "show_picker";
    private HashMap _$_findViewCache;
    public AccountService accountService;
    private AvatarFrame curLoadingFrame;
    public File dir;
    private AvatarFrameSettingPickerFragment framePickerFragment;
    private boolean isRequestSent;
    private MediaPickerFragment mediaPickerFragment;
    private AvatarFrame newSelectedFrame;
    public ProgressDialog progressDialog;
    private PageStatusView statusView;
    private User user;
    private final int REQ_CODE_USER_PROFILE = 101;
    private final HashMap<Integer, User> userProfiles = new HashMap<>();
    private final Lazy edtNickname$delegate = bind(this, R.id.edit_nickname);
    private final Lazy btnEditAvatarFrame$delegate = bind(this, R.id.edit_avatar_frame);
    private final Lazy avatarLayout$delegate = bind(this, R.id.user_avatar_layout);
    private final Lazy contentLayout$delegate = bind(this, R.id.content_layout);
    private final Lazy backgroundPickerView$delegate = bind(this, R.id.background_picker);
    private final Lazy editAminoIdLayout$delegate = bind(this, R.id.layout_edit_id);
    private final Lazy editUsernameLayout$delegate = bind(this, R.id.layout_edit_username);
    private final Lazy editBioLayout$delegate = bind(this, R.id.layout_edit_bio);
    private final Lazy linkedCommunitiesLayout$delegate = bind(this, R.id.layout_linked_communities);
    private final Lazy commentPermissionLayout$delegate = bind(this, R.id.layout_comment_permission);
    private final Lazy tvBio$delegate = bind(this, R.id.tvBio);
    private final Lazy tvAminoId$delegate = bind(this, R.id.tvAminoId);
    private final Lazy aminoIdRightChevron$delegate = bind(this, R.id.aminoIdRightChevron);
    private final Lazy scrollView$delegate = bind(this, R.id.scroll_view);
    private final Lazy communityLogolayout$delegate = bind(this, R.id.community_logo_layout);
    private final Lazy ivCommunity1$delegate = bind(this, R.id.iv_community_1);
    private final Lazy ivCommunity2$delegate = bind(this, R.id.iv_community_2);
    private final Lazy ivCommunity3$delegate = bind(this, R.id.iv_community_3);
    private final Lazy ivCommunity4$delegate = bind(this, R.id.iv_community_4);
    private final Lazy ivCommunity5$delegate = bind(this, R.id.iv_community_5);
    private final Lazy tvCommentPermission$delegate = bind(this, R.id.tv_comment_permission);
    private final View.OnClickListener retryListener = new View.OnClickListener() { // from class: com.narvii.master.home.profile.ProfileListFragment$retryListener$1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.this$0.setRequestSent(false);
            ProfileListFragment.sendGlobalProfileRequest$default(this.this$0, false, 1, null);
        }
    };

    @Override // com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment
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

    public final View getAminoIdRightChevron() {
        Lazy lazy = this.aminoIdRightChevron$delegate;
        KProperty kProperty = $$delegatedProperties[12];
        return (View) lazy.getValue();
    }

    public final UserAvatarLayout getAvatarLayout() {
        Lazy lazy = this.avatarLayout$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (UserAvatarLayout) lazy.getValue();
    }

    protected final int getBackgroundMediaPickerFlag() {
        return 14;
    }

    public final BackgroundPickerView getBackgroundPickerView() {
        Lazy lazy = this.backgroundPickerView$delegate;
        KProperty kProperty = $$delegatedProperties[4];
        return (BackgroundPickerView) lazy.getValue();
    }

    public final View getBtnEditAvatarFrame() {
        Lazy lazy = this.btnEditAvatarFrame$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (View) lazy.getValue();
    }

    public final LinearLayout getCommentPermissionLayout() {
        Lazy lazy = this.commentPermissionLayout$delegate;
        KProperty kProperty = $$delegatedProperties[9];
        return (LinearLayout) lazy.getValue();
    }

    public final LinearLayout getCommunityLogolayout() {
        Lazy lazy = this.communityLogolayout$delegate;
        KProperty kProperty = $$delegatedProperties[14];
        return (LinearLayout) lazy.getValue();
    }

    public final NVThemeLinearLayout getContentLayout() {
        Lazy lazy = this.contentLayout$delegate;
        KProperty kProperty = $$delegatedProperties[3];
        return (NVThemeLinearLayout) lazy.getValue();
    }

    public final LinearLayout getEditAminoIdLayout() {
        Lazy lazy = this.editAminoIdLayout$delegate;
        KProperty kProperty = $$delegatedProperties[5];
        return (LinearLayout) lazy.getValue();
    }

    public final LinearLayout getEditBioLayout() {
        Lazy lazy = this.editBioLayout$delegate;
        KProperty kProperty = $$delegatedProperties[7];
        return (LinearLayout) lazy.getValue();
    }

    public final LinearLayout getEditUsernameLayout() {
        Lazy lazy = this.editUsernameLayout$delegate;
        KProperty kProperty = $$delegatedProperties[6];
        return (LinearLayout) lazy.getValue();
    }

    public final TextView getEdtNickname() {
        Lazy lazy = this.edtNickname$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (TextView) lazy.getValue();
    }

    public final NVImageView getIvCommunity1() {
        Lazy lazy = this.ivCommunity1$delegate;
        KProperty kProperty = $$delegatedProperties[15];
        return (NVImageView) lazy.getValue();
    }

    public final NVImageView getIvCommunity2() {
        Lazy lazy = this.ivCommunity2$delegate;
        KProperty kProperty = $$delegatedProperties[16];
        return (NVImageView) lazy.getValue();
    }

    public final NVImageView getIvCommunity3() {
        Lazy lazy = this.ivCommunity3$delegate;
        KProperty kProperty = $$delegatedProperties[17];
        return (NVImageView) lazy.getValue();
    }

    public final NVImageView getIvCommunity4() {
        Lazy lazy = this.ivCommunity4$delegate;
        KProperty kProperty = $$delegatedProperties[18];
        return (NVImageView) lazy.getValue();
    }

    public final NVImageView getIvCommunity5() {
        Lazy lazy = this.ivCommunity5$delegate;
        KProperty kProperty = $$delegatedProperties[19];
        return (NVImageView) lazy.getValue();
    }

    public final LinearLayout getLinkedCommunitiesLayout() {
        Lazy lazy = this.linkedCommunitiesLayout$delegate;
        KProperty kProperty = $$delegatedProperties[8];
        return (LinearLayout) lazy.getValue();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "ProfileEditingPage";
    }

    public final NVScrollView getScrollView() {
        Lazy lazy = this.scrollView$delegate;
        KProperty kProperty = $$delegatedProperties[13];
        return (NVScrollView) lazy.getValue();
    }

    public final TextView getTvAminoId() {
        Lazy lazy = this.tvAminoId$delegate;
        KProperty kProperty = $$delegatedProperties[11];
        return (TextView) lazy.getValue();
    }

    public final TextView getTvBio() {
        Lazy lazy = this.tvBio$delegate;
        KProperty kProperty = $$delegatedProperties[10];
        return (TextView) lazy.getValue();
    }

    public final TextView getTvCommentPermission() {
        Lazy lazy = this.tvCommentPermission$delegate;
        KProperty kProperty = $$delegatedProperties[20];
        return (TextView) lazy.getValue();
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(List<Media> list, Bundle bundle) {
    }

    @Override // com.narvii.post.PostListener
    public void onPostProgress(PostHelper postHelper, int i, int i2) {
    }

    public final HashMap<Integer, User> getUserProfiles() {
        return this.userProfiles;
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

    protected final PageStatusView getStatusView() {
        return this.statusView;
    }

    protected final void setStatusView(PageStatusView pageStatusView) {
        this.statusView = pageStatusView;
    }

    public final User getUser() {
        return this.user;
    }

    public final void setUser(User user) {
        this.user = user;
    }

    public final boolean isRequestSent() {
        return this.isRequestSent;
    }

    public final void setRequestSent(boolean z) {
        this.isRequestSent = z;
    }

    public final MediaPickerFragment getMediaPickerFragment() {
        return this.mediaPickerFragment;
    }

    public final void setMediaPickerFragment(MediaPickerFragment mediaPickerFragment) {
        this.mediaPickerFragment = mediaPickerFragment;
    }

    public final File getDir() {
        File file = this.dir;
        if (file != null) {
            return file;
        }
        Intrinsics.throwUninitializedPropertyAccessException("dir");
        throw null;
    }

    public final void setDir(File file) {
        Intrinsics.checkParameterIsNotNull(file, "<set-?>");
        this.dir = file;
    }

    public final ProgressDialog getProgressDialog() {
        ProgressDialog progressDialog = this.progressDialog;
        if (progressDialog != null) {
            return progressDialog;
        }
        Intrinsics.throwUninitializedPropertyAccessException("progressDialog");
        throw null;
    }

    public final void setProgressDialog(ProgressDialog progressDialog) {
        Intrinsics.checkParameterIsNotNull(progressDialog, "<set-?>");
        this.progressDialog = progressDialog;
    }

    /* compiled from: ProfileListFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        FragmentTransaction fragmentTransactionBeginTransaction;
        super.onCreate(bundle);
        Object service = getService("account");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService<AccountService>(\"account\")");
        this.accountService = (AccountService) service;
        setTitle(R.string.my_profile);
        FragmentManager fragmentManager = getFragmentManager();
        Fragment fragmentFindFragmentByTag = fragmentManager != null ? fragmentManager.findFragmentByTag("mediaPicker") : null;
        if (!(fragmentFindFragmentByTag instanceof MediaPickerFragment)) {
            fragmentFindFragmentByTag = null;
        }
        this.mediaPickerFragment = (MediaPickerFragment) fragmentFindFragmentByTag;
        if (this.mediaPickerFragment == null) {
            this.mediaPickerFragment = new MediaPickerFragment();
            FragmentManager fragmentManager2 = getFragmentManager();
            if (fragmentManager2 != null && (fragmentTransactionBeginTransaction = fragmentManager2.beginTransaction()) != null) {
                MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
                if (mediaPickerFragment == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                FragmentTransaction fragmentTransactionAdd = fragmentTransactionBeginTransaction.add(mediaPickerFragment, "mediaPicker");
                if (fragmentTransactionAdd != null) {
                    fragmentTransactionAdd.commit();
                }
            }
        }
        MediaPickerFragment mediaPickerFragment2 = this.mediaPickerFragment;
        if (mediaPickerFragment2 != null) {
            mediaPickerFragment2.addOnResultListener(this);
        }
        Context context = getContext();
        this.dir = new File(context != null ? context.getFilesDir() : null, "profiles");
        File file = this.dir;
        if (file == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dir");
            throw null;
        }
        file.mkdirs();
        this.progressDialog = new ProgressDialog(getContext());
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.removeOnResultListener(this);
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        File file = this.dir;
        if (file != null) {
            File file2 = new File(file, "0");
            if (!file2.exists()) {
                file2.mkdir();
            }
            getBackgroundPickerView().setOnClickListener(this);
            return;
        }
        Intrinsics.throwUninitializedPropertyAccessException("dir");
        throw null;
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_profile_list, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        this.statusView = (PageStatusView) view.findViewById(R.id.status_view);
        PageStatusView pageStatusView = this.statusView;
        if (pageStatusView != null) {
            pageStatusView.setDarkTheme(isDarkNVTheme());
        }
        PageStatusView pageStatusView2 = this.statusView;
        if (pageStatusView2 != null) {
            pageStatusView2.setEmptyRetryListener(this.retryListener);
        }
        PageStatusView pageStatusView3 = this.statusView;
        if (pageStatusView3 != null) {
            pageStatusView3.setErrorRetryListener(this.retryListener);
        }
        getEditUsernameLayout().setOnClickListener(this);
        getBtnEditAvatarFrame().setOnClickListener(this);
        getAvatarLayout().setOnClickListener(this);
        getEditAminoIdLayout().setOnClickListener(this);
        getEditBioLayout().setOnClickListener(this);
        getLinkedCommunitiesLayout().setOnClickListener(this);
        getCommentPermissionLayout().setOnClickListener(this);
        sendGlobalProfileRequest$default(this, false, 1, null);
    }

    @Override // com.narvii.post.PostListener
    public void onPostStart(PostHelper postHelper) {
        ProgressDialog progressDialog = this.progressDialog;
        if (progressDialog != null) {
            progressDialog.show();
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("progressDialog");
            throw null;
        }
    }

    @Override // com.narvii.post.PostListener
    public void onPostFinished(PostHelper postHelper, ApiResponse apiResponse) {
        User user;
        if ((apiResponse instanceof UserResponse) && (user = ((UserResponse) apiResponse).user) != null) {
            AccountService accountService = this.accountService;
            if (accountService == null) {
                Intrinsics.throwUninitializedPropertyAccessException("accountService");
                throw null;
            }
            accountService.updateProfile(user, apiResponse.timestamp, 0, true, true);
        }
        ProgressDialog progressDialog = this.progressDialog;
        if (progressDialog == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressDialog");
            throw null;
        }
        progressDialog.dismiss();
        finish();
    }

    @Override // com.narvii.post.PostListener
    public void onPostFail(PostHelper postHelper, int i, String str, Throwable th) {
        ProgressDialog progressDialog = this.progressDialog;
        if (progressDialog == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressDialog");
            throw null;
        }
        progressDialog.dismiss();
        NVToast.makeText(getContext(), str, 1).show();
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0070  */
    @Override // android.view.View.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onClick(android.view.View r8) {
        /*
            Method dump skipped, instructions count: 579
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.master.home.profile.ProfileListFragment.onClick(android.view.View):void");
    }

    public final View.OnClickListener getRetryListener() {
        return this.retryListener;
    }

    private final <T extends View> Lazy<T> bind(ProfileListFragment profileListFragment, final int i) {
        return LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<T>() { // from class: com.narvii.master.home.profile.ProfileListFragment.bind.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                View view = ProfileListFragment.this.getView();
                View viewFindViewById = view != null ? view.findViewById(i) : null;
                if (viewFindViewById != null) {
                    return viewFindViewById;
                }
                throw new TypeCastException("null cannot be cast to non-null type T");
            }
        });
    }

    public static /* synthetic */ void sendGlobalProfileRequest$default(ProfileListFragment profileListFragment, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        profileListFragment.sendGlobalProfileRequest(z);
    }

    public final void sendGlobalProfileRequest(final boolean z) {
        AccountService accountService = this.accountService;
        if (accountService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountService");
            throw null;
        }
        String userId = accountService.getUserId();
        if (userId == null || userId.length() == 0) {
            return;
        }
        if (!z) {
            updateViews();
            PageStatusView pageStatusView = this.statusView;
            if (pageStatusView != null) {
                pageStatusView.updateStatus(1);
            }
        }
        GlobalProfileHelper globalProfileHelper = new GlobalProfileHelper(this, null, 2, null);
        AccountService accountService2 = this.accountService;
        if (accountService2 != null) {
            GlobalProfileHelper.sendGlobalProfileRequest$default(globalProfileHelper, accountService2.getUserId(), new Callback<RequestResult>() { // from class: com.narvii.master.home.profile.ProfileListFragment.sendGlobalProfileRequest.1
                @Override // com.narvii.util.Callback
                public final void call(RequestResult requestResult) {
                    if (requestResult.code == 0) {
                        NVObject nVObject = requestResult.object;
                        if (nVObject instanceof User) {
                            ProfileListFragment profileListFragment = ProfileListFragment.this;
                            if (requestResult == null) {
                                nVObject = null;
                            }
                            if (!(nVObject instanceof User)) {
                                nVObject = null;
                            }
                            profileListFragment.setUser((User) nVObject);
                            ProfileListFragment.this.setRequestSent(true);
                        }
                        if (z) {
                            return;
                        }
                        PageStatusView statusView = ProfileListFragment.this.getStatusView();
                        if (statusView != null) {
                            statusView.setErrorMessage(null);
                        }
                        PageStatusView statusView2 = ProfileListFragment.this.getStatusView();
                        if (statusView2 != null) {
                            statusView2.updateStatus(0);
                        }
                        ProfileListFragment.this.updateViews();
                        ProfileListFragment.this.updateHeader();
                        if (ProfileListFragment.this.getBooleanParam(ProfileListFragment.KEY_SHOW_AVATAR_FRAME_PICKER)) {
                            ProfileListFragment.this.getBtnEditAvatarFrame().performClick();
                            return;
                        }
                        return;
                    }
                    if (z) {
                        return;
                    }
                    ProfileListFragment.this.setRequestSent(false);
                    PageStatusView statusView3 = ProfileListFragment.this.getStatusView();
                    if (statusView3 != null) {
                        statusView3.setErrorMessage(requestResult.errorMessage);
                    }
                    PageStatusView statusView4 = ProfileListFragment.this.getStatusView();
                    if (statusView4 != null) {
                        statusView4.updateStatus(2);
                    }
                    ProfileListFragment.this.updateViews();
                }
            }, z, null, 8, null);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("accountService");
            throw null;
        }
    }

    public final void updateHeader() {
        String str;
        List<Community> list;
        AccountService accountService = this.accountService;
        if (accountService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountService");
            throw null;
        }
        String aminoId = accountService.getAminoId();
        AccountService accountService2 = this.accountService;
        if (accountService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountService");
            throw null;
        }
        boolean zIsAminoIdEditable = accountService2.isAminoIdEditable();
        if (!TextUtils.isEmpty(aminoId)) {
            getTvAminoId().setText(aminoId);
            if (zIsAminoIdEditable) {
                getTvAminoId().setAlpha(1.0f);
                getAminoIdRightChevron().setVisibility(0);
            } else {
                getTvAminoId().setAlpha(0.5f);
                getAminoIdRightChevron().setVisibility(4);
            }
        }
        TextView edtNickname = getEdtNickname();
        User user = this.user;
        if (user == null || (str = user.nickname) == null) {
            str = "";
        }
        edtNickname.setText(str);
        User user2 = this.user;
        String str2 = user2 != null ? user2.content : null;
        getTvBio().setText(str2 == null || str2.length() == 0 ? getString(R.string.post_short_bio_hint) : NVText.removeTitleTags(str2));
        getAvatarLayout().setUser(this.user);
        getBackgroundPickerView().setBackgroundPost(this.user);
        User user3 = this.user;
        int size = (user3 == null || (list = user3.linkedCommunityList) == null) ? 0 : list.size();
        if (size == 0) {
            getCommunityLogolayout().setVisibility(8);
        } else {
            getCommunityLogolayout().setVisibility(0);
            getIvCommunity1().setVisibility(8);
            getIvCommunity2().setVisibility(8);
            getIvCommunity3().setVisibility(8);
            getIvCommunity4().setVisibility(8);
            getIvCommunity5().setVisibility(8);
            if (size > 0) {
                getIvCommunity1().setVisibility(0);
                NVImageView ivCommunity1 = getIvCommunity1();
                User user4 = this.user;
                List<Community> list2 = user4 != null ? user4.linkedCommunityList : null;
                if (list2 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                ivCommunity1.setImageUrl(list2.get(0).icon);
            }
            if (size > 1) {
                getIvCommunity2().setVisibility(0);
                NVImageView ivCommunity2 = getIvCommunity2();
                User user5 = this.user;
                List<Community> list3 = user5 != null ? user5.linkedCommunityList : null;
                if (list3 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                ivCommunity2.setImageUrl(list3.get(1).icon);
            }
            if (size > 2) {
                getIvCommunity3().setVisibility(0);
                NVImageView ivCommunity3 = getIvCommunity3();
                User user6 = this.user;
                List<Community> list4 = user6 != null ? user6.linkedCommunityList : null;
                if (list4 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                ivCommunity3.setImageUrl(list4.get(2).icon);
            }
            if (size > 3) {
                getIvCommunity4().setVisibility(0);
                NVImageView ivCommunity4 = getIvCommunity4();
                User user7 = this.user;
                List<Community> list5 = user7 != null ? user7.linkedCommunityList : null;
                if (list5 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                ivCommunity4.setImageUrl(list5.get(3).icon);
            }
            if (size > 4) {
                getIvCommunity5().setVisibility(0);
                NVImageView ivCommunity5 = getIvCommunity5();
                User user8 = this.user;
                List<Community> list6 = user8 != null ? user8.linkedCommunityList : null;
                if (list6 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                ivCommunity5.setImageUrl(list6.get(4).icon);
            }
        }
        TextView tvCommentPermission = getTvCommentPermission();
        User user9 = this.user;
        tvCommentPermission.setText(user9 != null ? user9.getPrivilegeText(getContext(), User.COMMENT) : null);
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if (((notification != null ? notification.obj : null) instanceof User) && "update".equals(notification.action)) {
            AccountService accountService = this.accountService;
            if (accountService == null) {
                Intrinsics.throwUninitializedPropertyAccessException("accountService");
                throw null;
            }
            if (Utils.isEqualsNotNull(accountService != null ? accountService.getUserId() : null, notification.uid)) {
                Object obj = notification.obj;
                if (obj == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.model.User");
                }
                this.user = (User) obj;
                this.newSelectedFrame = null;
                refreshUserAvatar$default(this, null, false, 2, null);
                updateHeader();
            }
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 != -1 || intent == null) {
            return;
        }
        int intExtra = intent.getIntExtra("cid", 0);
        User user = (User) JacksonUtils.readAs(intent.getStringExtra("object"), User.class);
        String stringExtra = intent.getStringExtra("timestamp");
        if (i != this.REQ_CODE_USER_PROFILE || intExtra == 0 || user == null) {
            return;
        }
        AccountService accountService = this.accountService;
        if (accountService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountService");
            throw null;
        }
        accountService.updateProfile(user, stringExtra, intExtra, true);
        this.userProfiles.put(Integer.valueOf(intExtra), user);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        ((AvatarFrameLoader) getService("avatarFrameLoader")).removeCallbackByTag(this);
        _$_clearFindViewByIdCache();
    }

    @Override // com.narvii.monetization.avatarframe.AvatarFrameSettingPickerFragment.OnPickAvatarFrameListener
    public void onPickAvatarFrame(AvatarFrame avatarFrame) {
        this.newSelectedFrame = avatarFrame;
        showAvatarFrame(avatarFrame);
    }

    @Override // com.narvii.monetization.avatarframe.AvatarFrameSettingPickerFragment.OnPickAvatarFrameListener
    public void onCancel() {
        this.newSelectedFrame = null;
        showAvatarFrame(this.newSelectedFrame);
    }

    @Override // com.narvii.monetization.avatarframe.AvatarFrameSettingPickerFragment.OnPickAvatarFrameListener
    public void onStartSubmit() {
        try {
            ProgressDialog progressDialog = this.progressDialog;
            if (progressDialog != null) {
                progressDialog.show();
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("progressDialog");
                throw null;
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.narvii.monetization.avatarframe.AvatarFrameSettingPickerFragment.OnPickAvatarFrameListener
    public void onSubmitFail(AvatarFrame avatarFrame) {
        if (isDestoryed()) {
        }
    }

    @Override // com.narvii.monetization.avatarframe.AvatarFrameSettingPickerFragment.OnPickAvatarFrameListener
    public void onSubmitSuccess(AvatarFrame avatarFrame) {
        if (isDestoryed()) {
        }
    }

    private final void showAvatarFrame(AvatarFrame avatarFrame) {
        if (avatarFrame == null) {
            refreshUserAvatar$default(this, null, false, 2, null);
        } else if (DefaultAvatarFrame.isDefaultAvatarFrame(avatarFrame)) {
            refreshUserAvatar(null, true);
        } else {
            loadAvatarFrame(avatarFrame);
        }
    }

    private final void loadAvatarFrame(AvatarFrame avatarFrame) {
        AvatarFrameLoader avatarFrameLoader = (AvatarFrameLoader) getService("avatarFrameLoader");
        View view = getView();
        final SpinningView spinningView = view != null ? (SpinningView) view.findViewById(R.id.avatar_frame_loading) : null;
        View view2 = getView();
        final View viewFindViewById = view2 != null ? view2.findViewById(R.id.avatar_frame_error) : null;
        this.curLoadingFrame = avatarFrame;
        refreshUserAvatar$default(this, null, false, 2, null);
        if (spinningView != null) {
            spinningView.setVisibility(0);
        }
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(8);
        }
        String str = avatarFrame.frameId;
        Intrinsics.checkExpressionValueIsNotNull(str, "avatarFrame.frameId");
        avatarFrameLoader.load(avatarFrame, str, this, new AvatarFrameLoader.AvatarFrameLoaderCallback() { // from class: com.narvii.master.home.profile.ProfileListFragment.loadAvatarFrame.1
            @Override // com.narvii.monetization.avatarframe.loader.AvatarFrameLoader.AvatarFrameLoaderCallback
            public void onProgressUpdate(int i, int i2, String tag) {
                Intrinsics.checkParameterIsNotNull(tag, "tag");
            }

            @Override // com.narvii.monetization.avatarframe.loader.AvatarFrameLoader.AvatarFrameLoaderCallback
            public void onPostExecute(AvatarFrameConfig resp, String tag) {
                Intrinsics.checkParameterIsNotNull(resp, "resp");
                Intrinsics.checkParameterIsNotNull(tag, "tag");
                AvatarFrame avatarFrame2 = ProfileListFragment.this.curLoadingFrame;
                if (TextUtils.equals(avatarFrame2 != null ? avatarFrame2.getFrameId() : null, resp.id)) {
                    SpinningView spinningView2 = spinningView;
                    if (spinningView2 != null) {
                        spinningView2.setVisibility(8);
                    }
                    ProfileListFragment.refreshUserAvatar$default(ProfileListFragment.this, resp, false, 2, null);
                }
            }

            @Override // com.narvii.monetization.avatarframe.loader.AvatarFrameLoader.AvatarFrameLoaderCallback
            public void onError(String url, String tag, Exception exc) {
                Intrinsics.checkParameterIsNotNull(url, "url");
                Intrinsics.checkParameterIsNotNull(tag, "tag");
                AvatarFrame avatarFrame2 = ProfileListFragment.this.curLoadingFrame;
                if (TextUtils.equals(avatarFrame2 != null ? avatarFrame2.getFrameId() : null, tag)) {
                    SpinningView spinningView2 = spinningView;
                    if (spinningView2 != null) {
                        spinningView2.setVisibility(8);
                    }
                    View view3 = viewFindViewById;
                    if (view3 != null) {
                        view3.setVisibility(0);
                    }
                }
            }
        });
    }

    static /* synthetic */ void refreshUserAvatar$default(ProfileListFragment profileListFragment, AvatarFrameConfig avatarFrameConfig, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        profileListFragment.refreshUserAvatar(avatarFrameConfig, z);
    }

    private final void refreshUserAvatar(AvatarFrameConfig avatarFrameConfig, boolean z) {
        MembershipService membershipService = (MembershipService) getService("membership");
        getAvatarLayout().setAvatarFrameConfig(avatarFrameConfig);
        getAvatarLayout().markAvatarFrameHide(z);
        UserAvatarLayout avatarLayout = getAvatarLayout();
        User user = this.user;
        Intrinsics.checkExpressionValueIsNotNull(membershipService, "membershipService");
        avatarLayout.setUser(user, membershipService.isSubscribeMemberShip());
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void postAvatarFrame(final com.narvii.monetization.avatarframe.AvatarFrame r11, final com.narvii.util.Callback<java.lang.Boolean> r12) {
        /*
            r10 = this;
            java.lang.String r0 = "callback"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r12, r0)
            r0 = 1
            r1 = 0
            r2 = 0
            if (r11 == 0) goto L41
            boolean r3 = com.narvii.monetization.avatarframe.DefaultAvatarFrame.isDefaultAvatarFrame(r11)
            if (r3 == 0) goto L1a
            com.narvii.model.User r3 = r10.user
            if (r3 == 0) goto L17
            com.narvii.model.User$AvatarFrameLite r3 = r3.avatarFrame
            goto L18
        L17:
            r3 = r2
        L18:
            if (r3 == 0) goto L41
        L1a:
            com.narvii.model.User r3 = r10.user
            if (r3 == 0) goto L21
            com.narvii.model.User$AvatarFrameLite r3 = r3.avatarFrame
            goto L22
        L21:
            r3 = r2
        L22:
            if (r3 == 0) goto L3f
            com.narvii.monetization.avatarframe.AvatarFrame r3 = r10.newSelectedFrame
            if (r3 == 0) goto L2b
            java.lang.String r3 = r3.frameId
            goto L2c
        L2b:
            r3 = r2
        L2c:
            com.narvii.model.User r4 = r10.user
            if (r4 == 0) goto L37
            com.narvii.model.User$AvatarFrameLite r4 = r4.avatarFrame
            if (r4 == 0) goto L37
            java.lang.String r4 = r4.frameId
            goto L38
        L37:
            r4 = r2
        L38:
            boolean r3 = com.narvii.util.Utils.isEquals(r3, r4)
            if (r3 == 0) goto L3f
            goto L41
        L3f:
            r3 = 0
            goto L42
        L41:
            r3 = 1
        L42:
            if (r3 == 0) goto L4c
            java.lang.Boolean r11 = java.lang.Boolean.valueOf(r1)
            r12.call(r11)
            return
        L4c:
            java.lang.String r3 = "membership"
            java.lang.Object r3 = r10.getService(r3)
            com.narvii.wallet.MembershipService r3 = (com.narvii.wallet.MembershipService) r3
            com.narvii.monetization.avatarframe.AvatarFrameHelper r6 = new com.narvii.monetization.avatarframe.AvatarFrameHelper
            r6.<init>(r10)
            java.lang.String r4 = "membershipService"
            if (r11 == 0) goto L73
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r3, r4)
            boolean r5 = r3.isMembership()
            boolean r5 = r11.isUsable(r5)
            if (r5 != r0) goto L73
            com.narvii.master.home.profile.ProfileListFragment$postAvatarFrame$1 r0 = new com.narvii.master.home.profile.ProfileListFragment$postAvatarFrame$1
            r0.<init>()
            r6.sendChangeAvatarSettingRequest(r11, r1, r0)
            goto Lc0
        L73:
            if (r11 == 0) goto L7a
            com.narvii.model.RestrictionInfo r12 = r11.getRestrictionInfo()
            goto L7b
        L7a:
            r12 = r2
        L7b:
            if (r11 == 0) goto L81
            com.narvii.model.OwnershipInfo r2 = r11.getOwnershipInfo()
        L81:
            if (r12 == 0) goto L99
            if (r2 == 0) goto L99
            boolean r0 = r2.isExpired()
            if (r0 == 0) goto L99
            com.narvii.master.home.profile.ProfileListFragment$postAvatarFrame$dialog$1 r12 = new com.narvii.master.home.profile.ProfileListFragment$postAvatarFrame$dialog$1
            r4 = r12
            r5 = r10
            r7 = r11
            r8 = r10
            r9 = r11
            r4.<init>(r8, r9)
            r12.show()
            goto Lc0
        L99:
            if (r12 == 0) goto Lc0
            int r11 = r12.restrictType
            r12 = 2
            if (r11 != r12) goto Lc0
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r3, r4)
            boolean r11 = r3.isMembership()
            if (r11 != 0) goto Lc0
            boolean r11 = r3.isMembershipBefore()
            if (r11 == 0) goto Lb8
            com.narvii.membership.MembershipExpireDialog r11 = new com.narvii.membership.MembershipExpireDialog
            r11.<init>(r10)
            r11.show()
            goto Lc0
        Lb8:
            com.narvii.membership.MembershipHintDialog r11 = new com.narvii.membership.MembershipHintDialog
            r11.<init>(r10)
            r11.show()
        Lc0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.master.home.profile.ProfileListFragment.postAvatarFrame(com.narvii.monetization.avatarframe.AvatarFrame, com.narvii.util.Callback):void");
    }

    public final void updateViews() {
        PageStatusView pageStatusView = this.statusView;
        if (pageStatusView != null) {
            pageStatusView.setVisibility(this.isRequestSent ? 4 : 0);
        }
        getContentLayout().setVisibility(this.isRequestSent ? 0 : 4);
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        Fragment fragmentFindFragmentByTag = fragmentManager.findFragmentByTag(AvatarFrameSettingPickerFragment.TAG);
        if (!(fragmentFindFragmentByTag instanceof SwipeableFragment)) {
            return false;
        }
        ((SwipeableFragment) fragmentFindFragmentByTag).dismiss();
        return true;
    }
}
