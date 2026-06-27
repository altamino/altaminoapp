package com.narvii.monetization.avatarframe;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
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
import com.narvii.wallet.MembershipMainRecyclerFragment;
import com.narvii.wallet.MembershipService;
import com.narvii.widget.NVImageView;
import java.util.List;

/* loaded from: classes3.dex */
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
            super.onFinish(apiRequest, (ApiRequest) avatarFrameResponse);
            AvatarFrameMediaGalleryActivity.this.innerSetData(avatarFrameResponse.object());
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            super.onFail(apiRequest, i, list, str, apiResponse, th);
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.media.MediaGalleryActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        super.onCreate(bundle);
        this.apiService = (ApiService) getService("api");
        this.configService = (ConfigService) getService("config");
        this.membershipService = (MembershipService) getService("membership");
        this.avatarFrameHelper = new AvatarFrameHelper(this);
        this.accountService = (AccountService) getService("account");
        this.avatarFrameHelper.source = "Profile Photos";
        NVObject nVObject = this.parent;
        this.owner = nVObject instanceof User ? (User) nVObject : null;
        User userProfile = this.accountService.getUserProfile();
        Object[] objArr = 0;
        this.isMe = (userProfile == null || this.owner == null || !TextUtils.equals(userProfile.id(), this.owner.id())) ? false : true;
        this.avatarFramePanel = (RelativeLayout) findViewById(R.id.avatar_frame_bar);
        this.hintView = findViewById(R.id.empty_avatar_frame_container);
        this.hintView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.avatarframe.-$$Lambda$AvatarFrameMediaGalleryActivity$-akoKCeBycCOQjUtm0PrLnCqFN4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onCreate$0$AvatarFrameMediaGalleryActivity(view);
            }
        });
        this.avatarFramePanel.setVisibility(0);
        this.avatarNameView = (StoreItemNameView) findViewById(R.id.avatar_frame_name);
        this.avatarStatusView = (StoreItemStatusView) findViewById(R.id.avatar_frame_status_view);
        this.avatarIcon = (NVImageView) findViewById(R.id.avatar_frame_preview);
        this.rightChevron = (ImageView) findViewById(R.id.right_chevron);
        User user = this.owner;
        if (user == null || (!user.hasAvatarFrame() && !this.owner.isSubscribeMemberShip())) {
            this.avatarFramePanel.setVisibility(8);
            View view = this.hintView;
            if (view != null) {
                view.setVisibility(this.isMe ? 0 : 8);
                return;
            }
            return;
        }
        if (this.isMe) {
            this.rightChevron.setVisibility(0);
            this.avatarStatusView.setVisibility(8);
            this.avatarFramePanel.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.avatarframe.AvatarFrameMediaGalleryActivity.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    LogEvent.clickBuilder(AvatarFrameMediaGalleryActivity.this, ActSemantic.checkDetail).area("ProfileFrameBottomBar").send();
                    AvatarFrameMediaGalleryActivity.this.openProfileEditor();
                }
            });
        } else {
            this.rightChevron.setVisibility(8);
            this.avatarFrameOwnStatusController = new AvatarFrameOwnStatusController(this, this.avatarStatusView, objArr == true ? 1 : 0) { // from class: com.narvii.monetization.avatarframe.AvatarFrameMediaGalleryActivity.3
                @Override // com.narvii.monetization.avatarframe.AvatarFrameOwnStatusController, com.narvii.monetization.StoreItemOwnStatusController
                protected void updateViewStatus() {
                    super.updateViewStatus();
                    IStoreItem iStoreItem = this.iStoreItem;
                    if (iStoreItem instanceof DefaultAvatarFrame) {
                        if (iStoreItem.getRestrictionInfo() != null && this.iStoreItem.getRestrictionInfo().restrictType == 2) {
                            this.storeItemStatusView.setVisibility(0);
                            if (AvatarFrameMediaGalleryActivity.this.membershipService.isMembership()) {
                                User userProfile2 = AvatarFrameMediaGalleryActivity.this.accountService.getUserProfile();
                                if (userProfile2 != null && userProfile2.avatarFrame == null) {
                                    this.storeItemStatusView.updateStatus(6);
                                    return;
                                } else {
                                    this.storeItemStatusView.updateStatus(5);
                                    return;
                                }
                            }
                            this.storeItemStatusView.updateStatus(0);
                            return;
                        }
                        this.storeItemStatusView.setVisibility(8);
                    }
                }

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
                public void onClickUseItem() {
                    LogEvent.clickBuilder(AvatarFrameMediaGalleryActivity.this, ActSemantic.use).area("ProfileFrameBottomBar").send();
                    super.onClickUseItem();
                }

                @Override // com.narvii.monetization.StoreItemOwnStatusController, com.narvii.monetization.StoreItemStatusView.ViewClickListener
                public void onClickMemberShip() {
                    LogEvent.clickBuilder(AvatarFrameMediaGalleryActivity.this, ActSemantic.purchase).area("ProfileFrameBottomBar").send();
                    super.onClickMemberShip();
                }
            };
            this.avatarFrameOwnStatusController.onCreate();
            this.avatarFramePanel.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.monetization.avatarframe.AvatarFrameMediaGalleryActivity.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (AvatarFrameMediaGalleryActivity.this.avatarFrame == null) {
                        return;
                    }
                    LogEvent.clickBuilder(AvatarFrameMediaGalleryActivity.this, ActSemantic.checkDetail).area("ProfileFrameBottomBar").send();
                    if (!(AvatarFrameMediaGalleryActivity.this.avatarFrame instanceof DefaultAvatarFrame)) {
                        AvatarFrameMediaGalleryActivity.this.avatarFrameHelper.jumpToStoreWithCommunityCheck(AvatarFrameMediaGalleryActivity.this.avatarFrame);
                    } else if (((DefaultAvatarFrame) AvatarFrameMediaGalleryActivity.this.avatarFrame).isMembership) {
                        AvatarFrameMediaGalleryActivity.this.getContext().startActivity(FragmentWrapperActivity.intent(MembershipMainRecyclerFragment.class));
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
    }

    public /* synthetic */ void lambda$onCreate$0$AvatarFrameMediaGalleryActivity(View view) {
        openProfileEditor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openProfileEditor() {
        User user = this.owner;
        if (user != null && user.isGlobal) {
            Intent intent = FragmentWrapperActivity.intent(ProfileListFragment.class);
            intent.putExtra(ProfileListFragment.KEY_SHOW_AVATAR_FRAME_PICKER, true);
            startActivity(intent);
            return;
        }
        User userProfile = ((AccountService) getService("account")).getUserProfile();
        Intent intent2 = new Intent(getContext(), (Class<?>) UserProfilePostActivity.class);
        intent2.putExtra("uid", userProfile.uid);
        intent2.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(new UserProfilePost(userProfile)));
        intent2.putExtra("userProfile", JacksonUtils.writeAsString(userProfile));
        intent2.putExtra("bio", false);
        intent2.putExtra("isOpenAvatarFrame", true);
        startActivity(intent2);
    }

    @Override // com.narvii.media.MediaGalleryActivity, com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("avatarFrame", JacksonUtils.writeAsString(this.avatarFrame));
    }

    private void setAvatarFramePanel() {
        User user = this.owner;
        if (user == null) {
            return;
        }
        if (user.hasAvatarFrame()) {
            this.fetchAvatarFrameRequest = ApiRequest.builder().communityId(this.configService.getCommunityId()).path("/avatar-frame/" + this.owner.avatarFrame.getFrameId()).build();
            this.apiService.exec(this.fetchAvatarFrameRequest, this.fetchAvatarFrameListener);
            return;
        }
        innerSetData(getDefaultAvatarFrame());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void innerSetData(AvatarFrame avatarFrame) {
        this.avatarFrame = avatarFrame;
        this.avatarIcon.setImageUrl(avatarFrame.icon);
        this.avatarNameView.setStoreItem(avatarFrame);
        boolean z = avatarFrame instanceof DefaultAvatarFrame;
        boolean z2 = z && !((DefaultAvatarFrame) avatarFrame).isMembership;
        if (z) {
            this.avatarIcon.setStrokeWidth(0.0f);
            this.avatarIcon.setImageUrl("res://ic_default_avatar_frame_new");
        } else {
            this.avatarIcon.setStrokeWidth(Utils.dpToPx(getContext(), 1.0f));
        }
        if (this.isMe || z2) {
            return;
        }
        this.avatarStatusView.setVisibility(0);
        this.avatarFrameOwnStatusController.setStoreItem(avatarFrame);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DefaultAvatarFrame getDefaultAvatarFrame() {
        return new DefaultAvatarFrame(this.owner.isSubscribeMemberShip() && (new CommunityConfigHelper(this).isPremiumFeatureEnabled() || this.configService.getCommunityId() == 0), getContext());
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        ApiRequest apiRequest = this.fetchAvatarFrameRequest;
        if (apiRequest != null) {
            this.apiService.abort(apiRequest, this.fetchAvatarFrameListener);
        }
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.media.MediaGalleryActivity
    /* renamed from: onShareMediaButtonClicked */
    public void lambda$onCreate$0$MediaGalleryActivity() {
        super.lambda$onCreate$0$MediaGalleryActivity();
        LogEvent.clickBuilder(this, ActSemantic.share).area("More").send();
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
}
