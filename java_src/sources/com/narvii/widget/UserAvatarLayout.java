package com.narvii.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
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
import java.io.File;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
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

    private class PendingUserInfo {
        boolean isMembership;
        String uid;
        String userIcon;

        PendingUserInfo(String str, String str2, boolean z6) {
            this.uid = str;
            this.userIcon = str2;
            this.isMembership = z6;
        }
    }

    public UserAvatarLayout(@NonNull Context context) {
        this(context, null);
    }

    public ThumbImageView getAvatarView() {
        return this.avatar;
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return this.hasOverlappingRendering;
    }

    public void markAvatarFrameHide(boolean z6) {
        this.hideAvatarFrame = z6;
    }

    public void setAvatarFrameConfig(AvatarFrameConfig avatarFrameConfig, boolean z6) {
        this.avatarFrameConfig = avatarFrameConfig;
        this.isAvatarFramePreview = z6;
    }

    public void setAvatarShadow(int i10, @ColorInt int i11) {
        setAvatarShadow(i10, i11, true);
    }

    public void setAvatarStroke(float f) {
        setAvatarStroke(f, true);
    }

    public void setDarkTheme(boolean z6, int i10) {
        setDarkTheme(z6, i10, false);
    }

    public void setHasOverlappingRendering(boolean z6) {
        this.hasOverlappingRendering = z6;
    }

    public void setUsedForWiki(boolean z6) {
        this.usedForWiki = z6;
    }

    public void setUser(User user) {
        setUser(user, user != null && user.isSubscribeMemberShip());
    }

    public UserAvatarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkIfAllLoadFinished() {
        if (this.loadFinishListener == null || !isAllLoaded()) {
            return;
        }
        this.loadFinishListener.onLoadFinished();
    }

    private void setAvatarStyle() {
        this.avatar.strokeColor = Color.parseColor("#ffffff");
        this.avatar.strokeWidth = Utils.dpToPx(getContext(), 1.0f);
        ThumbImageView thumbImageView = this.avatar;
        thumbImageView.scalePlaceholder = true;
        thumbImageView.setGroundingColor(getResources().getColor(R.color.user_avatar_placeholder));
        this.avatar.defaultDrawable = getResources().getDrawable(R.drawable.user_avatar_placeholder);
        this.avatar.loadingDrawable = getResources().getDrawable(R.drawable.user_avatar_placeholder);
        this.avatar.cornerRadius = Utils.dpToPxInt(getContext(), 1000.0f);
        ThumbImageView thumbImageView2 = this.avatar;
        thumbImageView2.shadowOffsetX = this.avatarShadowOffsetX;
        thumbImageView2.setShadowOffsetY(this.avatarShadowOffsetY);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setConfigGot(boolean z6) {
        this.configGot = z6;
        checkIfAllLoadFinished();
    }

    private void setLive(boolean z6) {
        this.isLive = z6;
        if (!z6) {
            ThumbImageView thumbImageView = this.avatarFrame;
            if (thumbImageView != null) {
                thumbImageView.setVisibility(0);
            }
            UserSpeakingView userSpeakingView = this.speakingView;
            if (userSpeakingView != null) {
                userSpeakingView.setVisibility(8);
            }
            LiveBadgeView liveBadgeView = this.liveBadgeView;
            if (liveBadgeView != null) {
                liveBadgeView.setVisibility(8);
            }
            setAvatarStroke(this.user.hasAvatarFrame() ? 0.0f : 2.0f);
            setNoBadge(false);
            return;
        }
        setAvatarStroke(0.0f);
        setNoBadge(true);
        ThumbImageView thumbImageView2 = this.avatarFrame;
        if (thumbImageView2 != null) {
            thumbImageView2.setVisibility(8);
        }
        UserSpeakingView userSpeakingView2 = this.speakingView;
        if (userSpeakingView2 != null) {
            userSpeakingView2.setVisibility(0);
        }
        LiveBadgeView liveBadgeView2 = this.liveBadgeView;
        if (liveBadgeView2 != null) {
            liveBadgeView2.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBadge() {
        NVImageView nVImageView = this.aminoPlusBadge;
        if (nVImageView != null) {
            nVImageView.setVisibility((!this.isSubscribeMemberShip || this.noBadge || this.hasAvatarFrameAttached || this.showAudioStroke) ? 4 : 0);
        }
    }

    private void updatePlaceholder() {
        double colorGrayScale = PaletteUtils.getColorGrayScale(this.envBackgroundColor);
        String str = "#CCCCCC";
        if (colorGrayScale < 0.2d && (colorGrayScale != com.google.firebase.remoteconfig.a.DEFAULT_VALUE_FOR_DOUBLE || this.darkTheme)) {
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
        int i10 = this.strokeColor;
        if (i10 != 0) {
            this.avatar.strokeColor = i10;
        } else if (this.showAudioStroke) {
            this.avatar.strokeColor = ContextCompat.getColor(getContext(), R.color.chat_theme_color);
        } else if (this.isSubscribeMemberShip) {
            this.avatar.strokeColor = -18123;
        } else {
            this.avatar.strokeColor = this.unsubcribeColor;
        }
        this.avatar.setStrokeWidth(Utils.dpToPx(getContext(), this.isSubscribeMemberShip ? this.strokeDp : this.strokeDp / this.membershipStrokeRatio));
    }

    @Override // com.narvii.link.ILoadTrackView
    public boolean isAllLoaded() {
        ThumbImageView thumbImageView;
        ThumbImageView thumbImageView2 = this.avatar;
        return (thumbImageView2 == null || thumbImageView2.getStatus() == 1 || (thumbImageView = this.avatarFrame) == null || !this.configGot || thumbImageView.getStatus() == 1) ? false : true;
    }

    public void setAvatarFrameConfig(AvatarFrameConfig avatarFrameConfig) {
        setAvatarFrameConfig(avatarFrameConfig, true);
    }

    public void setAvatarShadow(int i10, @ColorInt int i11, boolean z6) {
        ThumbImageView thumbImageView = this.avatar;
        if (thumbImageView.shadowSize != i10 || thumbImageView.shadowColor != i11) {
            thumbImageView.setDirty(true);
        }
        ThumbImageView thumbImageView2 = this.avatar;
        thumbImageView2.shadowSize = i10;
        thumbImageView2.shadowColor = i11;
        if (z6) {
            thumbImageView2.invalidate();
        }
    }

    public void setAvatarStroke(float f, boolean z6) {
        this.strokeDp = f;
        if (z6) {
            updateStroke();
        }
    }

    public void setDarkTheme(boolean z6, int i10, boolean z10) {
        this.darkTheme = z6;
        this.envBackgroundColor = i10;
        if (z10) {
            updateStroke();
        }
    }

    public void setDeaultDrawabele(Drawable drawable) {
        this.avatar.setDefaultDrawable(drawable);
    }

    public void setGlobalUser(User user) {
        this.user = user;
        setUserInfo((user == null || TextUtils.isEmpty(user.icon())) ? null : user.icon(), user != null && user.isSubscribeMemberShip());
    }

    @Override // com.narvii.link.ILoadTrackView
    public void setLoadFinishListener(LoadFinishListener loadFinishListener) {
        this.loadFinishListener = loadFinishListener;
        checkIfAllLoadFinished();
    }

    public void setMembershipStrokeRatio(float f) {
        this.membershipStrokeRatio = f;
        updateStroke();
    }

    public void setNoBadge(boolean z6) {
        this.noBadge = z6;
        updateBadge();
    }

    public void setUnsubcribeColor(int i10) {
        this.unsubcribeColor = i10;
        updateStroke();
    }

    public void setUser(User user, boolean z6) {
        setUser(user, z6, new CommunityConfigHelper(Utils.getNVContext(getContext())).isPremiumFeatureEnabled());
    }

    public void showAudioStroke(boolean z6) {
        if (this.showAudioStroke != z6) {
            this.showAudioStroke = z6;
            this.hideAvatarFrame = z6;
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

    public UserAvatarLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.darkTheme = false;
        this.isSubscribeMemberShip = false;
        this.membershipStrokeRatio = 2.0f;
        this.unsubcribeColor = -1;
        this.configGot = false;
        this.isLive = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.narvii.amino.R.styleable.UserAvatarLayout, i10, 0);
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
        this.avatarFrameSizeThreshold = getResources().getDimensionPixelSize(R.dimen.avatar_frame_size_threshold);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void attachAvatarFrame(@NonNull AvatarFrameConfig avatarFrameConfig) {
        String absAvatarFramePath = avatarFrameConfig.getAbsAvatarFramePath();
        if (TextUtils.isEmpty(absAvatarFramePath)) {
            this.avatarFrame.setImageDrawable(null);
            this.hasAvatarFrameAttached = false;
            updateBadge();
            updateStroke();
            setConfigGot(true);
            return;
        }
        if (this.applyFullSizeAvatarFrame && !this.hideAvatarFrame) {
            this.avatarFrame.setImageUrl(Uri.fromFile(new File(absAvatarFramePath)).toString());
        } else {
            this.avatarFrame.setImageDrawable(null);
        }
        this.hasAvatarFrameAttached = !this.hideAvatarFrame;
        updateBadge();
        updateStroke();
        setConfigGot(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUserInfo(String str, boolean z6) {
        User user;
        AvatarFrameConfig avatarFrameConfig;
        String strId = null;
        if (getHeight() != 0 && getWidth() != 0) {
            this.isSubscribeMemberShip = z6;
            this.avatar.setImageUrl(str);
            setConfigGot(false);
            if (this.isAvatarFramePreview && (avatarFrameConfig = this.avatarFrameConfig) != null) {
                attachAvatarFrame(avatarFrameConfig);
            } else {
                User user2 = this.user;
                if (user2 != null && user2.hasAvatarFrame()) {
                    AvatarFrameLoader avatarFrameLoader = this.avatarFrameLoader;
                    User user3 = this.user;
                    avatarFrameLoader.load(user3.avatarFrame, user3.uid, getContext(), new AvatarFrameLoader.AvatarFrameLoaderCallback() { // from class: com.narvii.widget.UserAvatarLayout.3
                        @Override // com.narvii.monetization.avatarframe.loader.AvatarFrameLoader.AvatarFrameLoaderCallback
                        public void onProgressUpdate(int i10, int i11, String str2) {
                        }

                        @Override // com.narvii.monetization.avatarframe.loader.AvatarFrameLoader.AvatarFrameLoaderCallback
                        public void onError(@NotNull String str2, String str3, @org.jetbrains.annotations.Nullable Exception exc) {
                            if (TextUtils.equals(str3, UserAvatarLayout.this.user.uid)) {
                                UserAvatarLayout.this.setConfigGot(true);
                                UserAvatarLayout.this.avatarFrame.setImageDrawable(null);
                                UserAvatarLayout.this.hasAvatarFrameAttached = false;
                                UserAvatarLayout.this.updateBadge();
                                UserAvatarLayout.this.updateStroke();
                            }
                        }

                        @Override // com.narvii.monetization.avatarframe.loader.AvatarFrameLoader.AvatarFrameLoaderCallback
                        public void onPostExecute(@NotNull AvatarFrameConfig avatarFrameConfig2, String str2) {
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
                return;
            }
            return;
        }
        User user4 = this.user;
        if (user4 != null) {
            strId = user4.id();
        }
        this.pendingUserInfo = new PendingUserInfo(strId, str, z6);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.avatarFrameLoader.removeCallbackByTag(getContext());
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.configService = (ConfigService) Utils.getNVContext(getContext()).getService("config");
        this.accountService = (AccountService) Utils.getNVContext(getContext()).getService("account");
        this.avatarFrameLoader = (AvatarFrameLoader) Utils.getNVContext(getContext()).getService("avatarFrameLoader");
        NVImageView.OnImageChangedListener onImageChangedListener = new NVImageView.OnImageChangedListener() { // from class: com.narvii.widget.UserAvatarLayout.1
            @Override // com.narvii.widget.NVImageView.OnImageChangedListener
            public void onImageChanged(NVImageView nVImageView, int i10, Media media) {
                UserAvatarLayout.this.checkIfAllLoadFinished();
            }
        };
        if (this.showSpeaking) {
            UserSpeakingView userSpeakingView = new UserSpeakingView(getContext());
            this.speakingView = userSpeakingView;
            addView(userSpeakingView);
        }
        ThumbImageView thumbImageView = new ThumbImageView(getContext());
        this.avatar = thumbImageView;
        thumbImageView.setOnImageChangedListener(onImageChangedListener);
        this.avatar.setId(R.id.avatar);
        setAvatarStyle();
        addView(this.avatar);
        ThumbImageView thumbImageView2 = new ThumbImageView(getContext());
        this.avatarFrame = thumbImageView2;
        thumbImageView2.setOnImageChangedListener(onImageChangedListener);
        this.avatarFrame.setShowPressedMask(false);
        this.avatarFrame.setId(R.id.avatar_frame);
        this.avatarFrame.setImageDrawable(null);
        addView(this.avatarFrame);
        if (!this.noBadge) {
            NVImageView nVImageView = new NVImageView(getContext());
            this.aminoPlusBadge = nVImageView;
            nVImageView.setId(R.id.amino_plus_badge);
            this.aminoPlusBadge.setShowPressedMask(false);
            this.aminoPlusBadge.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            this.aminoPlusBadge.setImageDrawable(getResources().getDrawable(R.drawable.ic_amino_plus_badge_mini));
            addView(this.aminoPlusBadge);
        }
        if (this.showLive) {
            LiveBadgeView liveBadgeView = new LiveBadgeView(getContext());
            this.liveBadgeView = liveBadgeView;
            addView(liveBadgeView);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        LiveBadgeView liveBadgeView;
        NVImageView nVImageView;
        UserSpeakingView userSpeakingView;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i14 = i12 - i10;
        int i15 = (i14 - paddingLeft) - paddingRight;
        int i16 = i13 - i11;
        int i17 = (i16 - paddingTop) - paddingBottom;
        if (this.isLive && (userSpeakingView = this.speakingView) != null && userSpeakingView.getVisibility() != 8) {
            this.speakingView.measure(View.MeasureSpec.makeMeasureSpec(i14, 1073741824), View.MeasureSpec.makeMeasureSpec(i14, 1073741824));
            this.speakingView.layout(0, 0, i14, i16);
        }
        if (this.avatar.getVisibility() != 8) {
            this.avatar.layout(paddingLeft, paddingTop, i14 - paddingRight, i16 - paddingBottom);
        }
        float f = 1.0f;
        if (!this.isLive && this.avatarFrame.getVisibility() != 8) {
            int i18 = (int) (((i15 * (1.0f - this.avatarSizeRatio)) / 2.0f) + 0.5f);
            int i19 = -i18;
            this.avatarFrame.layout(i19 + paddingLeft, i19 + paddingTop, paddingLeft + i15 + i18, paddingTop + i17 + i18);
        }
        if (!this.isLive && !this.noBadge && (nVImageView = this.aminoPlusBadge) != null && nVImageView.getVisibility() != 8) {
            int i20 = (int) (i15 * this.badgeWidthRatio);
            int i21 = (int) (i20 * 0.56f);
            int i22 = (i14 - i20) / 2;
            int i23 = i16 - paddingBottom;
            this.aminoPlusBadge.layout(i22, i23 - ((i21 * 2) / 3), i14 - i22, i23 + (i21 / 3));
        }
        if (this.isLive && (liveBadgeView = this.liveBadgeView) != null && liveBadgeView.getVisibility() != 8) {
            int i24 = LIVE_BADGE_WIDTH;
            int i25 = (i14 - i24) / 2;
            LiveBadgeView liveBadgeView2 = this.liveBadgeView;
            int i26 = i16 - paddingBottom;
            int i27 = i26 - LIVE_BADGE_HEIGHT;
            int i28 = LIVE_BADGE_BOTTOM;
            liveBadgeView2.layout(i25, i27 - i28, i14 - i25, i26 - i28);
            if (i14 <= ((double) i24) * 1.4d) {
                if (i14 < i24) {
                    f = 0.0f;
                } else {
                    f = ((i14 - i24) * 2.5f) / i24;
                }
            }
            this.liveBadgeView.setAlpha(f);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        boolean z6;
        super.onSizeChanged(i10, i11, i12, i13);
        if (!this.disableFullAvatarFrame && Math.min(i10, i11) > this.avatarFrameSizeThreshold) {
            z6 = true;
        } else {
            z6 = false;
        }
        this.applyFullSizeAvatarFrame = z6;
        if (i10 > 0 && i11 > 0 && this.pendingUserInfo != null) {
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
    }

    public void setAvatarStroke(float f, int i10, boolean z6) {
        this.strokeColor = i10;
        this.strokeDp = f;
        if (z6) {
            updateStroke();
        }
    }

    public void setUser(User user, NVContext nVContext) {
        if (nVContext == null) {
            setUser(user);
        } else {
            setUser(user, user != null && user.isSubscribeMemberShip(), new CommunityConfigHelper(nVContext).isPremiumFeatureEnabled());
        }
    }

    public void setUser(User user, boolean z6, boolean z10) {
        String strIconForCatalog;
        this.user = user;
        this.isSubscribeMemberShip = z6 && (z10 || this.configService.getCommunityId() == 0);
        if (user == null || TextUtils.isEmpty(user.icon())) {
            strIconForCatalog = null;
        } else {
            strIconForCatalog = this.usedForWiki ? user.iconForCatalog() : user.icon();
        }
        setUserInfo(strIconForCatalog, this.isSubscribeMemberShip);
    }
}
