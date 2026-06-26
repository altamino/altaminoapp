.class public Lcom/narvii/widget/UserAvatarLayout;
.super Landroid/widget/FrameLayout;
.source "UserAvatarLayout.java"

# interfaces
.implements Lcom/narvii/link/ILoadTrackView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/UserAvatarLayout$PendingUserInfo;
    }
.end annotation


# static fields
.field private static final LIVE_BADGE_BOTTOM:I

.field private static final LIVE_BADGE_HEIGHT:I

.field private static final LIVE_BADGE_WIDTH:I

.field public static SIZE_TYPE_LARGE:I = 0x0

.field public static SIZE_TYPE_MINI:I = 0x1


# instance fields
.field private accountService:Lcom/narvii/account/AccountService;

.field private aminoPlusBadge:Lcom/narvii/widget/NVImageView;

.field private applyFullSizeAvatarFrame:Z

.field private avatar:Lcom/narvii/widget/ThumbImageView;

.field private avatarFrame:Lcom/narvii/widget/ThumbImageView;

.field private avatarFrameConfig:Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;

.field private avatarFrameLoader:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

.field private avatarFrameSizeThreshold:I

.field private avatarShadowOffsetX:I

.field private avatarShadowOffsetY:I

.field private avatarSizeRatio:F

.field private badgeWidthRatio:F

.field private configGot:Z

.field private configService:Lcom/narvii/config/ConfigService;

.field private darkTheme:Z

.field public disableFullAvatarFrame:Z

.field private envBackgroundColor:I

.field private hasAvatarFrameAttached:Z

.field private hasOverlappingRendering:Z

.field private hideAvatarFrame:Z

.field private isAvatarFramePreview:Z

.field private isLive:Z

.field private isSubscribeMemberShip:Z

.field private liveBadgeView:Lcom/narvii/widget/LiveBadgeView;

.field loadFinishListener:Lcom/narvii/link/LoadFinishListener;

.field private membershipStrokeRatio:F

.field private noBadge:Z

.field private pendingUserInfo:Lcom/narvii/widget/UserAvatarLayout$PendingUserInfo;

.field private showAudioStroke:Z

.field private showLive:Z

.field private showSpeaking:Z

.field private sizeType:I

.field private speakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

.field private strokeColor:I

.field private strokeDp:F

.field private unsubcribeColor:I

.field private usedForWiki:Z

.field private user:Lcom/narvii/model/User;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 89
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const/high16 v1, 0x424c0000    # 51.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/narvii/widget/UserAvatarLayout;->LIVE_BADGE_WIDTH:I

    .line 90
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/narvii/widget/UserAvatarLayout;->LIVE_BADGE_HEIGHT:I

    .line 91
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/narvii/widget/UserAvatarLayout;->LIVE_BADGE_BOTTOM:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/UserAvatarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/UserAvatarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/narvii/widget/UserAvatarLayout;->darkTheme:Z

    .line 51
    iput-boolean v0, p0, Lcom/narvii/widget/UserAvatarLayout;->isSubscribeMemberShip:Z

    const/high16 v1, 0x40000000    # 2.0f

    .line 54
    iput v1, p0, Lcom/narvii/widget/UserAvatarLayout;->membershipStrokeRatio:F

    const/4 v2, -0x1

    .line 70
    iput v2, p0, Lcom/narvii/widget/UserAvatarLayout;->unsubcribeColor:I

    .line 80
    iput-boolean v0, p0, Lcom/narvii/widget/UserAvatarLayout;->configGot:Z

    .line 87
    iput-boolean v0, p0, Lcom/narvii/widget/UserAvatarLayout;->isLive:Z

    .line 103
    sget-object v2, Lcom/narvii/amino/R$styleable;->UserAvatarLayout:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 104
    sget p2, Lcom/narvii/widget/UserAvatarLayout;->SIZE_TYPE_MINI:I

    const/16 p3, 0xb

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/UserAvatarLayout;->sizeType:I

    const/4 p2, 0x3

    .line 105
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/narvii/widget/UserAvatarLayout;->strokeDp:F

    const/4 p2, 0x7

    .line 106
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/narvii/widget/UserAvatarLayout;->membershipStrokeRatio:F

    const/4 p2, 0x5

    .line 107
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/widget/UserAvatarLayout;->disableFullAvatarFrame:Z

    .line 108
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarShadowOffsetX:I

    const/4 p2, 0x1

    .line 109
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarShadowOffsetY:I

    const/16 p3, 0x8

    .line 110
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/narvii/widget/UserAvatarLayout;->noBadge:Z

    const/4 p3, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 111
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarSizeRatio:F

    const/4 p3, 0x4

    const/high16 v1, 0x3f000000    # 0.5f

    .line 112
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/narvii/widget/UserAvatarLayout;->badgeWidthRatio:F

    const/16 p3, 0x9

    .line 113
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/narvii/widget/UserAvatarLayout;->showLive:Z

    const/16 p3, 0xa

    .line 114
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/narvii/widget/UserAvatarLayout;->showSpeaking:Z

    const/4 p3, 0x6

    .line 115
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/widget/UserAvatarLayout;->hasOverlappingRendering:Z

    .line 116
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070055

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarFrameSizeThreshold:I

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/widget/UserAvatarLayout;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/narvii/widget/UserAvatarLayout;->checkIfAllLoadFinished()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/widget/UserAvatarLayout;)Lcom/narvii/widget/UserAvatarLayout$PendingUserInfo;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/narvii/widget/UserAvatarLayout;->pendingUserInfo:Lcom/narvii/widget/UserAvatarLayout$PendingUserInfo;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/narvii/widget/UserAvatarLayout;->attachAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;)V

    return-void
.end method

.method static synthetic access$102(Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/widget/UserAvatarLayout$PendingUserInfo;)Lcom/narvii/widget/UserAvatarLayout$PendingUserInfo;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/narvii/widget/UserAvatarLayout;->pendingUserInfo:Lcom/narvii/widget/UserAvatarLayout$PendingUserInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/narvii/widget/UserAvatarLayout;)Lcom/narvii/model/User;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/narvii/widget/UserAvatarLayout;->user:Lcom/narvii/model/User;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/widget/UserAvatarLayout;Ljava/lang/String;Z)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/UserAvatarLayout;->setUserInfo(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/narvii/widget/UserAvatarLayout;Z)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/narvii/widget/UserAvatarLayout;->setConfigGot(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/widget/UserAvatarLayout;)Lcom/narvii/widget/ThumbImageView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarFrame:Lcom/narvii/widget/ThumbImageView;

    return-object p0
.end method

.method static synthetic access$602(Lcom/narvii/widget/UserAvatarLayout;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/narvii/widget/UserAvatarLayout;->hasAvatarFrameAttached:Z

    return p1
.end method

.method static synthetic access$700(Lcom/narvii/widget/UserAvatarLayout;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/narvii/widget/UserAvatarLayout;->updateBadge()V

    return-void
.end method

.method static synthetic access$800(Lcom/narvii/widget/UserAvatarLayout;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/narvii/widget/UserAvatarLayout;->updateStroke()V

    return-void
.end method

.method static synthetic access$900(Lcom/narvii/widget/UserAvatarLayout;)Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarFrameConfig:Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;

    return-object p0
.end method

.method static synthetic access$902(Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;)Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarFrameConfig:Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;

    return-object p1
.end method

.method private attachAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;)V
    .locals 3

    .line 380
    invoke-virtual {p1}, Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;->getAbsAvatarFramePath()Ljava/lang/String;

    move-result-object p1

    .line 381
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 382
    iget-object p1, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarFrame:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p1, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 383
    iput-boolean p1, p0, Lcom/narvii/widget/UserAvatarLayout;->hasAvatarFrameAttached:Z

    .line 384
    invoke-direct {p0}, Lcom/narvii/widget/UserAvatarLayout;->updateBadge()V

    .line 385
    invoke-direct {p0}, Lcom/narvii/widget/UserAvatarLayout;->updateStroke()V

    .line 386
    invoke-direct {p0, v2}, Lcom/narvii/widget/UserAvatarLayout;->setConfigGot(Z)V

    return-void

    .line 390
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/widget/UserAvatarLayout;->applyFullSizeAvatarFrame:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/narvii/widget/UserAvatarLayout;->hideAvatarFrame:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarFrame:Lcom/narvii/widget/ThumbImageView;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_1

    .line 391
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarFrame:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p1, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 395
    :goto_1
    iget-boolean p1, p0, Lcom/narvii/widget/UserAvatarLayout;->hideAvatarFrame:Z

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/narvii/widget/UserAvatarLayout;->hasAvatarFrameAttached:Z

    .line 396
    invoke-direct {p0}, Lcom/narvii/widget/UserAvatarLayout;->updateBadge()V

    .line 397
    invoke-direct {p0}, Lcom/narvii/widget/UserAvatarLayout;->updateStroke()V

    .line 398
    invoke-direct {p0, v2}, Lcom/narvii/widget/UserAvatarLayout;->setConfigGot(Z)V

    return-void
.end method

.method private checkIfAllLoadFinished()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->loadFinishListener:Lcom/narvii/link/LoadFinishListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/widget/UserAvatarLayout;->isAllLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->loadFinishListener:Lcom/narvii/link/LoadFinishListener;

    invoke-interface {v0}, Lcom/narvii/link/LoadFinishListener;->onLoadFinished()V

    :cond_0
    return-void
.end method

.method private setAvatarStyle()V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->avatar:Lcom/narvii/widget/ThumbImageView;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/narvii/widget/NVImageView;->strokeColor:I

    .line 226
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->avatar:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    iput v1, v0, Lcom/narvii/widget/NVImageView;->strokeWidth:F

    .line 227
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->avatar:Lcom/narvii/widget/ThumbImageView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    .line 228
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060216

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setGroundingColor(I)V

    .line 229
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->avatar:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0807ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 230
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->avatar:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/narvii/widget/NVImageView;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 231
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->avatar:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x447a0000    # 1000.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    .line 232
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->avatar:Lcom/narvii/widget/ThumbImageView;

    iget v1, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarShadowOffsetX:I

    iput v1, v0, Lcom/narvii/widget/ThumbImageView;->shadowOffsetX:I

    .line 233
    iget v1, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarShadowOffsetY:I

    invoke-virtual {v0, v1}, Lcom/narvii/widget/ThumbImageView;->setShadowOffsetY(I)V

    return-void
.end method

.method private setConfigGot(Z)V
    .locals 0

    .line 280
    iput-boolean p1, p0, Lcom/narvii/widget/UserAvatarLayout;->configGot:Z

    .line 281
    invoke-direct {p0}, Lcom/narvii/widget/UserAvatarLayout;->checkIfAllLoadFinished()V

    return-void
.end method

.method private setLive(Z)V
    .locals 3

    .line 294
    iput-boolean p1, p0, Lcom/narvii/widget/UserAvatarLayout;->isLive:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 296
    invoke-virtual {p0, v0}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarStroke(F)V

    const/4 p1, 0x1

    .line 297
    invoke-virtual {p0, p1}, Lcom/narvii/widget/UserAvatarLayout;->setNoBadge(Z)V

    .line 298
    iget-object p1, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarFrame:Lcom/narvii/widget/ThumbImageView;

    if-eqz p1, :cond_0

    .line 299
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/UserAvatarLayout;->speakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    if-eqz p1, :cond_1

    .line 302
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 304
    :cond_1
    iget-object p1, p0, Lcom/narvii/widget/UserAvatarLayout;->liveBadgeView:Lcom/narvii/widget/LiveBadgeView;

    if-eqz p1, :cond_7

    .line 305
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 308
    :cond_2
    iget-object p1, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarFrame:Lcom/narvii/widget/ThumbImageView;

    if-eqz p1, :cond_3

    .line 309
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    :cond_3
    iget-object p1, p0, Lcom/narvii/widget/UserAvatarLayout;->speakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    if-eqz p1, :cond_4

    .line 312
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 314
    :cond_4
    iget-object p1, p0, Lcom/narvii/widget/UserAvatarLayout;->liveBadgeView:Lcom/narvii/widget/LiveBadgeView;

    if-eqz p1, :cond_5

    .line 315
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 317
    :cond_5
    iget-object p1, p0, Lcom/narvii/widget/UserAvatarLayout;->user:Lcom/narvii/model/User;

    invoke-virtual {p1}, Lcom/narvii/model/User;->hasAvatarFrame()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    const/high16 v0, 0x40000000    # 2.0f

    :goto_0
    invoke-virtual {p0, v0}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarStroke(F)V

    .line 318
    invoke-virtual {p0, v2}, Lcom/narvii/widget/UserAvatarLayout;->setNoBadge(Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method private setUserInfo(Ljava/lang/String;Z)V
    .locals 4

    .line 323
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 327
    :cond_0
    iput-boolean p2, p0, Lcom/narvii/widget/UserAvatarLayout;->isSubscribeMemberShip:Z

    .line 328
    iget-object p2, p0, Lcom/narvii/widget/UserAvatarLayout;->avatar:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p2, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const/4 p1, 0x0

    .line 329
    invoke-direct {p0, p1}, Lcom/narvii/widget/UserAvatarLayout;->setConfigGot(Z)V

    .line 331
    iget-boolean p2, p0, Lcom/narvii/widget/UserAvatarLayout;->isAvatarFramePreview:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarFrameConfig:Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;

    if-eqz p2, :cond_1

    .line 332
    invoke-direct {p0, p2}, Lcom/narvii/widget/UserAvatarLayout;->attachAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;)V

    goto :goto_0

    .line 333
    :cond_1
    iget-object p2, p0, Lcom/narvii/widget/UserAvatarLayout;->user:Lcom/narvii/model/User;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/narvii/model/User;->hasAvatarFrame()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 334
    iget-object p1, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarFrameLoader:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

    iget-object p2, p0, Lcom/narvii/widget/UserAvatarLayout;->user:Lcom/narvii/model/User;

    iget-object v1, p2, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    iget-object p2, p2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/narvii/widget/UserAvatarLayout$3;

    invoke-direct {v3, p0}, Lcom/narvii/widget/UserAvatarLayout$3;-><init>(Lcom/narvii/widget/UserAvatarLayout;)V

    invoke-virtual {p1, v1, p2, v2, v3}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;->load(Lcom/narvii/model/User$IAvatarFrame;Ljava/lang/String;Ljava/lang/Object;Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;)V

    goto :goto_0

    .line 360
    :cond_2
    invoke-direct {p0, v0}, Lcom/narvii/widget/UserAvatarLayout;->setConfigGot(Z)V

    .line 361
    iput-object v1, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarFrameConfig:Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;

    .line 362
    iget-object p2, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarFrame:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p2, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 363
    iput-boolean p1, p0, Lcom/narvii/widget/UserAvatarLayout;->hasAvatarFrameAttached:Z

    .line 364
    invoke-direct {p0}, Lcom/narvii/widget/UserAvatarLayout;->updateStroke()V

    .line 365
    invoke-direct {p0}, Lcom/narvii/widget/UserAvatarLayout;->updateBadge()V

    .line 367
    :goto_0
    iget-boolean p1, p0, Lcom/narvii/widget/UserAvatarLayout;->showSpeaking:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/narvii/widget/UserAvatarLayout;->showLive:Z

    if-eqz p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/narvii/widget/UserAvatarLayout;->user:Lcom/narvii/model/User;

    if-eqz p1, :cond_4

    .line 368
    iget-object p1, p1, Lcom/narvii/model/User;->activePublicLiveThreadId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/narvii/widget/UserAvatarLayout;->setLive(Z)V

    :cond_4
    return-void

    .line 324
    :cond_5
    :goto_1
    new-instance v0, Lcom/narvii/widget/UserAvatarLayout$PendingUserInfo;

    iget-object v2, p0, Lcom/narvii/widget/UserAvatarLayout;->user:Lcom/narvii/model/User;

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-direct {v0, p0, v1, p1, p2}, Lcom/narvii/widget/UserAvatarLayout$PendingUserInfo;-><init>(Lcom/narvii/widget/UserAvatarLayout;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->pendingUserInfo:Lcom/narvii/widget/UserAvatarLayout$PendingUserInfo;

    return-void
.end method

.method private updateBadge()V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->aminoPlusBadge:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_1

    .line 374
    iget-boolean v1, p0, Lcom/narvii/widget/UserAvatarLayout;->isSubscribeMemberShip:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/narvii/widget/UserAvatarLayout;->noBadge:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/narvii/widget/UserAvatarLayout;->hasAvatarFrameAttached:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/narvii/widget/UserAvatarLayout;->showAudioStroke:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updatePlaceholder()V
    .locals 6

    .line 450
    iget v0, p0, Lcom/narvii/widget/UserAvatarLayout;->envBackgroundColor:I

    invoke-static {v0}, Lcom/narvii/util/PaletteUtils;->getColorGrayScale(I)D

    move-result-wide v0

    const-string v2, "#CCCCCC"

    const-wide v3, 0x3fc999999999999aL    # 0.2

    cmpg-double v5, v0, v3

    if-gez v5, :cond_1

    const-wide/16 v3, 0x0

    cmpl-double v5, v0, v3

    if-nez v5, :cond_0

    .line 451
    iget-boolean v0, p0, Lcom/narvii/widget/UserAvatarLayout;->darkTheme:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "#666666"

    .line 452
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->avatar:Lcom/narvii/widget/ThumbImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, v0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 453
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->avatar:Lcom/narvii/widget/ThumbImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, v0, Lcom/narvii/widget/NVImageView;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 454
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->avatar:Lcom/narvii/widget/ThumbImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateStroke()V
    .locals 3

    .line 458
    iget-boolean v0, p0, Lcom/narvii/widget/UserAvatarLayout;->hasAvatarFrameAttached:Z

    if-eqz v0, :cond_0

    .line 459
    iget-boolean v0, p0, Lcom/narvii/widget/UserAvatarLayout;->applyFullSizeAvatarFrame:Z

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->avatar:Lcom/narvii/widget/ThumbImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setStrokeWidth(F)V

    return-void

    .line 464
    :cond_0
    iget v0, p0, Lcom/narvii/widget/UserAvatarLayout;->strokeColor:I

    if-eqz v0, :cond_1

    .line 465
    iget-object v1, p0, Lcom/narvii/widget/UserAvatarLayout;->avatar:Lcom/narvii/widget/ThumbImageView;

    iput v0, v1, Lcom/narvii/widget/NVImageView;->strokeColor:I

    goto :goto_0

    .line 466
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/widget/UserAvatarLayout;->showAudioStroke:Z

    if-eqz v0, :cond_2

    .line 467
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->avatar:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060076

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Lcom/narvii/widget/NVImageView;->strokeColor:I

    goto :goto_0

    .line 468
    :cond_2
    iget-boolean v0, p0, Lcom/narvii/widget/UserAvatarLayout;->isSubscribeMemberShip:Z

    if-eqz v0, :cond_3

    .line 469
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->avatar:Lcom/narvii/widget/ThumbImageView;

    const/16 v1, -0x46cb

    iput v1, v0, Lcom/narvii/widget/NVImageView;->strokeColor:I

    goto :goto_0

    .line 471
    :cond_3
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->avatar:Lcom/narvii/widget/ThumbImageView;

    iget v1, p0, Lcom/narvii/widget/UserAvatarLayout;->unsubcribeColor:I

    iput v1, v0, Lcom/narvii/widget/NVImageView;->strokeColor:I

    .line 473
    :goto_0
    iget-boolean v0, p0, Lcom/narvii/widget/UserAvatarLayout;->isSubscribeMemberShip:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/narvii/widget/UserAvatarLayout;->strokeDp:F

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/narvii/widget/UserAvatarLayout;->strokeDp:F

    iget v1, p0, Lcom/narvii/widget/UserAvatarLayout;->membershipStrokeRatio:F

    div-float/2addr v0, v1

    .line 474
    :goto_1
    iget-object v1, p0, Lcom/narvii/widget/UserAvatarLayout;->avatar:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public getAvatarView()Lcom/narvii/widget/ThumbImageView;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->avatar:Lcom/narvii/widget/ThumbImageView;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 554
    iget-boolean v0, p0, Lcom/narvii/widget/UserAvatarLayout;->hasOverlappingRendering:Z

    return v0
.end method

.method public isAllLoaded()Z
    .locals 3

    .line 544
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->avatar:Lcom/narvii/widget/ThumbImageView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/widget/NVImageView;->getStatus()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarFrame:Lcom/narvii/widget/ThumbImageView;

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/narvii/widget/UserAvatarLayout;->configGot:Z

    if-eqz v2, :cond_0

    .line 545
    invoke-virtual {v0}, Lcom/narvii/widget/NVImageView;->getStatus()I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public markAvatarFrameHide(Z)V
    .locals 0

    .line 402
    iput-boolean p1, p0, Lcom/narvii/widget/UserAvatarLayout;->hideAvatarFrame:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 258
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 259
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarFrameLoader:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/fileloader/FileLoader;->removeCallbackByTag(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 179
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 180
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "config"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    iput-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->configService:Lcom/narvii/config/ConfigService;

    .line 181
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->accountService:Lcom/narvii/account/AccountService;

    .line 182
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "avatarFrameLoader"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

    iput-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarFrameLoader:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

    .line 184
    new-instance v0, Lcom/narvii/widget/UserAvatarLayout$1;

    invoke-direct {v0, p0}, Lcom/narvii/widget/UserAvatarLayout$1;-><init>(Lcom/narvii/widget/UserAvatarLayout;)V

    .line 191
    iget-boolean v1, p0, Lcom/narvii/widget/UserAvatarLayout;->showSpeaking:Z

    if-eqz v1, :cond_0

    .line 192
    new-instance v1, Lcom/narvii/chat/video/view/UserSpeakingView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/chat/video/view/UserSpeakingView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/narvii/widget/UserAvatarLayout;->speakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    .line 193
    iget-object v1, p0, Lcom/narvii/widget/UserAvatarLayout;->speakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 196
    :cond_0
    new-instance v1, Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/widget/ThumbImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/narvii/widget/UserAvatarLayout;->avatar:Lcom/narvii/widget/ThumbImageView;

    .line 197
    iget-object v1, p0, Lcom/narvii/widget/UserAvatarLayout;->avatar:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 198
    iget-object v1, p0, Lcom/narvii/widget/UserAvatarLayout;->avatar:Lcom/narvii/widget/ThumbImageView;

    const v2, 0x7f0900e4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 199
    invoke-direct {p0}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarStyle()V

    .line 200
    iget-object v1, p0, Lcom/narvii/widget/UserAvatarLayout;->avatar:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 202
    new-instance v1, Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/widget/ThumbImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarFrame:Lcom/narvii/widget/ThumbImageView;

    .line 203
    iget-object v1, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarFrame:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 204
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarFrame:Lcom/narvii/widget/ThumbImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 205
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarFrame:Lcom/narvii/widget/ThumbImageView;

    const v2, 0x7f0900ef

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 206
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarFrame:Lcom/narvii/widget/ThumbImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarFrame:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 209
    iget-boolean v0, p0, Lcom/narvii/widget/UserAvatarLayout;->noBadge:Z

    if-nez v0, :cond_1

    .line 210
    new-instance v0, Lcom/narvii/widget/NVImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/narvii/widget/NVImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->aminoPlusBadge:Lcom/narvii/widget/NVImageView;

    .line 211
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->aminoPlusBadge:Lcom/narvii/widget/NVImageView;

    const v2, 0x7f0900a2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 212
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->aminoPlusBadge:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setShowPressedMask(Z)V

    .line 213
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->aminoPlusBadge:Lcom/narvii/widget/NVImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 214
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->aminoPlusBadge:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080293

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->aminoPlusBadge:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 218
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/widget/UserAvatarLayout;->showLive:Z

    if-eqz v0, :cond_2

    .line 219
    new-instance v0, Lcom/narvii/widget/LiveBadgeView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/LiveBadgeView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->liveBadgeView:Lcom/narvii/widget/LiveBadgeView;

    .line 220
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->liveBadgeView:Lcom/narvii/widget/LiveBadgeView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .line 122
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    .line 123
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v0

    .line 124
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    .line 125
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr p4, p2

    sub-int p2, p4, p1

    sub-int/2addr p2, v0

    sub-int/2addr p5, p3

    sub-int p3, p5, v1

    sub-int/2addr p3, v2

    .line 129
    iget-boolean v3, p0, Lcom/narvii/widget/UserAvatarLayout;->isLive:Z

    const/16 v4, 0x8

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/narvii/widget/UserAvatarLayout;->speakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 130
    iget-object v3, p0, Lcom/narvii/widget/UserAvatarLayout;->speakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {p4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 131
    invoke-static {p4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 130
    invoke-virtual {v3, v6, v5}, Landroid/widget/FrameLayout;->measure(II)V

    .line 132
    iget-object v3, p0, Lcom/narvii/widget/UserAvatarLayout;->speakingView:Lcom/narvii/chat/video/view/UserSpeakingView;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 135
    :cond_0
    iget-object v3, p0, Lcom/narvii/widget/UserAvatarLayout;->avatar:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 136
    iget-object v3, p0, Lcom/narvii/widget/UserAvatarLayout;->avatar:Lcom/narvii/widget/ThumbImageView;

    sub-int v0, p4, v0

    sub-int v5, p5, v2

    invoke-virtual {v3, p1, v1, v0, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 139
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/widget/UserAvatarLayout;->isLive:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarFrame:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_2

    int-to-float v0, p2

    .line 140
    iget v5, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarSizeRatio:F

    sub-float v5, v3, v5

    mul-float v0, v0, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v0, v5

    float-to-int v0, v0

    .line 142
    iget-object v5, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarFrame:Lcom/narvii/widget/ThumbImageView;

    neg-int v6, v0

    add-int v7, v6, p1

    add-int/2addr v6, v1

    add-int/2addr p1, p2

    add-int/2addr p1, v0

    add-int/2addr v1, p3

    add-int/2addr v1, v0

    invoke-virtual {v5, v7, v6, p1, v1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 146
    :cond_2
    iget-boolean p1, p0, Lcom/narvii/widget/UserAvatarLayout;->isLive:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/narvii/widget/UserAvatarLayout;->noBadge:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/narvii/widget/UserAvatarLayout;->aminoPlusBadge:Lcom/narvii/widget/NVImageView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eq p1, v4, :cond_3

    int-to-float p1, p2

    .line 147
    iget p2, p0, Lcom/narvii/widget/UserAvatarLayout;->badgeWidthRatio:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    int-to-float p2, p1

    const p3, 0x3f0f5c29    # 0.56f

    mul-float p2, p2, p3

    float-to-int p2, p2

    sub-int p1, p4, p1

    .line 149
    div-int/lit8 p1, p1, 0x2

    .line 150
    iget-object p3, p0, Lcom/narvii/widget/UserAvatarLayout;->aminoPlusBadge:Lcom/narvii/widget/NVImageView;

    sub-int v0, p5, v2

    mul-int/lit8 v1, p2, 0x2

    div-int/lit8 v1, v1, 0x3

    sub-int v1, v0, v1

    sub-int v5, p4, p1

    div-int/lit8 p2, p2, 0x3

    add-int/2addr v0, p2

    invoke-virtual {p3, p1, v1, v5, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 154
    :cond_3
    iget-boolean p1, p0, Lcom/narvii/widget/UserAvatarLayout;->isLive:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/narvii/widget/UserAvatarLayout;->liveBadgeView:Lcom/narvii/widget/LiveBadgeView;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eq p1, v4, :cond_6

    .line 155
    sget p1, Lcom/narvii/widget/UserAvatarLayout;->LIVE_BADGE_WIDTH:I

    sub-int p1, p4, p1

    div-int/lit8 p1, p1, 0x2

    .line 156
    iget-object p2, p0, Lcom/narvii/widget/UserAvatarLayout;->liveBadgeView:Lcom/narvii/widget/LiveBadgeView;

    sub-int/2addr p5, v2

    sget p3, Lcom/narvii/widget/UserAvatarLayout;->LIVE_BADGE_HEIGHT:I

    sub-int p3, p5, p3

    sget v0, Lcom/narvii/widget/UserAvatarLayout;->LIVE_BADGE_BOTTOM:I

    sub-int/2addr p3, v0

    sub-int v1, p4, p1

    sub-int/2addr p5, v0

    invoke-virtual {p2, p1, p3, v1, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    int-to-double p1, p4

    .line 160
    sget p3, Lcom/narvii/widget/UserAvatarLayout;->LIVE_BADGE_WIDTH:I

    int-to-double v0, p3

    const-wide v4, 0x3ff6666666666666L    # 1.4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    cmpl-double p5, p1, v0

    if-lez p5, :cond_4

    goto :goto_0

    :cond_4
    if-ge p4, p3, :cond_5

    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    sub-int/2addr p4, p3

    int-to-float p1, p4

    const/high16 p2, 0x40200000    # 2.5f

    mul-float p1, p1, p2

    int-to-float p2, p3

    div-float v3, p1, p2

    .line 167
    :goto_0
    iget-object p1, p0, Lcom/narvii/widget/UserAvatarLayout;->liveBadgeView:Lcom/narvii/widget/LiveBadgeView;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_6
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 238
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 239
    iget-boolean p3, p0, Lcom/narvii/widget/UserAvatarLayout;->disableFullAvatarFrame:Z

    if-nez p3, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget p4, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarFrameSizeThreshold:I

    if-le p3, p4, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lcom/narvii/widget/UserAvatarLayout;->applyFullSizeAvatarFrame:Z

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 240
    iget-object p1, p0, Lcom/narvii/widget/UserAvatarLayout;->pendingUserInfo:Lcom/narvii/widget/UserAvatarLayout$PendingUserInfo;

    if-eqz p1, :cond_1

    .line 241
    new-instance p1, Lcom/narvii/widget/UserAvatarLayout$2;

    invoke-direct {p1, p0}, Lcom/narvii/widget/UserAvatarLayout$2;-><init>(Lcom/narvii/widget/UserAvatarLayout;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public setAvatarFrameConfig(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;)V
    .locals 1

    const/4 v0, 0x1

    .line 440
    invoke-virtual {p0, p1, v0}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarFrameConfig(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;Z)V

    return-void
.end method

.method public setAvatarFrameConfig(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;Z)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarFrameConfig:Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;

    .line 445
    iput-boolean p2, p0, Lcom/narvii/widget/UserAvatarLayout;->isAvatarFramePreview:Z

    return-void
.end method

.method public setAvatarShadow(II)V
    .locals 1

    const/4 v0, 0x1

    .line 483
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarShadow(IIZ)V

    return-void
.end method

.method public setAvatarShadow(IIZ)V
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->avatar:Lcom/narvii/widget/ThumbImageView;

    iget v1, v0, Lcom/narvii/widget/ThumbImageView;->shadowSize:I

    if-ne v1, p1, :cond_0

    iget v0, v0, Lcom/narvii/widget/ThumbImageView;->shadowColor:I

    if-eq v0, p2, :cond_1

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->avatar:Lcom/narvii/widget/ThumbImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/ThumbImageView;->setDirty(Z)V

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->avatar:Lcom/narvii/widget/ThumbImageView;

    iput p1, v0, Lcom/narvii/widget/ThumbImageView;->shadowSize:I

    .line 491
    iput p2, v0, Lcom/narvii/widget/ThumbImageView;->shadowColor:I

    if-eqz p3, :cond_2

    .line 493
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_2
    return-void
.end method

.method public setAvatarStroke(F)V
    .locals 1

    const/4 v0, 0x1

    .line 498
    invoke-virtual {p0, p1, v0}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarStroke(FZ)V

    return-void
.end method

.method public setAvatarStroke(FIZ)V
    .locals 0

    .line 509
    iput p2, p0, Lcom/narvii/widget/UserAvatarLayout;->strokeColor:I

    .line 510
    iput p1, p0, Lcom/narvii/widget/UserAvatarLayout;->strokeDp:F

    if-eqz p3, :cond_0

    .line 512
    invoke-direct {p0}, Lcom/narvii/widget/UserAvatarLayout;->updateStroke()V

    :cond_0
    return-void
.end method

.method public setAvatarStroke(FZ)V
    .locals 0

    .line 502
    iput p1, p0, Lcom/narvii/widget/UserAvatarLayout;->strokeDp:F

    if-eqz p2, :cond_0

    .line 504
    invoke-direct {p0}, Lcom/narvii/widget/UserAvatarLayout;->updateStroke()V

    :cond_0
    return-void
.end method

.method public setDarkTheme(ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 267
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/widget/UserAvatarLayout;->setDarkTheme(ZIZ)V

    return-void
.end method

.method public setDarkTheme(ZIZ)V
    .locals 0

    .line 271
    iput-boolean p1, p0, Lcom/narvii/widget/UserAvatarLayout;->darkTheme:Z

    .line 272
    iput p2, p0, Lcom/narvii/widget/UserAvatarLayout;->envBackgroundColor:I

    if-eqz p3, :cond_0

    .line 274
    invoke-direct {p0}, Lcom/narvii/widget/UserAvatarLayout;->updateStroke()V

    :cond_0
    return-void
.end method

.method public setDeaultDrawabele(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/narvii/widget/UserAvatarLayout;->avatar:Lcom/narvii/widget/ThumbImageView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setGlobalUser(Lcom/narvii/model/User;)V
    .locals 1

    .line 406
    iput-object p1, p0, Lcom/narvii/widget/UserAvatarLayout;->user:Lcom/narvii/model/User;

    if-eqz p1, :cond_1

    .line 407
    invoke-virtual {p1}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 408
    invoke-virtual {p1}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 407
    :goto_2
    invoke-direct {p0, v0, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUserInfo(Ljava/lang/String;Z)V

    return-void
.end method

.method public setHasOverlappingRendering(Z)V
    .locals 0

    .line 549
    iput-boolean p1, p0, Lcom/narvii/widget/UserAvatarLayout;->hasOverlappingRendering:Z

    return-void
.end method

.method public setLoadFinishListener(Lcom/narvii/link/LoadFinishListener;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lcom/narvii/widget/UserAvatarLayout;->loadFinishListener:Lcom/narvii/link/LoadFinishListener;

    .line 539
    invoke-direct {p0}, Lcom/narvii/widget/UserAvatarLayout;->checkIfAllLoadFinished()V

    return-void
.end method

.method public setMembershipStrokeRatio(F)V
    .locals 0

    .line 478
    iput p1, p0, Lcom/narvii/widget/UserAvatarLayout;->membershipStrokeRatio:F

    .line 479
    invoke-direct {p0}, Lcom/narvii/widget/UserAvatarLayout;->updateStroke()V

    return-void
.end method

.method public setNoBadge(Z)V
    .locals 0

    .line 289
    iput-boolean p1, p0, Lcom/narvii/widget/UserAvatarLayout;->noBadge:Z

    .line 290
    invoke-direct {p0}, Lcom/narvii/widget/UserAvatarLayout;->updateBadge()V

    return-void
.end method

.method public setUnsubcribeColor(I)V
    .locals 0

    .line 517
    iput p1, p0, Lcom/narvii/widget/UserAvatarLayout;->unsubcribeColor:I

    .line 518
    invoke-direct {p0}, Lcom/narvii/widget/UserAvatarLayout;->updateStroke()V

    return-void
.end method

.method public setUsedForWiki(Z)V
    .locals 0

    .line 412
    iput-boolean p1, p0, Lcom/narvii/widget/UserAvatarLayout;->usedForWiki:Z

    return-void
.end method

.method public setUser(Lcom/narvii/model/User;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 416
    invoke-virtual {p1}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;Z)V

    return-void
.end method

.method public setUser(Lcom/narvii/model/User;Lcom/narvii/app/NVContext;)V
    .locals 1

    if-nez p2, :cond_0

    .line 426
    invoke-virtual {p0, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    return-void

    .line 429
    :cond_0
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v0, p2}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    if-eqz p1, :cond_1

    .line 430
    invoke-virtual {p1}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;ZZ)V

    return-void
.end method

.method public setUser(Lcom/narvii/model/User;Z)V
    .locals 2

    .line 420
    new-instance v0, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 421
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;ZZ)V

    return-void
.end method

.method public setUser(Lcom/narvii/model/User;ZZ)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/narvii/widget/UserAvatarLayout;->user:Lcom/narvii/model/User;

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    .line 435
    iget-object p2, p0, Lcom/narvii/widget/UserAvatarLayout;->configService:Lcom/narvii/config/ConfigService;

    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/narvii/widget/UserAvatarLayout;->isSubscribeMemberShip:Z

    if-eqz p1, :cond_4

    .line 436
    invoke-virtual {p1}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean p2, p0, Lcom/narvii/widget/UserAvatarLayout;->usedForWiki:Z

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/narvii/model/User;->iconForCatalog()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/narvii/model/User;->icon()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x0

    :goto_2
    iget-boolean p2, p0, Lcom/narvii/widget/UserAvatarLayout;->isSubscribeMemberShip:Z

    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/UserAvatarLayout;->setUserInfo(Ljava/lang/String;Z)V

    return-void
.end method

.method public showAudioStroke(Z)V
    .locals 1

    .line 522
    iget-boolean v0, p0, Lcom/narvii/widget/UserAvatarLayout;->showAudioStroke:Z

    if-eq v0, p1, :cond_1

    .line 523
    iput-boolean p1, p0, Lcom/narvii/widget/UserAvatarLayout;->showAudioStroke:Z

    .line 524
    iput-boolean p1, p0, Lcom/narvii/widget/UserAvatarLayout;->hideAvatarFrame:Z

    .line 525
    iget-object p1, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarFrameConfig:Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;

    if-eqz p1, :cond_0

    .line 526
    invoke-direct {p0, p1}, Lcom/narvii/widget/UserAvatarLayout;->attachAvatarFrame(Lcom/narvii/monetization/avatarframe/AvatarFrameConfig;)V

    goto :goto_0

    .line 528
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/UserAvatarLayout;->avatarFrame:Lcom/narvii/widget/ThumbImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 529
    iput-boolean p1, p0, Lcom/narvii/widget/UserAvatarLayout;->hasAvatarFrameAttached:Z

    .line 530
    invoke-direct {p0}, Lcom/narvii/widget/UserAvatarLayout;->updateBadge()V

    .line 531
    invoke-direct {p0}, Lcom/narvii/widget/UserAvatarLayout;->updateStroke()V

    :cond_1
    :goto_0
    return-void
.end method
