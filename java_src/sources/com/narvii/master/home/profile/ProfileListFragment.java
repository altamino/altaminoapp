package com.narvii.master.home.profile;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.IdRes;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.app.theme.view.NVThemeLinearLayout;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.media.MediaPickerFragment;
import com.narvii.membership.MembershipExpireDialog;
import com.narvii.membership.MembershipHintDialog;
import com.narvii.model.Community;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.OwnershipInfo;
import com.narvii.model.RestrictionInfo;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserResponse;
import com.narvii.modulization.Module;
import com.narvii.monetization.avatarframe.AvatarFrame;
import com.narvii.monetization.avatarframe.AvatarFrameConfig;
import com.narvii.monetization.avatarframe.AvatarFrameHelper;
import com.narvii.monetization.avatarframe.AvatarFrameSettingPickerFragment;
import com.narvii.monetization.avatarframe.DefaultAvatarFrame;
import com.narvii.monetization.avatarframe.SwipeableFragment;
import com.narvii.monetization.avatarframe.loader.AvatarFrameLoader;
import com.narvii.monetization.utils.ExpiredItemHintDialog;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.paging.state.PageStatusView;
import com.narvii.post.PostHelper;
import com.narvii.post.PostListener;
import com.narvii.prefs.UserProfilePrivilegeFragment;
import com.narvii.user.profile.post.GlobalBioPostActivity;
import com.narvii.user.profile.post.UserProfilePost;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.RequestResult;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.text.NVText;
import com.narvii.wallet.MembershipService;
import com.narvii.widget.BackgroundPickerView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVScrollView;
import com.narvii.widget.SpinningView;
import com.narvii.widget.UserAvatarLayout;
import com.safedk.android.utils.Logger;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class ProfileListFragment extends NVFragment implements NotificationListener, View.OnClickListener, PostListener, MediaPickerFragment.OnResultListener, AvatarFrameSettingPickerFragment.OnPickAvatarFrameListener, FragmentOnBackListener {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String KEY_SHOW_AVATAR_FRAME_PICKER = "show_picker";
    public AccountService accountService;

    @Nullable
    private AvatarFrame curLoadingFrame;
    public File dir;

    @Nullable
    private AvatarFrameSettingPickerFragment framePickerFragment;
    private boolean isRequestSent;

    @Nullable
    private MediaPickerFragment mediaPickerFragment;

    @Nullable
    private AvatarFrame newSelectedFrame;
    public ProgressDialog progressDialog;

    @Nullable
    private PageStatusView statusView;

    @Nullable
    private User user;
    private final int REQ_CODE_USER_PROFILE = 101;

    @NotNull
    private final HashMap<Integer, User> userProfiles = new HashMap<>();

    @NotNull
    private final w7.m edtNickname$delegate = bind(this, R.id.edit_nickname);

    @NotNull
    private final w7.m btnEditAvatarFrame$delegate = bind(this, R.id.edit_avatar_frame);

    @NotNull
    private final w7.m avatarLayout$delegate = bind(this, R.id.user_avatar_layout);

    @NotNull
    private final w7.m contentLayout$delegate = bind(this, R.id.content_layout);

    @NotNull
    private final w7.m backgroundPickerView$delegate = bind(this, R.id.background_picker);

    @NotNull
    private final w7.m editAminoIdLayout$delegate = bind(this, R.id.layout_edit_id);

    @NotNull
    private final w7.m editUsernameLayout$delegate = bind(this, R.id.layout_edit_username);

    @NotNull
    private final w7.m editBioLayout$delegate = bind(this, R.id.layout_edit_bio);

    @NotNull
    private final w7.m linkedCommunitiesLayout$delegate = bind(this, R.id.layout_linked_communities);

    @NotNull
    private final w7.m commentPermissionLayout$delegate = bind(this, R.id.layout_comment_permission);

    @NotNull
    private final w7.m tvBio$delegate = bind(this, R.id.tvBio);

    @NotNull
    private final w7.m tvAminoId$delegate = bind(this, R.id.tvAminoId);

    @NotNull
    private final w7.m aminoIdRightChevron$delegate = bind(this, R.id.aminoIdRightChevron);

    @NotNull
    private final w7.m scrollView$delegate = bind(this, R.id.scroll_view);

    @NotNull
    private final w7.m communityLogolayout$delegate = bind(this, R.id.community_logo_layout);

    @NotNull
    private final w7.m ivCommunity1$delegate = bind(this, R.id.iv_community_1);

    @NotNull
    private final w7.m ivCommunity2$delegate = bind(this, R.id.iv_community_2);

    @NotNull
    private final w7.m ivCommunity3$delegate = bind(this, R.id.iv_community_3);

    @NotNull
    private final w7.m ivCommunity4$delegate = bind(this, R.id.iv_community_4);

    @NotNull
    private final w7.m ivCommunity5$delegate = bind(this, R.id.iv_community_5);

    @NotNull
    private final w7.m tvCommentPermission$delegate = bind(this, R.id.tv_comment_permission);

    @NotNull
    private final View.OnClickListener retryListener = new View.OnClickListener() { // from class: com.narvii.master.home.profile.f0
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ProfileListFragment.retryListener$lambda$5(this.f2358a, view);
        }
    };

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.narvii.master.home.profile.ProfileListFragment$bind$1, reason: invalid class name */
    static final class AnonymousClass1<T> extends kotlin.jvm.internal.v implements e8.a<T> {
        final /* synthetic */ int $res;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(int i10) {
            super(0);
            this.$res = i10;
        }

        /* JADX WARN: Incorrect return type in method signature: ()TT; */
        @Override // e8.a
        @NotNull
        public final View invoke() {
            View view = ProfileListFragment.this.getView();
            View viewFindViewById = view != null ? view.findViewById(this.$res) : null;
            kotlin.jvm.internal.t.h(viewFindViewById, "null cannot be cast to non-null type T of com.narvii.master.home.profile.ProfileListFragment.bind");
            return viewFindViewById;
        }
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
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

    protected final int getBackgroundMediaPickerFlag() {
        return 14;
    }

    @Nullable
    public final MediaPickerFragment getMediaPickerFragment() {
        return this.mediaPickerFragment;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "profile_edit";
    }

    @NotNull
    public final View.OnClickListener getRetryListener() {
        return this.retryListener;
    }

    @Nullable
    protected final PageStatusView getStatusView() {
        return this.statusView;
    }

    @Nullable
    public final User getUser() {
        return this.user;
    }

    @NotNull
    public final HashMap<Integer, User> getUserProfiles() {
        return this.userProfiles;
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    public final boolean isRequestSent() {
        return this.isRequestSent;
    }

    @Override // com.narvii.monetization.avatarframe.AvatarFrameSettingPickerFragment.OnPickAvatarFrameListener
    public void onCancel() {
        this.newSelectedFrame = null;
        showAvatarFrame(null);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x006d  */
    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        MediaPickerFragment mediaPickerFragment;
        MediaPickerFragment mediaPickerFragment2;
        User.AvatarFrameLite avatarFrameLite;
        String str;
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        if (numValueOf != null && numValueOf.intValue() == R.id.edit_avatar_frame) {
            getScrollView().fullScroll(33);
            LogEvent.clickBuilder(this, ActSemantic.edit).area("EditProfileFrame").send();
            SoftKeyboard.hideSoftKeyboard(getContext());
            FragmentActivity activity = getActivity();
            AvatarFrameSettingPickerFragment avatarFrameSettingPickerFragmentShow = AvatarFrameSettingPickerFragment.show(activity instanceof NVActivity ? (NVActivity) activity : null, R.id.avatar_picker_container, true);
            this.framePickerFragment = avatarFrameSettingPickerFragmentShow;
            if (avatarFrameSettingPickerFragmentShow != null) {
                AvatarFrame avatarFrame = this.newSelectedFrame;
                if (avatarFrame == null) {
                    User user = this.user;
                    if ((user != null ? user.avatarFrame : null) == null || user == null || (avatarFrameLite = user.avatarFrame) == null) {
                        str = null;
                    } else {
                        str = avatarFrameLite.frameId;
                    }
                } else if (avatarFrame != null) {
                    str = avatarFrame.frameId;
                } else {
                    str = null;
                }
                User user2 = this.user;
                avatarFrameSettingPickerFragmentShow.setOriginAvatarFrame(user2 != null ? user2.avatarFrame : null);
                avatarFrameSettingPickerFragmentShow.setCurSelectedFrameId(str);
                avatarFrameSettingPickerFragmentShow.setOnPickAvatarFrameListener(this);
                avatarFrameSettingPickerFragmentShow.setMarginTopSize(Utils.dpToPxInt(getContext(), 150.0f));
                return;
            }
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == R.id.user_avatar_layout) {
            getScrollView().fullScroll(33);
            LogEvent.clickBuilder(this, ActSemantic.edit).area("EditUserIcon").send();
            new Bundle().putBoolean("avatar", true);
            File file = new File(getDir(), "0");
            if (!file.exists()) {
                file.mkdir();
            }
            if (this.user == null || (mediaPickerFragment2 = this.mediaPickerFragment) == null) {
                return;
            }
            GlobalProfileMediaHelper globalProfileMediaHelper = new GlobalProfileMediaHelper(this, file, mediaPickerFragment2);
            User user3 = this.user;
            kotlin.jvm.internal.t.g(user3);
            globalProfileMediaHelper.pickIcon(user3);
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == R.id.layout_edit_id) {
            String aminoId = getAccountService().getAminoId();
            if (getAccountService().isAminoIdEditable()) {
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, FragmentWrapperActivity.intent(EditAminoIdFragment.class));
                return;
            } else {
                Utils.copyToClipboard(getContext(), aminoId, R.string.amino_id_copied);
                return;
            }
        }
        if (numValueOf != null && numValueOf.intValue() == R.id.layout_edit_bio) {
            User user4 = this.user;
            if (user4 != null) {
                Intent intent = new Intent(getContext(), (Class<?>) GlobalBioPostActivity.class);
                intent.putExtra("uid", user4.uid);
                intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(new UserProfilePost(user4)));
                intent.putExtra("userProfile", JacksonUtils.writeAsString(user4));
                intent.putExtra("bio", true);
                intent.putExtra("supportImage", false);
                intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Edit Bio");
                intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_SOURCE, "UserProfileView");
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
                return;
            }
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == R.id.layout_linked_communities) {
            Intent intent2 = FragmentWrapperActivity.intent(LinkCommunityFragment.class);
            intent2.putExtra(GlobalProfileFragment.KEY_USER, JacksonUtils.writeAsString(this.user));
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent2);
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == R.id.layout_comment_permission) {
            Intent intent3 = FragmentWrapperActivity.intent(UserProfilePrivilegeFragment.class);
            intent3.putExtra("title", getContext().getString(R.string.comment_permission));
            intent3.putExtra("subTitle", getResources().getString(R.string.allow_commenting_on_my_profile));
            intent3.putExtra("privilegeKey", User.COMMENT);
            intent3.putExtra("isDarkTheme", true);
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent3);
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == R.id.layout_edit_username) {
            User user5 = this.user;
            if (user5 != null) {
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, EditUsernameFragment.Companion.intent(user5));
                return;
            }
            return;
        }
        if (numValueOf != null && numValueOf.intValue() == R.id.background_picker) {
            File file2 = new File(getDir(), "0");
            if (!file2.exists()) {
                file2.mkdir();
            }
            if (this.user == null || (mediaPickerFragment = this.mediaPickerFragment) == null) {
                return;
            }
            GlobalProfileMediaHelper globalProfileMediaHelper2 = new GlobalProfileMediaHelper(this, file2, mediaPickerFragment);
            User user6 = this.user;
            kotlin.jvm.internal.t.g(user6);
            globalProfileMediaHelper2.pickBackground(user6);
        }
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(@Nullable Notification notification) {
        if (((notification != null ? notification.obj : null) instanceof User) && "update".equals(notification.action)) {
            AccountService accountService = getAccountService();
            if (Utils.isEqualsNotNull(accountService != null ? accountService.getUserId() : null, notification.uid)) {
                Object obj = notification.obj;
                kotlin.jvm.internal.t.h(obj, "null cannot be cast to non-null type com.narvii.model.User");
                this.user = (User) obj;
                this.newSelectedFrame = null;
                refreshUserAvatar$default(this, null, false, 2, null);
                updateHeader();
            }
        }
    }

    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(@Nullable List<Media> list, @Nullable Bundle bundle) {
    }

    @Override // com.narvii.post.PostListener
    public void onPostProgress(@Nullable PostHelper postHelper, int i10, int i11) {
    }

    public final void setAccountService(@NotNull AccountService accountService) {
        kotlin.jvm.internal.t.j(accountService, "<set-?>");
        this.accountService = accountService;
    }

    public final void setDir(@NotNull File file) {
        kotlin.jvm.internal.t.j(file, "<set-?>");
        this.dir = file;
    }

    public final void setMediaPickerFragment(@Nullable MediaPickerFragment mediaPickerFragment) {
        this.mediaPickerFragment = mediaPickerFragment;
    }

    public final void setProgressDialog(@NotNull ProgressDialog progressDialog) {
        kotlin.jvm.internal.t.j(progressDialog, "<set-?>");
        this.progressDialog = progressDialog;
    }

    public final void setRequestSent(boolean z6) {
        this.isRequestSent = z6;
    }

    protected final void setStatusView(@Nullable PageStatusView pageStatusView) {
        this.statusView = pageStatusView;
    }

    public final void setUser(@Nullable User user) {
        this.user = user;
    }

    private final <T extends View> w7.m<T> bind(ProfileListFragment profileListFragment, @IdRes int i10) {
        return w7.o.b(w7.q.NONE, profileListFragment.new AnonymousClass1(i10));
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
        String frameId = avatarFrame.frameId;
        kotlin.jvm.internal.t.i(frameId, "frameId");
        avatarFrameLoader.load(avatarFrame, frameId, this, new AvatarFrameLoader.AvatarFrameLoaderCallback() { // from class: com.narvii.master.home.profile.ProfileListFragment.loadAvatarFrame.1
            @Override // com.narvii.monetization.avatarframe.loader.AvatarFrameLoader.AvatarFrameLoaderCallback
            public void onProgressUpdate(int i10, int i11, @NotNull String tag) {
                kotlin.jvm.internal.t.j(tag, "tag");
            }

            @Override // com.narvii.monetization.avatarframe.loader.AvatarFrameLoader.AvatarFrameLoaderCallback
            public void onError(@NotNull String url, @NotNull String tag, @Nullable Exception exc) {
                kotlin.jvm.internal.t.j(url, "url");
                kotlin.jvm.internal.t.j(tag, "tag");
                AvatarFrame avatarFrame2 = ProfileListFragment.this.curLoadingFrame;
                if (TextUtils.equals(avatarFrame2 != null ? avatarFrame2.getFrameId() : null, tag)) {
                    SpinningView spinningView2 = spinningView;
                    if (spinningView2 != null) {
                        spinningView2.setVisibility(8);
                    }
                    View view3 = viewFindViewById;
                    if (view3 == null) {
                        return;
                    }
                    view3.setVisibility(0);
                }
            }

            @Override // com.narvii.monetization.avatarframe.loader.AvatarFrameLoader.AvatarFrameLoaderCallback
            public void onPostExecute(@NotNull AvatarFrameConfig resp, @NotNull String tag) {
                kotlin.jvm.internal.t.j(resp, "resp");
                kotlin.jvm.internal.t.j(tag, "tag");
                AvatarFrame avatarFrame2 = ProfileListFragment.this.curLoadingFrame;
                if (TextUtils.equals(avatarFrame2 != null ? avatarFrame2.getFrameId() : null, resp.id)) {
                    SpinningView spinningView2 = spinningView;
                    if (spinningView2 != null) {
                        spinningView2.setVisibility(8);
                    }
                    ProfileListFragment.refreshUserAvatar$default(ProfileListFragment.this, resp, false, 2, null);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void postAvatarFrame$lambda$7(Callback callback, Boolean bool) {
        kotlin.jvm.internal.t.j(callback, "$callback");
        kotlin.jvm.internal.t.g(bool);
        if (bool.booleanValue()) {
            callback.call(Boolean.TRUE);
        }
    }

    private final void refreshUserAvatar(AvatarFrameConfig avatarFrameConfig, boolean z6) {
        MembershipService membershipService = (MembershipService) getService("membership");
        getAvatarLayout().setAvatarFrameConfig(avatarFrameConfig);
        getAvatarLayout().markAvatarFrameHide(z6);
        getAvatarLayout().setUser(this.user, membershipService.isSubscribeMemberShip());
    }

    static /* synthetic */ void refreshUserAvatar$default(ProfileListFragment profileListFragment, AvatarFrameConfig avatarFrameConfig, boolean z6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        profileListFragment.refreshUserAvatar(avatarFrameConfig, z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void retryListener$lambda$5(ProfileListFragment this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.isRequestSent = false;
        sendGlobalProfileRequest$default(this$0, false, 1, null);
    }

    public static /* synthetic */ void sendGlobalProfileRequest$default(ProfileListFragment profileListFragment, boolean z6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = false;
        }
        profileListFragment.sendGlobalProfileRequest(z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sendGlobalProfileRequest$lambda$6(ProfileListFragment this$0, boolean z6, RequestResult requestResult) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        if (requestResult.code != 0) {
            if (z6) {
                return;
            }
            this$0.isRequestSent = false;
            PageStatusView pageStatusView = this$0.statusView;
            if (pageStatusView != null) {
                pageStatusView.setErrorMessage(requestResult.errorMessage);
            }
            PageStatusView pageStatusView2 = this$0.statusView;
            if (pageStatusView2 != null) {
                pageStatusView2.updateStatus(2);
            }
            this$0.updateViews();
            return;
        }
        NVObject nVObject = requestResult.object;
        if (nVObject instanceof User) {
            this$0.user = nVObject instanceof User ? (User) nVObject : null;
            this$0.isRequestSent = true;
        }
        if (z6) {
            return;
        }
        PageStatusView pageStatusView3 = this$0.statusView;
        if (pageStatusView3 != null) {
            pageStatusView3.setErrorMessage(null);
        }
        PageStatusView pageStatusView4 = this$0.statusView;
        if (pageStatusView4 != null) {
            pageStatusView4.updateStatus(0);
        }
        this$0.updateViews();
        this$0.updateHeader();
        if (this$0.getBooleanParam(KEY_SHOW_AVATAR_FRAME_PICKER)) {
            this$0.getBtnEditAvatarFrame().performClick();
        }
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
    public final View getAminoIdRightChevron() {
        return (View) this.aminoIdRightChevron$delegate.getValue();
    }

    @NotNull
    public final UserAvatarLayout getAvatarLayout() {
        return (UserAvatarLayout) this.avatarLayout$delegate.getValue();
    }

    @NotNull
    public final BackgroundPickerView getBackgroundPickerView() {
        return (BackgroundPickerView) this.backgroundPickerView$delegate.getValue();
    }

    @NotNull
    public final View getBtnEditAvatarFrame() {
        return (View) this.btnEditAvatarFrame$delegate.getValue();
    }

    @NotNull
    public final LinearLayout getCommentPermissionLayout() {
        return (LinearLayout) this.commentPermissionLayout$delegate.getValue();
    }

    @NotNull
    public final LinearLayout getCommunityLogolayout() {
        return (LinearLayout) this.communityLogolayout$delegate.getValue();
    }

    @NotNull
    public final NVThemeLinearLayout getContentLayout() {
        return (NVThemeLinearLayout) this.contentLayout$delegate.getValue();
    }

    @NotNull
    public final File getDir() {
        File file = this.dir;
        if (file != null) {
            return file;
        }
        kotlin.jvm.internal.t.B("dir");
        return null;
    }

    @NotNull
    public final LinearLayout getEditAminoIdLayout() {
        return (LinearLayout) this.editAminoIdLayout$delegate.getValue();
    }

    @NotNull
    public final LinearLayout getEditBioLayout() {
        return (LinearLayout) this.editBioLayout$delegate.getValue();
    }

    @NotNull
    public final LinearLayout getEditUsernameLayout() {
        return (LinearLayout) this.editUsernameLayout$delegate.getValue();
    }

    @NotNull
    public final TextView getEdtNickname() {
        return (TextView) this.edtNickname$delegate.getValue();
    }

    @NotNull
    public final NVImageView getIvCommunity1() {
        return (NVImageView) this.ivCommunity1$delegate.getValue();
    }

    @NotNull
    public final NVImageView getIvCommunity2() {
        return (NVImageView) this.ivCommunity2$delegate.getValue();
    }

    @NotNull
    public final NVImageView getIvCommunity3() {
        return (NVImageView) this.ivCommunity3$delegate.getValue();
    }

    @NotNull
    public final NVImageView getIvCommunity4() {
        return (NVImageView) this.ivCommunity4$delegate.getValue();
    }

    @NotNull
    public final NVImageView getIvCommunity5() {
        return (NVImageView) this.ivCommunity5$delegate.getValue();
    }

    @NotNull
    public final LinearLayout getLinkedCommunitiesLayout() {
        return (LinearLayout) this.linkedCommunitiesLayout$delegate.getValue();
    }

    @NotNull
    public final ProgressDialog getProgressDialog() {
        ProgressDialog progressDialog = this.progressDialog;
        if (progressDialog != null) {
            return progressDialog;
        }
        kotlin.jvm.internal.t.B("progressDialog");
        return null;
    }

    @NotNull
    public final NVScrollView getScrollView() {
        return (NVScrollView) this.scrollView$delegate.getValue();
    }

    @NotNull
    public final TextView getTvAminoId() {
        return (TextView) this.tvAminoId$delegate.getValue();
    }

    @NotNull
    public final TextView getTvBio() {
        return (TextView) this.tvBio$delegate.getValue();
    }

    @NotNull
    public final TextView getTvCommentPermission() {
        return (TextView) this.tvCommentPermission$delegate.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_profile_list, viewGroup, false);
    }

    @Override // com.narvii.monetization.avatarframe.AvatarFrameSettingPickerFragment.OnPickAvatarFrameListener
    public void onPickAvatarFrame(@Nullable AvatarFrame avatarFrame) {
        this.newSelectedFrame = avatarFrame;
        showAvatarFrame(avatarFrame);
    }

    @Override // com.narvii.post.PostListener
    public void onPostFinished(@Nullable PostHelper postHelper, @Nullable ApiResponse apiResponse) {
        UserResponse userResponse;
        User user;
        if ((apiResponse instanceof UserResponse) && (user = (userResponse = (UserResponse) apiResponse).user) != null) {
            getAccountService().updateProfile(user, userResponse.timestamp, 0, true, true);
        }
        getProgressDialog().dismiss();
        finish();
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        kotlin.jvm.internal.t.j(view, "view");
        super.onViewCreated(view, bundle);
        PageStatusView pageStatusView = (PageStatusView) view.findViewById(R.id.status_view);
        this.statusView = pageStatusView;
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

    /* JADX WARN: Code duplicated, block: B:11:0x0018  */
    /* JADX WARN: Code duplicated, block: B:13:0x001c  */
    /* JADX WARN: Code duplicated, block: B:14:0x001f  */
    /* JADX WARN: Code duplicated, block: B:16:0x0022  */
    /* JADX WARN: Code duplicated, block: B:18:0x0026  */
    /* JADX WARN: Code duplicated, block: B:19:0x0029  */
    /* JADX WARN: Code duplicated, block: B:24:0x0033  */
    /* JADX WARN: Code duplicated, block: B:34:0x0062  */
    /* JADX WARN: Code duplicated, block: B:35:0x0067  */
    /* JADX WARN: Code duplicated, block: B:37:0x006a  */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0038, code lost:
    
        if (com.narvii.util.Utils.isEquals(r2, r0) != false) goto L53;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void postAvatarFrame(@Nullable final AvatarFrame avatarFrame, @NotNull final Callback<Boolean> callback) {
        User user;
        User.AvatarFrameLite avatarFrameLite;
        RestrictionInfo restrictionInfo;
        AvatarFrame avatarFrame2;
        String str;
        String str2;
        User.AvatarFrameLite avatarFrameLite2;
        kotlin.jvm.internal.t.j(callback, "callback");
        if (avatarFrame != null) {
            if (!DefaultAvatarFrame.isDefaultAvatarFrame(avatarFrame)) {
                user = this.user;
                if (user != null) {
                    avatarFrameLite = user.avatarFrame;
                } else {
                    avatarFrameLite = null;
                }
                if (avatarFrameLite != null) {
                    avatarFrame2 = this.newSelectedFrame;
                    if (avatarFrame2 != null) {
                        str = avatarFrame2.frameId;
                    } else {
                        str = null;
                    }
                    if (user != null || (avatarFrameLite2 = user.avatarFrame) == null) {
                        str2 = null;
                    } else {
                        str2 = avatarFrameLite2.frameId;
                    }
                }
                MembershipService membershipService = (MembershipService) getService("membership");
                final AvatarFrameHelper avatarFrameHelper = new AvatarFrameHelper(this);
                if (avatarFrame == null && avatarFrame.isUsable(membershipService.isMembership())) {
                    avatarFrameHelper.sendChangeAvatarSettingRequest(avatarFrame, false, new Callback() { // from class: com.narvii.master.home.profile.h0
                        @Override // com.narvii.util.Callback
                        public final void call(Object obj) {
                            ProfileListFragment.postAvatarFrame$lambda$7(callback, (Boolean) obj);
                        }
                    });
                    return;
                }
                if (avatarFrame != null) {
                    restrictionInfo = avatarFrame.getRestrictionInfo();
                } else {
                    restrictionInfo = null;
                }
                OwnershipInfo ownershipInfo = avatarFrame != null ? avatarFrame.getOwnershipInfo() : null;
                if (restrictionInfo == null && ownershipInfo != null && ownershipInfo.isExpired()) {
                    new ExpiredItemHintDialog(this, avatarFrame, avatarFrameHelper) { // from class: com.narvii.master.home.profile.ProfileListFragment$postAvatarFrame$dialog$1
                        final /* synthetic */ AvatarFrame $avatarFrame;
                        final /* synthetic */ AvatarFrameHelper $avatarFrameHelper;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(this, avatarFrame);
                            this.$avatarFrame = avatarFrame;
                            this.$avatarFrameHelper = avatarFrameHelper;
                        }

                        @Override // com.narvii.monetization.utils.ExpiredItemHintDialog
                        protected void jumpToStore() {
                            this.$avatarFrameHelper.jumpToStoreWithCommunityCheck(this.$avatarFrame);
                        }
                    }.show();
                    return;
                }
                if (restrictionInfo == null && restrictionInfo.restrictType == 2 && !membershipService.isMembership()) {
                    if (membershipService.isMembershipBefore()) {
                        new MembershipExpireDialog(this).show();
                        return;
                    } else {
                        new MembershipHintDialog(this).show();
                        return;
                    }
                }
                return;
            }
            User user2 = this.user;
            if ((user2 != null ? user2.avatarFrame : null) != null) {
                user = this.user;
                if (user != null) {
                    avatarFrameLite = user.avatarFrame;
                } else {
                    avatarFrameLite = null;
                }
                if (avatarFrameLite != null) {
                    avatarFrame2 = this.newSelectedFrame;
                    if (avatarFrame2 != null) {
                        str = avatarFrame2.frameId;
                    } else {
                        str = null;
                    }
                    if (user != null) {
                        str2 = null;
                    } else {
                        str2 = null;
                    }
                }
                MembershipService membershipService2 = (MembershipService) getService("membership");
                final AvatarFrameHelper avatarFrameHelper2 = new AvatarFrameHelper(this);
                if (avatarFrame == null) {
                }
                if (avatarFrame != null) {
                    restrictionInfo = avatarFrame.getRestrictionInfo();
                } else {
                    restrictionInfo = null;
                }
                if (avatarFrame != null) {
                }
                if (restrictionInfo == null) {
                }
                if (restrictionInfo == null) {
                    return;
                } else {
                    return;
                }
            }
        }
        callback.call(Boolean.FALSE);
    }

    public final void updateViews() {
        PageStatusView pageStatusView = this.statusView;
        if (pageStatusView != null) {
            pageStatusView.setVisibility(this.isRequestSent ? 4 : 0);
        }
        getContentLayout().setVisibility(this.isRequestSent ? 0 : 4);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        File file = new File(getDir(), "0");
        if (!file.exists()) {
            file.mkdir();
        }
        getBackgroundPickerView().setOnClickListener(this);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (i11 == -1 && intent != null) {
            int intExtra = intent.getIntExtra(CmcdConfiguration.KEY_CONTENT_ID, 0);
            User user = (User) JacksonUtils.readAs(intent.getStringExtra("object"), User.class);
            String stringExtra = intent.getStringExtra("timestamp");
            if (i10 == this.REQ_CODE_USER_PROFILE && intExtra != 0 && user != null) {
                getAccountService().updateProfile(user, stringExtra, intExtra, true);
                this.userProfiles.put(Integer.valueOf(intExtra), user);
            }
        }
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(@Nullable NVActivity nVActivity) {
        FragmentManager fragmentManager = getFragmentManager();
        kotlin.jvm.internal.t.g(fragmentManager);
        Fragment fragmentM0 = fragmentManager.m0(AvatarFrameSettingPickerFragment.TAG);
        if (fragmentM0 instanceof SwipeableFragment) {
            ((SwipeableFragment) fragmentM0).dismiss();
            return true;
        }
        return false;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        Fragment fragmentM0;
        MediaPickerFragment mediaPickerFragment;
        FragmentTransaction fragmentTransactionQ;
        super.onCreate(bundle);
        Object service = getService("account");
        kotlin.jvm.internal.t.i(service, "getService(...)");
        setAccountService((AccountService) service);
        setTitle(R.string.my_profile);
        FragmentManager fragmentManager = getFragmentManager();
        File filesDir = null;
        if (fragmentManager != null) {
            fragmentM0 = fragmentManager.m0("mediaPicker");
        } else {
            fragmentM0 = null;
        }
        if (fragmentM0 instanceof MediaPickerFragment) {
            mediaPickerFragment = (MediaPickerFragment) fragmentM0;
        } else {
            mediaPickerFragment = null;
        }
        this.mediaPickerFragment = mediaPickerFragment;
        if (mediaPickerFragment == null) {
            this.mediaPickerFragment = new MediaPickerFragment();
            FragmentManager fragmentManager2 = getFragmentManager();
            if (fragmentManager2 != null && (fragmentTransactionQ = fragmentManager2.q()) != null) {
                MediaPickerFragment mediaPickerFragment2 = this.mediaPickerFragment;
                kotlin.jvm.internal.t.g(mediaPickerFragment2);
                FragmentTransaction fragmentTransactionE = fragmentTransactionQ.e(mediaPickerFragment2, "mediaPicker");
                if (fragmentTransactionE != null) {
                    fragmentTransactionE.j();
                }
            }
        }
        MediaPickerFragment mediaPickerFragment3 = this.mediaPickerFragment;
        if (mediaPickerFragment3 != null) {
            mediaPickerFragment3.addOnResultListener(this);
        }
        Context context = getContext();
        if (context != null) {
            filesDir = context.getFilesDir();
        }
        setDir(new File(filesDir, "profiles"));
        getDir().mkdirs();
        setProgressDialog(new ProgressDialog(getContext()));
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        MediaPickerFragment mediaPickerFragment = this.mediaPickerFragment;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.removeOnResultListener(this);
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        ((AvatarFrameLoader) getService("avatarFrameLoader")).removeCallbackByTag(this);
    }

    @Override // com.narvii.post.PostListener
    public void onPostFail(@Nullable PostHelper postHelper, int i10, @Nullable String str, @Nullable Throwable th) {
        getProgressDialog().dismiss();
        NVToast.makeText(getContext(), str, 1).show();
    }

    @Override // com.narvii.post.PostListener
    public void onPostStart(@Nullable PostHelper postHelper) {
        getProgressDialog().show();
    }

    @Override // com.narvii.monetization.avatarframe.AvatarFrameSettingPickerFragment.OnPickAvatarFrameListener
    public void onStartSubmit() {
        try {
            getProgressDialog().show();
        } catch (Exception unused) {
        }
    }

    @Override // com.narvii.monetization.avatarframe.AvatarFrameSettingPickerFragment.OnPickAvatarFrameListener
    public void onSubmitFail(@Nullable AvatarFrame avatarFrame) {
        isDestoryed();
    }

    @Override // com.narvii.monetization.avatarframe.AvatarFrameSettingPickerFragment.OnPickAvatarFrameListener
    public void onSubmitSuccess(@Nullable AvatarFrame avatarFrame) {
        isDestoryed();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void sendGlobalProfileRequest(final boolean z6) {
        String userId = getAccountService().getUserId();
        if (userId != null && userId.length() != 0) {
            if (!z6) {
                updateViews();
                PageStatusView pageStatusView = this.statusView;
                if (pageStatusView != null) {
                    pageStatusView.updateStatus(1);
                }
            }
            GlobalProfileHelper.sendGlobalProfileRequest$default(new GlobalProfileHelper(this, null, 2, 0 == true ? 1 : 0), getAccountService().getUserId(), new Callback() { // from class: com.narvii.master.home.profile.g0
                @Override // com.narvii.util.Callback
                public final void call(Object obj) {
                    ProfileListFragment.sendGlobalProfileRequest$lambda$6(this.f2360a, z6, (RequestResult) obj);
                }
            }, z6, null, 8, null);
        }
    }

    public final void updateHeader() {
        String str;
        String str2;
        String string;
        int size;
        List<Community> list;
        List<Community> list2;
        List<Community> list3;
        List<Community> list4;
        List<Community> list5;
        List<Community> list6;
        String aminoId = getAccountService().getAminoId();
        boolean zIsAminoIdEditable = getAccountService().isAminoIdEditable();
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
        String privilegeText = null;
        if (user != null) {
            str = user.nickname;
        } else {
            str = null;
        }
        if (str == null) {
            str = "";
        }
        edtNickname.setText(str);
        User user2 = this.user;
        if (user2 != null) {
            str2 = user2.content;
        } else {
            str2 = null;
        }
        TextView tvBio = getTvBio();
        if (str2 != null && str2.length() != 0) {
            string = NVText.removeTitleTags(str2);
        } else {
            string = getString(R.string.post_short_bio_hint);
        }
        tvBio.setText(string);
        getAvatarLayout().setUser(this.user);
        getBackgroundPickerView().setBackgroundPost(this.user);
        User user3 = this.user;
        if (user3 != null && (list6 = user3.linkedCommunityList) != null) {
            size = list6.size();
        } else {
            size = 0;
        }
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
                if (user4 != null) {
                    list5 = user4.linkedCommunityList;
                } else {
                    list5 = null;
                }
                kotlin.jvm.internal.t.g(list5);
                ivCommunity1.setImageUrl(list5.get(0).icon);
            }
            if (size > 1) {
                getIvCommunity2().setVisibility(0);
                NVImageView ivCommunity2 = getIvCommunity2();
                User user5 = this.user;
                if (user5 != null) {
                    list4 = user5.linkedCommunityList;
                } else {
                    list4 = null;
                }
                kotlin.jvm.internal.t.g(list4);
                ivCommunity2.setImageUrl(list4.get(1).icon);
            }
            if (size > 2) {
                getIvCommunity3().setVisibility(0);
                NVImageView ivCommunity3 = getIvCommunity3();
                User user6 = this.user;
                if (user6 != null) {
                    list3 = user6.linkedCommunityList;
                } else {
                    list3 = null;
                }
                kotlin.jvm.internal.t.g(list3);
                ivCommunity3.setImageUrl(list3.get(2).icon);
            }
            if (size > 3) {
                getIvCommunity4().setVisibility(0);
                NVImageView ivCommunity4 = getIvCommunity4();
                User user7 = this.user;
                if (user7 != null) {
                    list2 = user7.linkedCommunityList;
                } else {
                    list2 = null;
                }
                kotlin.jvm.internal.t.g(list2);
                ivCommunity4.setImageUrl(list2.get(3).icon);
            }
            if (size > 4) {
                getIvCommunity5().setVisibility(0);
                NVImageView ivCommunity5 = getIvCommunity5();
                User user8 = this.user;
                if (user8 != null) {
                    list = user8.linkedCommunityList;
                } else {
                    list = null;
                }
                kotlin.jvm.internal.t.g(list);
                ivCommunity5.setImageUrl(list.get(4).icon);
            }
        }
        TextView tvCommentPermission = getTvCommentPermission();
        User user9 = this.user;
        if (user9 != null) {
            privilegeText = user9.getPrivilegeText(getContext(), User.COMMENT);
        }
        tvCommentPermission.setText(privilegeText);
    }
}
