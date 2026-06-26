.class public Lcom/narvii/livelayer/LiveLayerOnlineBar;
.super Landroid/widget/FrameLayout;
.source "LiveLayerOnlineBar.java"

# interfaces
.implements Lcom/narvii/livelayer/ILiveLayerView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/livelayer/LiveLayerOnlineBar$OnFoldChangedListener;,
        Lcom/narvii/livelayer/LiveLayerOnlineBar$OnAvatarShownChangeListener;,
        Lcom/narvii/livelayer/LiveLayerOnlineBar$OnUpdateMemberCountListener;,
        Lcom/narvii/livelayer/LiveLayerOnlineBar$OnMemberCountChangedListener;
    }
.end annotation


# static fields
.field public static final PRESS_SCALE:F = 0.98f

.field static liveLayerBarStated:Z = false

.field static shadowColor:I = 0x30000000


# instance fields
.field public animEndRunnable:Ljava/lang/Runnable;

.field animateLayoutChanges:Z

.field animating:Z

.field animator:Landroid/animation/ValueAnimator;

.field autoFitAvatarCountMax:I

.field autoFitAvatarSize:Z

.field avatarCount:I

.field avatarShadowSize:I

.field public avatarShown:Z

.field avatarSize:I

.field avatarStrokeWidth:I

.field barColor:I

.field cid:I

.field currentTopic:Ljava/lang/String;

.field public dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

.field private defaultAvatarSize:I

.field public dotFadeAnimation:Landroid/view/animation/Animation;

.field public dotFadeInAnimation:Landroid/view/animation/Animation;

.field emptyImageListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

.field fadeoutAnim:Landroid/view/animation/Animation;

.field fold:Z

.field private foldAnimator:Landroid/animation/ValueAnimator;

.field public foldCountView:Landroid/widget/TextView;

.field public foldGreenOval:Landroid/view/View;

.field forceHideOnlineTextLayout:Z

.field fromCBB:Z

.field gestureDetector:Landroid/view/GestureDetector;

.field greenOval:Landroid/view/View;

.field halo:Landroid/view/View;

.field public holoAnimation:Landroid/view/animation/Animation;

.field public holoAnimation2:Landroid/view/animation/Animation;

.field initialMotionX:F

.field initialWidth:I

.field private isDragging:Z

.field public joinAnimRunnable:Ljava/lang/Runnable;

.field private layoutAnimator:Landroid/animation/ValueAnimator;

.field lift:I

.field liveLayerHelper:Lcom/narvii/livelayer/LiveLayerHelper;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field public final mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

.field maxAvatarCount:I

.field private maxWidth:I

.field minAvatarCount:I

.field public nextRunnable:Ljava/lang/Runnable;

.field onAvatarShownChangeListener:Lcom/narvii/livelayer/LiveLayerOnlineBar$OnAvatarShownChangeListener;

.field onBarClickListener:Landroid/view/View$OnClickListener;

.field onFoldChangedListener:Lcom/narvii/livelayer/LiveLayerOnlineBar$OnFoldChangedListener;

.field onMemberCountChangedListener:Lcom/narvii/livelayer/LiveLayerOnlineBar$OnMemberCountChangedListener;

.field onUpdateMemberCountListener:Lcom/narvii/livelayer/LiveLayerOnlineBar$OnUpdateMemberCountListener;

.field onlineText:I

.field onlineTextLayout:Landroid/view/View;

.field onlineTextOne:I

.field onlineTextView:Landroid/widget/TextView;

.field organizerInList:Z

.field overlapRatio:F

.field preloadHelper:Lcom/narvii/livelayer/LiveLayerPreloadHelper;

.field pressed:Z

.field random:Ljava/util/Random;

.field recentAvatar:Lcom/narvii/widget/UserAvatarLayout;

.field recentAvatarLayout:Landroid/view/View;

.field shouldFilterUserList:Z

.field showFadeAnimation:Z

.field showMore:Z

.field showRightCorner:Z

.field showShadow:Z

.field supportFold:Z

.field tapping:Z

.field textMarginEnd:I

.field userJoinedAnim:Landroid/view/animation/Animation;

.field userJoinedText:I

.field userJoinedView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 182
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 69
    iput v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarStrokeWidth:I

    const/4 v1, 0x4

    .line 74
    iput v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->maxAvatarCount:I

    .line 76
    iput v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->autoFitAvatarCountMax:I

    const/4 v2, 0x1

    .line 77
    iput v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->minAvatarCount:I

    .line 107
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iput-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->random:Ljava/util/Random;

    .line 118
    iput-boolean v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->shouldFilterUserList:Z

    .line 120
    iput-boolean v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->organizerInList:Z

    .line 126
    new-instance v3, Lcom/narvii/livelayer/LiveLayerOnlineBar$1;

    invoke-direct {v3, p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar$1;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar;)V

    iput-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->emptyImageListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    .line 151
    new-instance v3, Lcom/narvii/livelayer/LiveLayerOnlineBar$2;

    invoke-direct {v3, p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar$2;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar;)V

    iput-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->nextRunnable:Ljava/lang/Runnable;

    .line 184
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v3

    .line 186
    new-instance v4, Lcom/narvii/livelayer/LiveLayerDataSource;

    invoke-direct {v4, v3}, Lcom/narvii/livelayer/LiveLayerDataSource;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    .line 187
    iget-object v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    invoke-virtual {v4, p0}, Lcom/narvii/livelayer/LiveLayerDataSource;->setLiveLayerView(Lcom/narvii/livelayer/ILiveLayerView;)V

    .line 189
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    .line 190
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    const/4 v6, 0x2

    div-int/2addr v5, v6

    iput v5, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mTouchSlop:I

    .line 191
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v5

    iput v5, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mMinimumFlingVelocity:I

    .line 192
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mMaximumFlingVelocity:I

    .line 194
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b04e0

    invoke-static {v4, v5, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 197
    sget-object v4, Lcom/narvii/amino/R$styleable;->LiveLayerOnlineBar:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 198
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v4, 0x7f0701c3

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const/4 v4, 0x3

    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->defaultAvatarSize:I

    const/4 p2, 0x7

    const v4, 0x7f0f0cf0

    .line 199
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineText:I

    const/4 p2, 0x0

    const/16 v4, 0x10

    .line 200
    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedText:I

    const/16 v4, 0x8

    .line 201
    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextOne:I

    .line 202
    invoke-virtual {p1, v6, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->autoFitAvatarSize:Z

    .line 203
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->autoFitAvatarCountMax:I

    const/4 v0, 0x6

    .line 204
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->minAvatarCount:I

    const/4 v4, 0x5

    .line 205
    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->maxAvatarCount:I

    const/16 v4, 0xb

    .line 206
    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->showMore:Z

    const/16 v4, 0xd

    .line 207
    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->showShadow:Z

    const/16 v4, 0x9

    const/high16 v5, 0x3e800000    # 0.25f

    .line 209
    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->overlapRatio:F

    const/16 v5, 0xc

    .line 210
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->showRightCorner:Z

    const/16 v5, 0xe

    .line 211
    invoke-virtual {p1, v5, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->supportFold:Z

    const/high16 v5, -0x34000000    # -3.3554432E7f

    .line 212
    invoke-virtual {p1, v1, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->barColor:I

    .line 213
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animateLayoutChanges:Z

    .line 214
    iget-boolean v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->supportFold:Z

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->showFadeAnimation:Z

    .line 215
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/16 v2, 0xf

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->textMarginEnd:I

    .line 216
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 218
    iget-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->showShadow:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarShadowSize:I

    .line 219
    iget p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->defaultAvatarSize:I

    iput p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    const p1, 0x7f0906b2

    .line 221
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/livelayer/ws/ClipLayout;

    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    const p1, 0x7f0904e1

    .line 223
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->greenOval:Landroid/view/View;

    .line 224
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->greenOval:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    div-int/2addr v1, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0701c1

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Lcom/narvii/util/ViewUtils;->setMarginStart(Landroid/view/ViewGroup$LayoutParams;I)V

    const p1, 0x7f090928

    .line 227
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->recentAvatarLayout:Landroid/view/View;

    .line 228
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->recentAvatarLayout:Landroid/view/View;

    const v1, 0x7f090c10

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->recentAvatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 229
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->recentAvatar:Lcom/narvii/widget/UserAvatarLayout;

    iget-boolean v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->showShadow:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarShadowSize:I

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sget v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->shadowColor:I

    invoke-virtual {p1, v1, v2}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarShadow(II)V

    .line 230
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->recentAvatar:Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {p1}, Lcom/narvii/widget/UserAvatarLayout;->getAvatarView()Lcom/narvii/widget/ThumbImageView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->getForceRequestWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->getForceRequestHeight()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/narvii/widget/ThumbImageView;->setForceRequestSize(II)V

    const p1, 0x7f09011c

    .line 232
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 233
    iget-boolean v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->showRightCorner:Z

    if-nez v1, :cond_3

    .line 234
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x9

    :cond_2
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setCornerMask(I)V

    .line 236
    :cond_3
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->barColor:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 239
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    const p1, 0x7f0907bc

    .line 241
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    const p1, 0x7f0907bd

    .line 242
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextView:Landroid/widget/TextView;

    .line 243
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->textMarginEnd:I

    invoke-static {p1, p2}, Lcom/narvii/util/ViewUtils;->setMarginEnd(Landroid/view/ViewGroup$LayoutParams;I)V

    const p1, 0x7f090688

    .line 245
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->halo:Landroid/view/View;

    .line 246
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onAvatarSizeChanged()V

    .line 248
    new-instance p1, Lcom/narvii/livelayer/LiveLayerPreloadHelper;

    invoke-direct {p1, v3}, Lcom/narvii/livelayer/LiveLayerPreloadHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->preloadHelper:Lcom/narvii/livelayer/LiveLayerPreloadHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/livelayer/LiveLayerOnlineBar;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->showPress(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/livelayer/LiveLayerOnlineBar;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->moveLayout(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/narvii/livelayer/LiveLayerOnlineBar;)I
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->getRandomDelayTime()I

    move-result p0

    return p0
.end method

.method static synthetic access$202(Lcom/narvii/livelayer/LiveLayerOnlineBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$302(Lcom/narvii/livelayer/LiveLayerOnlineBar;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->isDragging:Z

    return p1
.end method

.method static synthetic access$400(Lcom/narvii/livelayer/LiveLayerOnlineBar;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->updateMemberCount(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/livelayer/LiveLayerOnlineBar;Lcom/narvii/model/User;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->startHoloAnimation(Lcom/narvii/model/User;)V

    return-void
.end method

.method static synthetic access$600(Lcom/narvii/livelayer/LiveLayerOnlineBar;Lcom/narvii/model/User;)Landroid/view/View;
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->getAvatarView(Lcom/narvii/model/User;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/narvii/livelayer/LiveLayerOnlineBar;Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/model/User;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserAvatarView(Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/model/User;)V

    return-void
.end method

.method static synthetic access$800(Lcom/narvii/livelayer/LiveLayerOnlineBar;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->layoutAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$802(Lcom/narvii/livelayer/LiveLayerOnlineBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->layoutAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$900(Lcom/narvii/livelayer/LiveLayerOnlineBar;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->relayout()V

    return-void
.end method

.method private adjustOnlineTextBarWidth(Z)V
    .locals 2

    .line 1531
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    div-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    add-int/2addr v0, p1

    .line 1533
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->greenOval:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/ViewUtils;->setMarginStart(Landroid/view/ViewGroup$LayoutParams;I)V

    return-void
.end method

.method private cancelAnimation(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 897
    iput-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animating:Z

    .line 898
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedAnim:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 899
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 900
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dotFadeAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 904
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 908
    :cond_1
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 909
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 912
    :cond_2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 913
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 914
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 917
    :cond_3
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 918
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 921
    :cond_4
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->layoutAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 922
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->layoutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 925
    :cond_5
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->joinAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 926
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerDataSource;->checkRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 927
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->nextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 928
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 929
    sget-object v2, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_6

    .line 931
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animEndRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 933
    :cond_6
    iput-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animEndRunnable:Ljava/lang/Runnable;

    .line 936
    :cond_7
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->nextRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 938
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->layoutAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 939
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->layoutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 942
    :cond_8
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->holoAnimation:Landroid/view/animation/Animation;

    if-eqz p1, :cond_9

    .line 943
    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 945
    :cond_9
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->holoAnimation2:Landroid/view/animation/Animation;

    if-eqz p1, :cond_a

    .line 946
    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    :cond_a
    const p1, 0x7f090688

    .line 949
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 951
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 954
    :cond_b
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dotFadeInAnimation:Landroid/view/animation/Animation;

    if-eqz p1, :cond_c

    .line 955
    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 958
    :cond_c
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldGreenOval:Landroid/view/View;

    if-eqz p1, :cond_d

    .line 959
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 960
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldGreenOval:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 963
    :cond_d
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerDataSource;->correctMembersCountRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private changeX(I)V
    .locals 3

    const/4 v0, 0x0

    .line 734
    :goto_0
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 735
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    int-to-float v2, p1

    .line 736
    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getAvatarView()Landroid/view/View;
    .locals 6

    .line 759
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0b04df

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090c10

    .line 760
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/UserAvatarLayout;

    .line 761
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 762
    iget v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 763
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 764
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 765
    invoke-virtual {v2}, Lcom/narvii/widget/UserAvatarLayout;->getAvatarView()Lcom/narvii/widget/ThumbImageView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->getForceRequestWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->getForceRequestHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/narvii/widget/ThumbImageView;->setForceRequestSize(II)V

    .line 766
    iget-boolean v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->showShadow:Z

    if-nez v3, :cond_0

    .line 767
    sget v3, Lcom/narvii/livelayer/LiveLayerOnlineBar;->shadowColor:I

    invoke-virtual {v2, v1, v3}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarShadow(II)V

    :cond_0
    return-object v0
.end method

.method private getAvatarView(Lcom/narvii/model/User;)Landroid/view/View;
    .locals 2

    .line 782
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->getAvatarView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090c10

    .line 783
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/UserAvatarLayout;

    .line 784
    invoke-direct {p0, v1, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserAvatarView(Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/model/User;)V

    return-object v0
.end method

.method private getExpandWidth()I
    .locals 4

    .line 1537
    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    int-to-float v1, v0

    iget v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->overlapRatio:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    mul-float v1, v1, v3

    iget v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    mul-float v1, v1, v2

    int-to-float v2, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 1538
    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    return v1
.end method

.method private getHoloAlphaAnimation()Landroid/view/animation/AlphaAnimation;
    .locals 3

    .line 1455
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1456
    new-instance v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$9;

    invoke-direct {v1, p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar$9;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x7d0

    .line 1468
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-object v0
.end method

.method private getRandomDelayTime()I
    .locals 2

    .line 1473
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->random:Ljava/util/Random;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x9c4

    return v0
.end method

.method private moveLayout(I)V
    .locals 8

    .line 716
    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->overlapRatio:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 717
    :goto_0
    iget v5, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    add-int/lit8 v6, v5, -0x1

    if-ge v3, v6, :cond_0

    .line 718
    iget-object v6, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v3

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 719
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    mul-int v7, v0, v4

    add-int/2addr v7, p1

    .line 721
    invoke-static {v6, v7}, Lcom/narvii/util/ViewUtils;->setMarginStart(Landroid/view/ViewGroup$LayoutParams;I)V

    .line 722
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 727
    :cond_0
    invoke-direct {p0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->resetShadowColor(I)V

    .line 728
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    int-to-float p1, p1

    .line 729
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    int-to-float v3, v1

    iget v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->overlapRatio:F

    sub-float/2addr v2, v4

    mul-float v3, v3, v2

    iget v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    add-int/lit8 v2, v2, -0x2

    int-to-float v2, v2

    mul-float v3, v3, v2

    add-float/2addr p1, v3

    int-to-float v2, v1

    add-float/2addr p1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr p1, v1

    float-to-int p1, p1

    invoke-static {v0, p1}, Lcom/narvii/util/ViewUtils;->setMarginStart(Landroid/view/ViewGroup$LayoutParams;I)V

    .line 730
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private onAvatarSizeChanged()V
    .locals 4

    .line 624
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    if-eqz v0, :cond_1

    .line 625
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    invoke-virtual {v0, v1}, Lcom/narvii/livelayer/ws/ClipLayout;->setAvatarSize(I)V

    const/4 v0, 0x0

    .line 627
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 628
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x7f090c10

    .line 630
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/UserAvatarLayout;

    .line 631
    invoke-direct {p0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setAvatarSize(Landroid/view/View;)V

    goto :goto_0

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->recentAvatar:Lcom/narvii/widget/UserAvatarLayout;

    if-eqz v0, :cond_2

    .line 637
    invoke-direct {p0, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setAvatarSize(Landroid/view/View;)V

    .line 640
    :cond_2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 641
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 642
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 643
    iget v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0x6

    if-eq v1, v2, :cond_3

    .line 645
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 646
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 650
    :cond_3
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->halo:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 651
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 652
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    .line 653
    iget v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    add-int v3, v2, v1

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v2, v1

    .line 654
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 655
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->halo:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method

.method private relayout()V
    .locals 4

    .line 1477
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUpAvatarLayout()V

    .line 1478
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUpTextLayout()V

    .line 1480
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1481
    invoke-direct {p0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->resetShadowColor(I)V

    goto :goto_0

    .line 1483
    :cond_0
    sget v0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->shadowColor:I

    invoke-direct {p0, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->resetShadowColor(I)V

    .line 1485
    :goto_0
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->resetMoreLayer()V

    .line 1486
    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    iget v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->minAvatarCount:I

    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    .line 1487
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarShown:Z

    if-eq v0, v1, :cond_4

    .line 1488
    iput-boolean v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarShown:Z

    .line 1490
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->showFadeAnimation:Z

    if-eqz v0, :cond_3

    .line 1491
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v1, :cond_2

    const v2, 0x7f010029

    goto :goto_1

    :cond_2
    const v2, 0x7f01002a

    :goto_1
    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0x190

    .line 1492
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v2, 0x0

    .line 1493
    invoke-static {p0, v0, v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 1496
    :cond_3
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onAvatarShownChangeListener:Lcom/narvii/livelayer/LiveLayerOnlineBar$OnAvatarShownChangeListener;

    if-eqz v0, :cond_4

    .line 1497
    invoke-interface {v0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar$OnAvatarShownChangeListener;->onAvatarShownChanged(Z)V

    :cond_4
    return-void
.end method

.method private resetMoreLayer()V
    .locals 6

    .line 1019
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->showMore:Z

    if-eqz v0, :cond_1

    .line 1020
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f090723

    .line 1022
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09080a

    .line 1023
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1025
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1026
    iget v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1027
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1028
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1030
    iget v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    .line 1031
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1032
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x6

    div-int/lit8 v2, v2, 0x14

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1033
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 1034
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    .line 1035
    iget-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget v3, v3, Lcom/narvii/livelayer/LiveLayerDataSource;->currentMembersCount:I

    iget v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    const/16 v5, 0x8

    if-le v3, v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    .line 1037
    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1038
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-ne v2, v5, :cond_1

    if-nez v3, :cond_1

    .line 1040
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f010029

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 1041
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    return-void
.end method

.method private resetShadowColor(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 741
    :goto_0
    iget v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    add-int/lit8 v3, v2, -0x1

    const v4, 0x7f090c10

    if-ge v1, v3, :cond_1

    .line 742
    iget-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 743
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/UserAvatarLayout;

    if-eqz v2, :cond_0

    .line 745
    iget v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarShadowSize:I

    invoke-virtual {v2, v3, p1}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarShadow(II)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lez v2, :cond_2

    .line 750
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 751
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    if-eqz p1, :cond_2

    .line 753
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarShadowSize:I

    invoke-virtual {p1, v1, v0}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarShadow(II)V

    :cond_2
    return-void
.end method

.method private setAvatarSize(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 663
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 664
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 665
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 666
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setUpAvatarLayout()V
    .locals 7

    .line 1588
    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->maxAvatarCount:I

    if-le v0, v1, :cond_0

    const-string v0, "avatar count is beyond max"

    .line 1589
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1591
    :goto_0
    iget v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    if-ge v1, v2, :cond_3

    .line 1592
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1594
    iget-boolean v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    if-nez v4, :cond_2

    .line 1595
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1596
    iget v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    add-int/lit8 v5, v4, -0x1

    sub-int/2addr v5, v1

    if-nez v5, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v1

    int-to-float v1, v4

    iget v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->overlapRatio:F

    sub-float/2addr v5, v6

    mul-float v4, v4, v5

    mul-float v1, v1, v4

    float-to-int v1, v1

    :goto_1
    invoke-static {v2, v1}, Lcom/narvii/util/ViewUtils;->setMarginStart(Landroid/view/View;I)V

    goto :goto_2

    :cond_2
    const/4 v1, 0x4

    .line 1598
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1599
    invoke-static {v2, v0}, Lcom/narvii/util/ViewUtils;->setMarginStart(Landroid/view/View;I)V

    :goto_2
    move v1, v3

    goto :goto_0

    :cond_3
    return-void
.end method

.method private setUpTextLayout()V
    .locals 5

    .line 1511
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1512
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 1514
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->organizerInList:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    iget v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->minAvatarCount:I

    if-ge v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1515
    :goto_0
    iget-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    iget-boolean v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->autoFitAvatarSize:Z

    if-nez v4, :cond_3

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->forceHideOnlineTextLayout:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1516
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 1517
    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    if-lez v0, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-direct {p0, v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->adjustOnlineTextBarWidth(Z)V

    .line 1521
    :cond_5
    :goto_3
    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    int-to-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->overlapRatio:F

    sub-float/2addr v3, v4

    mul-float v2, v2, v3

    iget v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float v2, v2, v1

    int-to-float v1, v0

    add-float/2addr v2, v1

    float-to-int v1, v2

    .line 1523
    iget-boolean v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    if-eqz v2, :cond_6

    .line 1524
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Lcom/narvii/util/ViewUtils;->setMarginStart(Landroid/view/View;I)V

    goto :goto_4

    .line 1526
    :cond_6
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Lcom/narvii/util/ViewUtils;->setMarginStart(Landroid/view/View;I)V

    :goto_4
    return-void
.end method

.method private setUserAvatarView(Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/model/User;)V
    .locals 1

    .line 789
    invoke-virtual {p1, p2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 790
    iget p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarStrokeWidth:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    int-to-float p2, p2

    .line 791
    invoke-virtual {p1, p2}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarStroke(F)V

    :cond_0
    return-void
.end method

.method private setUserList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 796
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerDataSource;->getCurrentMembersCount()I

    move-result v0

    iget-boolean v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->organizerInList:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserList(Ljava/util/List;IZ)V

    return-void
.end method

.method private showPress(Z)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 691
    iget-boolean v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->pressed:Z

    if-ne v2, v1, :cond_0

    return-void

    .line 694
    :cond_0
    iput-boolean v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->pressed:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0xc8

    if-eqz v1, :cond_1

    .line 696
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3f7ae148    # 0.98f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f7ae148    # 0.98f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v11, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v12, v6

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 697
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 698
    invoke-virtual {v1, v3}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 699
    invoke-static {v0, v1, v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 701
    :cond_1
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v14, 0x3f7ae148    # 0.98f

    const/high16 v15, 0x3f800000    # 1.0f

    const v16, 0x3f7ae148    # 0.98f

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    move-object v13, v1

    move/from16 v18, v6

    move/from16 v19, v7

    invoke-direct/range {v13 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 702
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 703
    invoke-virtual {v1, v3}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 705
    invoke-static {v0, v1, v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    :goto_0
    return-void
.end method

.method static startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    .line 139
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    if-eqz p2, :cond_2

    .line 141
    invoke-interface {p2, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 145
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 147
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private startHoloAnimation(Lcom/narvii/model/User;)V
    .locals 11

    const v0, 0x7f090688

    .line 1427
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1429
    invoke-virtual {p1}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0805b5

    goto :goto_0

    :cond_0
    const p1, 0x7f0805b4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1430
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->getHoloAlphaAnimation()Landroid/view/animation/AlphaAnimation;

    move-result-object p1

    .line 1431
    new-instance v10, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f9eb852    # 1.24f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f9eb852    # 1.24f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1432
    new-instance v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$8;

    invoke-direct {v1, p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar$8;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar;)V

    invoke-virtual {v10, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x7d0

    .line 1444
    invoke-virtual {v10, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1445
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1446
    invoke-virtual {v1, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1447
    invoke-virtual {v1, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1448
    iput-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->holoAnimation:Landroid/view/animation/Animation;

    const/4 p1, 0x0

    .line 1449
    invoke-static {v0, v1, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    return-void
.end method

.method private updateMemberCount(I)V
    .locals 6

    .line 996
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 997
    iget v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextOne:I

    if-eqz v2, :cond_0

    .line 998
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineText:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1004
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldCountView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1005
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1008
    :cond_2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onUpdateMemberCountListener:Lcom/narvii/livelayer/LiveLayerOnlineBar$OnUpdateMemberCountListener;

    if-eqz v0, :cond_3

    .line 1009
    invoke-interface {v0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar$OnUpdateMemberCountListener;->onUpdateMemberCount(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public disallowNewUserCome()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->tapping:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->isDragging:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animating:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getAvatarCount()I
    .locals 1

    .line 269
    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    return v0
.end method

.method protected getForceRequestHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getForceRequestWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMinAvatarCount()I
    .locals 1

    .line 274
    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->minAvatarCount:I

    return v0
.end method

.method public getOnBarClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onBarClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getOnFoldChangedListener()Lcom/narvii/livelayer/LiveLayerOnlineBar$OnFoldChangedListener;
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onFoldChangedListener:Lcom/narvii/livelayer/LiveLayerOnlineBar$OnFoldChangedListener;

    return-object v0
.end method

.method protected getPreloadAvatarSize()I
    .locals 1

    .line 1108
    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    return v0
.end method

.method public goFold(Z)V
    .locals 9

    .line 1050
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->supportFold:Z

    if-nez v0, :cond_0

    return-void

    .line 1054
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    .line 1056
    sget-boolean v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->liveLayerBarStated:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 1057
    iget-boolean v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v3, p1, :cond_3

    const-string v3, "prefs"

    .line 1058
    invoke-interface {v0, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SharedPreferences;

    const-string v6, "liveLayerFold"

    .line 1059
    invoke-interface {v3, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_0

    :cond_1
    move-object v7, v4

    .line 1060
    :goto_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v6, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1061
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-eq v7, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    or-int/2addr v1, v3

    :cond_3
    if-eqz v1, :cond_4

    .line 1066
    sput-boolean v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->liveLayerBarStated:Z

    .line 1069
    :cond_4
    iput-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    .line 1071
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->supportFold:Z

    if-eqz v0, :cond_8

    const v0, 0x7f090680

    .line 1072
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1074
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b04de

    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0904e1

    .line 1076
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldGreenOval:Landroid/view/View;

    const v3, 0x7f0907b3

    .line 1077
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldCountView:Landroid/widget/TextView;

    .line 1078
    iget-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldCountView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1079
    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_5

    .line 1080
    iget v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v6, v7}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v6

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1081
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v6, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v7, v8}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1083
    :cond_5
    iget-object v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldCountView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1084
    iget-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldCountView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget v4, v4, Lcom/narvii/livelayer/LiveLayerDataSource;->currentMembersCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1086
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1087
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1088
    iget v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    int-to-float v4, v4

    const v6, 0x3f3ae148    # 0.73f

    mul-float v4, v4, v6

    float-to-int v4, v4

    invoke-static {v3, v4}, Lcom/narvii/util/ViewUtils;->setMarginStart(Landroid/view/ViewGroup$LayoutParams;I)V

    .line 1089
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1091
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_6
    if-eqz p1, :cond_7

    .line 1093
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    iget v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->minAvatarCount:I

    if-lt v1, v3, :cond_7

    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1096
    :cond_8
    invoke-direct {p0, v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->cancelAnimation(Z)V

    .line 1098
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->relayout()V

    if-eqz p1, :cond_9

    .line 1101
    invoke-direct {p0, v5}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->resetShadowColor(I)V

    goto :goto_3

    .line 1103
    :cond_9
    sget p1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->shadowColor:I

    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->resetShadowColor(I)V

    :goto_3
    return-void
.end method

.method public isAvatarShown()Z
    .locals 1

    .line 553
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarShown:Z

    return v0
.end method

.method public isDragging()Z
    .locals 1

    .line 557
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->isDragging:Z

    return v0
.end method

.method public isTapping()Z
    .locals 1

    .line 561
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->tapping:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 676
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 677
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 678
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 679
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 681
    :cond_0
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerDataSource;->checkRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 682
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerDataSource;->checkRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1505
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x1

    .line 1506
    invoke-direct {p0, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->cancelAnimation(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 284
    iget-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->supportFold:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onBarClickListener:Landroid/view/View$OnClickListener;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 288
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarShown:Z

    return p1
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 1543
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1545
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1546
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1548
    iget v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->autoFitAvatarCountMax:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1549
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1551
    iget-object v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    const/high16 v5, -0x80000000

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v4, v5, v2}, Landroid/view/View;->measure(II)V

    .line 1555
    :cond_0
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    :goto_0
    sub-int/2addr v0, v2

    .line 1557
    iget v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->autoFitAvatarCountMax:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->autoFitAvatarSize:Z

    if-eqz v2, :cond_5

    :cond_2
    if-eqz v1, :cond_5

    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->maxWidth:I

    if-eq v0, v1, :cond_5

    .line 1558
    iput v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->maxWidth:I

    .line 1560
    iget-boolean v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->autoFitAvatarSize:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    .line 1561
    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->maxWidth:I

    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->defaultAvatarSize:I

    sub-int v1, v0, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    int-to-float v3, v3

    iget v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->overlapRatio:F

    sub-float v5, v2, v4

    mul-float v3, v3, v5

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->maxAvatarCount:I

    int-to-float v0, v0

    sub-float v1, v2, v4

    .line 1566
    iget v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->maxAvatarCount:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    mul-float v1, v1, v3

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    .line 1567
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onAvatarSizeChanged()V

    .line 1568
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerDataSource;->getUserList()Ljava/util/LinkedList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserList(Ljava/util/List;)V

    .line 1569
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_1

    .line 1570
    :cond_3
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->autoFitAvatarCountMax:I

    if-eq v1, v3, :cond_5

    .line 1571
    iget v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->defaultAvatarSize:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    int-to-float v3, v3

    iget v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->overlapRatio:F

    sub-float v4, v2, v4

    mul-float v3, v3, v4

    div-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1572
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->minAvatarCount:I

    if-ge v0, v1, :cond_4

    move v0, v1

    .line 1575
    :cond_4
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->maxAvatarCount:I

    if-eq v0, v1, :cond_5

    .line 1576
    iput v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->maxAvatarCount:I

    .line 1577
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerDataSource;->getUserList()Ljava/util/LinkedList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserList(Ljava/util/List;)V

    .line 1578
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1583
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    iget-boolean p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->supportFold:Z

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0701c0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_2

    :cond_6
    iget p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onMembersCountChanged(I)V
    .locals 3

    .line 969
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 970
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget v0, v0, Lcom/narvii/livelayer/LiveLayerDataSource;->currentMembersCount:I

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    .line 974
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animator:Landroid/animation/ValueAnimator;

    .line 975
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animator:Landroid/animation/ValueAnimator;

    const/16 v1, 0x320

    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget v2, v2, Lcom/narvii/livelayer/LiveLayerDataSource;->currentMembersCount:I

    sub-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x64

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 976
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$6;

    invoke-direct {v0, p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar$6;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 987
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 989
    :cond_1
    invoke-direct {p0, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->updateMemberCount(I)V

    .line 992
    :goto_0
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->resetMoreLayer()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 293
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->supportFold:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onBarClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    return v1

    .line 297
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarShown:Z

    if-nez v0, :cond_1

    return v1

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    .line 302
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->gestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_3

    .line 306
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/narvii/livelayer/LiveLayerOnlineBar$3;

    invoke-direct {v3, p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar$3;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar;)V

    invoke-direct {v0, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->gestureDetector:Landroid/view/GestureDetector;

    .line 339
    :cond_3
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 340
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    if-eqz v0, :cond_1f

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, "-"

    const/4 v5, 0x2

    if-eq v0, v2, :cond_11

    if-eq v0, v5, :cond_5

    const/4 p1, 0x3

    if-eq v0, p1, :cond_4

    goto/16 :goto_d

    .line 512
    :cond_4
    iput-boolean v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->tapping:Z

    .line 513
    iput-boolean v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->isDragging:Z

    .line 514
    invoke-direct {p0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->showPress(Z)V

    .line 515
    iget-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    invoke-virtual {p0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->goFold(Z)V

    .line 516
    sget p1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->shadowColor:I

    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->resetShadowColor(I)V

    goto/16 :goto_d

    .line 352
    :cond_5
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->supportFold:Z

    if-nez v0, :cond_6

    return v2

    .line 355
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->initialMotionX:F

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 356
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 357
    iget v6, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mTouchSlop:I

    if-le v0, v6, :cond_7

    .line 358
    iput-boolean v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->isDragging:Z

    .line 361
    :cond_7
    iget-boolean v6, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->isDragging:Z

    if-eqz v6, :cond_21

    .line 363
    iget v6, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    int-to-float v6, v6

    iget v7, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->overlapRatio:F

    sub-float/2addr v3, v7

    mul-float v6, v6, v3

    float-to-int v3, v6

    .line 365
    invoke-direct {p0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->showPress(Z)V

    .line 367
    iget-boolean v6, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    if-nez v6, :cond_b

    .line 368
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v5

    if-eqz v5, :cond_8

    if-lez p1, :cond_9

    goto :goto_0

    :cond_8
    if-gez p1, :cond_9

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_9
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_a

    const/4 v0, 0x0

    :cond_a
    sub-int p1, v3, v0

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "marginStart"

    invoke-static {v3, v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 376
    :cond_b
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v4

    if-eqz v4, :cond_c

    if-gez p1, :cond_d

    goto :goto_2

    :cond_c
    if-lez p1, :cond_d

    :goto_2
    const/4 p1, 0x1

    goto :goto_3

    :cond_d
    const/4 p1, 0x0

    :goto_3
    if-nez p1, :cond_e

    const/4 v0, 0x0

    .line 382
    :cond_e
    iget p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    div-int/2addr p1, v5

    iget v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    sub-int/2addr v4, v5

    mul-int v4, v4, v3

    sub-int/2addr p1, v4

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    .line 383
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 386
    :goto_4
    invoke-direct {p0, v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->cancelAnimation(Z)V

    .line 388
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    invoke-virtual {v0, v2}, Lcom/narvii/livelayer/ws/ClipLayout;->setShouldClip(Z)V

    .line 389
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 391
    :cond_f
    :goto_5
    iget v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    if-ge v0, v3, :cond_10

    .line 392
    iget-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 394
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 398
    :cond_10
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->moveLayout(I)V

    goto/16 :goto_d

    .line 402
    :cond_11
    invoke-direct {p0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->showPress(Z)V

    .line 404
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->isDragging:Z

    if-nez v0, :cond_12

    .line 405
    iput-boolean v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->tapping:Z

    .line 406
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onBarClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_21

    .line 407
    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto/16 :goto_d

    .line 413
    :cond_12
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget-object v6, v6, Lcom/narvii/livelayer/LiveLayerDataSource;->checkRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 414
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget-object v6, v6, Lcom/narvii/livelayer/LiveLayerDataSource;->checkRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->getRandomDelayTime()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 416
    sget v0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->shadowColor:I

    invoke-direct {p0, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->resetShadowColor(I)V

    .line 418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->initialMotionX:F

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 420
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->getExpandWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 422
    iget-object v6, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    iget v8, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mMaximumFlingVelocity:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 423
    iget-object v6, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v6

    .line 424
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 425
    iget-boolean v8, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    if-eqz v8, :cond_14

    .line 426
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v8

    if-eqz v8, :cond_13

    iget v8, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mMinimumFlingVelocity:I

    neg-int v8, v8

    int-to-float v8, v8

    cmpg-float v6, v6, v8

    if-gez v6, :cond_16

    goto :goto_6

    :cond_13
    iget v8, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mMinimumFlingVelocity:I

    int-to-float v8, v8

    cmpl-float v6, v6, v8

    if-lez v6, :cond_16

    :goto_6
    goto :goto_7

    .line 431
    :cond_14
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v8

    if-eqz v8, :cond_15

    iget v8, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mMinimumFlingVelocity:I

    int-to-float v8, v8

    cmpl-float v6, v6, v8

    if-lez v6, :cond_16

    goto :goto_7

    :cond_15
    iget v8, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mMinimumFlingVelocity:I

    neg-int v8, v8

    int-to-float v8, v8

    cmpg-float v6, v6, v8

    if-gez v6, :cond_16

    :goto_7
    const/4 v6, 0x1

    goto :goto_8

    :cond_16
    const/4 v6, 0x0

    :goto_8
    if-nez v6, :cond_1b

    .line 437
    iget-boolean v8, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    if-eqz v8, :cond_18

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v8

    if-eqz v8, :cond_17

    neg-int v8, v0

    if-ge p1, v8, :cond_18

    goto :goto_9

    :cond_17
    if-gt p1, v0, :cond_1a

    :cond_18
    iget-boolean v8, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    if-nez v8, :cond_1b

    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v8

    if-eqz v8, :cond_19

    if-le p1, v0, :cond_1b

    goto :goto_9

    :cond_19
    neg-int v0, v0

    if-ge p1, v0, :cond_1b

    :cond_1a
    :goto_9
    const/4 v6, 0x1

    .line 442
    :cond_1b
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 443
    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    int-to-float v0, v0

    iget v8, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->overlapRatio:F

    sub-float/2addr v3, v8

    mul-float v0, v0, v3

    float-to-int v0, v0

    .line 444
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/ViewUtils;->getMarginStart(Landroid/view/ViewGroup$LayoutParams;)I

    move-result p1

    .line 447
    iget-boolean v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    if-eq v6, v3, :cond_1c

    const/4 v3, 0x1

    goto :goto_a

    :cond_1c
    const/4 v3, 0x0

    :goto_a
    if-nez v3, :cond_1d

    goto :goto_b

    .line 451
    :cond_1d
    iget v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    div-int/2addr v3, v5

    iget v8, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    sub-int/2addr v8, v5

    mul-int v8, v8, v0

    sub-int/2addr v3, v8

    iget-object v8, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onlineTextLayout:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v3, v8

    .line 452
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_b
    new-array v3, v5, [I

    aput p1, v3, v1

    aput v0, v3, v2

    .line 454
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldAnimator:Landroid/animation/ValueAnimator;

    .line 455
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/narvii/livelayer/LiveLayerOnlineBar$4;

    invoke-direct {v3, p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar$4;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sub-int/2addr v0, p1

    .line 463
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 v0, 0x0

    const/high16 v1, 0x447a0000    # 1000.0f

    cmpl-float v0, v7, v0

    if-lez v0, :cond_1e

    int-to-float v0, p1

    div-float/2addr v0, v7

    .line 466
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_c

    :cond_1e
    int-to-float v0, p1

    const/high16 v3, 0x42480000    # 50.0f

    div-float/2addr v0, v3

    .line 468
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_c
    const/16 v1, 0xfa

    .line 471
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "speed"

    invoke-static {v1, p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldAnimator:Landroid/animation/ValueAnimator;

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 475
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 477
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$5;

    invoke-direct {v0, p0, v6}, Lcom/narvii/livelayer/LiveLayerOnlineBar$5;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar;Z)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_d

    .line 344
    :cond_1f
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 345
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 347
    :cond_20
    iput-boolean v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->tapping:Z

    .line 348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->initialMotionX:F

    .line 349
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->initialWidth:I

    :cond_21
    :goto_d
    return v2
.end method

.method public onUserJoined(Lcom/narvii/model/User;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1116
    iput-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animating:Z

    .line 1118
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerDataSource;->correctMembersCountRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1120
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1121
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1124
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-boolean v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fromCBB:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const v2, 0x7f0b04e1

    goto :goto_1

    :cond_3
    :goto_0
    const v2, 0x7f0b04e2

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    .line 1125
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    const v2, 0x7f090c10

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/UserAvatarLayout;

    .line 1126
    invoke-direct {p0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setAvatarSize(Landroid/view/View;)V

    .line 1127
    invoke-direct {p0, v1, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserAvatarView(Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/model/User;)V

    .line 1128
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    const v2, 0x7f0900e4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/ThumbImageView;

    .line 1129
    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->getForceRequestWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->getForceRequestHeight()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/narvii/widget/ThumbImageView;->setForceRequestSize(II)V

    .line 1130
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1132
    iget-boolean v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fromCBB:Z

    if-nez v1, :cond_6

    .line 1133
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    const v2, 0x7f090c11

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1134
    iget v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedText:I

    if-eqz v2, :cond_4

    .line 1135
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedText:I

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v5, 0xc

    invoke-virtual {p1, v5}, Lcom/narvii/model/User;->ellipticalNickname(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    const/16 v0, 0x1e

    .line 1137
    invoke-virtual {p1, v0}, Lcom/narvii/model/User;->ellipticalNickname(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1139
    :goto_2
    invoke-virtual {p1}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f080642

    goto :goto_3

    :cond_5
    const v0, 0x7f080641

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1142
    :cond_6
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 1146
    iget-object v0, p1, Lcom/narvii/model/User;->icon:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1147
    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->getPreloadAvatarSize()I

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->getPreloadAvatarSize()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/narvii/widget/NVImageView;->fitSize(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 1148
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->preloadHelper:Lcom/narvii/livelayer/LiveLayerPreloadHelper;

    invoke-virtual {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->getPreloadAvatarSize()I

    move-result v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/narvii/livelayer/LiveLayerPreloadHelper;->preloadIcon(Ljava/lang/String;ILcom/narvii/util/Callback;)V

    .line 1152
    :cond_7
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->joinAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1153
    new-instance v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    invoke-direct {v0, p0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar;Lcom/narvii/model/User;)V

    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->joinAnimRunnable:Ljava/lang/Runnable;

    .line 1422
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->joinAnimRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x5dc

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAvatarStrokeWidth(I)V
    .locals 0

    .line 670
    iput p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarStrokeWidth:I

    return-void
.end method

.method public setCid(I)V
    .locals 0

    .line 264
    iput p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->cid:I

    return-void
.end method

.method public setForceHideOnlineTextLayout(Z)V
    .locals 0

    .line 531
    iput-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->forceHideOnlineTextLayout:Z

    return-void
.end method

.method public setLift(I)V
    .locals 3

    .line 535
    iget v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->lift:I

    if-ne v0, p1, :cond_0

    return-void

    .line 538
    :cond_0
    iput p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->lift:I

    .line 539
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 540
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 542
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 543
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setOnAvatarShownChangeListener(Lcom/narvii/livelayer/LiveLayerOnlineBar$OnAvatarShownChangeListener;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onAvatarShownChangeListener:Lcom/narvii/livelayer/LiveLayerOnlineBar$OnAvatarShownChangeListener;

    return-void
.end method

.method public setOnBarClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onBarClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnFoldChangedListener(Lcom/narvii/livelayer/LiveLayerOnlineBar$OnFoldChangedListener;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onFoldChangedListener:Lcom/narvii/livelayer/LiveLayerOnlineBar$OnFoldChangedListener;

    return-void
.end method

.method public setOnMemberCountChangedListener(Lcom/narvii/livelayer/LiveLayerOnlineBar$OnMemberCountChangedListener;)V
    .locals 0

    .line 569
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onMemberCountChangedListener:Lcom/narvii/livelayer/LiveLayerOnlineBar$OnMemberCountChangedListener;

    return-void
.end method

.method public setOnUpdateMemberCountListener(Lcom/narvii/livelayer/LiveLayerOnlineBar$OnUpdateMemberCountListener;)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onUpdateMemberCountListener:Lcom/narvii/livelayer/LiveLayerOnlineBar$OnUpdateMemberCountListener;

    return-void
.end method

.method public setShouldFilterUserList(Z)V
    .locals 0

    .line 549
    iput-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->shouldFilterUserList:Z

    return-void
.end method

.method public setShowMore(Z)V
    .locals 0

    .line 1014
    iput-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->showMore:Z

    .line 1015
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->resetMoreLayer()V

    return-void
.end method

.method public setUserList(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 801
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserList(Ljava/util/List;IZ)V

    return-void
.end method

.method public setUserList(Ljava/util/List;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;IZ)V"
        }
    .end annotation

    .line 805
    iput-boolean p3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->organizerInList:Z

    .line 806
    iget-boolean v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->shouldFilterUserList:Z

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerDataSource;->filterHelper:Lcom/narvii/util/FilterHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 810
    :cond_0
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v0

    .line 811
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->maxAvatarCount:I

    if-ge v0, v1, :cond_1

    if-eqz p3, :cond_1

    .line 812
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 815
    :cond_1
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget-boolean v1, v0, Lcom/narvii/livelayer/LiveLayerDataSource;->shared:Z

    if-nez v1, :cond_2

    .line 816
    invoke-virtual {v0}, Lcom/narvii/livelayer/LiveLayerDataSource;->getUserQueue()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_2
    const/4 v0, 0x0

    .line 818
    invoke-direct {p0, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->cancelAnimation(Z)V

    .line 820
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    invoke-virtual {v1, v0}, Lcom/narvii/livelayer/ws/ClipLayout;->setShouldClip(Z)V

    .line 823
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 824
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_3
    if-nez p1, :cond_4

    .line 828
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 830
    :cond_4
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/narvii/livelayer/LiveLayerDataSource;->setUserList(Ljava/util/LinkedList;)V

    .line 832
    iput v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 833
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->recentAvatarLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x1

    if-eqz p3, :cond_6

    .line 836
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 837
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x1

    :goto_0
    if-ge p2, p1, :cond_5

    .line 839
    iget-object p3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 841
    :cond_5
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->relayout()V

    return-void

    .line 845
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    .line 846
    iget v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->maxAvatarCount:I

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iput p3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 847
    iget-object p3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p3

    sub-int/2addr p3, v1

    .line 849
    iget v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    iget v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->minAvatarCount:I

    if-lt v2, v3, :cond_b

    sub-int/2addr p3, v2

    if-lez p3, :cond_7

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p3, :cond_8

    .line 853
    iget-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    if-gez p3, :cond_8

    const/4 v2, 0x0

    :goto_2
    neg-int v3, p3

    if-ge v2, v3, :cond_8

    .line 857
    iget-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->getAvatarView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 863
    :cond_8
    iget p3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    sub-int/2addr p3, v1

    const/4 v2, 0x1

    :goto_3
    if-ltz p3, :cond_a

    .line 864
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/User;

    .line 865
    iget-object v4, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int/2addr v2, v1

    if-eqz v4, :cond_9

    const v5, 0x7f090c10

    .line 868
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/narvii/widget/UserAvatarLayout;

    if-eqz v4, :cond_9

    .line 870
    invoke-direct {p0, v4, v3}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserAvatarView(Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/model/User;)V

    :cond_9
    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    .line 875
    :cond_a
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result p3

    if-nez p3, :cond_d

    .line 876
    iget-object p3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->recentAvatar:Lcom/narvii/widget/UserAvatarLayout;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    invoke-direct {p0, p3, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserAvatarView(Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/model/User;)V

    .line 877
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->recentAvatarLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 880
    :cond_b
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 p3, 0x1

    :goto_4
    if-ge p3, p1, :cond_c

    .line 882
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    .line 884
    :cond_c
    iput v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 887
    :cond_d
    :goto_5
    invoke-direct {p0}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->relayout()V

    .line 889
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget p3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/livelayer/LiveLayerDataSource;->setCurrentMembersCount(I)V

    .line 891
    iget-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    invoke-virtual {p1}, Lcom/narvii/livelayer/LiveLayerDataSource;->getCurrentMembersCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onMembersCountChanged(I)V

    .line 893
    iget-boolean p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    invoke-virtual {p0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->goFold(Z)V

    return-void
.end method

.method public subscribeTopic(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 590
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "liveLayer"

    .line 591
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/livelayer/LiveLayerService;

    if-eqz v1, :cond_1

    .line 593
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    invoke-virtual {v1, p1, v0}, Lcom/narvii/livelayer/LiveLayerService;->subscribe(Ljava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    goto :goto_0

    .line 595
    :cond_1
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->liveLayerHelper:Lcom/narvii/livelayer/LiveLayerHelper;

    if-nez v1, :cond_2

    .line 596
    new-instance v1, Lcom/narvii/livelayer/LiveLayerHelper;

    iget v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->cid:I

    invoke-direct {v1, v0, v2}, Lcom/narvii/livelayer/LiveLayerHelper;-><init>(Lcom/narvii/app/NVContext;I)V

    iput-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->liveLayerHelper:Lcom/narvii/livelayer/LiveLayerHelper;

    :cond_2
    const-string v1, "liveLayerWS"

    .line 598
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/ws/LiveLayerWsService;

    .line 599
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->cid:I

    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->liveLayerHelper:Lcom/narvii/livelayer/LiveLayerHelper;

    invoke-virtual {v2, p1}, Lcom/narvii/livelayer/LiveLayerHelper;->getNdtopic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget-object v3, v3, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->subscribe(ILjava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    .line 601
    :goto_0
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->currentTopic:Ljava/lang/String;

    return-void
.end method

.method public unsubscribeTopic()V
    .locals 4

    .line 605
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->currentTopic:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 608
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "liveLayer"

    .line 609
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/livelayer/LiveLayerService;

    if-eqz v1, :cond_1

    .line 611
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->currentTopic:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    invoke-virtual {v1, v0, v2}, Lcom/narvii/livelayer/LiveLayerService;->unsubscribe(Ljava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    goto :goto_0

    .line 613
    :cond_1
    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->liveLayerHelper:Lcom/narvii/livelayer/LiveLayerHelper;

    if-nez v1, :cond_2

    .line 614
    new-instance v1, Lcom/narvii/livelayer/LiveLayerHelper;

    iget v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->cid:I

    invoke-direct {v1, v0, v2}, Lcom/narvii/livelayer/LiveLayerHelper;-><init>(Lcom/narvii/app/NVContext;I)V

    iput-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->liveLayerHelper:Lcom/narvii/livelayer/LiveLayerHelper;

    :cond_2
    const-string v1, "liveLayerWS"

    .line 616
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/ws/LiveLayerWsService;

    .line 617
    iget v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->cid:I

    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->liveLayerHelper:Lcom/narvii/livelayer/LiveLayerHelper;

    iget-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->currentTopic:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/narvii/livelayer/LiveLayerHelper;->getNdtopic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget-object v3, v3, Lcom/narvii/livelayer/LiveLayerDataSource;->liveLayerEventListener:Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/livelayer/ws/LiveLayerWsService;->unsubscribe(ILjava/lang/String;Lcom/narvii/livelayer/ws/LiveLayerEventListener;)V

    :goto_0
    const/4 v0, 0x0

    .line 619
    iput-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar;->currentTopic:Ljava/lang/String;

    return-void
.end method
