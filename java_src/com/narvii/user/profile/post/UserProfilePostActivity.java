package com.narvii.user.profile.post;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.gms.common.Scopes;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.feed.BackgroundPostHelper;
import com.narvii.location.GPSCoordinate;
import com.narvii.location.LocationService;
import com.narvii.location.ReadableAddress;
import com.narvii.media.MediaOrganizeFragment;
import com.narvii.membership.MembershipExpireDialog;
import com.narvii.membership.MembershipHintDialog;
import com.narvii.model.Media;
import com.narvii.model.OwnershipInfo;
import com.narvii.model.RestrictionInfo;
import com.narvii.model.Sticker;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.UserResponse;
import com.narvii.model.api.UserTitle;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.monetization.avatarframe.AvatarFrame;
import com.narvii.monetization.avatarframe.AvatarFrameConfig;
import com.narvii.monetization.avatarframe.AvatarFrameHelper;
import com.narvii.monetization.avatarframe.AvatarFrameSettingPickerFragment;
import com.narvii.monetization.avatarframe.DefaultAvatarFrame;
import com.narvii.monetization.avatarframe.loader.AvatarFrameLoader;
import com.narvii.monetization.utils.ExpiredItemHintDialog;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.post.BackgroundPostActivity;
import com.narvii.post.BasePostActivity;
import com.narvii.post.DraftPostActivity;
import com.narvii.post.LocationPickerFragment;
import com.narvii.post.PostHelper;
import com.narvii.post.PostOptionsFragment;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.user.title.UserTitleManageFragment;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.AndroidBug5497Workaround;
import com.narvii.util.Callback;
import com.narvii.util.CollectionUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.MoodHelper;
import com.narvii.util.NVToast;
import com.narvii.util.SoftKeyboard;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.text.IMGUtils;
import com.narvii.wallet.MembershipService;
import com.narvii.widget.EditTextIMG;
import com.narvii.widget.MoodView;
import com.narvii.widget.SpinningView;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.UserAvatarLayout;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class UserProfilePostActivity extends BackgroundPostActivity<UserProfilePost> implements View.OnClickListener, NotificationListener, LocationPickerFragment.LocationListener, AvatarFrameSettingPickerFragment.OnPickAvatarFrameListener {
    static final int ADVANCED_OPTIONS = 20;
    static final int INSERT_IMG = 28;
    static final int MAX_MEDIA = 50;
    public static final int REQUEST_MANAGE_TITLE = 111;
    static final int SORT_PHOTO_REQUEST = 3;
    private AvatarFrame curLoadingFrame;
    EditTextIMG editContent;
    private AvatarFrameSettingPickerFragment framePickerFragment;
    LocationPickerFragment locationPickerFragment;
    private AvatarFrame newSelectedFrame;
    View rootView;
    User user;

    @Override // com.narvii.post.DraftPostActivity
    public String draftType() {
        return Scopes.PROFILE;
    }

    @Override // com.narvii.post.BasePostActivity
    public boolean isEdit() {
        return true;
    }

    @Override // com.narvii.monetization.avatarframe.AvatarFrameSettingPickerFragment.OnPickAvatarFrameListener
    public /* synthetic */ void onCancel() {
        AvatarFrameSettingPickerFragment.OnPickAvatarFrameListener.CC.$default$onCancel(this);
    }

    @Override // com.narvii.monetization.avatarframe.AvatarFrameSettingPickerFragment.OnPickAvatarFrameListener
    public /* synthetic */ void onStartSubmit() {
        AvatarFrameSettingPickerFragment.OnPickAvatarFrameListener.CC.$default$onStartSubmit(this);
    }

    @Override // com.narvii.monetization.avatarframe.AvatarFrameSettingPickerFragment.OnPickAvatarFrameListener
    public /* synthetic */ void onSubmitFail(AvatarFrame avatarFrame) {
        AvatarFrameSettingPickerFragment.OnPickAvatarFrameListener.CC.$default$onSubmitFail(this, avatarFrame);
    }

    @Override // com.narvii.monetization.avatarframe.AvatarFrameSettingPickerFragment.OnPickAvatarFrameListener
    public /* synthetic */ void onSubmitSuccess(AvatarFrame avatarFrame) {
        AvatarFrameSettingPickerFragment.OnPickAvatarFrameListener.CC.$default$onSubmitSuccess(this, avatarFrame);
    }

    @Override // com.narvii.post.BasePostActivity
    protected boolean supportPreview() {
        return true;
    }

    @Override // com.narvii.post.DraftPostActivity
    public ObjectNode buildDraftParams() {
        String stringParam = getStringParam("uid");
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("uid", stringParam);
        return objectNodeCreateObjectNode;
    }

    @Override // com.narvii.post.BasePostActivity
    public Class<UserProfilePost> postClazz() {
        return UserProfilePost.class;
    }

    public String uid() {
        return JacksonUtils.nodeString(this.params, "uid");
    }

    @Override // com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.post_user_profile_layout);
        AndroidBug5497Workaround.assistActivity(this);
        this.user = (User) JacksonUtils.readAs(getStringParam("userProfile"), User.class);
        if (this.user == null) {
            this.user = ((AccountService) getService("account")).getUserProfile();
        }
        this.newSelectedFrame = null;
        this.locationPickerFragment = (LocationPickerFragment) getSupportFragmentManager().findFragmentByTag("locationPicker");
        if (this.locationPickerFragment == null) {
            this.locationPickerFragment = new LocationPickerFragment();
            getSupportFragmentManager().beginTransaction().add(this.locationPickerFragment, "locationPicker").commit();
        }
        this.locationPickerFragment.listener = this;
        this.rootView = findViewById(R.id.root);
        this.editContent = (EditTextIMG) findViewById(R.id.content);
        if (getBooleanParam("bio")) {
            this.editContent.requestFocus();
            Utils.postDelayed(new Runnable() { // from class: com.narvii.user.profile.post.UserProfilePostActivity.1
                int rc;

                @Override // java.lang.Runnable
                public void run() {
                    if (UserProfilePostActivity.this.editContent.isShown()) {
                        SoftKeyboard.showSoftKeyboard(UserProfilePostActivity.this.editContent);
                        return;
                    }
                    int i = this.rc;
                    this.rc = i + 1;
                    if (i < 3) {
                        Utils.postDelayed(this, 200L);
                    }
                }
            }, 200L);
        } else {
            findViewById(R.id.nickname).requestFocus();
        }
        this.editContent.imgMode = new ImgCallback();
        this.editContent.addTextChangedListener(new BasePostActivity.HideHintWatcher(findViewById(R.id.post_embed_image_hint)));
        if (getBooleanParam("isOpenAvatarFrame")) {
            Utils.postDelayed(new Runnable() { // from class: com.narvii.user.profile.post.UserProfilePostActivity.2
                @Override // java.lang.Runnable
                public void run() {
                    UserProfilePostActivity.this.showAvatarFrameSettingFragment();
                }
            }, 200L);
        }
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (((AccountService) getService("account")).hasAccount()) {
            return;
        }
        this.discardDraft = true;
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.DraftPostActivity
    public void onPostLoaded(UserProfilePost userProfilePost) {
        super.onPostLoaded((UserProfilePostActivity) userProfilePost);
        if (TextUtils.isEmpty(uid())) {
            this.discardDraft = true;
            finish();
        }
        if (this.framePickerFragment != null) {
            String str = null;
            AvatarFrame avatarFrame = this.newSelectedFrame;
            if (avatarFrame != null) {
                str = avatarFrame.frameId;
            } else {
                User.AvatarFrameLite avatarFrameLite = this.user.avatarFrame;
                if (avatarFrameLite != null) {
                    str = avatarFrameLite.frameId;
                }
            }
            this.framePickerFragment.setOriginAvatarFrame(AvatarFrame.parseToAvatarFrameLite(userProfilePost.avatarFrame));
            this.framePickerFragment.setCurSelectedFrameId(str);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        savePost();
        switch (view.getId()) {
            case R.id.mood /* 2131298080 */:
                MoodHelper.popupOnlineStatusMenu(this, this.user, new Callback<Integer>() { // from class: com.narvii.user.profile.post.UserProfilePostActivity.3
                    @Override // com.narvii.util.Callback
                    public void call(Integer num) {
                        User user = UserProfilePostActivity.this.user;
                        if (user != null) {
                            user.onlineStatus = num.intValue();
                        }
                        UserProfilePostActivity.this.updateMood();
                    }
                });
                break;
            case R.id.post_add_avatar_frame /* 2131298413 */:
                showAvatarFrameSettingFragment();
                break;
            case R.id.post_add_location /* 2131298415 */:
            case R.id.post_edit_location /* 2131298426 */:
                UserProfilePost userProfilePostSavePost = savePost();
                if (userProfilePostSavePost != null) {
                    this.locationPickerFragment.pickLocation(userProfilePostSavePost.latitude, userProfilePostSavePost.longitude, true);
                    break;
                }
                break;
            case R.id.post_add_photo /* 2131298416 */:
                List<Media> list = savePost().mediaList;
                if (list != null && list.size() >= 50) {
                    NVToast.makeText(this, getString(R.string.post_pick_medias_exceed_limit), 0).show();
                    break;
                } else {
                    this.mediaPickerFragment.pickMedia(this.draftManager.getDir(this.draftId), (Bundle) null, 0, 50 - (list == null ? 0 : list.size()));
                    break;
                }
                break;
            case R.id.post_edit_photo /* 2131298427 */:
                UserProfilePost userProfilePostSavePost2 = savePost();
                Intent intent = FragmentWrapperActivity.intent(MediaOrganizeFragment.class);
                intent.putExtra("mediaList", JacksonUtils.writeAsString(userProfilePostSavePost2.mediaList));
                intent.putExtra("dir", this.draftManager.getDir(this.draftId).getAbsolutePath());
                intent.putExtra("maximum", 50);
                startActivityForResult(intent, 3);
                break;
            case R.id.post_options /* 2131298466 */:
                UserProfilePost userProfilePostSavePost3 = savePost();
                Intent intent2 = FragmentWrapperActivity.intent(PostOptionsFragment.class);
                intent2.putExtra("extensions", JacksonUtils.writeAsString(userProfilePostSavePost3.extensions));
                startActivityForResult(intent2, 20);
                break;
            case R.id.user_avatar_layout /* 2131299344 */:
                if (this.draftId == null) {
                    Log.e("userProfile", "draftId is null when click user avatar layout");
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putBoolean("avatar", true);
                this.mediaPickerFragment.pickMedia(this.draftManager.getDir(this.draftId), bundle, 6, 0);
                break;
            case R.id.user_title_layout /* 2131299392 */:
                T t = this.post;
                if (t != 0) {
                    List<UserTitle> listCustomTitles = ((UserProfilePost) t).customTitles();
                    if (!CollectionUtils.isEmpty(listCustomTitles)) {
                        Intent intent3 = FragmentWrapperActivity.intent(UserTitleManageFragment.class);
                        intent3.putExtra("list", JacksonUtils.safeWriteAsString(listCustomTitles));
                        startActivityForResult(intent3, 111);
                        break;
                    }
                }
                break;
        }
        View viewFindFocus = this.rootView.findFocus();
        if (viewFindFocus != null) {
            viewFindFocus.clearFocus();
        }
    }

    @Override // com.narvii.monetization.avatarframe.AvatarFrameSettingPickerFragment.OnPickAvatarFrameListener
    public void onPickAvatarFrame(AvatarFrame avatarFrame) {
        this.newSelectedFrame = avatarFrame;
        showAvatarFrame(avatarFrame);
    }

    @Override // com.narvii.post.LocationPickerFragment.LocationListener
    public void onLocationResult(GPSCoordinate gPSCoordinate) {
        UserProfilePost userProfilePostSavePost = savePost();
        if (gPSCoordinate == null) {
            userProfilePostSavePost.latitude = 0;
            userProfilePostSavePost.longitude = 0;
            userProfilePostSavePost.address = null;
        } else {
            userProfilePostSavePost.latitude = gPSCoordinate.latitudeE6();
            userProfilePostSavePost.longitude = gPSCoordinate.longitudeE6();
            userProfilePostSavePost.address = null;
        }
        this.post = userProfilePostSavePost;
        updateView(userProfilePostSavePost);
    }

    @Override // com.narvii.post.LocationPickerFragment.LocationListener
    public void onLocatingChanged(boolean z) {
        updateView(savePost());
    }

    @Override // com.narvii.post.BackgroundPostActivity
    protected void onPickOtherMediaResult(List<Media> list, Bundle bundle) {
        boolean z = bundle != null && bundle.getBoolean("avatar");
        if (z && list.size() > 0) {
            ((UserProfilePost) this.post).icon = list.get(0).url;
        } else {
            if (z) {
                return;
            }
            T t = this.post;
            ((UserProfilePost) t).mediaList = list;
            trimMediaList(((UserProfilePost) t).mediaList, 50, R.string.post_pick_medias_exceed_limit);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void doPreview(UserProfilePost userProfilePost) {
        User previewUser = userProfilePost.getPreviewUser(this, (User) JacksonUtils.readAs(getStringParam("userProfile"), User.class), uid());
        if (previewUser.id() == null) {
            AccountService accountService = (AccountService) getService("account");
            if (!accountService.hasAccount()) {
                return;
            } else {
                previewUser.uid = accountService.getUserId();
            }
        }
        Intent intent = UserProfileFragment.intent(this, previewUser);
        intent.putExtra("preview", true);
        intent.putExtra("tab", "bio");
        intent.putExtra("Source", "Preview");
        startActivity(intent);
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        ArrayList listAs;
        super.onActivityResult(i, i2, intent);
        if (i == 3 && i2 == -1 && intent != null && (listAs = JacksonUtils.readListAs(intent.getStringExtra("mediaList"), Media.class)) != null) {
            UserProfilePost userProfilePostSavePost = savePost();
            userProfilePostSavePost.mediaList = listAs;
            this.post = userProfilePostSavePost;
            updateView(userProfilePostSavePost);
        }
        if (i == 20 && i2 == -1 && intent != null) {
            ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode(intent.getStringExtra("extensions"));
            UserProfilePost userProfilePostSavePost2 = savePost();
            userProfilePostSavePost2.extensions = objectNodeCreateObjectNode;
            this.post = userProfilePostSavePost2;
            updateView(userProfilePostSavePost2);
        }
        if (i == 28 && i2 == -1 && intent != null) {
            String stringExtra = intent.getStringExtra("refIdList");
            ArrayList listAs2 = JacksonUtils.readListAs(intent.getStringExtra("mediaList"), Media.class);
            if (!TextUtils.isEmpty(stringExtra) && listAs2 != null) {
                UserProfilePost userProfilePostSavePost3 = savePost();
                userProfilePostSavePost3.mediaList = listAs2;
                this.post = userProfilePostSavePost3;
                updateView(userProfilePostSavePost3);
                IMGUtils.insertEditText(this.editContent, stringExtra);
            }
        }
        if (i == 111 && i2 == -1 && intent != null) {
            UserProfilePost userProfilePostSavePost4 = savePost();
            if (userProfilePostSavePost4.extensions == null) {
                userProfilePostSavePost4.extensions = JacksonUtils.createObjectNode();
            }
            userProfilePostSavePost4.extensions.put("customTitles", (ArrayNode) JacksonUtils.DEFAULT_MAPPER.valueToTree(JacksonUtils.readListAs(intent.getStringExtra("list"), UserTitle.class)));
            this.post = userProfilePostSavePost4;
            updateView(userProfilePostSavePost4);
        }
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        ((AvatarFrameLoader) getService("avatarFrameLoader")).removeCallbackByTag(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMood() {
        MoodView moodView = (MoodView) this.rootView.findViewById(R.id.mood);
        Sticker mood = MoodHelper.getMood(this.user, this);
        moodView.setAnimate(!Sticker.isEmpty(mood));
        moodView.setMoodSticker(this.user, mood);
        moodView.setOnClickListener(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BackgroundPostActivity, com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity
    public void updateView(UserProfilePost userProfilePost) {
        super.updateView((UserProfilePostActivity) userProfilePost);
        View view = this.rootView;
        ((UserAvatarLayout) view.findViewById(R.id.user_avatar_layout)).setOnClickListener(this);
        this.newSelectedFrame = userProfilePost.avatarFrame;
        showAvatarFrame(this.newSelectedFrame, userProfilePost);
        updateMood();
        TextView textView = (TextView) view.findViewById(R.id.nickname);
        if (!Utils.isEquals(userProfilePost.nickname, textView.getText().toString())) {
            textView.setText(userProfilePost.nickname);
        }
        view.findViewById(R.id.post_add_avatar_frame).setOnClickListener(this);
        List<Media> list = userProfilePost.mediaList;
        View viewFindViewById = view.findViewById(R.id.post_add_photo);
        viewFindViewById.setOnClickListener(this);
        viewFindViewById.setVisibility((list == null || list.size() == 0) ? 0 : 8);
        View viewFindViewById2 = view.findViewById(R.id.post_edit_photo);
        viewFindViewById2.setOnClickListener(this);
        viewFindViewById2.setVisibility((list == null || list.size() <= 0) ? 8 : 0);
        TextView textView2 = (TextView) viewFindViewById2.findViewById(R.id.hint);
        Object[] objArr = new Object[1];
        objArr[0] = Integer.valueOf(list == null ? 0 : list.size());
        textView2.setText(getString(R.string.post_gallery_n, objArr));
        ViewGroup viewGroup = (ViewGroup) viewFindViewById2;
        int i = 0;
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt.getId() == R.id.image) {
                ThumbImageView thumbImageView = (ThumbImageView) childAt;
                Media media = null;
                if (list != null && i < list.size()) {
                    media = list.get(i);
                }
                i++;
                thumbImageView.setImageMedia(media);
                thumbImageView.setVisibility(media == null ? 4 : 0);
            }
        }
        TextView textView3 = (TextView) view.findViewById(R.id.content);
        if (!Utils.isEquals(userProfilePost.content, textView3.getText().toString())) {
            textView3.setText(userProfilePost.content);
        }
        if (userProfilePost.latitude == 0) {
            int i3 = userProfilePost.longitude;
        }
        this.locationPickerFragment.isLocating();
        View viewFindViewById3 = view.findViewById(R.id.post_add_location);
        viewFindViewById3.setOnClickListener(this);
        viewFindViewById3.setVisibility(8);
        view.findViewById(R.id.post_locating).setVisibility(8);
        View viewFindViewById4 = view.findViewById(R.id.post_edit_location);
        viewFindViewById4.setOnClickListener(this);
        viewFindViewById4.setVisibility(8);
        view.findViewById(R.id.post_options).setOnClickListener(this);
        List<UserTitle> listCustomTitles = userProfilePost.customTitles();
        findViewById(R.id.user_title_layout).setVisibility(CollectionUtils.isEmpty(listCustomTitles) ? 8 : 0);
        ((TextView) findViewById(R.id.titles_count)).setText(String.valueOf(CollectionUtils.getSize(listCustomTitles)));
        findViewById(R.id.user_title_layout).setOnClickListener(this);
        ((ImageView) findViewById(R.id.manage_title_icon)).setImageResource(CollectionUtils.isEmpty(listCustomTitles) ? R.drawable.ic_user_manage_title : R.drawable.ic_user_manage_title_blue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAvatarFrameSettingFragment() {
        SoftKeyboard.hideSoftKeyboard(getContext());
        this.framePickerFragment = AvatarFrameSettingPickerFragment.show(this, R.id.avatar_picker_container, false);
        if (this.framePickerFragment != null) {
            String str = null;
            AvatarFrame avatarFrame = this.newSelectedFrame;
            if (avatarFrame != null) {
                str = avatarFrame.frameId;
            } else {
                User.AvatarFrameLite avatarFrameLite = this.user.avatarFrame;
                if (avatarFrameLite != null) {
                    str = avatarFrameLite.frameId;
                }
            }
            this.framePickerFragment.setCurSelectedFrameId(str);
            this.framePickerFragment.setOnPickAvatarFrameListener(this);
            this.framePickerFragment.setMarginTopSize(findViewById(R.id.post_add_avatar_frame).getTop());
        }
    }

    private void showAvatarFrame(AvatarFrame avatarFrame) {
        showAvatarFrame(avatarFrame, null);
    }

    private void showAvatarFrame(AvatarFrame avatarFrame, UserProfilePost userProfilePost) {
        if (avatarFrame == null) {
            refreshUserAvatar(null, false, userProfilePost);
        } else if (DefaultAvatarFrame.isDefaultAvatarFrame(avatarFrame)) {
            refreshUserAvatar(null, true, userProfilePost);
        } else {
            loadAvatarFrame(avatarFrame, userProfilePost);
        }
    }

    private void loadAvatarFrame(AvatarFrame avatarFrame, final UserProfilePost userProfilePost) {
        AvatarFrameLoader avatarFrameLoader = (AvatarFrameLoader) getService("avatarFrameLoader");
        final SpinningView spinningView = (SpinningView) this.rootView.findViewById(R.id.avatar_frame_loading);
        final ImageView imageView = (ImageView) this.rootView.findViewById(R.id.avatar_frame_error);
        this.curLoadingFrame = avatarFrame;
        refreshUserAvatar(null, true, userProfilePost);
        spinningView.setVisibility(0);
        imageView.setVisibility(8);
        avatarFrameLoader.load(avatarFrame, avatarFrame.frameId, this, new AvatarFrameLoader.AvatarFrameLoaderCallback() { // from class: com.narvii.user.profile.post.UserProfilePostActivity.4
            @Override // com.narvii.monetization.avatarframe.loader.AvatarFrameLoader.AvatarFrameLoaderCallback
            public void onProgressUpdate(int i, int i2, String str) {
            }

            @Override // com.narvii.monetization.avatarframe.loader.AvatarFrameLoader.AvatarFrameLoaderCallback
            public void onPostExecute(AvatarFrameConfig avatarFrameConfig, String str) {
                if (TextUtils.equals(UserProfilePostActivity.this.curLoadingFrame.getFrameId(), avatarFrameConfig.id)) {
                    spinningView.setVisibility(8);
                    UserProfilePostActivity.this.refreshUserAvatar(avatarFrameConfig, false, userProfilePost);
                }
            }

            @Override // com.narvii.monetization.avatarframe.loader.AvatarFrameLoader.AvatarFrameLoaderCallback
            public void onError(String str, String str2, Exception exc) {
                if (TextUtils.equals(UserProfilePostActivity.this.curLoadingFrame.getFrameId(), str2)) {
                    spinningView.setVisibility(8);
                    imageView.setVisibility(0);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshUserAvatar(AvatarFrameConfig avatarFrameConfig, boolean z, UserProfilePost userProfilePost) {
        int moodColor;
        MembershipService membershipService = (MembershipService) getService("membership");
        CommunityConfigHelper communityConfigHelper = new CommunityConfigHelper(this);
        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) this.rootView.findViewById(R.id.user_avatar_layout);
        userAvatarLayout.setAvatarFrameConfig(avatarFrameConfig);
        User showUser = getShowUser(userProfilePost);
        userAvatarLayout.markAvatarFrameHide(z);
        userAvatarLayout.setUser(showUser, membershipService.isMembership());
        if (avatarFrameConfig == null && !z) {
            updateMood();
            return;
        }
        if (avatarFrameConfig != null) {
            moodColor = avatarFrameConfig.getMoodColor();
        } else {
            moodColor = (showUser.isSubscribeMemberShip() && communityConfigHelper.isPremiumFeatureEnabled()) ? MoodView.borderColorMembership : MoodView.borderColorDefault;
        }
        ((MoodView) this.rootView.findViewById(R.id.mood)).updateMoodColor(moodColor);
    }

    private User getShowUser(UserProfilePost userProfilePost) {
        User user;
        if (userProfilePost == null) {
            userProfilePost = (UserProfilePost) this.post;
        }
        if (userProfilePost == null || (user = this.user) == null) {
            return this.user;
        }
        User user2 = (User) user.m46clone();
        user2.icon = userProfilePost.icon();
        return user2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public UserProfilePost savePost() {
        View view = this.rootView;
        TextView textView = (TextView) view.findViewById(R.id.nickname);
        ((UserProfilePost) this.post).nickname = textView.getText().toString();
        TextView textView2 = (TextView) view.findViewById(R.id.content);
        ((UserProfilePost) this.post).content = textView2.getText().toString();
        T t = this.post;
        if (((UserProfilePost) t).latitude != 0 && ((UserProfilePost) t).longitude != 0 && TextUtils.isEmpty(((UserProfilePost) t).address)) {
            LocationService locationService = (LocationService) getService("location");
            T t2 = this.post;
            ReadableAddress cachedReverseGeocoding = locationService.getCachedReverseGeocoding(GPSCoordinate.create(((UserProfilePost) t2).latitude, ((UserProfilePost) t2).longitude));
            if (cachedReverseGeocoding != null) {
                ((UserProfilePost) this.post).address = cachedReverseGeocoding.getCityLevelAddressText();
            }
        }
        T t3 = this.post;
        ((UserProfilePost) t3).avatarFrame = this.newSelectedFrame;
        return (UserProfilePost) t3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public boolean validateUpload(UserProfilePost userProfilePost) {
        if (!validateEditTextNotEmpty((EditText) this.rootView.findViewById(R.id.nickname), R.string.post_error_no_your_name)) {
            return false;
        }
        if (userProfilePost.icon == null) {
            showAlert(R.string.post_error_no_profile_photo);
            return false;
        }
        if (!validateMediaListMax(userProfilePost.mediaList, 50, R.string.post_error_media_max_n)) {
            return false;
        }
        if (!IMGUtils.filterRefIds(this.editContent.getText(), userProfilePost.mediaList)) {
            return true;
        }
        savePost();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.post.BasePostActivity
    public void doPost(final UserProfilePost userProfilePost) {
        postAvatarFrame(this.newSelectedFrame, new Callback<Boolean>() { // from class: com.narvii.user.profile.post.UserProfilePostActivity.5
            @Override // com.narvii.util.Callback
            public void call(Boolean bool) {
                ApiRequest apiRequestBuild = ApiRequest.builder().post().path("/user-profile/" + UserProfilePostActivity.this.uid()).build();
                BackgroundPostHelper backgroundPostHelper = new BackgroundPostHelper(UserProfilePostActivity.this);
                backgroundPostHelper.setPostListener(UserProfilePostActivity.this);
                backgroundPostHelper.startPost(userProfilePost, apiRequestBuild, UserResponse.class);
            }
        });
    }

    public void postAvatarFrame(final AvatarFrame avatarFrame, final Callback<Boolean> callback) {
        User.AvatarFrameLite avatarFrameLite;
        if (avatarFrame == null || (DefaultAvatarFrame.isDefaultAvatarFrame(avatarFrame) && this.user.avatarFrame == null) || ((avatarFrameLite = this.user.avatarFrame) != null && Utils.isEquals(this.newSelectedFrame.frameId, avatarFrameLite.frameId))) {
            callback.call(false);
            return;
        }
        MembershipService membershipService = (MembershipService) getService("membership");
        final AvatarFrameHelper avatarFrameHelper = new AvatarFrameHelper(this);
        avatarFrameHelper.source = "Profile Frame Picker";
        if (avatarFrame.isUsable(membershipService.isMembership())) {
            avatarFrameHelper.sendChangeAvatarSettingRequest(avatarFrame, false, new Callback<Boolean>() { // from class: com.narvii.user.profile.post.UserProfilePostActivity.6
                @Override // com.narvii.util.Callback
                public void call(Boolean bool) {
                    if (bool.booleanValue()) {
                        callback.call(true);
                    }
                }
            });
            return;
        }
        RestrictionInfo restrictionInfo = avatarFrame.getRestrictionInfo();
        OwnershipInfo ownershipInfo = avatarFrame.getOwnershipInfo();
        if (restrictionInfo != null && ownershipInfo != null && ownershipInfo.isExpired()) {
            new ExpiredItemHintDialog(this, avatarFrame) { // from class: com.narvii.user.profile.post.UserProfilePostActivity.7
                @Override // com.narvii.monetization.utils.ExpiredItemHintDialog
                protected void jumpToStore() {
                    avatarFrameHelper.jumpToStoreWithCommunityCheck(avatarFrame);
                }
            }.show();
            return;
        }
        if (restrictionInfo == null || restrictionInfo.restrictType != 2 || membershipService.isMembership()) {
            return;
        }
        if (membershipService.isMembershipBefore()) {
            new MembershipExpireDialog(this).show();
        } else {
            new MembershipHintDialog(this).show();
        }
    }

    @Override // com.narvii.post.DraftPostActivity, com.narvii.post.BasePostActivity, com.narvii.post.PostListener
    public void onPostFinished(PostHelper postHelper, ApiResponse apiResponse) {
        if (apiResponse instanceof UserResponse) {
            ((AccountService) getService("account")).updateProfile(((UserResponse) apiResponse).object(), apiResponse.timestamp, true);
        }
        super.onPostFinished(postHelper, apiResponse);
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        T t;
        if ("update".equals(notification.action)) {
            Object obj = notification.obj;
            if (!(obj instanceof User) || (t = this.post) == 0) {
                return;
            }
            this.user = (User) obj;
            this.newSelectedFrame = null;
            updateView((UserProfilePost) t);
        }
    }

    private class ImgCallback extends BasePostActivity.BaseImgCallback {
        public ImgCallback() {
            super(UserProfilePostActivity.this.editContent);
        }

        @Override // com.narvii.post.BasePostActivity.BaseImgCallback, android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            menu.add(0, R.string.post_insert_image, 0, R.string.post_insert_image).setIcon(new ActionBarIcon(this.editText.getContext(), R.string.ion_images)).setShowAsAction(2);
            return super.onCreateActionMode(actionMode, menu);
        }

        @Override // com.narvii.post.BasePostActivity.BaseImgCallback, android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            if (menuItem.getItemId() == R.string.post_insert_image) {
                if (IMGUtils.isSelectionInTag(UserProfilePostActivity.this.editContent)) {
                    NVToast.makeText(UserProfilePostActivity.this.getContext(), R.string.post_cannot_insert_image_here, 0).show();
                    return true;
                }
                List<Media> list = UserProfilePostActivity.this.savePost().mediaList;
                Intent intent = FragmentWrapperActivity.intent(MediaOrganizeFragment.class);
                intent.setAction("android.intent.action.PICK");
                intent.putExtra("mediaList", JacksonUtils.writeAsString(list));
                intent.putExtra("dir", ((DraftPostActivity) UserProfilePostActivity.this).draftManager.getDir(((DraftPostActivity) UserProfilePostActivity.this).draftId).getAbsolutePath());
                intent.putExtra("maximum", 50);
                intent.putExtra("existsRefIds", JacksonUtils.writeAsString(IMGUtils.extractRefIds(UserProfilePostActivity.this.editContent.getText().toString())));
                UserProfilePostActivity.this.startActivityForResult(intent, 28);
                return true;
            }
            return super.onActionItemClicked(actionMode, menuItem);
        }
    }
}
