package com.narvii.monetization.avatarframe;

import ai.medialab.medialabads2.maliciousadblockers.RedirectBlockingFragmentActivity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.config.ConfigService;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.master.home.profile.ProfileListFragment;
import com.narvii.media.MediaGalleryActivity;
import com.narvii.model.IStoreItem;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.modulization.Module;
import com.narvii.monetization.StoreItemStatusView;
import com.narvii.monetization.utils.StoreItemNameView;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.user.profile.post.UserProfilePost;
import com.narvii.user.profile.post.UserProfilePostActivity;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.wallet.MembershipService;
import com.narvii.wallet.membership.MembershipActivity;
import com.narvii.widget.NVImageView;
import com.safedk.android.utils.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class AvatarFrameMediaGalleryActivity extends MediaGalleryActivity implements NotificationListener {
    private AccountService accountService;
    private ApiService apiService;
    private AvatarFrame avatarFrame;
    private AvatarFrameHelper avatarFrameHelper;
    private AvatarFrameOwnStatusController avatarFrameOwnStatusController;
    private RelativeLayout avatarFramePanel;
    private NVImageView avatarIcon;
    private StoreItemNameView avatarNameView;
    private StoreItemStatusView avatarStatusView;
    private ConfigService configService;
    private ApiResponseListener<AvatarFrameResponse> fetchAvatarFrameListener = new ApiResponseListener<AvatarFrameResponse>(AvatarFrameResponse.class) { // from class: com.narvii.monetization.avatarframe.AvatarFrameMediaGalleryActivity.1
        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, AvatarFrameResponse avatarFrameResponse) throws Exception {
            super.onFinish(apiRequest, avatarFrameResponse);
            AvatarFrameMediaGalleryActivity.this.innerSetData(avatarFrameResponse.object());
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            super.onFail(apiRequest, i10, list, str, apiResponse, th);
            AvatarFrameMediaGalleryActivity avatarFrameMediaGalleryActivity = AvatarFrameMediaGalleryActivity.this;
            avatarFrameMediaGalleryActivity.innerSetData(avatarFrameMediaGalleryActivity.getDefaultAvatarFrame());
        }
    };
    private ApiRequest fetchAvatarFrameRequest;
    private View hintView;
    private boolean isMe;
    private MembershipService membershipService;
    private User owner;
    private ImageView rightChevron;

    public static void safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(RedirectBlockingFragmentActivity p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.media.MediaGalleryActivity
    protected int getLayoutId() {
        return R.layout.gallery_layout_with_avatar_frame;
    }

    @Override // com.narvii.media.MediaGalleryActivity, com.narvii.app.NVActivity, com.narvii.logging.Page
    public String getPageName() {
        return "UserIconFullView";
    }

    @Override // com.narvii.media.MediaGalleryActivity, com.narvii.app.NVActivity, com.narvii.logging.Page
    public boolean isValidPage() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DefaultAvatarFrame getDefaultAvatarFrame() {
        return new DefaultAvatarFrame(this.owner.isSubscribeMemberShip() && (new CommunityConfigHelper(this).isPremiumFeatureEnabled() || this.configService.getCommunityId() == 0), getContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void innerSetData(AvatarFrame avatarFrame) {
        this.avatarFrame = avatarFrame;
        this.avatarIcon.setImageUrl(avatarFrame.icon);
        this.avatarNameView.setStoreItem(avatarFrame);
        boolean z6 = avatarFrame instanceof DefaultAvatarFrame;
        boolean z10 = z6 && !((DefaultAvatarFrame) avatarFrame).isMembership;
        if (z6) {
            this.avatarIcon.setStrokeWidth(0.0f);
            this.avatarIcon.setImageUrl("res://ic_default_avatar_frame_new");
        } else {
            this.avatarIcon.setStrokeWidth(Utils.dpToPx(getContext(), 1.0f));
        }
        if (this.isMe || z10) {
            return;
        }
        this.avatarStatusView.setVisibility(0);
        this.avatarFrameOwnStatusController.setStoreItem(avatarFrame);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openProfileEditor() {
        User user = this.owner;
        if (user != null && user.isGlobal) {
            Intent intent = FragmentWrapperActivity.intent(ProfileListFragment.class);
            intent.putExtra(ProfileListFragment.KEY_SHOW_AVATAR_FRAME_PICKER, true);
            safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(this, intent);
            return;
        }
        User userProfile = ((AccountService) getService("account")).getUserProfile();
        Intent intent2 = new Intent(getContext(), (Class<?>) UserProfilePostActivity.class);
        intent2.putExtra("uid", userProfile.uid);
        intent2.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(new UserProfilePost(userProfile)));
        intent2.putExtra("userProfile", JacksonUtils.writeAsString(userProfile));
        intent2.putExtra("bio", false);
        intent2.putExtra("isOpenAvatarFrame", true);
        safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(this, intent2);
    }

    private void setAvatarFramePanel() {
        User user = this.owner;
        if (user == null) {
            return;
        }
        if (!user.hasAvatarFrame()) {
            innerSetData(getDefaultAvatarFrame());
            return;
        }
        ApiRequest apiRequestBuild = ApiRequest.builder().communityId(this.configService.getCommunityId()).path("/avatar-frame/" + this.owner.avatarFrame.getFrameId()).build();
        this.fetchAvatarFrameRequest = apiRequestBuild;
        this.apiService.exec(apiRequestBuild, this.fetchAvatarFrameListener);
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        ApiRequest apiRequest = this.fetchAvatarFrameRequest;
        if (apiRequest != null) {
            this.apiService.abort(apiRequest, this.fetchAvatarFrameListener);
        }
        super.onDestroy();
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if ("update".equals(notification.action)) {
            Object obj = notification.obj;
            if (obj instanceof User) {
                this.owner = (User) obj;
                setAvatarFramePanel();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$0(View view) {
        openProfileEditor();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.media.MediaGalleryActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        User user;
        boolean z6;
        super.onCreate(bundle);
        this.apiService = (ApiService) getService("api");
        this.configService = (ConfigService) getService("config");
        this.membershipService = (MembershipService) getService("membership");
        this.avatarFrameHelper = new AvatarFrameHelper(this);
        AccountService accountService = (AccountService) getService("account");
        this.accountService = accountService;
        this.avatarFrameHelper.source = "Profile Photos";
        NVObject nVObject = this.parent;
        if (nVObject instanceof User) {
            user = (User) nVObject;
        } else {
            user = null;
        }
        this.owner = user;
        User userProfile = accountService.getUserProfile();
        int i10 = 0;
        Object[] objArr = 0;
        if (userProfile != null && this.owner != null && TextUtils.equals(userProfile.id(), this.owner.id())) {
            z6 = true;
        } else {
            z6 = false;
        }
        this.isMe = z6;
        this.avatarFramePanel = (RelativeLayout) findViewById(R.id.avatar_frame_bar);
        View viewFindViewById = findViewById(R.id.empty_avatar_frame_container);
        this.hintView = viewFindViewById;
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.avatarframe.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f2490a.lambda$onCreate$0(view);
            }
        });
        this.avatarFramePanel.setVisibility(0);
        this.avatarNameView = (StoreItemNameView) findViewById(R.id.avatar_frame_name);
        this.avatarStatusView = (StoreItemStatusView) findViewById(R.id.avatar_frame_status_view);
        this.avatarIcon = (NVImageView) findViewById(R.id.avatar_frame_preview);
        this.rightChevron = (ImageView) findViewById(R.id.right_chevron);
        User user2 = this.owner;
        if (user2 != null && (user2.hasAvatarFrame() || this.owner.isSubscribeMemberShip())) {
            if (this.isMe) {
                this.rightChevron.setVisibility(0);
                this.avatarStatusView.setVisibility(8);
                this.avatarFramePanel.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.avatarframe.AvatarFrameMediaGalleryActivity.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        LogEvent.clickBuilder(AvatarFrameMediaGalleryActivity.this, ActSemantic.checkDetail).area("ProfileFrameBottomBar").send();
                        AvatarFrameMediaGalleryActivity.this.openProfileEditor();
                    }
                });
            } else {
                this.rightChevron.setVisibility(8);
                AvatarFrameOwnStatusController avatarFrameOwnStatusController = new AvatarFrameOwnStatusController(this, this.avatarStatusView, objArr == true ? 1 : 0) { // from class: com.narvii.monetization.avatarframe.AvatarFrameMediaGalleryActivity.3
                    @Override // com.narvii.monetization.StoreItemOwnStatusController, com.narvii.monetization.StoreItemStatusView.ViewClickListener
                    public void onClickActivateItem() {
                        LogEvent.clickBuilder(AvatarFrameMediaGalleryActivity.this, ActSemantic.activate).area("ProfileFrameBottomBar").send();
                        super.onClickActivateItem();
                    }

                    @Override // com.narvii.monetization.StoreItemOwnStatusController, com.narvii.monetization.StoreItemStatusView.ViewClickListener
                    public void onClickGetItem() {
                        LogEvent.clickBuilder(AvatarFrameMediaGalleryActivity.this, ActSemantic.purchase).area("ProfileFrameBottomBar").send();
                        super.onClickGetItem();
                    }

                    @Override // com.narvii.monetization.StoreItemOwnStatusController, com.narvii.monetization.StoreItemStatusView.ViewClickListener
                    public void onClickMemberShip() {
                        LogEvent.clickBuilder(AvatarFrameMediaGalleryActivity.this, ActSemantic.purchase).area("ProfileFrameBottomBar").send();
                        super.onClickMemberShip();
                    }

                    @Override // com.narvii.monetization.StoreItemOwnStatusController, com.narvii.monetization.StoreItemStatusView.ViewClickListener
                    public void onClickUseItem() {
                        LogEvent.clickBuilder(AvatarFrameMediaGalleryActivity.this, ActSemantic.use).area("ProfileFrameBottomBar").send();
                        super.onClickUseItem();
                    }

                    @Override // com.narvii.monetization.avatarframe.AvatarFrameOwnStatusController, com.narvii.monetization.StoreItemOwnStatusController
                    protected void updateViewStatus() {
                        super.updateViewStatus();
                        IStoreItem iStoreItem = this.iStoreItem;
                        if (iStoreItem instanceof DefaultAvatarFrame) {
                            if (iStoreItem.getRestrictionInfo() != null && this.iStoreItem.getRestrictionInfo().restrictType == 2) {
                                this.storeItemStatusView.setVisibility(0);
                                if (!AvatarFrameMediaGalleryActivity.this.membershipService.isMembership()) {
                                    this.storeItemStatusView.updateStatus(0);
                                    return;
                                }
                                User userProfile2 = AvatarFrameMediaGalleryActivity.this.accountService.getUserProfile();
                                if (userProfile2 != null && userProfile2.avatarFrame == null) {
                                    this.storeItemStatusView.updateStatus(6);
                                    return;
                                } else {
                                    this.storeItemStatusView.updateStatus(5);
                                    return;
                                }
                            }
                            this.storeItemStatusView.setVisibility(8);
                        }
                    }
                };
                this.avatarFrameOwnStatusController = avatarFrameOwnStatusController;
                avatarFrameOwnStatusController.onCreate();
                this.avatarFramePanel.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.avatarframe.AvatarFrameMediaGalleryActivity.4
                    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
                        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
                        if (p1 == null) {
                            return;
                        }
                        p0.startActivity(p1);
                    }

                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (AvatarFrameMediaGalleryActivity.this.avatarFrame == null) {
                            return;
                        }
                        LogEvent.clickBuilder(AvatarFrameMediaGalleryActivity.this, ActSemantic.checkDetail).area("ProfileFrameBottomBar").send();
                        if (!(AvatarFrameMediaGalleryActivity.this.avatarFrame instanceof DefaultAvatarFrame)) {
                            AvatarFrameMediaGalleryActivity.this.avatarFrameHelper.jumpToStoreWithCommunityCheck(AvatarFrameMediaGalleryActivity.this.avatarFrame);
                        } else if (((DefaultAvatarFrame) AvatarFrameMediaGalleryActivity.this.avatarFrame).isMembership) {
                            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(AvatarFrameMediaGalleryActivity.this.getContext(), MembershipActivity.createMembershipIntent());
                        }
                    }
                });
            }
            if (bundle != null) {
                AvatarFrame avatarFrame = (AvatarFrame) JacksonUtils.readAs(bundle.getString("avatarFrame"), AvatarFrame.class);
                if (avatarFrame != null) {
                    innerSetData(avatarFrame);
                    return;
                } else {
                    setAvatarFramePanel();
                    return;
                }
            }
            setAvatarFramePanel();
            return;
        }
        this.avatarFramePanel.setVisibility(8);
        View view = this.hintView;
        if (view != null) {
            if (!this.isMe) {
                i10 = 8;
            }
            view.setVisibility(i10);
        }
    }

    @Override // com.narvii.media.MediaGalleryActivity, com.narvii.app.NVActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("avatarFrame", JacksonUtils.writeAsString(this.avatarFrame));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.media.MediaGalleryActivity
    /* JADX INFO: renamed from: onShareMediaButtonClicked */
    public void lambda$onCreate$0() {
        super.lambda$onCreate$0();
        LogEvent.clickBuilder(this, ActSemantic.share).area("More").send();
    }
}
