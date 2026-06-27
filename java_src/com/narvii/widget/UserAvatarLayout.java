package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.narvii.account.AccountService;
import com.narvii.amino.R;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.chat.video.view.UserSpeakingView;
import com.narvii.config.ConfigService;
import com.narvii.link.ILoadTrackView;
import com.narvii.link.LoadFinishListener;
import com.narvii.model.Media;
import com.narvii.model.User;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.monetization.avatarframe.AvatarFrameConfig;
import com.narvii.monetization.avatarframe.loader.AvatarFrameLoader;
import com.narvii.util.PaletteUtils;
import com.narvii.util.Utils;
import com.narvii.widget.NVImageView;
import java.io.File;

/* loaded from: classes3.dex */
public class UserAvatarLayout extends FrameLayout implements ILoadTrackView {
    public static int SIZE_TYPE_LARGE = 0;
    public static int SIZE_TYPE_MINI = 1;
    private AccountService accountService;
    private NVImageView aminoPlusBadge;
    private boolean applyFullSizeAvatarFrame;
    private ThumbImageView avatar;
    private ThumbImageView avatarFrame;
    private AvatarFrameConfig avatarFrameConfig;
    private AvatarFrameLoader avatarFrameLoader;
    private int avatarFrameSizeThreshold;
    private int avatarShadowOffsetX;
    private int avatarShadowOffsetY;
    private float avatarSizeRatio;
    private float badgeWidthRatio;
    private boolean configGot;
    private ConfigService configService;
    private boolean darkTheme;
    public boolean disableFullAvatarFrame;
    private int envBackgroundColor;
    private boolean hasAvatarFrameAttached;
    private boolean hasOverlappingRendering;
    private boolean hideAvatarFrame;
    private boolean isAvatarFramePreview;
    private boolean isLive;
    private boolean isSubscribeMemberShip;
    private LiveBadgeView liveBadgeView;
    LoadFinishListener loadFinishListener;
    private float membershipStrokeRatio;
    private boolean noBadge;
    private PendingUserInfo pendingUserInfo;
    private boolean showAudioStroke;
    private boolean showLive;
    private boolean showSpeaking;
    private int sizeType;
    private UserSpeakingView speakingView;
    private int strokeColor;
    private float strokeDp;
    private int unsubcribeColor;
    private boolean usedForWiki;
    private User user;
    private static final int LIVE_BADGE_WIDTH = Utils.dpToPxInt(NVApplication.instance(), 51.0f);
    private static final int LIVE_BADGE_HEIGHT = Utils.dpToPxInt(NVApplication.instance(), 18.0f);
    private static final int LIVE_BADGE_BOTTOM = Utils.dpToPxInt(NVApplication.instance(), 0.0f);

    public UserAvatarLayout(Context context) {
        this(context, null);
    }

    public UserAvatarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public UserAvatarLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.darkTheme = false;
        this.isSubscribeMemberShip = false;
        this.membershipStrokeRatio = 2.0f;
        this.unsubcribeColor = -1;
        this.configGot = false;
        this.isLive = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.UserAvatarLayout, i, 0);
        this.sizeType = typedArrayObtainStyledAttributes.getInt(11, SIZE_TYPE_MINI);
        this.strokeDp = typedArrayObtainStyledAttributes.getFloat(3, 2.0f);
        this.membershipStrokeRatio = typedArrayObtainStyledAttributes.getFloat(7, 2.0f);
        this.disableFullAvatarFrame = typedArrayObtainStyledAttributes.getBoolean(5, false);
        this.avatarShadowOffsetX = typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, 0);
        this.avatarShadowOffsetY = typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, 0);
        this.noBadge = typedArrayObtainStyledAttributes.getBoolean(8, false);
        this.avatarSizeRatio = typedArrayObtainStyledAttributes.getFloat(2, 1.0f);
        this.badgeWidthRatio = typedArrayObtainStyledAttributes.getFloat(4, 0.5f);
        this.showLive = typedArrayObtainStyledAttributes.getBoolean(9, false);
        this.showSpeaking = typedArrayObtainStyledAttributes.getBoolean(10, false);
        this.hasOverlappingRendering = typedArrayObtainStyledAttributes.getBoolean(6, true);
        typedArrayObtainStyledAttributes.recycle();
        this.avatarFrameSizeThreshold = getResources().getDimensionPixelSize(com.narvii.amino.mastes.R.dimen.avatar_frame_size_threshold);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        LiveBadgeView liveBadgeView;
        NVImageView nVImageView;
        UserSpeakingView userSpeakingView;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i5 = i3 - i;
        int i6 = (i5 - paddingLeft) - paddingRight;
        int i7 = i4 - i2;
        int i8 = (i7 - paddingTop) - paddingBottom;
        if (this.isLive && (userSpeakingView = this.speakingView) != null && userSpeakingView.getVisibility() != 8) {
            this.speakingView.measure(View.MeasureSpec.makeMeasureSpec(i5, 1073741824), View.MeasureSpec.makeMeasureSpec(i5, 1073741824));
            this.speakingView.layout(0, 0, i5, i7);
        }
        if (this.avatar.getVisibility() != 8) {
            this.avatar.layout(paddingLeft, paddingTop, i5 - paddingRight, i7 - paddingBottom);
        }
        if (!this.isLive && this.avatarFrame.getVisibility() != 8) {
            int i9 = (int) (((i6 * (1.0f - this.avatarSizeRatio)) / 2.0f) + 0.5f);
            int i10 = -i9;
            this.avatarFrame.layout(i10 + paddingLeft, i10 + paddingTop, paddingLeft + i6 + i9, paddingTop + i8 + i9);
        }
        if (!this.isLive && !this.noBadge && (nVImageView = this.aminoPlusBadge) != null && nVImageView.getVisibility() != 8) {
            int i11 = (int) (i6 * this.badgeWidthRatio);
            int i12 = (int) (i11 * 0.56f);
            int i13 = (i5 - i11) / 2;
            int i14 = i7 - paddingBottom;
            this.aminoPlusBadge.layout(i13, i14 - ((i12 * 2) / 3), i5 - i13, i14 + (i12 / 3));
        }
        if (!this.isLive || (liveBadgeView = this.liveBadgeView) == null || liveBadgeView.getVisibility() == 8) {
            return;
        }
        int i15 = (i5 - LIVE_BADGE_WIDTH) / 2;
        LiveBadgeView liveBadgeView2 = this.liveBadgeView;
        int i16 = i7 - paddingBottom;
        int i17 = i16 - LIVE_BADGE_HEIGHT;
        int i18 = LIVE_BADGE_BOTTOM;
        liveBadgeView2.layout(i15, i17 - i18, i5 - i15, i16 - i18);
        double d = i5;
        int i19 = LIVE_BADGE_WIDTH;
        double d2 = i19;
        Double.isNaN(d2);
        this.liveBadgeView.setAlpha(d <= d2 * 1.4d ? i5 < i19 ? 0.0f : ((i5 - i19) * 2.5f) / i19 : 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkIfAllLoadFinished() {
        if (this.loadFinishListener == null || !isAllLoaded()) {
            return;
        }
        this.loadFinishListener.onLoadFinished();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.configService = (ConfigService) Utils.getNVContext(getContext()).getService("config");
        this.accountService = (AccountService) Utils.getNVContext(getContext()).getService("account");
        this.avatarFrameLoader = (AvatarFrameLoader) Utils.getNVContext(getContext()).getService("avatarFrameLoader");
        NVImageView.OnImageChangedListener onImageChangedListener = new NVImageView.OnImageChangedListener() { // from class: com.narvii.widget.UserAvatarLayout.1
            @Override // com.narvii.widget.NVImageView.OnImageChangedListener
            public void onImageChanged(NVImageView nVImageView, int i, Media media) {
                UserAvatarLayout.this.checkIfAllLoadFinished();
            }
        };
        if (this.showSpeaking) {
            this.speakingView = new UserSpeakingView(getContext());
            addView(this.speakingView);
        }
        this.avatar = new ThumbImageView(getContext());
        this.avatar.setOnImageChangedListener(onImageChangedListener);
        this.avatar.setId(com.narvii.amino.mastes.R.id.avatar);
        setAvatarStyle();
        addView(this.avatar);
        this.avatarFrame = new ThumbImageView(getContext());
        this.avatarFrame.setOnImageChangedListener(onImageChangedListener);
        this.avatarFrame.setShowPressedMask(false);
        this.avatarFrame.setId(com.narvii.amino.mastes.R.id.avatar_frame);
        this.avatarFrame.setImageDrawable(null);
        addView(this.avatarFrame);
        if (!this.noBadge) {
            this.aminoPlusBadge = new NVImageView(getContext());
            this.aminoPlusBadge.setId(com.narvii.amino.mastes.R.id.amino_plus_badge);
            this.aminoPlusBadge.setShowPressedMask(false);
            this.aminoPlusBadge.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            this.aminoPlusBadge.setImageDrawable(getResources().getDrawable(com.narvii.amino.mastes.R.drawable.ic_amino_plus_badge_mini));
            addView(this.aminoPlusBadge);
        }
        if (this.showLive) {
            this.liveBadgeView = new LiveBadgeView(getContext());
            addView(this.liveBadgeView);
        }
    }

    private void setAvatarStyle() {
        this.avatar.strokeColor = Color.parseColor("#ffffff");
        this.avatar.strokeWidth = Utils.dpToPx(getContext(), 1.0f);
        ThumbImageView thumbImageView = this.avatar;
        thumbImageView.scalePlaceholder = true;
        thumbImageView.setGroundingColor(getResources().getColor(com.narvii.amino.mastes.R.color.user_avatar_placeholder));
        this.avatar.defaultDrawable = getResources().getDrawable(com.narvii.amino.mastes.R.drawable.user_avatar_placeholder);
        this.avatar.loadingDrawable = getResources().getDrawable(com.narvii.amino.mastes.R.drawable.user_avatar_placeholder);
        this.avatar.cornerRadius = Utils.dpToPxInt(getContext(), 1000.0f);
        ThumbImageView thumbImageView2 = this.avatar;
        thumbImageView2.shadowOffsetX = this.avatarShadowOffsetX;
        thumbImageView2.setShadowOffsetY(this.avatarShadowOffsetY);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.applyFullSizeAvatarFrame = !this.disableFullAvatarFrame && Math.min(i, i2) > this.avatarFrameSizeThreshold;
        if (i <= 0 || i2 <= 0 || this.pendingUserInfo == null) {
            return;
        }
        Utils.post(new Runnable() { // from class: com.narvii.widget.UserAvatarLayout.2
            @Override // java.lang.Runnable
            public void run() {
                if (UserAvatarLayout.this.pendingUserInfo == null) {
                    return;
                }
                if (UserAvatarLayout.this.user == null || TextUtils.equals(UserAvatarLayout.this.pendingUserInfo.uid, UserAvatarLayout.this.user.id())) {
                    UserAvatarLayout userAvatarLayout = UserAvatarLayout.this;
                    userAvatarLayout.setUserInfo(userAvatarLayout.pendingUserInfo.userIcon, UserAvatarLayout.this.pendingUserInfo.isMembership);
                }
                UserAvatarLayout.this.pendingUserInfo = null;
            }
        });
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.avatarFrameLoader.removeCallbackByTag(getContext());
    }

    public ThumbImageView getAvatarView() {
        return this.avatar;
    }

    public void setDarkTheme(boolean z, int i) {
        setDarkTheme(z, i, false);
    }

    public void setDarkTheme(boolean z, int i, boolean z2) {
        this.darkTheme = z;
        this.envBackgroundColor = i;
        if (z2) {
            updateStroke();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setConfigGot(boolean z) {
        this.configGot = z;
        checkIfAllLoadFinished();
    }

    public void setDeaultDrawabele(Drawable drawable) {
        this.avatar.setDefaultDrawable(drawable);
    }

    public void setNoBadge(boolean z) {
        this.noBadge = z;
        updateBadge();
    }

    private void setLive(boolean z) {
        this.isLive = z;
        if (z) {
            setAvatarStroke(0.0f);
            setNoBadge(true);
            ThumbImageView thumbImageView = this.avatarFrame;
            if (thumbImageView != null) {
                thumbImageView.setVisibility(8);
            }
            UserSpeakingView userSpeakingView = this.speakingView;
            if (userSpeakingView != null) {
                userSpeakingView.setVisibility(0);
            }
            LiveBadgeView liveBadgeView = this.liveBadgeView;
            if (liveBadgeView != null) {
                liveBadgeView.setVisibility(0);
                return;
            }
            return;
        }
        ThumbImageView thumbImageView2 = this.avatarFrame;
        if (thumbImageView2 != null) {
            thumbImageView2.setVisibility(0);
        }
        UserSpeakingView userSpeakingView2 = this.speakingView;
        if (userSpeakingView2 != null) {
            userSpeakingView2.setVisibility(8);
        }
        LiveBadgeView liveBadgeView2 = this.liveBadgeView;
        if (liveBadgeView2 != null) {
            liveBadgeView2.setVisibility(8);
        }
        setAvatarStroke(this.user.hasAvatarFrame() ? 0.0f : 2.0f);
        setNoBadge(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUserInfo(String str, boolean z) {
        User user;
        AvatarFrameConfig avatarFrameConfig;
        if (getHeight() == 0 || getWidth() == 0) {
            User user2 = this.user;
            this.pendingUserInfo = new PendingUserInfo(user2 != null ? user2.id() : null, str, z);
            return;
        }
        this.isSubscribeMemberShip = z;
        this.avatar.setImageUrl(str);
        setConfigGot(false);
        if (this.isAvatarFramePreview && (avatarFrameConfig = this.avatarFrameConfig) != null) {
            attachAvatarFrame(avatarFrameConfig);
        } else {
            User user3 = this.user;
            if (user3 != null && user3.hasAvatarFrame()) {
                AvatarFrameLoader avatarFrameLoader = this.avatarFrameLoader;
                User user4 = this.user;
                avatarFrameLoader.load(user4.avatarFrame, user4.uid, getContext(), new AvatarFrameLoader.AvatarFrameLoaderCallback() { // from class: com.narvii.widget.UserAvatarLayout.3
                    @Override // com.narvii.monetization.avatarframe.loader.AvatarFrameLoader.AvatarFrameLoaderCallback
                    public void onProgressUpdate(int i, int i2, String str2) {
                    }

                    @Override // com.narvii.monetization.avatarframe.loader.AvatarFrameLoader.AvatarFrameLoaderCallback
                    public void onError(String str2, String str3, Exception exc) {
                        if (TextUtils.equals(str3, UserAvatarLayout.this.user.uid)) {
                            UserAvatarLayout.this.setConfigGot(true);
                            UserAvatarLayout.this.avatarFrame.setImageDrawable(null);
                            UserAvatarLayout.this.hasAvatarFrameAttached = false;
                            UserAvatarLayout.this.updateBadge();
                            UserAvatarLayout.this.updateStroke();
                        }
                    }

                    @Override // com.narvii.monetization.avatarframe.loader.AvatarFrameLoader.AvatarFrameLoaderCallback
                    public void onPostExecute(AvatarFrameConfig avatarFrameConfig2, String str2) {
                        if (TextUtils.equals(str2, UserAvatarLayout.this.user == null ? null : UserAvatarLayout.this.user.uid)) {
                            UserAvatarLayout.this.avatarFrameConfig = avatarFrameConfig2;
                            UserAvatarLayout userAvatarLayout = UserAvatarLayout.this;
                            userAvatarLayout.attachAvatarFrame(userAvatarLayout.avatarFrameConfig);
                        }
                    }
                });
            } else {
                setConfigGot(true);
                this.avatarFrameConfig = null;
                this.avatarFrame.setImageDrawable(null);
                this.hasAvatarFrameAttached = false;
                updateStroke();
                updateBadge();
            }
        }
        if ((this.showSpeaking || this.showLive) && (user = this.user) != null) {
            setLive(!TextUtils.isEmpty(user.activePublicLiveThreadId));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBadge() {
        NVImageView nVImageView = this.aminoPlusBadge;
        if (nVImageView != null) {
            nVImageView.setVisibility((!this.isSubscribeMemberShip || this.noBadge || this.hasAvatarFrameAttached || this.showAudioStroke) ? 4 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void attachAvatarFrame(AvatarFrameConfig avatarFrameConfig) {
        String absAvatarFramePath = avatarFrameConfig.getAbsAvatarFramePath();
        if (TextUtils.isEmpty(absAvatarFramePath)) {
            this.avatarFrame.setImageDrawable(null);
            this.hasAvatarFrameAttached = false;
            updateBadge();
            updateStroke();
            setConfigGot(true);
            return;
        }
        if (!this.applyFullSizeAvatarFrame || this.hideAvatarFrame) {
            this.avatarFrame.setImageDrawable(null);
        } else {
            this.avatarFrame.setImageUrl(Uri.fromFile(new File(absAvatarFramePath)).toString());
        }
        this.hasAvatarFrameAttached = !this.hideAvatarFrame;
        updateBadge();
        updateStroke();
        setConfigGot(true);
    }

    public void markAvatarFrameHide(boolean z) {
        this.hideAvatarFrame = z;
    }

    public void setGlobalUser(User user) {
        this.user = user;
        setUserInfo((user == null || TextUtils.isEmpty(user.icon())) ? null : user.icon(), user != null && user.isSubscribeMemberShip());
    }

    public void setUsedForWiki(boolean z) {
        this.usedForWiki = z;
    }

    public void setUser(User user) {
        setUser(user, user != null && user.isSubscribeMemberShip());
    }

    public void setUser(User user, boolean z) {
        setUser(user, z, new CommunityConfigHelper(Utils.getNVContext(getContext())).isPremiumFeatureEnabled());
    }

    public void setUser(User user, NVContext nVContext) {
        if (nVContext == null) {
            setUser(user);
        } else {
            setUser(user, user != null && user.isSubscribeMemberShip(), new CommunityConfigHelper(nVContext).isPremiumFeatureEnabled());
        }
    }

    public void setUser(User user, boolean z, boolean z2) {
        this.user = user;
        this.isSubscribeMemberShip = z && (z2 || this.configService.getCommunityId() == 0);
        setUserInfo((user == null || TextUtils.isEmpty(user.icon())) ? null : this.usedForWiki ? user.iconForCatalog() : user.icon(), this.isSubscribeMemberShip);
    }

    public void setAvatarFrameConfig(AvatarFrameConfig avatarFrameConfig) {
        setAvatarFrameConfig(avatarFrameConfig, true);
    }

    public void setAvatarFrameConfig(AvatarFrameConfig avatarFrameConfig, boolean z) {
        this.avatarFrameConfig = avatarFrameConfig;
        this.isAvatarFramePreview = z;
    }

    private void updatePlaceholder() {
        double colorGrayScale = PaletteUtils.getColorGrayScale(this.envBackgroundColor);
        String str = "#CCCCCC";
        if (colorGrayScale < 0.2d && (colorGrayScale != 0.0d || this.darkTheme)) {
            str = "#666666";
        }
        this.avatar.defaultDrawable = new ColorDrawable(Color.parseColor(str));
        this.avatar.errorDrawable = new ColorDrawable(Color.parseColor(str));
        this.avatar.setLoadingDrawable(new ColorDrawable(Color.parseColor(str)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStroke() {
        if (this.hasAvatarFrameAttached && this.applyFullSizeAvatarFrame) {
            this.avatar.setStrokeWidth(0.0f);
            return;
        }
        int i = this.strokeColor;
        if (i != 0) {
            this.avatar.strokeColor = i;
        } else if (this.showAudioStroke) {
            this.avatar.strokeColor = ContextCompat.getColor(getContext(), com.narvii.amino.mastes.R.color.chat_theme_color);
        } else if (this.isSubscribeMemberShip) {
            this.avatar.strokeColor = -18123;
        } else {
            this.avatar.strokeColor = this.unsubcribeColor;
        }
        this.avatar.setStrokeWidth(Utils.dpToPx(getContext(), this.isSubscribeMemberShip ? this.strokeDp : this.strokeDp / this.membershipStrokeRatio));
    }

    public void setMembershipStrokeRatio(float f) {
        this.membershipStrokeRatio = f;
        updateStroke();
    }

    public void setAvatarShadow(int i, int i2) {
        setAvatarShadow(i, i2, true);
    }

    public void setAvatarShadow(int i, int i2, boolean z) {
        ThumbImageView thumbImageView = this.avatar;
        if (thumbImageView.shadowSize != i || thumbImageView.shadowColor != i2) {
            this.avatar.setDirty(true);
        }
        ThumbImageView thumbImageView2 = this.avatar;
        thumbImageView2.shadowSize = i;
        thumbImageView2.shadowColor = i2;
        if (z) {
            thumbImageView2.invalidate();
        }
    }

    public void setAvatarStroke(float f) {
        setAvatarStroke(f, true);
    }

    public void setAvatarStroke(float f, boolean z) {
        this.strokeDp = f;
        if (z) {
            updateStroke();
        }
    }

    public void setAvatarStroke(float f, int i, boolean z) {
        this.strokeColor = i;
        this.strokeDp = f;
        if (z) {
            updateStroke();
        }
    }

    public void setUnsubcribeColor(int i) {
        this.unsubcribeColor = i;
        updateStroke();
    }

    public void showAudioStroke(boolean z) {
        if (this.showAudioStroke != z) {
            this.showAudioStroke = z;
            this.hideAvatarFrame = z;
            AvatarFrameConfig avatarFrameConfig = this.avatarFrameConfig;
            if (avatarFrameConfig != null) {
                attachAvatarFrame(avatarFrameConfig);
                return;
            }
            this.avatarFrame.setImageDrawable(null);
            this.hasAvatarFrameAttached = false;
            updateBadge();
            updateStroke();
        }
    }

    @Override // com.narvii.link.ILoadTrackView
    public void setLoadFinishListener(LoadFinishListener loadFinishListener) {
        this.loadFinishListener = loadFinishListener;
        checkIfAllLoadFinished();
    }

    @Override // com.narvii.link.ILoadTrackView
    public boolean isAllLoaded() {
        ThumbImageView thumbImageView;
        ThumbImageView thumbImageView2 = this.avatar;
        return (thumbImageView2 == null || thumbImageView2.getStatus() == 1 || (thumbImageView = this.avatarFrame) == null || !this.configGot || thumbImageView.getStatus() == 1) ? false : true;
    }

    public void setHasOverlappingRendering(boolean z) {
        this.hasOverlappingRendering = z;
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return this.hasOverlappingRendering;
    }

    private class PendingUserInfo {
        boolean isMembership;
        String uid;
        String userIcon;

        PendingUserInfo(String str, String str2, boolean z) {
            this.uid = str;
            this.userIcon = str2;
            this.isMembership = z;
        }
    }
}
