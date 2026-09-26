.class public Lcom/narvii/chat/video/layout/VoiceParticipantLayout;
.super Lcom/narvii/chat/video/layout/RtcBaseLayout;
.source "SourceFile"


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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/video/layout/RtcBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x3e428f5c    # 0.19f

    iput v0, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->cellWidthRatio:F

    const/4 v1, 0x7

    iput v1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->childCountLimit:I

    .line 3
    sget-object v1, Lcom/narvii/amino/R$styleable;->VoiceParticipantLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->childCenterPosition:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->layoutInflater:Landroid/view/LayoutInflater;

    iget-boolean p1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    if-eqz p1, :cond_0

    const v0, 0x3e99999a    # 0.3f

    :cond_0
    iput v0, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->cellWidthRatio:F

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    return-void
.end method

.method private configCircle(III)V
    .locals 9

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->viewWidth:I

    .line 3
    const/4 v1, 0x2

    .line 4
    div-int/2addr v0, v1

    .line 5
    .line 6
    iget v2, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->viewHeight:I

    .line 7
    div-int/2addr v2, v1

    .line 8
    const/4 v3, 0x1

    .line 9
    .line 10
    if-eq p1, v3, :cond_8

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :cond_0
    const/16 v4, 0x9

    .line 17
    .line 18
    if-ne p1, v4, :cond_7

    .line 19
    .line 20
    iget p1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->gridCellWidth:I

    .line 21
    .line 22
    sub-int v3, v2, p1

    .line 23
    const/4 v4, 0x5

    .line 24
    const/4 v5, 0x3

    .line 25
    .line 26
    if-le p2, v5, :cond_1

    .line 27
    .line 28
    if-gt p2, v4, :cond_1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v6, 0x6

    .line 31
    .line 32
    if-lt p2, v6, :cond_2

    .line 33
    add-int/2addr v2, p1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    move v2, v3

    .line 36
    .line 37
    :goto_0
    sub-int v3, v0, p1

    .line 38
    .line 39
    if-eq p2, v1, :cond_6

    .line 40
    const/4 v1, 0x7

    .line 41
    .line 42
    if-ne p2, v1, :cond_3

    .line 43
    goto :goto_2

    .line 44
    .line 45
    :cond_3
    if-eq p2, v5, :cond_5

    .line 46
    .line 47
    if-eq p2, v4, :cond_5

    .line 48
    .line 49
    const/16 v1, 0x8

    .line 50
    .line 51
    if-ne p2, v1, :cond_4

    .line 52
    goto :goto_1

    .line 53
    :cond_4
    move v0, v3

    .line 54
    goto :goto_2

    .line 55
    :cond_5
    :goto_1
    add-int/2addr v0, p1

    .line 56
    .line 57
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->childCenterPosition:Landroid/util/SparseArray;

    .line 58
    .line 59
    new-instance p2, Landroid/graphics/Point;

    .line 60
    .line 61
    .line 62
    invoke-direct {p2, v0, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    return-void

    .line 67
    :cond_7
    sub-int/2addr p2, v3

    .line 68
    .line 69
    mul-int/lit16 p2, p2, 0x168

    .line 70
    sub-int/2addr p1, v3

    .line 71
    div-int/2addr p2, p1

    .line 72
    int-to-double p1, p2

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    const-wide v3, 0x4066800000000000L    # 180.0

    .line 78
    div-double/2addr p1, v3

    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    const-wide v3, 0x400921fb54442d18L    # Math.PI

    .line 84
    mul-double/2addr p1, v3

    .line 85
    int-to-double v0, v0

    .line 86
    .line 87
    iget v3, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->radius:I

    .line 88
    int-to-float v3, v3

    .line 89
    .line 90
    const/high16 v4, 0x40500000    # 3.25f

    .line 91
    mul-float/2addr v3, v4

    .line 92
    float-to-double v5, v3

    .line 93
    .line 94
    .line 95
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    .line 96
    move-result-wide v7

    .line 97
    mul-double/2addr v5, v7

    .line 98
    add-double/2addr v0, v5

    .line 99
    double-to-int v0, v0

    .line 100
    int-to-double v1, v2

    .line 101
    .line 102
    iget v3, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->radius:I

    .line 103
    int-to-float v3, v3

    .line 104
    mul-float/2addr v3, v4

    .line 105
    float-to-double v3, v3

    .line 106
    .line 107
    .line 108
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    .line 109
    move-result-wide p1

    .line 110
    mul-double/2addr v3, p1

    .line 111
    sub-double/2addr v1, v3

    .line 112
    double-to-int p1, v1

    .line 113
    .line 114
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->childCenterPosition:Landroid/util/SparseArray;

    .line 115
    .line 116
    new-instance v1, Landroid/graphics/Point;

    .line 117
    .line 118
    .line 119
    invoke-direct {v1, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    return-void

    .line 124
    .line 125
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->childCenterPosition:Landroid/util/SparseArray;

    .line 126
    .line 127
    new-instance p2, Landroid/graphics/Point;

    .line 128
    .line 129
    .line 130
    invoke-direct {p2, v0, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    return-void
.end method

.method private setTagForChildView(Landroid/view/View;I)V
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    const v1, 0x7f0a0f21

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const v0, 0x7f0a0826

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    const v0, 0x7f0a09f9

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    const v0, 0x7f0a0171

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    .line 57
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object p2

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 62
    :cond_3
    return-void
.end method

.method private updateLoadingView(Landroid/widget/ImageView;ZZZ)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lcom/narvii/widget/SpinDrawable;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/widget/SpinDrawable;

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    new-instance v0, Lcom/narvii/widget/SpinDrawable;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Lcom/narvii/widget/SpinDrawable;-><init>()V

    .line 21
    const/4 v1, -0x1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/narvii/widget/SpinDrawable;->setLoadingColor(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    .line 29
    :goto_0
    if-nez p2, :cond_3

    .line 30
    .line 31
    if-nez p3, :cond_3

    .line 32
    .line 33
    if-eqz p4, :cond_1

    .line 34
    goto :goto_1

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/widget/SpinDrawable;->isRunning()Z

    .line 38
    move-result p2

    .line 39
    .line 40
    if-nez p2, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/narvii/widget/SpinDrawable;->start()V

    .line 44
    :cond_2
    const/4 p2, 0x0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    goto :goto_2

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/narvii/widget/SpinDrawable;->stop()V

    .line 52
    .line 53
    const/16 p2, 0x8

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    :goto_2
    return-void
.end method


# virtual methods
.method protected childLimitCount()I
    .locals 1

    iget v0, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->childCountLimit:I

    return v0
.end method

.method protected constructNewChildView(Lcom/narvii/chat/rtc/ChannelUserWrapper;)Landroid/view/View;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->layoutInflater:Landroid/view/LayoutInflater;

    .line 3
    .line 4
    .line 5
    const v1, 0x7f0d03bf

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    move-result v1

    .line 15
    .line 16
    add-int/lit8 v1, v1, -0x1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0, v1, p1}, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->updateChildView(Landroid/view/View;ILcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 20
    .line 21
    new-instance v1, Lcom/narvii/chat/video/layout/VoiceParticipantLayout$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/video/layout/VoiceParticipantLayout$1;-><init>(Lcom/narvii/chat/video/layout/VoiceParticipantLayout;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 25
    .line 26
    .line 27
    const p1, 0x7f0a0826

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    .line 37
    const p1, 0x7f0a09f9

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    const p1, 0x7f0a0171

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-object v0
.end method

.method public dpToPx(Landroid/content/Context;F)F
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 13
    move-result p1

    .line 14
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->childCenterPosition:Landroid/util/SparseArray;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->pendingMutedUserList:Ljava/util/Set;

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->pendingMutedUserList:Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->updateViews()V

    .line 13
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

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 7
    move-result v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->childLimitCount()I

    .line 11
    move-result v1

    .line 12
    .line 13
    if-gt v0, v1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1, p2}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->notifyUserDataListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;)V

    .line 17
    return-void

    .line 18
    .line 19
    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 23
    .line 24
    new-instance v1, Landroid/util/SparseArray;

    .line 25
    .line 26
    .line 27
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 28
    .line 29
    new-instance v2, Landroid/util/SparseArray;

    .line 30
    .line 31
    .line 32
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 33
    const/4 v3, 0x0

    .line 34
    move v4, v3

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 38
    move-result v5

    .line 39
    .line 40
    if-ge v4, v5, :cond_3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 44
    move-result-object v5

    .line 45
    .line 46
    check-cast v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 47
    .line 48
    iget-object v6, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 49
    .line 50
    if-eqz v6, :cond_2

    .line 51
    .line 52
    iget v6, v6, Lcom/narvii/video/ui/UserStatusData;->mVolume:I

    .line 53
    .line 54
    if-eqz v6, :cond_2

    .line 55
    .line 56
    iget-object v6, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 57
    .line 58
    iget v7, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object v6

    .line 63
    .line 64
    if-nez v6, :cond_2

    .line 65
    .line 66
    iget v6, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    goto :goto_1

    .line 71
    .line 72
    :cond_2
    iget v6, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    .line 77
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 78
    goto :goto_0

    .line 79
    .line 80
    .line 81
    :cond_3
    invoke-super {p0, p1, v1}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->notifyUserDataListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 85
    move-result p1

    .line 86
    .line 87
    if-eqz p1, :cond_8

    .line 88
    move p1, v3

    .line 89
    .line 90
    :goto_2
    iget-object p2, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 94
    move-result p2

    .line 95
    .line 96
    if-ge p1, p2, :cond_5

    .line 97
    .line 98
    iget-object p2, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 102
    move-result-object p2

    .line 103
    .line 104
    if-eqz p2, :cond_4

    .line 105
    .line 106
    iget-object p2, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 110
    move-result-object p2

    .line 111
    .line 112
    check-cast p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 113
    .line 114
    iget-object p2, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 115
    .line 116
    if-eqz p2, :cond_4

    .line 117
    .line 118
    iget-object p2, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 122
    move-result-object p2

    .line 123
    .line 124
    check-cast p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 125
    .line 126
    iget p2, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 127
    .line 128
    iget v1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->localChannelUid:I

    .line 129
    .line 130
    if-eq p2, v1, :cond_4

    .line 131
    .line 132
    iget-object p2, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 136
    move-result-object p2

    .line 137
    .line 138
    check-cast p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 139
    .line 140
    iget-object p2, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 141
    .line 142
    iget p2, p2, Lcom/narvii/video/ui/UserStatusData;->mVolume:I

    .line 143
    .line 144
    if-nez p2, :cond_4

    .line 145
    .line 146
    iget-object p2, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 150
    move-result p2

    .line 151
    .line 152
    iget-object v1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 156
    move-result-object v1

    .line 157
    .line 158
    check-cast v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 162
    .line 163
    :cond_4
    add-int/lit8 p1, p1, 0x1

    .line 164
    goto :goto_2

    .line 165
    .line 166
    .line 167
    :cond_5
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 168
    move-result p1

    .line 169
    .line 170
    if-nez p1, :cond_6

    .line 171
    return-void

    .line 172
    :cond_6
    move p1, v3

    .line 173
    .line 174
    .line 175
    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 176
    move-result p2

    .line 177
    .line 178
    if-ge v3, p2, :cond_8

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 182
    move-result-object p2

    .line 183
    .line 184
    .line 185
    const v1, 0x7f0a0f21

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 189
    move-result-object v1

    .line 190
    .line 191
    if-eqz v1, :cond_7

    .line 192
    .line 193
    check-cast v1, Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 197
    move-result v4

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 201
    move-result v4

    .line 202
    .line 203
    if-ltz v4, :cond_7

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 207
    move-result v4

    .line 208
    .line 209
    if-ge p1, v4, :cond_7

    .line 210
    .line 211
    iget-object v4, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 215
    move-result v1

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 222
    move-result v1

    .line 223
    .line 224
    .line 225
    invoke-direct {p0, p2, v1}, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->setTagForChildView(Landroid/view/View;I)V

    .line 226
    .line 227
    iget-object v1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 231
    move-result v4

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 235
    move-result-object v5

    .line 236
    .line 237
    check-cast v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 244
    move-result-object v1

    .line 245
    .line 246
    check-cast v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0, p2, v3, v1}, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->updateChildView(Landroid/view/View;ILcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 250
    .line 251
    add-int/lit8 p1, p1, 0x1

    .line 252
    .line 253
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 254
    goto :goto_3

    .line 255
    :cond_8
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    move-result p2

    .line 6
    .line 7
    if-ge p1, p2, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    .line 14
    const p3, 0x7f0a0f21

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 18
    move-result-object p3

    .line 19
    .line 20
    check-cast p3, Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result p3

    .line 25
    .line 26
    iget-object p4, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->childCenterPosition:Landroid/util/SparseArray;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p4, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 30
    move-result-object p3

    .line 31
    .line 32
    check-cast p3, Landroid/graphics/Point;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 36
    move-result p4

    .line 37
    .line 38
    div-int/lit8 p4, p4, 0x2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 42
    move-result p5

    .line 43
    .line 44
    div-int/lit8 p5, p5, 0x2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    iget v1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->viewWidth:I

    .line 51
    int-to-float v1, v1

    .line 52
    .line 53
    .line 54
    const v2, 0x3e428f5c    # 0.19f

    .line 55
    mul-float/2addr v1, v2

    .line 56
    float-to-int v1, v1

    .line 57
    .line 58
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 59
    .line 60
    iget v0, p3, Landroid/graphics/Point;->x:I

    .line 61
    .line 62
    sub-int v1, v0, p4

    .line 63
    .line 64
    iget p3, p3, Landroid/graphics/Point;->y:I

    .line 65
    .line 66
    sub-int v2, p3, p5

    .line 67
    add-int/2addr v0, p4

    .line 68
    add-int/2addr p3, p5

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v1, v2, v0, p3}, Landroid/view/View;->layout(IIII)V

    .line 72
    .line 73
    add-int/lit8 p1, p1, 0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->viewWidth:I

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 10
    move-result v0

    .line 11
    .line 12
    iput v0, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->viewHeight:I

    .line 13
    .line 14
    iget v1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->viewWidth:I

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 18
    move-result v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    const v2, 0x7f070551

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    move-result v1

    .line 34
    .line 35
    mul-int/lit8 v1, v1, 0x2

    .line 36
    sub-int/2addr v0, v1

    .line 37
    int-to-float v0, v0

    .line 38
    .line 39
    .line 40
    const v1, 0x3de147ae    # 0.11f

    .line 41
    mul-float/2addr v0, v1

    .line 42
    float-to-int v0, v0

    .line 43
    .line 44
    iput v0, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->radius:I

    .line 45
    .line 46
    iget v0, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->viewWidth:I

    .line 47
    .line 48
    iget v1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->viewHeight:I

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 52
    move-result v0

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 64
    move-result v1

    .line 65
    .line 66
    mul-int/lit8 v1, v1, 0x2

    .line 67
    sub-int/2addr v0, v1

    .line 68
    int-to-float v0, v0

    .line 69
    .line 70
    const/high16 v1, 0x40400000    # 3.0f

    .line 71
    div-float/2addr v0, v1

    .line 72
    float-to-int v0, v0

    .line 73
    .line 74
    iget v1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->radius:I

    .line 75
    .line 76
    mul-int/lit8 v1, v1, 0x2

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 80
    move-result v0

    .line 81
    .line 82
    iput v0, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->gridCellWidth:I

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 86
    move-result v0

    .line 87
    const/4 v1, 0x0

    .line 88
    .line 89
    :goto_0
    if-ge v1, v0, :cond_1

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 93
    move-result-object v2

    .line 94
    .line 95
    .line 96
    const v3, 0x7f0a0f21

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 100
    move-result-object v3

    .line 101
    .line 102
    check-cast v3, Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 106
    move-result v3

    .line 107
    .line 108
    .line 109
    invoke-direct {p0, v0, v1, v3}, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->configCircle(III)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 113
    move-result-object v2

    .line 114
    .line 115
    const/16 v3, 0x9

    .line 116
    .line 117
    if-ne v0, v3, :cond_0

    .line 118
    .line 119
    iget v3, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->gridCellWidth:I

    .line 120
    goto :goto_1

    .line 121
    .line 122
    :cond_0
    iget v3, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->viewWidth:I

    .line 123
    int-to-float v3, v3

    .line 124
    .line 125
    iget v4, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->cellWidthRatio:F

    .line 126
    mul-float/2addr v3, v4

    .line 127
    float-to-int v3, v3

    .line 128
    .line 129
    :goto_1
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 130
    .line 131
    add-int/lit8 v1, v1, 0x1

    .line 132
    goto :goto_0

    .line 133
    .line 134
    .line 135
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 136
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 4
    return-void
.end method

.method public setIsGroupChat(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_0

    :cond_0
    const/16 p1, 0x9

    :goto_0
    iput p1, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->childCountLimit:I

    return-void
.end method

.method public updateCallerLayout()V
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x3e4ccccd    # 0.2f

    .line 4
    .line 5
    iput v0, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->cellWidthRatio:F

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 9
    return-void
.end method

.method protected updateChildView(Landroid/view/View;ILcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 12

    .line 1
    .line 2
    if-nez p3, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object p2, p3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    if-nez p2, :cond_1

    .line 9
    move-object p2, v0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_1
    iget-object p2, p2, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 13
    .line 14
    :goto_0
    iget-object v1, p3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x0

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    const-string v4, "rtc"

    .line 28
    .line 29
    .line 30
    invoke-interface {v2, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object v4

    .line 32
    .line 33
    check-cast v4, Lcom/narvii/chat/rtc/RtcService;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 37
    move-result-object v4

    .line 38
    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    iget v4, v4, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v4, v3

    .line 44
    .line 45
    :goto_1
    new-instance v5, Lcom/narvii/modulization/CommunityConfigHelper;

    .line 46
    .line 47
    .line 48
    invoke-direct {v5, v2, v4}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 49
    .line 50
    .line 51
    const v2, 0x7f0a0f36

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    check-cast v2, Lcom/narvii/widget/UserAvatarLayout;

    .line 58
    const/4 v4, 0x1

    .line 59
    .line 60
    if-eqz p2, :cond_3

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    .line 64
    move-result v6

    .line 65
    .line 66
    if-eqz v6, :cond_3

    .line 67
    move v6, v4

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    move v6, v3

    .line 70
    .line 71
    .line 72
    :goto_2
    invoke-virtual {v5}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    .line 73
    move-result v7

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p2, v6, v7}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;ZZ)V

    .line 77
    .line 78
    iget-boolean v6, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    .line 79
    .line 80
    if-eqz v6, :cond_4

    .line 81
    .line 82
    const/high16 v6, 0x3f800000    # 1.0f

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v6, v4}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarStroke(FZ)V

    .line 86
    .line 87
    :cond_4
    iget-object v6, p0, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->pendingMutedUserList:Ljava/util/Set;

    .line 88
    .line 89
    if-eqz v6, :cond_6

    .line 90
    .line 91
    iget-object v7, p3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 92
    .line 93
    if-nez v7, :cond_5

    .line 94
    move-object v7, v0

    .line 95
    goto :goto_3

    .line 96
    .line 97
    .line 98
    :cond_5
    invoke-virtual {v7}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 99
    move-result-object v7

    .line 100
    .line 101
    .line 102
    :goto_3
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 103
    move-result v6

    .line 104
    .line 105
    if-eqz v6, :cond_6

    .line 106
    move v6, v4

    .line 107
    goto :goto_4

    .line 108
    :cond_6
    move v6, v3

    .line 109
    .line 110
    :goto_4
    if-eqz v1, :cond_7

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/narvii/video/ui/UserStatusData;->isVoiceMuted()Z

    .line 114
    move-result v7

    .line 115
    .line 116
    if-eqz v7, :cond_7

    .line 117
    move v7, v4

    .line 118
    goto :goto_5

    .line 119
    :cond_7
    move v7, v3

    .line 120
    .line 121
    :goto_5
    iget v8, p3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->status:I

    .line 122
    .line 123
    if-ne v8, v4, :cond_8

    .line 124
    move v8, v4

    .line 125
    goto :goto_6

    .line 126
    :cond_8
    move v8, v3

    .line 127
    .line 128
    :goto_6
    if-eqz v1, :cond_9

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/narvii/video/ui/UserStatusData;->isBadNetwork()Z

    .line 132
    move-result v9

    .line 133
    .line 134
    if-eqz v9, :cond_9

    .line 135
    move v9, v4

    .line 136
    goto :goto_7

    .line 137
    :cond_9
    move v9, v3

    .line 138
    .line 139
    :goto_7
    iget v10, p3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 140
    .line 141
    iget v11, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->localChannelUid:I

    .line 142
    .line 143
    if-eq v10, v11, :cond_c

    .line 144
    .line 145
    iget-object p3, p3, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 146
    .line 147
    if-nez p3, :cond_a

    .line 148
    goto :goto_8

    .line 149
    .line 150
    .line 151
    :cond_a
    invoke-virtual {p3}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 152
    move-result-object v0

    .line 153
    .line 154
    :goto_8
    iget-object p3, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->localUid:Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    invoke-static {v0, p3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 158
    move-result p3

    .line 159
    .line 160
    if-eqz p3, :cond_b

    .line 161
    goto :goto_9

    .line 162
    :cond_b
    move p3, v3

    .line 163
    goto :goto_a

    .line 164
    :cond_c
    :goto_9
    move p3, v4

    .line 165
    .line 166
    .line 167
    :goto_a
    const v0, 0x7f0a09f9

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 171
    move-result-object v0

    .line 172
    .line 173
    check-cast v0, Lcom/narvii/widget/NicknameView;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, p2}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 177
    .line 178
    if-eqz p3, :cond_d

    .line 179
    .line 180
    .line 181
    const v10, 0x7f120c2a

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v10}, Lcom/narvii/widget/NicknameView;->setText(I)V

    .line 185
    .line 186
    :cond_d
    iget-boolean v10, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    .line 187
    .line 188
    const/16 v11, 0x8

    .line 189
    .line 190
    if-eqz v10, :cond_e

    .line 191
    move v10, v11

    .line 192
    goto :goto_b

    .line 193
    :cond_e
    move v10, v3

    .line 194
    .line 195
    .line 196
    :goto_b
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 197
    .line 198
    .line 199
    const v0, 0x7f0a09fb

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 203
    move-result-object v0

    .line 204
    .line 205
    check-cast v0, Landroid/widget/ImageView;

    .line 206
    .line 207
    iget-boolean v10, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    .line 208
    .line 209
    if-nez v10, :cond_f

    .line 210
    .line 211
    if-eqz p2, :cond_f

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    .line 215
    move-result p2

    .line 216
    .line 217
    if-eqz p2, :cond_f

    .line 218
    .line 219
    .line 220
    invoke-virtual {v5}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    .line 221
    move-result p2

    .line 222
    .line 223
    if-eqz p2, :cond_f

    .line 224
    move p2, v3

    .line 225
    goto :goto_c

    .line 226
    :cond_f
    move p2, v11

    .line 227
    .line 228
    .line 229
    :goto_c
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    .line 231
    .line 232
    const p2, 0x7f0a0fea

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 236
    move-result-object p2

    .line 237
    .line 238
    check-cast p2, Lcom/narvii/widget/VolumeIndicator;

    .line 239
    .line 240
    if-eqz v8, :cond_10

    .line 241
    .line 242
    if-nez v6, :cond_10

    .line 243
    .line 244
    if-nez v7, :cond_10

    .line 245
    move v0, v3

    .line 246
    goto :goto_d

    .line 247
    :cond_10
    move v0, v11

    .line 248
    .line 249
    .line 250
    :goto_d
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 251
    .line 252
    if-eqz v1, :cond_12

    .line 253
    .line 254
    if-eqz v7, :cond_11

    .line 255
    goto :goto_e

    .line 256
    .line 257
    .line 258
    :cond_11
    invoke-virtual {v1}, Lcom/narvii/video/ui/UserStatusData;->getCurVolumeLevel()I

    .line 259
    move-result v0

    .line 260
    goto :goto_f

    .line 261
    :cond_12
    :goto_e
    move v0, v3

    .line 262
    .line 263
    :goto_f
    iget-boolean v1, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    .line 264
    .line 265
    if-eqz v1, :cond_13

    .line 266
    const/4 v1, 0x0

    .line 267
    .line 268
    .line 269
    invoke-virtual {p2, v1, v3}, Lcom/narvii/widget/VolumeIndicator;->setValue(FZ)V

    .line 270
    goto :goto_10

    .line 271
    :cond_13
    int-to-float v1, v0

    .line 272
    .line 273
    const/high16 v5, 0x40800000    # 4.0f

    .line 274
    div-float/2addr v1, v5

    .line 275
    .line 276
    .line 277
    invoke-virtual {p2, v1, v4}, Lcom/narvii/widget/VolumeIndicator;->setValue(FZ)V

    .line 278
    .line 279
    :goto_10
    if-nez v6, :cond_15

    .line 280
    .line 281
    if-eqz v7, :cond_14

    .line 282
    goto :goto_11

    .line 283
    .line 284
    :cond_14
    if-eqz p3, :cond_16

    .line 285
    .line 286
    if-nez v8, :cond_16

    .line 287
    move v0, v4

    .line 288
    goto :goto_12

    .line 289
    :cond_15
    :goto_11
    move v0, v3

    .line 290
    .line 291
    .line 292
    :cond_16
    :goto_12
    const p2, 0x7f0a0f5b

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 296
    move-result-object p2

    .line 297
    .line 298
    check-cast p2, Lcom/narvii/chat/video/view/UserSpeakingView;

    .line 299
    .line 300
    .line 301
    invoke-virtual {p2, v0}, Lcom/narvii/chat/video/view/UserSpeakingView;->setVolumeLevel(I)V

    .line 302
    .line 303
    if-eqz p3, :cond_17

    .line 304
    .line 305
    if-eqz v8, :cond_18

    .line 306
    .line 307
    :cond_17
    if-lez v0, :cond_18

    .line 308
    move v0, v4

    .line 309
    goto :goto_13

    .line 310
    :cond_18
    move v0, v3

    .line 311
    .line 312
    .line 313
    :goto_13
    invoke-virtual {v2, v0}, Lcom/narvii/widget/UserAvatarLayout;->showAudioStroke(Z)V

    .line 314
    .line 315
    if-eqz p3, :cond_19

    .line 316
    .line 317
    if-nez v8, :cond_19

    .line 318
    goto :goto_14

    .line 319
    :cond_19
    move v4, v3

    .line 320
    .line 321
    .line 322
    :goto_14
    invoke-virtual {p2, v4}, Lcom/narvii/chat/video/view/UserSpeakingView;->setPendingSpeakingMode(Z)V

    .line 323
    .line 324
    .line 325
    const p2, 0x7f0a0826

    .line 326
    .line 327
    .line 328
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 329
    move-result-object p2

    .line 330
    .line 331
    if-eqz v6, :cond_1a

    .line 332
    move v0, v3

    .line 333
    goto :goto_15

    .line 334
    :cond_1a
    move v0, v11

    .line 335
    .line 336
    .line 337
    :goto_15
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 338
    .line 339
    .line 340
    const p2, 0x7f0a09cd

    .line 341
    .line 342
    .line 343
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 344
    move-result-object p2

    .line 345
    .line 346
    if-nez v6, :cond_1b

    .line 347
    .line 348
    if-eqz v7, :cond_1b

    .line 349
    move v0, v3

    .line 350
    goto :goto_16

    .line 351
    :cond_1b
    move v0, v11

    .line 352
    .line 353
    .line 354
    :goto_16
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 355
    .line 356
    .line 357
    const p2, 0x7f0a01a5

    .line 358
    .line 359
    .line 360
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 361
    move-result-object p2

    .line 362
    .line 363
    if-eqz v9, :cond_1c

    .line 364
    move v0, v3

    .line 365
    goto :goto_17

    .line 366
    :cond_1c
    move v0, v11

    .line 367
    .line 368
    .line 369
    :goto_17
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 370
    .line 371
    .line 372
    const p2, 0x7f0a01a4

    .line 373
    .line 374
    .line 375
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 376
    move-result-object p2

    .line 377
    .line 378
    iget-boolean v0, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    .line 379
    .line 380
    if-nez v0, :cond_1d

    .line 381
    .line 382
    if-eqz v9, :cond_1d

    .line 383
    move v0, v3

    .line 384
    goto :goto_18

    .line 385
    :cond_1d
    move v0, v11

    .line 386
    .line 387
    .line 388
    :goto_18
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 389
    .line 390
    .line 391
    const p2, 0x7f0a0821

    .line 392
    .line 393
    .line 394
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 395
    move-result-object p2

    .line 396
    .line 397
    check-cast p2, Landroid/widget/ImageView;

    .line 398
    .line 399
    .line 400
    invoke-direct {p0, p2, v8, v6, p3}, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->updateLoadingView(Landroid/widget/ImageView;ZZZ)V

    .line 401
    .line 402
    .line 403
    const p2, 0x7f0a0825

    .line 404
    .line 405
    .line 406
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 407
    move-result-object p1

    .line 408
    .line 409
    iget-boolean p2, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->isFloatingMode:Z

    .line 410
    .line 411
    if-nez p2, :cond_1e

    .line 412
    .line 413
    if-eqz v6, :cond_1e

    .line 414
    goto :goto_19

    .line 415
    :cond_1e
    move v3, v11

    .line 416
    .line 417
    .line 418
    :goto_19
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 419
    return-void
.end method

.method protected updateViews()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/chat/video/layout/RtcBaseLayout;->updateViews()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-ge v0, v1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    const v2, 0x7f0a0f21

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    goto :goto_1

    .line 25
    .line 26
    :cond_0
    iget-object v3, p0, Lcom/narvii/chat/video/layout/RtcBaseLayout;->userList:Landroid/util/SparseArray;

    .line 27
    .line 28
    check-cast v2, Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 32
    move-result v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    check-cast v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v1, v0, v2}, Lcom/narvii/chat/video/layout/VoiceParticipantLayout;->updateChildView(Landroid/view/View;ILcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 42
    .line 43
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-void
.end method
