.class public Lcom/narvii/widget/MoodView;
.super Landroid/widget/FrameLayout;
.source "MoodView.java"


# static fields
.field private static final AMINO_PLUS_SCALE_FACOTR:F = 1.15f

.field private static final MAX_SCALE:F = 1.2f

.field private static final MAX_SHAKE_SCALE:F = 4.0f

.field private static final MAX_TIME_SCALE:F = 5.0f

.field public static final SHAKE_ON_CLICK_LISTENER:Landroid/view/View$OnClickListener;

.field public static final borderColorDefault:I

.field public static final borderColorMembership:I

.field private static final listeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/widget/MoodView;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sensorEventListener:Landroid/hardware/SensorEventListener;

.field private static sensorManager:Landroid/hardware/SensorManager;


# instance fields
.field private anim:Z

.field private avatarFrameLoader:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

.field private bg1:Landroid/graphics/drawable/Drawable;

.field private bg2:Landroid/graphics/drawable/Drawable;

.field private bg3:Landroid/graphics/drawable/Drawable;

.field private cd1:Landroid/graphics/drawable/Drawable;

.field private cd2:Landroid/graphics/drawable/Drawable;

.field private cd3:Landroid/graphics/drawable/Drawable;

.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field private curLoadingUser:Lcom/narvii/model/User;

.field private currentScale:F

.field private currentTime:F

.field private cx:F

.field private cy:F

.field private d1:Landroid/graphics/drawable/Drawable;

.field private d2:Landroid/graphics/drawable/Drawable;

.field private d3:Landroid/graphics/drawable/Drawable;

.field private emojioneView:Lcom/narvii/widget/EmojionePlusView;

.field private initScaleX:F

.field private initScaleY:F

.field private pendingScale:F

.field private prevTime:J

.field private rect:Landroid/graphics/Rect;

.field private regedRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/narvii/widget/MoodView;",
            ">;"
        }
    .end annotation
.end field

.field private rnd:Ljava/util/Random;

.field private shakeScaleX:F

.field private shakeScaleY:F

.field private sticker:Lcom/narvii/model/Sticker;

.field private stickerBubbleView:Lcom/narvii/widget/StickerBubbleView;

.field private timeScale:F

.field private xmult:F

.field private xtmult:D

.field private xtoffset:J

.field private ymult:F

.field private ytmult:D

.field private ytoffset:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/narvii/widget/MoodView$1;

    invoke-direct {v0}, Lcom/narvii/widget/MoodView$1;-><init>()V

    sput-object v0, Lcom/narvii/widget/MoodView;->SHAKE_ON_CLICK_LISTENER:Landroid/view/View$OnClickListener;

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/narvii/widget/MoodView;->listeners:Ljava/util/HashSet;

    .line 59
    new-instance v0, Lcom/narvii/widget/MoodView$2;

    invoke-direct {v0}, Lcom/narvii/widget/MoodView$2;-><init>()V

    sput-object v0, Lcom/narvii/widget/MoodView;->sensorEventListener:Landroid/hardware/SensorEventListener;

    const-string v0, "#ffb935"

    .line 103
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/narvii/widget/MoodView;->borderColorMembership:I

    const-string v0, "#7ccdf2"

    .line 104
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/narvii/widget/MoodView;->borderColorDefault:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 136
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 109
    iput p2, p0, Lcom/narvii/widget/MoodView;->timeScale:F

    .line 110
    iput p2, p0, Lcom/narvii/widget/MoodView;->shakeScaleX:F

    .line 111
    iput p2, p0, Lcom/narvii/widget/MoodView;->shakeScaleY:F

    .line 112
    iput p2, p0, Lcom/narvii/widget/MoodView;->currentScale:F

    iput p2, p0, Lcom/narvii/widget/MoodView;->pendingScale:F

    const/4 p2, 0x0

    .line 137
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 138
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p2

    const-string v0, "avatarFrameLoader"

    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

    iput-object p2, p0, Lcom/narvii/widget/MoodView;->avatarFrameLoader:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f08060c

    .line 140
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/widget/MoodView;->d1:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f08060b

    .line 141
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/widget/MoodView;->d2:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f08060a

    .line 142
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/widget/MoodView;->d3:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f08060f

    .line 143
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/widget/MoodView;->bg1:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f08060e

    .line 144
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/widget/MoodView;->bg2:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f08060d

    .line 145
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/MoodView;->bg3:Landroid/graphics/drawable/Drawable;

    .line 146
    iget-object p1, p0, Lcom/narvii/widget/MoodView;->d1:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/narvii/widget/MoodView;->cd1:Landroid/graphics/drawable/Drawable;

    .line 147
    iget-object p1, p0, Lcom/narvii/widget/MoodView;->d2:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/narvii/widget/MoodView;->cd2:Landroid/graphics/drawable/Drawable;

    .line 148
    iget-object p1, p0, Lcom/narvii/widget/MoodView;->d3:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/narvii/widget/MoodView;->cd3:Landroid/graphics/drawable/Drawable;

    .line 149
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/MoodView;->rect:Landroid/graphics/Rect;

    .line 150
    new-instance p1, Ljava/util/Random;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Ljava/util/Random;-><init>(J)V

    iput-object p1, p0, Lcom/narvii/widget/MoodView;->rnd:Ljava/util/Random;

    .line 151
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result p1

    iput p1, p0, Lcom/narvii/widget/MoodView;->initScaleX:F

    .line 152
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result p1

    iput p1, p0, Lcom/narvii/widget/MoodView;->initScaleY:F

    .line 153
    invoke-virtual {p0}, Lcom/narvii/widget/MoodView;->shuffle()V

    .line 155
    new-instance p1, Lcom/narvii/widget/EmojionePlusView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/narvii/widget/EmojionePlusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/narvii/widget/MoodView;->emojioneView:Lcom/narvii/widget/EmojionePlusView;

    .line 156
    iget-object p1, p0, Lcom/narvii/widget/MoodView;->d3:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3f147ae1    # 0.58f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 157
    iget-object p2, p0, Lcom/narvii/widget/MoodView;->emojioneView:Lcom/narvii/widget/EmojionePlusView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object p1, p0, Lcom/narvii/widget/MoodView;->emojioneView:Lcom/narvii/widget/EmojionePlusView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object p1, p0, Lcom/narvii/widget/MoodView;->emojioneView:Lcom/narvii/widget/EmojionePlusView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 161
    new-instance p1, Lcom/narvii/widget/StickerBubbleView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lcom/narvii/widget/StickerBubbleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/narvii/widget/MoodView;->stickerBubbleView:Lcom/narvii/widget/StickerBubbleView;

    .line 162
    iget-object p1, p0, Lcom/narvii/widget/MoodView;->stickerBubbleView:Lcom/narvii/widget/StickerBubbleView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/narvii/widget/MoodView;->d3:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/narvii/widget/MoodView;->d3:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object p1, p0, Lcom/narvii/widget/MoodView;->stickerBubbleView:Lcom/narvii/widget/StickerBubbleView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    iget-object p1, p0, Lcom/narvii/widget/MoodView;->stickerBubbleView:Lcom/narvii/widget/StickerBubbleView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 166
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/widget/MoodView;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashSet;
    .locals 1

    .line 42
    sget-object v0, Lcom/narvii/widget/MoodView;->listeners:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$100()Landroid/hardware/SensorManager;
    .locals 1

    .line 42
    sget-object v0, Lcom/narvii/widget/MoodView;->sensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/narvii/widget/MoodView;)Lcom/narvii/model/User;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/narvii/widget/MoodView;->curLoadingUser:Lcom/narvii/model/User;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/widget/MoodView;Lcom/narvii/model/Sticker;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/MoodView;->setDefaultMoodSticker(Lcom/narvii/model/Sticker;Z)V

    return-void
.end method

.method private calcXY(J)V
    .locals 8

    .line 324
    iget-wide v0, p0, Lcom/narvii/widget/MoodView;->prevTime:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    .line 325
    iput v4, p0, Lcom/narvii/widget/MoodView;->currentTime:F

    goto/16 :goto_4

    :cond_0
    sub-long v0, p1, v0

    const-wide/16 v5, 0x12c

    .line 328
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 329
    iget v2, p0, Lcom/narvii/widget/MoodView;->currentTime:F

    long-to-float v0, v0

    iget v1, p0, Lcom/narvii/widget/MoodView;->timeScale:F

    mul-float v3, v0, v1

    add-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p0, Lcom/narvii/widget/MoodView;->currentTime:F

    const/high16 v2, 0x447a0000    # 1000.0f

    cmpl-float v3, v1, v4

    if-lez v3, :cond_2

    const v3, 0x4019999a    # 2.4f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    const v3, 0x404ccccd    # 3.2f

    mul-float v3, v3, v0

    div-float/2addr v3, v2

    .line 334
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_0

    :cond_1
    const v3, 0x3fe66666    # 1.8f

    mul-float v3, v3, v0

    div-float/2addr v3, v2

    .line 336
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 338
    :goto_0
    iget v3, p0, Lcom/narvii/widget/MoodView;->timeScale:F

    sub-float/2addr v3, v1

    iput v3, p0, Lcom/narvii/widget/MoodView;->timeScale:F

    .line 341
    :cond_2
    iget v1, p0, Lcom/narvii/widget/MoodView;->shakeScaleX:F

    const v3, 0x3faccccd    # 1.35f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3fc00000    # 1.5f

    cmpl-float v7, v1, v4

    if-lez v7, :cond_4

    cmpl-float v7, v1, v6

    if-lez v7, :cond_3

    mul-float v7, v0, v3

    div-float/2addr v7, v2

    .line 344
    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_1

    :cond_3
    mul-float v7, v0, v5

    div-float/2addr v7, v2

    .line 346
    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 348
    :goto_1
    iget v7, p0, Lcom/narvii/widget/MoodView;->shakeScaleX:F

    sub-float/2addr v7, v1

    iput v7, p0, Lcom/narvii/widget/MoodView;->shakeScaleX:F

    .line 350
    :cond_4
    iget v1, p0, Lcom/narvii/widget/MoodView;->shakeScaleY:F

    cmpl-float v7, v1, v4

    if-lez v7, :cond_6

    cmpl-float v6, v1, v6

    if-lez v6, :cond_5

    mul-float v3, v3, v0

    div-float/2addr v3, v2

    .line 353
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_2

    :cond_5
    mul-float v5, v5, v0

    div-float/2addr v5, v2

    .line 355
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 357
    :goto_2
    iget v3, p0, Lcom/narvii/widget/MoodView;->shakeScaleY:F

    sub-float/2addr v3, v1

    iput v3, p0, Lcom/narvii/widget/MoodView;->shakeScaleY:F

    .line 360
    :cond_6
    iget v1, p0, Lcom/narvii/widget/MoodView;->pendingScale:F

    cmpl-float v3, v1, v4

    if-lez v3, :cond_7

    const/high16 v3, 0x41000000    # 8.0f

    mul-float v0, v0, v3

    div-float/2addr v0, v2

    .line 362
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 363
    iget v1, p0, Lcom/narvii/widget/MoodView;->pendingScale:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/narvii/widget/MoodView;->pendingScale:F

    const v1, 0x3f99999a    # 1.2f

    .line 364
    iget v2, p0, Lcom/narvii/widget/MoodView;->currentScale:F

    add-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/narvii/widget/MoodView;->currentScale:F

    goto :goto_4

    .line 365
    :cond_7
    iget v1, p0, Lcom/narvii/widget/MoodView;->currentScale:F

    cmpl-float v3, v1, v4

    if-lez v3, :cond_9

    const v3, 0x3f4ccccd    # 0.8f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_8

    const v3, 0x3fc66666    # 1.55f

    mul-float v0, v0, v3

    div-float/2addr v0, v2

    .line 368
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_3

    :cond_8
    const v3, 0x3f59999a    # 0.85f

    mul-float v0, v0, v3

    div-float/2addr v0, v2

    .line 370
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 372
    :goto_3
    iget v1, p0, Lcom/narvii/widget/MoodView;->currentScale:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/narvii/widget/MoodView;->currentScale:F

    .line 375
    :cond_9
    :goto_4
    iput-wide p1, p0, Lcom/narvii/widget/MoodView;->prevTime:J

    .line 376
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    int-to-float p1, p1

    const v0, 0x3f147ae1    # 0.58f

    mul-float v0, v0, p1

    .line 377
    iput v0, p0, Lcom/narvii/widget/MoodView;->cx:F

    int-to-float p2, p2

    const v0, 0x3f0ccccd    # 0.55f

    mul-float v0, v0, p2

    .line 378
    iput v0, p0, Lcom/narvii/widget/MoodView;->cy:F

    .line 379
    iget-boolean v0, p0, Lcom/narvii/widget/MoodView;->anim:Z

    if-eqz v0, :cond_a

    .line 380
    iget v0, p0, Lcom/narvii/widget/MoodView;->cx:F

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/narvii/widget/MoodView;->bg3:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    sub-float/2addr p1, v0

    .line 381
    iget v0, p0, Lcom/narvii/widget/MoodView;->cy:F

    sub-float/2addr p2, v0

    iget-object v0, p0, Lcom/narvii/widget/MoodView;->bg3:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    sub-float/2addr p2, v0

    .line 382
    iget v0, p0, Lcom/narvii/widget/MoodView;->xmult:F

    iget v1, p0, Lcom/narvii/widget/MoodView;->shakeScaleX:F

    add-float/2addr v0, v1

    mul-float p1, p1, v0

    iget-wide v0, p0, Lcom/narvii/widget/MoodView;->xtmult:D

    iget v2, p0, Lcom/narvii/widget/MoodView;->currentTime:F

    iget-wide v3, p0, Lcom/narvii/widget/MoodView;->xtoffset:J

    long-to-float v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float p1, p1, v0

    .line 383
    iget v0, p0, Lcom/narvii/widget/MoodView;->ymult:F

    iget v1, p0, Lcom/narvii/widget/MoodView;->shakeScaleY:F

    const v2, 0x40d9999a    # 6.8f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    mul-float p2, p2, v0

    iget-wide v0, p0, Lcom/narvii/widget/MoodView;->ytmult:D

    iget v2, p0, Lcom/narvii/widget/MoodView;->currentTime:F

    iget-wide v3, p0, Lcom/narvii/widget/MoodView;->ytoffset:J

    long-to-float v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float p2, p2, v0

    .line 384
    iget v0, p0, Lcom/narvii/widget/MoodView;->cx:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/narvii/widget/MoodView;->cx:F

    .line 385
    iget p1, p0, Lcom/narvii/widget/MoodView;->cy:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/narvii/widget/MoodView;->cy:F

    :cond_a
    return-void
.end method

.method private draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V
    .locals 4

    .line 438
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p5

    .line 439
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 444
    iget-object v1, p0, Lcom/narvii/widget/MoodView;->rect:Landroid/graphics/Rect;

    int-to-float v2, p5

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    sub-float/2addr p3, v2

    float-to-int p3, p3

    iput p3, v1, Landroid/graphics/Rect;->left:I

    .line 445
    iget p3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p3, p5

    iput p3, v1, Landroid/graphics/Rect;->right:I

    int-to-float p3, v0

    mul-float p3, p3, v3

    sub-float/2addr p4, p3

    float-to-int p3, p4

    if-eqz p6, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    .line 446
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    const p5, 0x3f933333    # 1.15f

    invoke-static {p4, p5}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p4

    :goto_0
    sub-int/2addr p3, p4

    iput p3, v1, Landroid/graphics/Rect;->top:I

    .line 447
    iget-object p3, p0, Lcom/narvii/widget/MoodView;->rect:Landroid/graphics/Rect;

    iget p4, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p4, v0

    iput p4, p3, Landroid/graphics/Rect;->bottom:I

    .line 448
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 449
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private setDefaultMoodSticker(Lcom/narvii/model/Sticker;Z)V
    .locals 1

    .line 265
    iput-object p1, p0, Lcom/narvii/widget/MoodView;->sticker:Lcom/narvii/model/Sticker;

    if-eqz p2, :cond_0

    .line 266
    iget-object p1, p0, Lcom/narvii/widget/MoodView;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {p1}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 268
    iget-object p2, p0, Lcom/narvii/widget/MoodView;->d1:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/narvii/widget/MoodView;->borderColorMembership:I

    invoke-static {p2, v0}, Lcom/narvii/util/drawables/DrawableUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/widget/MoodView;->cd1:Landroid/graphics/drawable/Drawable;

    .line 269
    iget-object p2, p0, Lcom/narvii/widget/MoodView;->d2:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/narvii/widget/MoodView;->borderColorMembership:I

    invoke-static {p2, v0}, Lcom/narvii/util/drawables/DrawableUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/widget/MoodView;->cd2:Landroid/graphics/drawable/Drawable;

    .line 270
    iget-object p2, p0, Lcom/narvii/widget/MoodView;->d3:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/narvii/widget/MoodView;->borderColorMembership:I

    invoke-static {p2, v0}, Lcom/narvii/util/drawables/DrawableUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/widget/MoodView;->cd3:Landroid/graphics/drawable/Drawable;

    .line 271
    iget p2, p0, Lcom/narvii/widget/MoodView;->initScaleX:F

    const v0, 0x3f933333    # 1.15f

    mul-float p2, p2, v0

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 272
    iget p2, p0, Lcom/narvii/widget/MoodView;->initScaleY:F

    mul-float p2, p2, v0

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    goto :goto_1

    .line 274
    :cond_1
    iget-object p2, p0, Lcom/narvii/widget/MoodView;->d1:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/narvii/widget/MoodView;->borderColorDefault:I

    invoke-static {p2, v0}, Lcom/narvii/util/drawables/DrawableUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/widget/MoodView;->cd1:Landroid/graphics/drawable/Drawable;

    .line 275
    iget-object p2, p0, Lcom/narvii/widget/MoodView;->d2:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/narvii/widget/MoodView;->borderColorDefault:I

    invoke-static {p2, v0}, Lcom/narvii/util/drawables/DrawableUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/widget/MoodView;->cd2:Landroid/graphics/drawable/Drawable;

    .line 276
    iget-object p2, p0, Lcom/narvii/widget/MoodView;->d3:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/narvii/widget/MoodView;->borderColorDefault:I

    invoke-static {p2, v0}, Lcom/narvii/util/drawables/DrawableUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/widget/MoodView;->cd3:Landroid/graphics/drawable/Drawable;

    .line 277
    iget p2, p0, Lcom/narvii/widget/MoodView;->initScaleX:F

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 278
    iget p2, p0, Lcom/narvii/widget/MoodView;->initScaleY:F

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    :goto_1
    if-eqz p1, :cond_2

    .line 280
    sget p1, Lcom/narvii/widget/MoodView;->borderColorMembership:I

    goto :goto_2

    :cond_2
    sget p1, Lcom/narvii/widget/MoodView;->borderColorDefault:I

    :goto_2
    invoke-direct {p0, p1}, Lcom/narvii/widget/MoodView;->setupSticker(I)V

    .line 281
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private setupSticker(I)V
    .locals 4

    .line 285
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->sticker:Lcom/narvii/model/Sticker;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/model/Sticker;->isLocalMood()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/MoodView;->emojioneView:Lcom/narvii/widget/EmojionePlusView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 292
    iget-object p1, p0, Lcom/narvii/widget/MoodView;->stickerBubbleView:Lcom/narvii/widget/StickerBubbleView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 293
    iget-object p1, p0, Lcom/narvii/widget/MoodView;->stickerBubbleView:Lcom/narvii/widget/StickerBubbleView;

    iget-object v0, p0, Lcom/narvii/widget/MoodView;->sticker:Lcom/narvii/model/Sticker;

    invoke-virtual {p1, v0}, Lcom/narvii/monetization/sticker/widget/StickerImageView;->setSticker(Lcom/narvii/model/Sticker;)V

    goto :goto_2

    .line 286
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->emojioneView:Lcom/narvii/widget/EmojionePlusView;

    iget-object v3, p0, Lcom/narvii/widget/MoodView;->sticker:Lcom/narvii/model/Sticker;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/narvii/model/Sticker;->getMoodUnicode()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Lcom/narvii/widget/EmojioneView;->setEmoji(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->emojioneView:Lcom/narvii/widget/EmojionePlusView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->emojioneView:Lcom/narvii/widget/EmojionePlusView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/EmojionePlusView;->setViewColor(I)V

    .line 289
    iget-object p1, p0, Lcom/narvii/widget/MoodView;->stickerBubbleView:Lcom/narvii/widget/StickerBubbleView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private updateReg()V
    .locals 4

    .line 191
    iget-boolean v0, p0, Lcom/narvii/widget/MoodView;->anim:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->regedRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    .line 193
    sget-object v0, Lcom/narvii/widget/MoodView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    sget-object v0, Lcom/narvii/widget/MoodView;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 196
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sput-object v0, Lcom/narvii/widget/MoodView;->sensorManager:Landroid/hardware/SensorManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 200
    :cond_0
    :goto_0
    sget-object v0, Lcom/narvii/widget/MoodView;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    .line 201
    sget-object v1, Lcom/narvii/widget/MoodView;->sensorEventListener:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 204
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/narvii/widget/MoodView;->regedRef:Ljava/lang/ref/WeakReference;

    .line 205
    sget-object v0, Lcom/narvii/widget/MoodView;->listeners:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/narvii/widget/MoodView;->regedRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->regedRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 209
    sget-object v1, Lcom/narvii/widget/MoodView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 210
    iput-object v0, p0, Lcom/narvii/widget/MoodView;->regedRef:Ljava/lang/ref/WeakReference;

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 391
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/narvii/widget/MoodView;->calcXY(J)V

    .line 392
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6

    .line 425
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 426
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    .line 427
    iget v1, p0, Lcom/narvii/widget/MoodView;->cx:F

    neg-float v1, v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/narvii/widget/MoodView;->cy:F

    sub-float/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 429
    :cond_0
    iget v1, p0, Lcom/narvii/widget/MoodView;->cx:F

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/narvii/widget/MoodView;->cy:F

    sub-float/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 431
    :goto_0
    iget v1, p0, Lcom/narvii/widget/MoodView;->currentScale:F

    const/high16 v3, 0x3fe00000    # 1.75f

    mul-float v4, v1, v3

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    mul-float v1, v1, v3

    add-float/2addr v1, v5

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    invoke-virtual {p1, v4, v1, v3, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 432
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 433
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p2
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 179
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 180
    invoke-direct {p0}, Lcom/narvii/widget/MoodView;->updateReg()V

    .line 181
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->avatarFrameLoader:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/fileloader/FileLoader;->removeCallbackByTag(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 397
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 399
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    .line 401
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v1

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3ef5c28f    # 0.48f

    const v9, 0x3eb33333    # 0.35f

    if-eqz v1, :cond_0

    .line 402
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    .line 403
    iget-object v2, p0, Lcom/narvii/widget/MoodView;->bg1:Landroid/graphics/drawable/Drawable;

    int-to-float v10, v1

    iget v1, p0, Lcom/narvii/widget/MoodView;->cx:F

    mul-float v1, v1, v9

    sub-float v3, v10, v1

    int-to-float v11, v0

    iget v0, p0, Lcom/narvii/widget/MoodView;->cy:F

    mul-float v0, v0, v9

    sub-float v4, v11, v0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/narvii/widget/MoodView;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    .line 404
    iget-object v2, p0, Lcom/narvii/widget/MoodView;->cd1:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/narvii/widget/MoodView;->cx:F

    mul-float v0, v0, v9

    sub-float v3, v10, v0

    iget v0, p0, Lcom/narvii/widget/MoodView;->cy:F

    mul-float v0, v0, v9

    sub-float v4, v11, v0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/narvii/widget/MoodView;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    .line 405
    iget-object v2, p0, Lcom/narvii/widget/MoodView;->bg2:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/narvii/widget/MoodView;->cx:F

    mul-float v0, v0, v8

    sub-float v3, v10, v0

    iget v0, p0, Lcom/narvii/widget/MoodView;->cy:F

    mul-float v0, v0, v8

    sub-float v4, v11, v0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/narvii/widget/MoodView;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    .line 406
    iget-object v2, p0, Lcom/narvii/widget/MoodView;->cd2:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/narvii/widget/MoodView;->cx:F

    mul-float v0, v0, v8

    sub-float v3, v10, v0

    iget v0, p0, Lcom/narvii/widget/MoodView;->cy:F

    mul-float v0, v0, v8

    sub-float v4, v11, v0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/narvii/widget/MoodView;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    .line 407
    iget-object v2, p0, Lcom/narvii/widget/MoodView;->bg3:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/narvii/widget/MoodView;->cx:F

    sub-float v3, v10, v0

    iget v0, p0, Lcom/narvii/widget/MoodView;->cy:F

    sub-float v4, v11, v0

    iget v0, p0, Lcom/narvii/widget/MoodView;->currentScale:F

    add-float v5, v0, v7

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/narvii/widget/MoodView;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    .line 408
    iget-object v2, p0, Lcom/narvii/widget/MoodView;->cd3:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/narvii/widget/MoodView;->cx:F

    sub-float v3, v10, v0

    iget v0, p0, Lcom/narvii/widget/MoodView;->cy:F

    sub-float v4, v11, v0

    iget v0, p0, Lcom/narvii/widget/MoodView;->currentScale:F

    add-float v5, v0, v7

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/narvii/widget/MoodView;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    goto :goto_0

    .line 410
    :cond_0
    iget-object v2, p0, Lcom/narvii/widget/MoodView;->bg1:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/narvii/widget/MoodView;->cx:F

    mul-float v3, v1, v9

    int-to-float v10, v0

    iget v0, p0, Lcom/narvii/widget/MoodView;->cy:F

    mul-float v0, v0, v9

    sub-float v4, v10, v0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/narvii/widget/MoodView;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    .line 411
    iget-object v2, p0, Lcom/narvii/widget/MoodView;->cd1:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/narvii/widget/MoodView;->cx:F

    mul-float v3, v0, v9

    iget v0, p0, Lcom/narvii/widget/MoodView;->cy:F

    mul-float v0, v0, v9

    sub-float v4, v10, v0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/narvii/widget/MoodView;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    .line 412
    iget-object v2, p0, Lcom/narvii/widget/MoodView;->bg2:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/narvii/widget/MoodView;->cx:F

    mul-float v3, v0, v8

    iget v0, p0, Lcom/narvii/widget/MoodView;->cy:F

    mul-float v0, v0, v8

    sub-float v4, v10, v0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/narvii/widget/MoodView;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    .line 413
    iget-object v2, p0, Lcom/narvii/widget/MoodView;->cd2:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/narvii/widget/MoodView;->cx:F

    mul-float v3, v0, v8

    iget v0, p0, Lcom/narvii/widget/MoodView;->cy:F

    mul-float v0, v0, v8

    sub-float v4, v10, v0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/narvii/widget/MoodView;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    .line 414
    iget-object v2, p0, Lcom/narvii/widget/MoodView;->bg3:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/narvii/widget/MoodView;->cx:F

    iget v0, p0, Lcom/narvii/widget/MoodView;->cy:F

    sub-float v4, v10, v0

    iget v0, p0, Lcom/narvii/widget/MoodView;->currentScale:F

    add-float v5, v0, v7

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/narvii/widget/MoodView;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    .line 415
    iget-object v2, p0, Lcom/narvii/widget/MoodView;->cd3:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/narvii/widget/MoodView;->cx:F

    iget v0, p0, Lcom/narvii/widget/MoodView;->cy:F

    sub-float v4, v10, v0

    iget v0, p0, Lcom/narvii/widget/MoodView;->currentScale:F

    add-float v5, v0, v7

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/narvii/widget/MoodView;->draw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FFFZ)V

    .line 418
    :goto_0
    iget-boolean v0, p0, Lcom/narvii/widget/MoodView;->anim:Z

    if-eqz v0, :cond_1

    .line 419
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 186
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 187
    invoke-direct {p0}, Lcom/narvii/widget/MoodView;->updateReg()V

    return-void
.end method

.method public setAnimate(Z)V
    .locals 0

    .line 170
    iput-boolean p1, p0, Lcom/narvii/widget/MoodView;->anim:Z

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/narvii/widget/MoodView;->updateReg()V

    return-void
.end method

.method public setMoodSticker(Lcom/narvii/model/User;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/User;->getMoodSticker()Lcom/narvii/model/Sticker;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/narvii/widget/MoodView;->setMoodSticker(Lcom/narvii/model/User;Lcom/narvii/model/Sticker;)V

    return-void
.end method

.method public setMoodSticker(Lcom/narvii/model/User;Lcom/narvii/model/Sticker;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 251
    invoke-virtual {p1}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/widget/MoodView;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/widget/MoodView;->setMoodSticker(Lcom/narvii/model/User;Lcom/narvii/model/Sticker;Z)V

    return-void
.end method

.method public setMoodSticker(Lcom/narvii/model/User;Lcom/narvii/model/Sticker;Z)V
    .locals 4

    .line 221
    iput-object p2, p0, Lcom/narvii/widget/MoodView;->sticker:Lcom/narvii/model/Sticker;

    .line 222
    iput-object p1, p0, Lcom/narvii/widget/MoodView;->curLoadingUser:Lcom/narvii/model/User;

    if-eqz p1, :cond_0

    .line 224
    invoke-virtual {p1}, Lcom/narvii/model/User;->hasAvatarFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->avatarFrameLoader:Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;

    iget-object v1, p1, Lcom/narvii/model/User;->avatarFrame:Lcom/narvii/model/User$AvatarFrameLite;

    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/narvii/widget/MoodView$3;

    invoke-direct {v3, p0, p2, p3}, Lcom/narvii/widget/MoodView$3;-><init>(Lcom/narvii/widget/MoodView;Lcom/narvii/model/Sticker;Z)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader;->load(Lcom/narvii/model/User$IAvatarFrame;Ljava/lang/String;Ljava/lang/Object;Lcom/narvii/monetization/avatarframe/loader/AvatarFrameLoader$AvatarFrameLoaderCallback;)V

    goto :goto_0

    .line 246
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/narvii/widget/MoodView;->setDefaultMoodSticker(Lcom/narvii/model/Sticker;Z)V

    :goto_0
    return-void
.end method

.method public shakeCrazily()V
    .locals 1

    const/high16 v0, 0x447a0000    # 1000.0f

    .line 313
    invoke-virtual {p0, v0, v0}, Lcom/narvii/widget/MoodView;->shakeSensor(FF)V

    return-void
.end method

.method shakeSensor(FF)V
    .locals 2

    .line 307
    iget v0, p0, Lcom/narvii/widget/MoodView;->timeScale:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/narvii/widget/MoodView;->timeScale:F

    .line 308
    iget v0, p0, Lcom/narvii/widget/MoodView;->shakeScaleX:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr v0, p1

    const/high16 p1, 0x40800000    # 4.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/narvii/widget/MoodView;->shakeScaleX:F

    .line 309
    iget v0, p0, Lcom/narvii/widget/MoodView;->shakeScaleY:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    add-float/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/narvii/widget/MoodView;->shakeScaleY:F

    return-void
.end method

.method public shakeTouch()V
    .locals 4

    .line 317
    iget v0, p0, Lcom/narvii/widget/MoodView;->timeScale:F

    const/high16 v1, 0x40d80000    # 6.75f

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/narvii/widget/MoodView;->timeScale:F

    .line 318
    iget v0, p0, Lcom/narvii/widget/MoodView;->shakeScaleX:F

    const v2, 0x40accccd    # 5.4f

    add-float/2addr v0, v2

    div-float/2addr v0, v1

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/narvii/widget/MoodView;->shakeScaleX:F

    .line 319
    iget v0, p0, Lcom/narvii/widget/MoodView;->shakeScaleY:F

    add-float/2addr v0, v2

    div-float/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/narvii/widget/MoodView;->shakeScaleY:F

    .line 320
    iget v0, p0, Lcom/narvii/widget/MoodView;->pendingScale:F

    const v1, 0x3f4ccccd    # 0.8f

    add-float/2addr v0, v1

    const v1, 0x4019999a    # 2.4f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/narvii/widget/MoodView;->pendingScale:F

    return-void
.end method

.method public shuffle()V
    .locals 6

    .line 298
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->rnd:Ljava/util/Random;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/narvii/widget/MoodView;->xtoffset:J

    .line 299
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->rnd:Ljava/util/Random;

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/narvii/widget/MoodView;->ytoffset:J

    .line 300
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->rnd:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    add-double/2addr v0, v4

    const-wide v4, 0x3f79bc65b68b71c3L    # 0.006283185307179587

    div-double v0, v4, v0

    iput-wide v0, p0, Lcom/narvii/widget/MoodView;->xtmult:D

    .line 301
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->rnd:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x4004000000000000L    # 2.5

    add-double/2addr v0, v2

    div-double/2addr v4, v0

    iput-wide v4, p0, Lcom/narvii/widget/MoodView;->ytmult:D

    .line 302
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->rnd:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/narvii/widget/MoodView;->xmult:F

    .line 303
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->rnd:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v1

    const v1, 0x3e4ccccd    # 0.2f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/narvii/widget/MoodView;->ymult:F

    return-void
.end method

.method public updateMoodColor(I)V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->d1:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lcom/narvii/util/drawables/DrawableUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/MoodView;->cd1:Landroid/graphics/drawable/Drawable;

    .line 256
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->d2:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lcom/narvii/util/drawables/DrawableUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/MoodView;->cd2:Landroid/graphics/drawable/Drawable;

    .line 257
    iget-object v0, p0, Lcom/narvii/widget/MoodView;->d3:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lcom/narvii/util/drawables/DrawableUtils;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/MoodView;->cd3:Landroid/graphics/drawable/Drawable;

    .line 258
    iget v0, p0, Lcom/narvii/widget/MoodView;->initScaleX:F

    const v1, 0x3f933333    # 1.15f

    mul-float v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 259
    iget v0, p0, Lcom/narvii/widget/MoodView;->initScaleY:F

    mul-float v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 260
    invoke-direct {p0, p1}, Lcom/narvii/widget/MoodView;->setupSticker(I)V

    .line 261
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
