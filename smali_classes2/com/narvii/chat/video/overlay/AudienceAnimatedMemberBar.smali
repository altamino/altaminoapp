.class public Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;
.super Landroid/widget/FrameLayout;
.source "AudienceAnimatedMemberBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$OnAvatarShownChangeListener;,
        Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$OnMemberCountChangedListener;
    }
.end annotation


# static fields
.field public static final PRESS_SCALE:F = 0.98f

.field static shadowColor:I = 0x60000000


# instance fields
.field public animEndRunnable:Ljava/lang/Runnable;

.field animateLayoutChanges:Z

.field animating:Z

.field animator:Landroid/animation/ValueAnimator;

.field autoFitAvatarCountMax:I

.field autoFitAvatarSize:Z

.field avatarCount:I

.field private avatarShadowSize:I

.field public avatarShown:Z

.field avatarSize:I

.field barColor:I

.field public checkRunnable:Ljava/lang/Runnable;

.field private currentMembersCount:I

.field private defaultAvatarSize:I

.field public dotFadeAnimation:Landroid/view/animation/Animation;

.field public dotFadeInAnimation:Landroid/view/animation/Animation;

.field fadeoutAnim:Landroid/view/animation/Animation;

.field public foldCountView:Landroid/widget/TextView;

.field public foldGreenOval:Landroid/view/View;

.field halo:Landroid/view/View;

.field public holoAnimation:Landroid/view/animation/Animation;

.field public holoAnimation2:Landroid/view/animation/Animation;

.field public joinAnimRunnable:Ljava/lang/Runnable;

.field private layoutAnimator:Landroid/animation/ValueAnimator;

.field public final mTouchSlop:I

.field mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

.field maxAvatarCount:I

.field private maxWidth:I

.field minAvatarCount:I

.field public nextRunnable:Ljava/lang/Runnable;

.field onAvatarShownChangeListener:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$OnAvatarShownChangeListener;

.field onMemberCountChangedListener:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$OnMemberCountChangedListener;

.field onlineText:I

.field onlineTextLayout:Landroid/view/View;

.field onlineTextOne:I

.field onlineTextView:Landroid/widget/TextView;

.field overlapRatio:F

.field random:Ljava/util/Random;

.field recentAvatar:Lcom/narvii/widget/UserAvatarLayout;

.field recentAvatarLayout:Landroid/view/View;

.field showFadeAnimation:Z

.field showMore:Z

.field showRightCorner:Z

.field showShadow:Z

.field textMarginEnd:I

.field userJoinedAnim:Landroid/view/animation/Animation;

.field userJoinedText:I

.field userJoinedView:Landroid/view/View;

.field userList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field userQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 119
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userList:Ljava/util/LinkedList;

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userQueue:Ljava/util/LinkedList;

    const/4 v0, 0x4

    .line 72
    iput v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->maxAvatarCount:I

    const/4 v1, -0x1

    .line 74
    iput v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->autoFitAvatarCountMax:I

    const/4 v2, 0x1

    .line 75
    iput v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->minAvatarCount:I

    .line 92
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iput-object v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->random:Ljava/util/Random;

    .line 103
    new-instance v3, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$1;

    invoke-direct {v3, p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$1;-><init>(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)V

    iput-object v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->nextRunnable:Ljava/lang/Runnable;

    .line 110
    new-instance v3, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$2;

    invoke-direct {v3, p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$2;-><init>(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)V

    iput-object v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->checkRunnable:Ljava/lang/Runnable;

    .line 121
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 122
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    iput v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mTouchSlop:I

    .line 124
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0b04e0

    invoke-static {v3, v5, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 126
    sget-object v3, Lcom/narvii/amino/R$styleable;->LiveLayerOnlineBar:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 127
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f0701c3

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const/4 v3, 0x3

    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->defaultAvatarSize:I

    const/4 p2, 0x7

    const v3, 0x7f0f0cf0

    .line 128
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineText:I

    const/4 p2, 0x0

    const/16 v3, 0x10

    .line 129
    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedText:I

    const/16 v3, 0x8

    .line 130
    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineTextOne:I

    .line 131
    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->autoFitAvatarSize:Z

    .line 132
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->autoFitAvatarCountMax:I

    const/4 v1, 0x6

    .line 133
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->minAvatarCount:I

    const/16 v3, 0xb

    .line 134
    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->showMore:Z

    const/16 v3, 0xd

    .line 135
    invoke-virtual {p1, v3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->showShadow:Z

    const/16 v3, 0x9

    const/high16 v5, 0x3e800000    # 0.25f

    .line 137
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->overlapRatio:F

    const/16 v5, 0xc

    .line 138
    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->showRightCorner:Z

    const/high16 v5, -0x34000000    # -3.3554432E7f

    .line 139
    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->barColor:I

    .line 140
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->animateLayoutChanges:Z

    const/16 v0, 0xa

    .line 141
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->showFadeAnimation:Z

    .line 142
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0701c7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->textMarginEnd:I

    .line 143
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarShadowSize:I

    .line 146
    iget p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->defaultAvatarSize:I

    iput p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    const p1, 0x7f0906b2

    .line 148
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/livelayer/ws/ClipLayout;

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    const p1, 0x7f0904e1

    .line 150
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    div-int/2addr v0, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0701c1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Lcom/narvii/util/ViewUtils;->setMarginStart(Landroid/view/ViewGroup$LayoutParams;I)V

    const p1, 0x7f090928

    .line 154
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->recentAvatarLayout:Landroid/view/View;

    .line 155
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->recentAvatarLayout:Landroid/view/View;

    const v0, 0x7f090c10

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->recentAvatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 156
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->recentAvatar:Lcom/narvii/widget/UserAvatarLayout;

    iget-boolean v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->showShadow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarShadowSize:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget v2, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->shadowColor:I

    invoke-virtual {p1, v0, v2}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarShadow(II)V

    const p1, 0x7f09011c

    .line 158
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 159
    iget-boolean v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->showRightCorner:Z

    if-nez v0, :cond_2

    .line 160
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x9

    :cond_1
    invoke-virtual {p1, v1}, Lcom/narvii/widget/NVImageView;->setCornerMask(I)V

    .line 162
    :cond_2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->barColor:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 165
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    const p1, 0x7f0907bc

    .line 167
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineTextLayout:Landroid/view/View;

    const p1, 0x7f0907bd

    .line 168
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineTextView:Landroid/widget/TextView;

    .line 169
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->textMarginEnd:I

    invoke-static {p1, p2}, Lcom/narvii/util/ViewUtils;->setMarginEnd(Landroid/view/ViewGroup$LayoutParams;I)V

    const p1, 0x7f090688

    .line 171
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->halo:Landroid/view/View;

    .line 172
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onAvatarSizeChanged()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->checkUserJoined()V

    return-void
.end method

.method static synthetic access$100(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->updateMemberCount(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)I
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->getRandomDelayTime()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;Lcom/narvii/model/User;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->addUserIntoList(Lcom/narvii/model/User;)V

    return-void
.end method

.method static synthetic access$300(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->currentMembersCount:I

    return p0
.end method

.method static synthetic access$308(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)I
    .locals 2

    .line 49
    iget v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->currentMembersCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->currentMembersCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onMembersCountChanged(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;Lcom/narvii/model/User;)Landroid/view/View;
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->getAvatarView(Lcom/narvii/model/User;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/model/User;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->setUserAvatarView(Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/model/User;)V

    return-void
.end method

.method static synthetic access$700(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->layoutAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$702(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->layoutAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$800(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarShadowSize:I

    return p0
.end method

.method static synthetic access$900(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->relayout()V

    return-void
.end method

.method private addUserIntoList(Lcom/narvii/model/User;)V
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method private addUsersIntoQueue(Lcom/narvii/model/User;)V
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method private cancelAnimation(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 504
    iput-boolean v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->animating:Z

    .line 505
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedAnim:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 507
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->dotFadeAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 511
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 516
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 517
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 520
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 521
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 524
    :cond_3
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->layoutAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 525
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->layoutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 528
    :cond_4
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->joinAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 529
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->checkRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 530
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->nextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 531
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->animEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    .line 532
    sget-object v2, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_5

    .line 534
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->animEndRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 536
    :cond_5
    iput-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->animEndRunnable:Ljava/lang/Runnable;

    .line 539
    :cond_6
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->nextRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 541
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->layoutAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 542
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->layoutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 545
    :cond_7
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->holoAnimation:Landroid/view/animation/Animation;

    if-eqz p1, :cond_8

    .line 546
    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 548
    :cond_8
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->holoAnimation2:Landroid/view/animation/Animation;

    if-eqz p1, :cond_9

    .line 549
    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    :cond_9
    const p1, 0x7f090688

    .line 552
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 554
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 557
    :cond_a
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->dotFadeInAnimation:Landroid/view/animation/Animation;

    if-eqz p1, :cond_b

    .line 558
    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 561
    :cond_b
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->foldGreenOval:Landroid/view/View;

    if-eqz p1, :cond_c

    .line 562
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 563
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->foldGreenOval:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_c
    return-void
.end method

.method private checkUserJoined()V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userQueue:Ljava/util/LinkedList;

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 340
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->animating:Z

    if-eqz v0, :cond_1

    return-void

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userQueue:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    .line 344
    invoke-virtual {p0, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onUserJoined(Lcom/narvii/model/User;)V

    return-void
.end method

.method private getAvatarView()Landroid/view/View;
    .locals 5

    .line 386
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0b04df

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090c10

    .line 387
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/UserAvatarLayout;

    .line 388
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 389
    iget v4, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 390
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 391
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    iget-boolean v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->showShadow:Z

    if-nez v3, :cond_0

    .line 394
    sget v3, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->shadowColor:I

    invoke-virtual {v2, v1, v3}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarShadow(II)V

    :cond_0
    return-object v0
.end method

.method private getAvatarView(Lcom/narvii/model/User;)Landroid/view/View;
    .locals 2

    .line 401
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->getAvatarView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090c10

    .line 402
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/UserAvatarLayout;

    .line 403
    invoke-direct {p0, v1, p1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->setUserAvatarView(Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/model/User;)V

    return-object v0
.end method

.method private getRandomDelayTime()I
    .locals 2

    .line 905
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->random:Ljava/util/Random;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x7d0

    return v0
.end method

.method private onAvatarSizeChanged()V
    .locals 4

    .line 298
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    if-eqz v0, :cond_0

    .line 299
    iget v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    invoke-virtual {v0, v1}, Lcom/narvii/livelayer/ws/ClipLayout;->setAvatarSize(I)V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->recentAvatar:Lcom/narvii/widget/UserAvatarLayout;

    if-eqz v0, :cond_1

    .line 303
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->setAvatarSize(Landroid/view/View;)V

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineTextLayout:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 307
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 308
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 309
    iget v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0x6

    if-eq v1, v2, :cond_2

    .line 311
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 312
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineTextLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->halo:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 317
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 318
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    .line 319
    iget v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    add-int v3, v2, v1

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v2, v1

    .line 320
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 321
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->halo:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private onMembersCountChanged(I)V
    .locals 3

    .line 570
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 574
    :cond_0
    iget v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->currentMembersCount:I

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    .line 575
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->animator:Landroid/animation/ValueAnimator;

    .line 576
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->animator:Landroid/animation/ValueAnimator;

    const/16 v1, 0x320

    iget v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->currentMembersCount:I

    sub-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x64

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 577
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->animator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$3;

    invoke-direct {v0, p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$3;-><init>(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 588
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 590
    :cond_1
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->updateMemberCount(I)V

    .line 593
    :goto_0
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->resetMoreLayer()V

    return-void
.end method

.method private relayout()V
    .locals 4

    .line 909
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->setUpAvatarLayout()V

    .line 910
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->setUpTextLayout()V

    .line 912
    sget v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->shadowColor:I

    invoke-direct {p0, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->resetShadowColor(I)V

    .line 913
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->resetMoreLayer()V

    .line 914
    iget v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    iget v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->minAvatarCount:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 915
    :goto_0
    iget-boolean v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarShown:Z

    if-eq v1, v0, :cond_3

    .line 916
    iput-boolean v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarShown:Z

    .line 918
    iget-boolean v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->showFadeAnimation:Z

    if-eqz v1, :cond_2

    .line 919
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_1

    const v2, 0x7f010029

    goto :goto_1

    :cond_1
    const v2, 0x7f01002a

    :goto_1
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    const-wide/16 v2, 0x190

    .line 920
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v2, 0x0

    .line 921
    invoke-static {p0, v1, v2}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 924
    :cond_2
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onAvatarShownChangeListener:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$OnAvatarShownChangeListener;

    if-eqz v1, :cond_3

    .line 925
    invoke-interface {v1, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$OnAvatarShownChangeListener;->onAvatarShownChanged(Z)V

    :cond_3
    return-void
.end method

.method private resetMoreLayer()V
    .locals 6

    .line 612
    iget-boolean v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->showMore:Z

    if-eqz v0, :cond_1

    .line 613
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f090723

    .line 615
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09080a

    .line 616
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 618
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 619
    iget v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 620
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 621
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 623
    iget v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    .line 624
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 625
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x6

    div-int/lit8 v2, v2, 0x14

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 626
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 627
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    .line 628
    iget v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->currentMembersCount:I

    iget v4, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    const/16 v5, 0x8

    if-le v3, v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    .line 630
    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 631
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-ne v2, v5, :cond_1

    if-nez v3, :cond_1

    .line 633
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f010029

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 634
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    return-void
.end method

.method private resetShadowColor(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 368
    :goto_0
    iget v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    add-int/lit8 v3, v2, -0x1

    const v4, 0x7f090c10

    if-ge v1, v3, :cond_1

    .line 369
    iget-object v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 370
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/UserAvatarLayout;

    if-eqz v2, :cond_0

    .line 372
    iget v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarShadowSize:I

    invoke-virtual {v2, v3, p1}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarShadow(II)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lez v2, :cond_2

    .line 377
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 378
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/UserAvatarLayout;

    if-eqz p1, :cond_2

    .line 380
    iget v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarShadowSize:I

    invoke-virtual {p1, v1, v0}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarShadow(II)V

    :cond_2
    return-void
.end method

.method private setAvatarSize(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 329
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 330
    iget v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 331
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 332
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setUpAvatarLayout()V
    .locals 7

    .line 989
    iget v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    iget v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->maxAvatarCount:I

    if-le v0, v1, :cond_0

    const-string v0, "avatar count is beyond max"

    .line 990
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 992
    :goto_0
    iget v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    if-ge v1, v2, :cond_2

    .line 993
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 995
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 996
    iget v4, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    add-int/lit8 v5, v4, -0x1

    sub-int/2addr v5, v1

    if-nez v5, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v1

    int-to-float v1, v4

    iget v4, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->overlapRatio:F

    sub-float/2addr v5, v6

    mul-float v4, v4, v5

    mul-float v1, v1, v4

    float-to-int v1, v1

    :goto_1
    invoke-static {v2, v1}, Lcom/narvii/util/ViewUtils;->setMarginStart(Landroid/view/View;I)V

    move v1, v3

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setUpTextLayout()V
    .locals 4

    .line 937
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineTextLayout:Landroid/view/View;

    iget-boolean v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->autoFitAvatarSize:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    iget v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->minAvatarCount:I

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 938
    iget v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    int-to-float v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->overlapRatio:F

    sub-float/2addr v2, v3

    mul-float v1, v1, v2

    iget v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    mul-float v1, v1, v2

    int-to-float v2, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 940
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineTextLayout:Landroid/view/View;

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Lcom/narvii/util/ViewUtils;->setMarginStart(Landroid/view/View;I)V

    return-void
.end method

.method private setUserAvatarView(Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/model/User;)V
    .locals 0

    .line 408
    invoke-virtual {p1, p2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    return-void
.end method

.method private setUserList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 412
    iget v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->currentMembersCount:I

    invoke-virtual {p0, p1, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->setUserList(Ljava/util/List;I)V

    return-void
.end method

.method static startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    .line 177
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    if-eqz p2, :cond_2

    .line 179
    invoke-interface {p2, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 183
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 185
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateMemberCount(I)V
    .locals 6

    .line 597
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 598
    iget v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineTextOne:I

    if-eqz v2, :cond_0

    .line 599
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineText:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->foldCountView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 607
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public isAvatarShown()Z
    .locals 1

    .line 289
    iget-boolean v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarShown:Z

    return v0
.end method

.method public notifyUserChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;)V"
        }
    .end annotation

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, v1, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    if-nez v1, :cond_1

    goto :goto_0

    .line 197
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userQueue:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 201
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 202
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    .line 203
    invoke-virtual {v1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 204
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userList:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 211
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 212
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 213
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/User;

    .line 214
    invoke-virtual {v3}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 215
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    const/4 p1, 0x1

    goto :goto_2

    .line 220
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_7

    .line 222
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userQueue:Ljava/util/LinkedList;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 223
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->setUserList(Ljava/util/List;I)V

    .line 226
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    .line 227
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 229
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    :cond_8
    if-eqz v1, :cond_9

    goto :goto_3

    .line 234
    :cond_9
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 237
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onUserJoined(Ljava/util/List;I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 349
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 350
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 352
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 354
    :cond_0
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->checkRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 355
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->checkRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 932
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x1

    .line 933
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->cancelAnimation(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 360
    iget-boolean p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarShown:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 945
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 947
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 948
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 950
    iget v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->autoFitAvatarCountMax:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 951
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineTextLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 953
    iget-object v4, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineTextLayout:Landroid/view/View;

    const/high16 v5, -0x80000000

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v4, v5, v2}, Landroid/view/View;->measure(II)V

    .line 957
    :cond_0
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineTextLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onlineTextLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v4, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    :goto_0
    sub-int/2addr v0, v2

    .line 959
    iget v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->autoFitAvatarCountMax:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->autoFitAvatarSize:Z

    if-eqz v2, :cond_5

    :cond_2
    if-eqz v1, :cond_5

    iget v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->maxWidth:I

    if-eq v0, v1, :cond_5

    .line 960
    iput v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->maxWidth:I

    .line 962
    iget v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->autoFitAvatarCountMax:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq v1, v3, :cond_4

    .line 963
    iget v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->defaultAvatarSize:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    int-to-float v3, v3

    iget v4, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->overlapRatio:F

    sub-float v4, v2, v4

    mul-float v3, v3, v4

    div-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 964
    iget v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->minAvatarCount:I

    if-ge v0, v1, :cond_3

    move v0, v1

    .line 967
    :cond_3
    iget v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->maxAvatarCount:I

    if-eq v0, v1, :cond_5

    .line 968
    iput v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->maxAvatarCount:I

    .line 969
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userList:Ljava/util/LinkedList;

    invoke-direct {p0, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->setUserList(Ljava/util/List;)V

    .line 970
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_1

    .line 972
    :cond_4
    iget-boolean v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->autoFitAvatarSize:Z

    if-eqz v0, :cond_5

    .line 973
    iget v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->maxWidth:I

    iget v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->defaultAvatarSize:I

    sub-int v1, v0, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    int-to-float v3, v3

    iget v4, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->overlapRatio:F

    sub-float v5, v2, v4

    mul-float v3, v3, v5

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->maxAvatarCount:I

    int-to-float v0, v0

    sub-float v1, v2, v4

    .line 978
    iget v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->maxAvatarCount:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    mul-float v1, v1, v3

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    .line 979
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onAvatarSizeChanged()V

    .line 980
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userList:Ljava/util/LinkedList;

    invoke-direct {p0, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->setUserList(Ljava/util/List;)V

    .line 981
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 985
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarSize:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onUserJoined(Lcom/narvii/model/User;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 653
    iput-boolean v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->animating:Z

    .line 655
    new-instance v1, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 657
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userList:Ljava/util/LinkedList;

    if-nez v2, :cond_1

    .line 658
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userList:Ljava/util/LinkedList;

    .line 661
    :cond_1
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 662
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 665
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b04e1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedView:Landroid/view/View;

    .line 666
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedView:Landroid/view/View;

    const v3, 0x7f090c10

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/UserAvatarLayout;

    .line 667
    invoke-direct {p0, v2}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->setAvatarSize(Landroid/view/View;)V

    .line 668
    invoke-direct {p0, v2, p1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->setUserAvatarView(Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/model/User;)V

    .line 669
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 671
    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedView:Landroid/view/View;

    const v3, 0x7f090c11

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 672
    iget v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedText:I

    if-eqz v3, :cond_3

    .line 673
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v5, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedText:I

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v6, 0xc

    invoke-virtual {p1, v6}, Lcom/narvii/model/User;->ellipticalNickname(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    invoke-virtual {v3, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x1e

    .line 675
    invoke-virtual {p1, v0}, Lcom/narvii/model/User;->ellipticalNickname(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    :goto_0
    invoke-virtual {p1}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f080642

    goto :goto_1

    :cond_4
    const v0, 0x7f080641

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 679
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedView:Landroid/view/View;

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 683
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->joinAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 684
    new-instance v0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;

    invoke-direct {v0, p0, p1, v1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4;-><init>(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;Lcom/narvii/model/User;Lcom/narvii/modulization/CommunityConfigHelper;)V

    iput-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->joinAnimRunnable:Ljava/lang/Runnable;

    .line 901
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->joinAnimRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onUserJoined(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;I)V"
        }
    .end annotation

    .line 242
    iget v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    iget v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->minAvatarCount:I

    if-lt v0, v1, :cond_2

    if-ge p2, v1, :cond_0

    goto :goto_1

    .line 251
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/User;

    .line 252
    invoke-direct {p0, p2}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->addUsersIntoQueue(Lcom/narvii/model/User;)V

    goto :goto_0

    .line 256
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->checkRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void

    .line 243
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 244
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    .line 245
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->addUserIntoList(Lcom/narvii/model/User;)V

    goto :goto_2

    .line 247
    :cond_3
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userList:Ljava/util/LinkedList;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->setUserList(Ljava/util/List;I)V

    return-void
.end method

.method public onUserLeft(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 260
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 264
    iget v2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    .line 265
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    if-ge v1, v2, :cond_2

    .line 266
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/User;

    .line 267
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/model/User;

    .line 268
    invoke-virtual {v5}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 270
    :try_start_0
    iget-object v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    iget v4, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 271
    iget v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    .line 272
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->relayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 274
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setOnAvatarShownChangeListener(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$OnAvatarShownChangeListener;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onAvatarShownChangeListener:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$OnAvatarShownChangeListener;

    return-void
.end method

.method public setOnMemberCountChangedListener(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$OnMemberCountChangedListener;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onMemberCountChangedListener:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$OnMemberCountChangedListener;

    return-void
.end method

.method public setUserList(Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;I)V"
        }
    .end annotation

    .line 418
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->getSize(Ljava/util/List;)I

    move-result v0

    .line 419
    iget v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->maxAvatarCount:I

    if-ge v0, v1, :cond_0

    .line 420
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    .line 424
    invoke-direct {p0, v0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->cancelAnimation(Z)V

    .line 427
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    invoke-virtual {v1, v0}, Lcom/narvii/livelayer/ws/ClipLayout;->setShouldClip(Z)V

    .line 430
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userJoinedView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 431
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_1
    if-nez p1, :cond_2

    .line 435
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 437
    :cond_2
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->userList:Ljava/util/LinkedList;

    .line 439
    iput v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    .line 440
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->recentAvatarLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 443
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 444
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x1

    :goto_0
    if-ge p2, p1, :cond_3

    .line 446
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 448
    :cond_3
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->relayout()V

    return-void

    .line 452
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 453
    iget v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->maxAvatarCount:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    .line 454
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    .line 456
    iget v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    iget v4, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->minAvatarCount:I

    if-lt v3, v4, :cond_9

    sub-int/2addr v1, v3

    if-lez v1, :cond_5

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_6

    .line 460
    iget-object v4, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    if-gez v1, :cond_6

    const/4 v3, 0x0

    :goto_2
    neg-int v4, v1

    if-ge v3, v4, :cond_6

    .line 464
    iget-object v4, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->getAvatarView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 470
    :cond_6
    iget v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    sub-int/2addr v1, v2

    const/4 v3, 0x1

    :goto_3
    if-ltz v1, :cond_8

    .line 471
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/model/User;

    .line 472
    iget-object v5, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    add-int/2addr v3, v2

    if-eqz v5, :cond_7

    const v6, 0x7f090c10

    .line 475
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/narvii/widget/UserAvatarLayout;

    if-eqz v5, :cond_7

    .line 477
    invoke-direct {p0, v5, v4}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->setUserAvatarView(Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/model/User;)V

    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 482
    :cond_8
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 483
    iget-object v1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->recentAvatar:Lcom/narvii/widget/UserAvatarLayout;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    invoke-direct {p0, v1, p1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->setUserAvatarView(Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/model/User;)V

    .line 484
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->recentAvatarLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 487
    :cond_9
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 v1, 0x1

    :goto_4
    if-ge v1, p1, :cond_a

    .line 489
    iget-object v3, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 491
    :cond_a
    iput v0, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    .line 494
    :cond_b
    :goto_5
    invoke-direct {p0}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->relayout()V

    .line 496
    iput p2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->currentMembersCount:I

    .line 497
    iget p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->currentMembersCount:I

    iget p2, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->avatarCount:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->currentMembersCount:I

    .line 499
    iget p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->currentMembersCount:I

    invoke-direct {p0, p1}, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar;->onMembersCountChanged(I)V

    return-void
.end method
