.class public Lcom/narvii/chat/video/layout/VoiceParticipantLayout;
.super Lcom/narvii/chat/video/layout/RtcBaseLayout;
.source "VoiceParticipantLayout.java"


# static fields
.field public static final CELL_WIDTH_RATIO:F = 0.19f

.field private static final CELL_WIDTH_RATIO_FLOATING:F = 0.3f

.field private static final CHILD_COUNT_LIMIT_GROUP:I = 0x7

.field private static final CHILD_COUNT_LIMIT_PUBLIC:I = 0x9

.field private static final DEFAULT_PADDING:I = 0xa

.field public static final OUT_INNER_RATIO:F = 3.25f

.field private static final RADIUS_RATIO_OF_SCREEN:F = 0.11f


# instance fields
.field private cellWidthRatio:F

.field childCenterPosition:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private childCountLimit:I

.field private gridCellWidth:I

.field layoutInflater:Landroid/view/LayoutInflater;

.field private pendingMutedUserList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private radius:I

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/video/layout/RtcBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x3e428f5c    # 0.19f

    .line 56
    iput v0, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->cellWidthRatio:F

    const/4 v1, 0x7

    .line 57
    iput v1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->childCountLimit:I

    .line 65
    sget-object v1, Lcom/narvii/amino/R$styleable;->VoiceParticipantLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 66
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    .line 67
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->childCenterPosition:Landroid/util/SparseArray;

    .line 69
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->layoutInflater:Landroid/view/LayoutInflater;

    .line 70
    iget-boolean p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    if-eqz p1, :cond_0

    const v0, 0x3e99999a    # 0.3f

    :cond_0
    iput v0, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->cellWidthRatio:F

    const/4 p1, 0x1

    .line 71
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setKeepScreenOn(Z)V

    return-void
.end method

.method private configCircle(III)V
    .locals 9

    .line 244
    iget v0, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->viewWidth:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 245
    iget v2, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->viewHeight:I

    div-int/2addr v2, v1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v4, 0x9

    if-ne p1, v4, :cond_7

    .line 257
    iget p1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->gridCellWidth:I

    sub-int p1, v2, p1

    const/4 v3, 0x5

    const/4 v4, 0x3

    if-le p2, v4, :cond_1

    if-gt p2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x6

    if-lt p2, v5, :cond_2

    .line 261
    iget p1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->gridCellWidth:I

    add-int/2addr v2, p1

    goto :goto_0

    :cond_2
    move v2, p1

    .line 263
    :goto_0
    iget p1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->gridCellWidth:I

    sub-int p1, v0, p1

    if-eq p2, v1, :cond_6

    const/4 v1, 0x7

    if-ne p2, v1, :cond_3

    goto :goto_2

    :cond_3
    if-eq p2, v4, :cond_5

    if-eq p2, v3, :cond_5

    const/16 v1, 0x8

    if-ne p2, v1, :cond_4

    goto :goto_1

    :cond_4
    move v0, p1

    goto :goto_2

    .line 267
    :cond_5
    :goto_1
    iget p1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->gridCellWidth:I

    add-int/2addr v0, p1

    .line 269
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->childCenterPosition:Landroid/util/SparseArray;

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, v0, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_7
    sub-int/2addr p2, v3

    mul-int/lit16 p2, p2, 0x168

    sub-int/2addr p1, v3

    .line 272
    div-int/2addr p2, p1

    int-to-double p1, p2

    const-wide v3, 0x4066800000000000L    # 180.0

    .line 273
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v3

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    mul-double p1, p1, v3

    int-to-double v0, v0

    .line 274
    iget v3, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->radius:I

    int-to-float v3, v3

    const/high16 v4, 0x40500000    # 3.25f

    mul-float v3, v3, v4

    float-to-double v5, v3

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v5

    double-to-int v0, v0

    int-to-double v1, v2

    .line 275
    iget v3, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->radius:I

    int-to-float v3, v3

    mul-float v3, v3, v4

    float-to-double v3, v3

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, p1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v1, v3

    double-to-int p1, v1

    .line 276
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->childCenterPosition:Landroid/util/SparseArray;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p2, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 247
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->childCenterPosition:Landroid/util/SparseArray;

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, v0, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private setTagForChildView(Landroid/view/View;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 369
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f090bfe

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v0, 0x7f09069c

    .line 370
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 372
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1
    const v0, 0x7f090764

    .line 374
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 376
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_2
    const v0, 0x7f0900e4

    .line 378
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 380
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private updateLoadingView(Landroid/widget/ImageView;ZZZ)V
    .locals 2

    .line 172
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/widget/SpinDrawable;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/SpinDrawable;

    goto :goto_0

    .line 175
    :cond_0
    new-instance v0, Lcom/narvii/widget/SpinDrawable;

    invoke-direct {v0}, Lcom/narvii/widget/SpinDrawable;-><init>()V

    const/4 v1, -0x1

    .line 176
    invoke-virtual {v0, v1}, Lcom/narvii/widget/SpinDrawable;->setLoadingColor(I)V

    .line 177
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    if-nez p2, :cond_3

    if-nez p3, :cond_3

    if-eqz p4, :cond_1

    goto :goto_1

    .line 183
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/widget/SpinDrawable;->isRunning()Z

    move-result p2

    if-nez p2, :cond_2

    .line 184
    invoke-virtual {v0}, Lcom/narvii/widget/SpinDrawable;->start()V

    :cond_2
    const/4 p2, 0x0

    .line 186
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 180
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/narvii/widget/SpinDrawable;->stop()V

    const/16 p2, 0x8

    .line 181
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method protected childLimitCount()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->childCountLimit:I

    return v0
.end method

.method protected constructNewChildView(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Landroid/view/View;
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->layoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b0384

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 202
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->updateChildView(Landroid/view/View;ILcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 203
    new-instance v1, Lcom/narvii/chat/video/layout/VoiceParticipantLayout$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/video/layout/VoiceParticipantLayout$1;-><init>(Lcom/narvii/chat/video/layout/VoiceParticipantLayout;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    const p1, 0x7f09069c

    .line 217
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090764

    .line 218
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900e4

    .line 219
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public dpToPx(Landroid/content/Context;F)F
    .locals 1

    .line 297
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    .line 296
    invoke-static {v0, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method protected getChannelType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public notifyLocalMuteUserListChanged(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->childCenterPosition:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 304
    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->pendingMutedUserList:Ljava/util/Set;

    return-void

    .line 307
    :cond_0
    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->pendingMutedUserList:Ljava/util/Set;

    .line 308
    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->updateViews()V

    return-void
.end method

.method public notifyUserDataListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 317
    :cond_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->childLimitCount()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 318
    invoke-super {p0, p1, p2}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->notifyUserDataListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;)V

    return-void

    .line 322
    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 323
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 324
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 325
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 326
    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 327
    iget-object v6, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    if-eqz v6, :cond_2

    iget v6, v6, Lcom/narvii/video/ui/UserStatusData;->mVolume:I

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    iget v7, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 328
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    .line 329
    iget v6, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 331
    :cond_2
    iget v6, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-virtual {v1, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 335
    :cond_3
    invoke-super {p0, p1, v1}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->notifyUserDataListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;)V

    .line 336
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    .line 337
    :goto_2
    iget-object p2, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_5

    .line 338
    iget-object p2, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 339
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object p2, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 340
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget p2, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    iget v1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->localChannelUid:I

    if-eq p2, v1, :cond_4

    iget-object p2, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 341
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object p2, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    iget p2, p2, Lcom/narvii/video/ui/UserStatusData;->mVolume:I

    if-nez p2, :cond_4

    .line 342
    iget-object p2, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    iget-object v1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 345
    :cond_5
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_6

    return-void

    :cond_6
    const/4 p1, 0x0

    .line 349
    :goto_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    if-ge v3, p2, :cond_8

    .line 350
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f090bfe

    .line 351
    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 352
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_7

    .line 353
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge p1, v4, :cond_7

    .line 354
    iget-object v4, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 355
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->setTagForChildView(Landroid/view/View;I)V

    .line 356
    iget-object v1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 357
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    invoke-virtual {p0, p2, v3, v1}, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->updateChildView(Landroid/view/View;ILcom/narvii/chat/rtc/ChannelUserWrapper;)V

    add-int/lit8 p1, p1, 0x1

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    const/4 p1, 0x0

    .line 282
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 283
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090bfe

    .line 284
    invoke-virtual {p2, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 285
    iget-object p4, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->childCenterPosition:Landroid/util/SparseArray;

    invoke-virtual {p4, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Point;

    .line 286
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    .line 287
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    div-int/lit8 p5, p5, 0x2

    .line 288
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const v1, 0x3e428f5c    # 0.19f

    .line 289
    iget v2, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->viewWidth:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 290
    iget v0, p3, Landroid/graphics/Point;->x:I

    sub-int v1, v0, p4

    iget p3, p3, Landroid/graphics/Point;->y:I

    sub-int v2, p3, p5

    add-int/2addr v0, p4

    add-int/2addr p3, p5

    invoke-virtual {p2, v1, v2, v0, p3}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 226
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->viewWidth:I

    .line 227
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->viewHeight:I

    .line 228
    iget v0, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->viewWidth:I

    iget v1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->viewHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 229
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070319

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3de147ae    # 0.11f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->radius:I

    .line 230
    iget v0, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->viewWidth:I

    iget v1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->viewHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 231
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->radius:I

    mul-int/lit8 v1, v1, 0x2

    .line 230
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->gridCellWidth:I

    .line 232
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 234
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090bfe

    .line 235
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 236
    invoke-direct {p0, v0, v1, v3}, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->configCircle(III)V

    .line 237
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/16 v3, 0x9

    if-ne v0, v3, :cond_0

    .line 238
    iget v3, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->gridCellWidth:I

    goto :goto_1

    :cond_0
    iget v3, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->viewWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->cellWidthRatio:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    :goto_1
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 197
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public setIsGroupChat(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_0

    :cond_0
    const/16 p1, 0x9

    .line 89
    :goto_0
    iput p1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->childCountLimit:I

    return-void
.end method

.method public updateCallerLayout()V
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    .line 191
    iput v0, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->cellWidthRatio:F

    .line 192
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method protected updateChildView(Landroid/view/View;ILcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 12

    if-nez p3, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object p2, p3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    const/4 v0, 0x0

    if-nez p2, :cond_1

    move-object p2, v0

    goto :goto_0

    :cond_1
    iget-object p2, p2, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 108
    :goto_0
    iget-object v1, p3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 112
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const-string v4, "rtc"

    .line 114
    invoke-interface {v2, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/chat/rtc/RtcService;

    .line 115
    invoke-virtual {v4}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 117
    iget v4, v4, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 120
    :goto_1
    new-instance v5, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {v5, v2, v4}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;I)V

    const v2, 0x7f090c10

    .line 122
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/UserAvatarLayout;

    const/4 v4, 0x1

    if-eqz p2, :cond_3

    .line 123
    invoke-virtual {p2}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v5}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v7

    invoke-virtual {v2, p2, v6, v7}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;ZZ)V

    .line 124
    iget-boolean v6, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    if-eqz v6, :cond_4

    const/high16 v6, 0x3f800000    # 1.0f

    .line 125
    invoke-virtual {v2, v6, v4}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarStroke(FZ)V

    .line 127
    :cond_4
    iget-object v6, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->pendingMutedUserList:Ljava/util/Set;

    if-eqz v6, :cond_6

    iget-object v7, p3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-nez v7, :cond_5

    move-object v7, v0

    goto :goto_3

    :cond_5
    invoke-virtual {v7}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    :goto_4
    if-eqz v1, :cond_7

    .line 128
    invoke-virtual {v1}, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted()Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    .line 129
    :goto_5
    iget v8, p3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    if-ne v8, v4, :cond_8

    const/4 v8, 0x1

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    :goto_6
    if-eqz v1, :cond_9

    .line 130
    invoke-virtual {v1}, Lcom/narvii/video/ui/UserStatusData;->isBadNetwork()Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    goto :goto_7

    :cond_9
    const/4 v9, 0x0

    .line 131
    :goto_7
    iget v10, p3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    iget v11, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->localChannelUid:I

    if-eq v10, v11, :cond_c

    iget-object p3, p3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-nez p3, :cond_a

    goto :goto_8

    .line 132
    :cond_a
    invoke-virtual {p3}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v0

    :goto_8
    iget-object p3, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->localUid:Ljava/lang/String;

    .line 131
    invoke-static {v0, p3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    goto :goto_9

    :cond_b
    const/4 p3, 0x0

    goto :goto_a

    :cond_c
    :goto_9
    const/4 p3, 0x1

    :goto_a
    const v0, 0x7f090764

    .line 134
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NicknameView;

    .line 135
    invoke-virtual {v0, p2}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    if-eqz p3, :cond_d

    const v10, 0x7f0f0b28

    .line 137
    invoke-virtual {v0, v10}, Lcom/narvii/widget/NicknameView;->setText(I)V

    .line 139
    :cond_d
    iget-boolean v10, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    const/16 v11, 0x8

    if-eqz v10, :cond_e

    const/16 v10, 0x8

    goto :goto_b

    :cond_e
    const/4 v10, 0x0

    :goto_b
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v0, 0x7f090766

    .line 141
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 142
    iget-boolean v10, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    if-nez v10, :cond_f

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-virtual {v5}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result p2

    if-eqz p2, :cond_f

    const/4 p2, 0x0

    goto :goto_c

    :cond_f
    const/16 p2, 0x8

    :goto_c
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    const p2, 0x7f090cc4

    .line 144
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/VolumeIndicator;

    if-eqz v8, :cond_10

    if-nez v6, :cond_10

    if-nez v7, :cond_10

    const/4 v0, 0x0

    goto :goto_d

    :cond_10
    const/16 v0, 0x8

    .line 145
    :goto_d
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_12

    if-eqz v7, :cond_11

    goto :goto_e

    .line 146
    :cond_11
    invoke-virtual {v1}, Lcom/narvii/video/ui/UserStatusData;->getCurVolumeLevel()I

    move-result v0

    goto :goto_f

    :cond_12
    :goto_e
    const/4 v0, 0x0

    .line 147
    :goto_f
    iget-boolean v1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    .line 148
    invoke-virtual {p2, v1, v3}, Lcom/narvii/widget/VolumeIndicator;->setValue(FZ)V

    goto :goto_10

    :cond_13
    int-to-float v1, v0

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v1, v5

    .line 150
    invoke-virtual {p2, v1, v4}, Lcom/narvii/widget/VolumeIndicator;->setValue(FZ)V

    :goto_10
    if-nez v6, :cond_15

    if-eqz v7, :cond_14

    goto :goto_11

    :cond_14
    if-eqz p3, :cond_16

    if-nez v8, :cond_16

    const/4 v0, 0x1

    goto :goto_12

    :cond_15
    :goto_11
    const/4 v0, 0x0

    :cond_16
    :goto_12
    const p2, 0x7f090c39

    .line 154
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/video/view/UserSpeakingView;

    .line 155
    invoke-virtual {p2, v0}, Lcom/narvii/chat/video/view/UserSpeakingView;->setVolumeLevel(I)V

    if-eqz p3, :cond_17

    if-eqz v8, :cond_18

    :cond_17
    if-lez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_13

    :cond_18
    const/4 v0, 0x0

    .line 156
    :goto_13
    invoke-virtual {v2, v0}, Lcom/narvii/widget/UserAvatarLayout;->showAudioStroke(Z)V

    if-eqz p3, :cond_19

    if-nez v8, :cond_19

    goto :goto_14

    :cond_19
    const/4 v4, 0x0

    .line 157
    :goto_14
    invoke-virtual {p2, v4}, Lcom/narvii/chat/video/view/UserSpeakingView;->setPendingSpeakingMode(Z)V

    const p2, 0x7f09069c

    .line 159
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz v6, :cond_1a

    const/4 v0, 0x0

    goto :goto_15

    :cond_1a
    const/16 v0, 0x8

    :goto_15
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f090745

    .line 160
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez v6, :cond_1b

    if-eqz v7, :cond_1b

    const/4 v0, 0x0

    goto :goto_16

    :cond_1b
    const/16 v0, 0x8

    :goto_16
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f090113

    .line 161
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz v9, :cond_1c

    const/4 v0, 0x0

    goto :goto_17

    :cond_1c
    const/16 v0, 0x8

    :goto_17
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f090112

    .line 162
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-boolean v0, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    if-nez v0, :cond_1d

    if-eqz v9, :cond_1d

    const/4 v0, 0x0

    goto :goto_18

    :cond_1d
    const/16 v0, 0x8

    :goto_18
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f090697

    .line 164
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 165
    invoke-direct {p0, p2, v8, v6, p3}, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->updateLoadingView(Landroid/widget/ImageView;ZZZ)V

    const p2, 0x7f09069b

    .line 167
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-boolean p2, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    if-nez p2, :cond_1e

    if-eqz v6, :cond_1e

    goto :goto_19

    :cond_1e
    const/16 v3, 0x8

    :goto_19
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected updateViews()V
    .locals 4

    .line 76
    invoke-super {p0}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->updateViews()V

    const/4 v0, 0x0

    .line 77
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 78
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090bfe

    .line 79
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 83
    :cond_0
    iget-object v3, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 84
    invoke-virtual {p0, v1, v0, v2}, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->updateChildView(Landroid/view/View;ILcom/narvii/chat/rtc/ChannelUserWrapper;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
