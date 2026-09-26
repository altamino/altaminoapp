.class public Lcom/narvii/chat/video/layout/VoicePresenterLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/video/layout/RtcDataUpdateHandler;


# static fields
.field private static final DEFAULT_CELL_HEIGHT:I = 0x61

.field private static final DEFAULT_CELL_WIDTH:I = 0x77

.field public static final DISPLAY_MODE_GRID:I = 0x0

.field public static final DISPLAY_MODE_PAIR:I = 0x1

.field private static final GRID_COLUMN_COUNT:I = 0x3

.field private static final GRID_MODE_HEIGHT_RATIO:F = 0.85f

.field private static final GRID_MODE_WIDTH_RATIO:F = 0.316f

.field private static final GRID_ROW_COUNT:I = 0x2

.field private static final PAIR_CHILD_COUNT:I = 0x2

.field private static final PAIR_MODE_HEIGHT_RATIO:F = 0.33f

.field private static final PAIR_MODE_WIDTH_RATIO:F = 1.0f


# instance fields
.field private chatThread:Lcom/narvii/model/ChatThread;

.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field private displayMode:I

.field private gridModeContainer:Landroid/widget/LinearLayout;

.field private groupVoicePresenterViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/chat/video/layout/VoicePresenterItemView;",
            ">;"
        }
    .end annotation
.end field

.field itemClickListener:Lcom/narvii/chat/video/PresenterItemClickListener;

.field private localChannelUid:I

.field localMutedUidList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ndcId:I

.field nvContext:Lcom/narvii/app/NVContext;

.field private organizerUid:I

.field private pairModeContainer:Landroid/widget/LinearLayout;

.field private pairVoicePresenterViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/chat/video/layout/VoicePresenterItemView;",
            ">;"
        }
    .end annotation
.end field

.field private screenWidth:I

.field userList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->localChannelUid:I

    iput p2, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->organizerUid:I

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->groupVoicePresenterViews:Ljava/util/List;

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->pairVoicePresenterViews:Ljava/util/List;

    .line 5
    invoke-static {p1}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->screenWidth:I

    .line 6
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    .line 7
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->initGridModeLayout(Landroid/content/Context;)V

    .line 8
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->initPairModeLayout(Landroid/content/Context;)V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->nvContext:Lcom/narvii/app/NVContext;

    .line 10
    new-instance p2, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {p2, p1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/narvii/chat/video/layout/VoicePresenterLayout;Lcom/narvii/chat/video/layout/VoicePresenterItemView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->lambda$configListener$0(Lcom/narvii/chat/video/layout/VoicePresenterItemView;Landroid/view/View;)V

    return-void
.end method

.method private configListener(Lcom/narvii/chat/video/layout/VoicePresenterItemView;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    new-instance v0, Lcom/narvii/chat/video/layout/f;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/video/layout/f;-><init>(Lcom/narvii/chat/video/layout/VoicePresenterLayout;Lcom/narvii/chat/video/layout/VoicePresenterItemView;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    return-void
.end method

.method public static getContentHeight(Landroid/content/Context;Lcom/narvii/model/ChatThread;)I
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070236

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3ea1cac1    # 0.316f

    mul-float/2addr v1, v0

    const v2, 0x3f59999a    # 0.85f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070237

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 3
    invoke-static {p0}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    const v3, 0x3ea8f5c3    # 0.33f

    mul-float/2addr p0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v0, v3

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    float-to-int p0, p0

    if-eqz p1, :cond_0

    .line 4
    iget p1, p1, Lcom/narvii/model/ChatThread;->type:I

    if-eqz p1, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    add-int v1, p0, v2

    :goto_0
    return v1
.end method

.method private getGridModeCellHeight()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->screenWidth:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/16 v0, 0x61

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->getGridModeCellWidth()I

    .line 11
    move-result v0

    .line 12
    int-to-float v0, v0

    .line 13
    .line 14
    .line 15
    const v1, 0x3f59999a    # 0.85f

    .line 16
    mul-float/2addr v0, v1

    .line 17
    float-to-int v0, v0

    .line 18
    :goto_0
    return v0
.end method

.method private getGridModeCellWidth()I
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->screenWidth:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    const v2, 0x7f070236

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 17
    move-result v1

    .line 18
    .line 19
    mul-int/lit8 v1, v1, 0x2

    .line 20
    sub-int/2addr v0, v1

    .line 21
    .line 22
    iget v1, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->screenWidth:I

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    const/16 v0, 0x77

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    int-to-float v0, v0

    .line 29
    .line 30
    .line 31
    const v1, 0x3ea1cac1    # 0.316f

    .line 32
    mul-float/2addr v0, v1

    .line 33
    float-to-int v0, v0

    .line 34
    :goto_0
    return v0
.end method

.method private getPairModeCellHeight(Landroid/content/Context;)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    .line 8
    move-result p1

    .line 9
    int-to-float p1, p1

    .line 10
    .line 11
    .line 12
    const v0, 0x3ea8f5c3    # 0.33f

    .line 13
    mul-float/2addr p1, v0

    .line 14
    .line 15
    iget v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->screenWidth:I

    .line 16
    int-to-float v0, v0

    .line 17
    .line 18
    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    mul-float/2addr v0, v1

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 23
    move-result p1

    .line 24
    float-to-int p1, p1

    .line 25
    return p1
.end method

.method private initGridModeLayout(Landroid/content/Context;)V
    .locals 8

    .line 1
    .line 2
    new-instance p1, Landroid/widget/LinearLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->gridModeContainer:Landroid/widget/LinearLayout;

    .line 12
    const/4 v0, 0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 16
    .line 17
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 18
    const/4 v0, -0x1

    .line 19
    const/4 v1, -0x2

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 23
    .line 24
    const/16 v0, 0x31

    .line 25
    .line 26
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->gridModeContainer:Landroid/widget/LinearLayout;

    .line 29
    const/4 v2, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->gridModeContainer:Landroid/widget/LinearLayout;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    move p1, v2

    .line 39
    :goto_0
    const/4 v0, 0x2

    .line 40
    .line 41
    if-ge p1, v0, :cond_1

    .line 42
    .line 43
    new-instance v0, Landroid/widget/LinearLayout;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 57
    .line 58
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 59
    .line 60
    .line 61
    invoke-direct {v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 62
    .line 63
    const/16 v4, 0x11

    .line 64
    .line 65
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 66
    .line 67
    iget-object v4, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->gridModeContainer:Landroid/widget/LinearLayout;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    move v3, v2

    .line 72
    :goto_1
    const/4 v4, 0x3

    .line 73
    .line 74
    if-ge v3, v4, :cond_0

    .line 75
    .line 76
    new-instance v4, Lcom/narvii/chat/video/layout/VoicePresenterItemView;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    move-result-object v5

    .line 81
    .line 82
    .line 83
    invoke-direct {v4, v5}, Lcom/narvii/chat/video/layout/VoicePresenterItemView;-><init>(Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->getGridModeCellWidth()I

    .line 87
    move-result v5

    .line 88
    .line 89
    .line 90
    invoke-direct {p0}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->getGridModeCellHeight()I

    .line 91
    move-result v6

    .line 92
    .line 93
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 94
    .line 95
    .line 96
    invoke-direct {v7, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    .line 101
    iget-object v5, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->groupVoicePresenterViews:Ljava/util/List;

    .line 102
    .line 103
    .line 104
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    invoke-direct {p0, v4}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->configListener(Lcom/narvii/chat/video/layout/VoicePresenterItemView;)V

    .line 108
    .line 109
    add-int/lit8 v3, v3, 0x1

    .line 110
    goto :goto_1

    .line 111
    .line 112
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 113
    goto :goto_0

    .line 114
    :cond_1
    return-void
.end method

.method private initPairModeLayout(Landroid/content/Context;)V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Landroid/widget/LinearLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->pairModeContainer:Landroid/widget/LinearLayout;

    .line 8
    const/4 p1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 12
    :goto_0
    const/4 v0, 0x2

    .line 13
    .line 14
    if-ge p1, v0, :cond_0

    .line 15
    .line 16
    new-instance v1, Lcom/narvii/chat/video/layout/VoicePresenterItemView;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x1

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v2, v3}, Lcom/narvii/chat/video/layout/VoicePresenterItemView;-><init>(Landroid/content/Context;Z)V

    .line 25
    .line 26
    iget v2, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->screenWidth:I

    .line 27
    div-int/2addr v2, v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    .line 35
    move-result v0

    .line 36
    int-to-float v0, v0

    .line 37
    .line 38
    .line 39
    const v3, 0x3ea8f5c3    # 0.33f

    .line 40
    mul-float/2addr v0, v3

    .line 41
    .line 42
    iget v3, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->screenWidth:I

    .line 43
    int-to-float v3, v3

    .line 44
    .line 45
    const/high16 v4, 0x3f800000    # 1.0f

    .line 46
    mul-float/2addr v3, v4

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    .line 50
    move-result v0

    .line 51
    float-to-int v0, v0

    .line 52
    .line 53
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 54
    .line 55
    .line 56
    invoke-direct {v3, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, v1}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->configListener(Lcom/narvii/chat/video/layout/VoicePresenterItemView;)V

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->pairModeContainer:Landroid/widget/LinearLayout;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->pairVoicePresenterViews:Ljava/util/List;

    .line 67
    .line 68
    .line 69
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    add-int/lit8 p1, p1, 0x1

    .line 72
    goto :goto_0

    .line 73
    .line 74
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->pairModeContainer:Landroid/widget/LinearLayout;

    .line 75
    .line 76
    const/16 v0, 0x11

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 80
    .line 81
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 82
    const/4 v1, -0x1

    .line 83
    const/4 v2, -0x2

    .line 84
    .line 85
    .line 86
    invoke-direct {p1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 87
    .line 88
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 89
    .line 90
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->pairModeContainer:Landroid/widget/LinearLayout;

    .line 91
    .line 92
    const/16 v1, 0x8

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->pairModeContainer:Landroid/widget/LinearLayout;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    return-void
.end method

.method private synthetic lambda$configListener$0(Lcom/narvii/chat/video/layout/VoicePresenterItemView;Landroid/view/View;)V
    .locals 3

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    .line 3
    .line 4
    iget v0, p1, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->channelUid:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    check-cast p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->nvContext:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    const-string v1, "rtc"

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    .line 30
    const/4 v2, 0x1

    .line 31
    .line 32
    if-ne v0, v2, :cond_0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v2, v1

    .line 35
    .line 36
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->itemClickListener:Lcom/narvii/chat/video/PresenterItemClickListener;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, p1, p2, v2, v1}, Lcom/narvii/chat/video/PresenterItemClickListener;->onPresenterItemClicked(Landroid/view/View;Lcom/narvii/chat/rtc/ChannelUserWrapper;ZI)V

    .line 42
    :cond_1
    return-void
.end method

.method private updateChildView(Lcom/narvii/chat/video/layout/VoicePresenterItemView;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 10

    .line 1
    .line 2
    if-eqz p1, :cond_9

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->localMutedUidList:Ljava/util/Set;

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    iget-object v4, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 14
    .line 15
    if-nez v4, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {v4}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 20
    move-result-object v4

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    move-object v4, v1

    .line 23
    .line 24
    .line 25
    :goto_1
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    move v8, v3

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    move v8, v2

    .line 32
    .line 33
    :goto_2
    if-eqz p2, :cond_4

    .line 34
    .line 35
    iget-object v0, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 36
    .line 37
    if-nez v0, :cond_3

    .line 38
    goto :goto_3

    .line 39
    .line 40
    :cond_3
    iget-object v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 41
    goto :goto_4

    .line 42
    :cond_4
    :goto_3
    move-object v0, v1

    .line 43
    .line 44
    :goto_4
    if-eqz v0, :cond_5

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    .line 48
    move-result v4

    .line 49
    .line 50
    if-eqz v4, :cond_5

    .line 51
    .line 52
    iget-object v4, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 53
    .line 54
    if-eqz v4, :cond_5

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    .line 58
    move-result v4

    .line 59
    .line 60
    if-eqz v4, :cond_5

    .line 61
    move v7, v3

    .line 62
    goto :goto_5

    .line 63
    :cond_5
    move v7, v2

    .line 64
    .line 65
    :goto_5
    iget-object v4, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->chatThread:Lcom/narvii/model/ChatThread;

    .line 66
    .line 67
    if-eqz v4, :cond_7

    .line 68
    .line 69
    iget v5, v4, Lcom/narvii/model/ChatThread;->type:I

    .line 70
    const/4 v6, 0x2

    .line 71
    .line 72
    if-ne v5, v6, :cond_7

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    .line 76
    move-result-object v4

    .line 77
    .line 78
    if-nez v0, :cond_6

    .line 79
    goto :goto_6

    .line 80
    .line 81
    .line 82
    :cond_6
    invoke-virtual {v0}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    .line 86
    :goto_6
    invoke-static {v4, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    move-result v0

    .line 88
    .line 89
    if-eqz v0, :cond_7

    .line 90
    move v9, v3

    .line 91
    goto :goto_7

    .line 92
    :cond_7
    move v9, v2

    .line 93
    .line 94
    :goto_7
    if-eqz p2, :cond_8

    .line 95
    .line 96
    iget v0, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 97
    .line 98
    iget v1, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->localChannelUid:I

    .line 99
    .line 100
    if-ne v0, v1, :cond_8

    .line 101
    move v6, v3

    .line 102
    goto :goto_8

    .line 103
    :cond_8
    move v6, v2

    .line 104
    :goto_8
    move-object v4, p1

    .line 105
    move-object v5, p2

    .line 106
    .line 107
    .line 108
    invoke-virtual/range {v4 .. v9}, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->updatePresenter(Lcom/narvii/chat/rtc/ChannelUserWrapper;ZZZZ)V

    .line 109
    :cond_9
    return-void
.end method

.method private updateViews()V
    .locals 5

    iget v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->displayMode:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->pairVoicePresenterViews:Ljava/util/List;

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/video/layout/VoicePresenterItemView;

    .line 17
    iget v3, v1, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->channelUid:I

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 19
    invoke-direct {p0, v1, v3}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->updateChildView(Lcom/narvii/chat/video/layout/VoicePresenterItemView;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->groupVoicePresenterViews:Ljava/util/List;

    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/video/layout/VoicePresenterItemView;

    .line 21
    iget v3, v1, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->channelUid:I

    if-ne v3, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    .line 22
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 23
    invoke-direct {p0, v1, v3}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->updateChildView(Lcom/narvii/chat/video/layout/VoicePresenterItemView;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private updateViews(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->displayMode:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->pairVoicePresenterViews:Ljava/util/List;

    .line 2
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_1

    iget-object v4, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    :goto_0
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 4
    :goto_1
    invoke-direct {p0, v0, v4}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->updateChildView(Lcom/narvii/chat/video/layout/VoicePresenterItemView;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->pairVoicePresenterViews:Ljava/util/List;

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v1, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 8
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->updateChildView(Lcom/narvii/chat/video/layout/VoicePresenterItemView;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    goto :goto_6

    :cond_4
    if-nez v0, :cond_8

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 11
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->organizerUid:I

    if-ne v4, v5, :cond_5

    goto :goto_3

    .line 12
    :cond_5
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    :goto_4
    const/4 p1, 0x6

    if-ge v2, p1, :cond_8

    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->groupVoicePresenterViews:Ljava/util/List;

    .line 13
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_7

    iget-object v3, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    goto :goto_5

    :cond_7
    move-object v3, v1

    .line 15
    :goto_5
    check-cast p1, Lcom/narvii/chat/video/layout/VoicePresenterItemView;

    invoke-direct {p0, p1, v3}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->updateChildView(Lcom/narvii/chat/video/layout/VoicePresenterItemView;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    :goto_6
    return-void
.end method


# virtual methods
.method public getContentHeight()I
    .locals 2

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070237

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->displayMode:I

    if-nez v1, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->getGridModeCellHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->getPairModeCellHeight(Landroid/content/Context;)I

    move-result v1

    goto :goto_0
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
    new-instance v0, Ljava/util/HashSet;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->localMutedUidList:Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->updateViews()V

    .line 11
    return-void
.end method

.method public notifyUserDataChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 4

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->displayMode:I

    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-ne p1, v0, :cond_2

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->pairVoicePresenterViews:Ljava/util/List;

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_4

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;

    .line 28
    .line 29
    iget v2, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->channelUid:I

    .line 30
    .line 31
    iget v3, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 32
    .line 33
    if-ne v2, v3, :cond_1

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->groupVoicePresenterViews:Ljava/util/List;

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    check-cast v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;

    .line 53
    .line 54
    iget v2, v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->channelUid:I

    .line 55
    .line 56
    iget v3, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 57
    .line 58
    if-ne v2, v3, :cond_3

    .line 59
    :goto_0
    move-object v1, v0

    .line 60
    .line 61
    .line 62
    :cond_4
    invoke-direct {p0, v1, p2}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->updateChildView(Lcom/narvii/chat/video/layout/VoicePresenterItemView;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 63
    return-void
.end method

.method public notifyUserDataListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public notifyUserWrapperListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;)V
    .locals 10
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
    if-eqz p2, :cond_1f

    .line 3
    .line 4
    if-eqz p1, :cond_1f

    .line 5
    .line 6
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_12

    .line 15
    .line 16
    :cond_0
    iget v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->localChannelUid:I

    .line 17
    const/4 v1, -0x1

    .line 18
    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iput v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->localChannelUid:I

    .line 26
    .line 27
    :cond_1
    iget v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->ndcId:I

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iput v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->ndcId:I

    .line 36
    .line 37
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    new-instance v1, Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    new-instance v2, Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    const/4 v3, 0x0

    .line 52
    move v4, v3

    .line 53
    .line 54
    :goto_0
    iget-object v5, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 58
    move-result v5

    .line 59
    .line 60
    if-ge v4, v5, :cond_3

    .line 61
    .line 62
    iget-object v5, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 66
    move-result v5

    .line 67
    .line 68
    .line 69
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v5

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    add-int/lit8 v4, v4, 0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    move v4, v3

    .line 78
    .line 79
    .line 80
    :goto_1
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 81
    move-result v5

    .line 82
    const/4 v6, 0x0

    .line 83
    const/4 v7, 0x1

    .line 84
    .line 85
    if-ge v4, v5, :cond_9

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 89
    move-result-object v5

    .line 90
    .line 91
    check-cast v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 92
    .line 93
    iget-object v8, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 94
    .line 95
    if-eqz v8, :cond_8

    .line 96
    .line 97
    iget v8, v8, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 98
    .line 99
    if-eq v8, v7, :cond_4

    .line 100
    goto :goto_3

    .line 101
    .line 102
    :cond_4
    iget-object v7, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->chatThread:Lcom/narvii/model/ChatThread;

    .line 103
    .line 104
    if-nez v7, :cond_5

    .line 105
    goto :goto_2

    .line 106
    .line 107
    .line 108
    :cond_5
    invoke-virtual {v7}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    .line 109
    move-result-object v6

    .line 110
    .line 111
    :goto_2
    iget-object v7, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v7}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 115
    move-result-object v7

    .line 116
    .line 117
    .line 118
    invoke-static {v6, v7}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    move-result v6

    .line 120
    .line 121
    if-eqz v6, :cond_6

    .line 122
    .line 123
    iget v6, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 124
    .line 125
    iput v6, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->organizerUid:I

    .line 126
    .line 127
    :cond_6
    iget-object v6, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    .line 128
    .line 129
    iget v7, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 133
    move-result v6

    .line 134
    .line 135
    if-gez v6, :cond_7

    .line 136
    .line 137
    iget v6, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 138
    .line 139
    .line 140
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    move-result-object v6

    .line 142
    .line 143
    .line 144
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    iget v5, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 147
    .line 148
    .line 149
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    move-result-object v5

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    goto :goto_3

    .line 155
    .line 156
    :cond_7
    iget-object v6, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    .line 157
    .line 158
    iget v7, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 159
    .line 160
    .line 161
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 162
    move-result-object v6

    .line 163
    .line 164
    .line 165
    invoke-static {v6, v5}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 166
    move-result v6

    .line 167
    .line 168
    if-nez v6, :cond_8

    .line 169
    .line 170
    iget-object v6, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    .line 171
    .line 172
    iget v7, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 173
    .line 174
    .line 175
    invoke-virtual {v5}, Lcom/narvii/chat/rtc/ChannelUserWrapper;->clone()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 176
    move-result-object v5

    .line 177
    .line 178
    .line 179
    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 180
    .line 181
    :cond_8
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 182
    goto :goto_1

    .line 183
    :cond_9
    move v4, v3

    .line 184
    .line 185
    :goto_4
    iget-object v5, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 189
    move-result v5

    .line 190
    .line 191
    if-ge v4, v5, :cond_d

    .line 192
    .line 193
    iget-object v5, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 197
    move-result-object v5

    .line 198
    .line 199
    check-cast v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 200
    .line 201
    iget v8, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 205
    move-result-object v8

    .line 206
    .line 207
    if-eqz v8, :cond_a

    .line 208
    .line 209
    iget v8, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 210
    .line 211
    .line 212
    invoke-virtual {p2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 213
    move-result-object v8

    .line 214
    .line 215
    check-cast v8, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 216
    .line 217
    iget-object v8, v8, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 218
    .line 219
    if-eqz v8, :cond_a

    .line 220
    .line 221
    iget v8, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 222
    .line 223
    .line 224
    invoke-virtual {p2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 225
    move-result-object v8

    .line 226
    .line 227
    check-cast v8, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 228
    .line 229
    iget-object v8, v8, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 230
    .line 231
    iget v8, v8, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 232
    .line 233
    if-eq v8, v7, :cond_a

    .line 234
    move v8, v7

    .line 235
    goto :goto_5

    .line 236
    :cond_a
    move v8, v3

    .line 237
    .line 238
    :goto_5
    iget v9, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 239
    .line 240
    .line 241
    invoke-virtual {p2, v9}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 242
    move-result v9

    .line 243
    .line 244
    if-ltz v9, :cond_b

    .line 245
    .line 246
    if-eqz v8, :cond_c

    .line 247
    .line 248
    :cond_b
    iget v8, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 249
    .line 250
    .line 251
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    move-result-object v8

    .line 253
    .line 254
    .line 255
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    iget v5, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 258
    .line 259
    .line 260
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 261
    move-result-object v5

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 265
    .line 266
    :cond_c
    add-int/lit8 v4, v4, 0x1

    .line 267
    goto :goto_4

    .line 268
    :cond_d
    move v4, v3

    .line 269
    .line 270
    .line 271
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 272
    move-result v5

    .line 273
    .line 274
    if-ge v4, v5, :cond_e

    .line 275
    .line 276
    iget-object v5, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    .line 277
    .line 278
    .line 279
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 280
    move-result-object v8

    .line 281
    .line 282
    check-cast v8, Ljava/lang/Integer;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 286
    move-result v8

    .line 287
    .line 288
    .line 289
    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 290
    .line 291
    add-int/lit8 v4, v4, 0x1

    .line 292
    goto :goto_6

    .line 293
    :cond_e
    move v1, v3

    .line 294
    .line 295
    .line 296
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 297
    move-result v4

    .line 298
    .line 299
    if-ge v1, v4, :cond_f

    .line 300
    .line 301
    .line 302
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 303
    move-result-object v4

    .line 304
    .line 305
    check-cast v4, Ljava/lang/Integer;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 309
    move-result v4

    .line 310
    .line 311
    .line 312
    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 313
    move-result-object v4

    .line 314
    .line 315
    check-cast v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v4}, Lcom/narvii/chat/rtc/ChannelUserWrapper;->clone()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 319
    move-result-object v4

    .line 320
    .line 321
    iget-object v5, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    .line 322
    .line 323
    .line 324
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 325
    move-result-object v8

    .line 326
    .line 327
    check-cast v8, Ljava/lang/Integer;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 331
    move-result v8

    .line 332
    .line 333
    .line 334
    invoke-virtual {v5, v8, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 335
    .line 336
    add-int/lit8 v1, v1, 0x1

    .line 337
    goto :goto_7

    .line 338
    .line 339
    .line 340
    :cond_f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 341
    move-result p2

    .line 342
    const/4 v0, 0x6

    .line 343
    .line 344
    if-lt p2, v0, :cond_19

    .line 345
    .line 346
    new-instance p2, Ljava/util/ArrayList;

    .line 347
    .line 348
    .line 349
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 353
    move-result v1

    .line 354
    sub-int/2addr v1, v7

    .line 355
    .line 356
    :goto_8
    if-lez v1, :cond_15

    .line 357
    .line 358
    iget-object v4, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 362
    move-result-object v5

    .line 363
    .line 364
    check-cast v5, Ljava/lang/Integer;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 368
    move-result v5

    .line 369
    .line 370
    .line 371
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 372
    move-result-object v4

    .line 373
    .line 374
    check-cast v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 375
    .line 376
    if-nez v4, :cond_10

    .line 377
    goto :goto_a

    .line 378
    .line 379
    :cond_10
    iget-object v5, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 380
    .line 381
    iget v7, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 382
    .line 383
    iget v8, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 384
    .line 385
    if-eq v7, v8, :cond_14

    .line 386
    .line 387
    .line 388
    invoke-virtual {v5}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 389
    move-result-object v5

    .line 390
    .line 391
    iget-object v7, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->chatThread:Lcom/narvii/model/ChatThread;

    .line 392
    .line 393
    if-nez v7, :cond_11

    .line 394
    move-object v7, v6

    .line 395
    goto :goto_9

    .line 396
    .line 397
    .line 398
    :cond_11
    invoke-virtual {v7}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    .line 399
    move-result-object v7

    .line 400
    .line 401
    .line 402
    :goto_9
    invoke-static {v5, v7}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 403
    move-result v5

    .line 404
    .line 405
    if-eqz v5, :cond_12

    .line 406
    goto :goto_a

    .line 407
    .line 408
    :cond_12
    iget-object v4, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 409
    .line 410
    if-eqz v4, :cond_13

    .line 411
    .line 412
    iget v4, v4, Lcom/narvii/video/ui/UserStatusData;->mVolume:I

    .line 413
    .line 414
    if-nez v4, :cond_14

    .line 415
    .line 416
    .line 417
    :cond_13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 418
    move-result-object v4

    .line 419
    .line 420
    .line 421
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    .line 423
    :cond_14
    :goto_a
    add-int/lit8 v1, v1, -0x1

    .line 424
    goto :goto_8

    .line 425
    .line 426
    .line 427
    :cond_15
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 428
    move-result v1

    .line 429
    .line 430
    if-lez v1, :cond_19

    .line 431
    .line 432
    new-instance v4, Ljava/util/ArrayList;

    .line 433
    .line 434
    .line 435
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .line 437
    .line 438
    :goto_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 439
    move-result v5

    .line 440
    .line 441
    if-ge v0, v5, :cond_18

    .line 442
    .line 443
    iget-object v5, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 447
    move-result-object v7

    .line 448
    .line 449
    check-cast v7, Ljava/lang/Integer;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 453
    move-result v7

    .line 454
    .line 455
    .line 456
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 457
    move-result-object v5

    .line 458
    .line 459
    check-cast v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 460
    .line 461
    iget-object v5, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    .line 462
    .line 463
    if-eqz v5, :cond_16

    .line 464
    .line 465
    iget v5, v5, Lcom/narvii/video/ui/UserStatusData;->mVolume:I

    .line 466
    .line 467
    if-eqz v5, :cond_16

    .line 468
    .line 469
    .line 470
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 471
    move-result-object v5

    .line 472
    .line 473
    .line 474
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    .line 476
    add-int/lit8 v1, v1, -0x1

    .line 477
    .line 478
    :cond_16
    if-nez v1, :cond_17

    .line 479
    goto :goto_c

    .line 480
    .line 481
    :cond_17
    add-int/lit8 v0, v0, 0x1

    .line 482
    goto :goto_b

    .line 483
    :cond_18
    :goto_c
    move v0, v3

    .line 484
    .line 485
    .line 486
    :goto_d
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 487
    move-result v1

    .line 488
    .line 489
    if-ge v0, v1, :cond_19

    .line 490
    .line 491
    .line 492
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 493
    move-result-object v1

    .line 494
    .line 495
    check-cast v1, Ljava/lang/Integer;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 499
    move-result v1

    .line 500
    .line 501
    .line 502
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 503
    move-result-object v5

    .line 504
    .line 505
    check-cast v5, Ljava/lang/Integer;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 509
    move-result v5

    .line 510
    .line 511
    .line 512
    invoke-static {v2, v1, v5}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 513
    .line 514
    add-int/lit8 v0, v0, 0x1

    .line 515
    goto :goto_d

    .line 516
    .line 517
    :cond_19
    new-instance p2, Ljava/util/ArrayList;

    .line 518
    .line 519
    .line 520
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 524
    move-result-object v0

    .line 525
    .line 526
    .line 527
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 528
    move-result v1

    .line 529
    .line 530
    if-eqz v1, :cond_1e

    .line 531
    .line 532
    .line 533
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 534
    move-result-object v1

    .line 535
    .line 536
    check-cast v1, Ljava/lang/Integer;

    .line 537
    .line 538
    iget-object v2, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 542
    move-result v4

    .line 543
    .line 544
    .line 545
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 546
    move-result-object v2

    .line 547
    .line 548
    if-eqz v2, :cond_1a

    .line 549
    .line 550
    iget-object v2, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 554
    move-result v4

    .line 555
    .line 556
    .line 557
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 558
    move-result-object v2

    .line 559
    .line 560
    check-cast v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 561
    .line 562
    iget-object v2, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 563
    .line 564
    if-eqz v2, :cond_1a

    .line 565
    .line 566
    iget-object v2, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 570
    move-result v4

    .line 571
    .line 572
    .line 573
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 574
    move-result-object v2

    .line 575
    .line 576
    check-cast v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 577
    .line 578
    iget-object v2, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 579
    .line 580
    .line 581
    invoke-virtual {v2}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 582
    move-result-object v2

    .line 583
    goto :goto_f

    .line 584
    :cond_1a
    move-object v2, v6

    .line 585
    .line 586
    .line 587
    :goto_f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 588
    move-result v4

    .line 589
    .line 590
    iget v5, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    .line 591
    .line 592
    if-eq v4, v5, :cond_1d

    .line 593
    .line 594
    iget-object v4, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->chatThread:Lcom/narvii/model/ChatThread;

    .line 595
    .line 596
    if-nez v4, :cond_1b

    .line 597
    move-object v4, v6

    .line 598
    goto :goto_10

    .line 599
    .line 600
    .line 601
    :cond_1b
    invoke-virtual {v4}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    .line 602
    move-result-object v4

    .line 603
    .line 604
    .line 605
    :goto_10
    invoke-static {v4, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 606
    move-result v2

    .line 607
    .line 608
    if-eqz v2, :cond_1c

    .line 609
    goto :goto_11

    .line 610
    .line 611
    .line 612
    :cond_1c
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    goto :goto_e

    .line 614
    .line 615
    .line 616
    :cond_1d
    :goto_11
    invoke-interface {p2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 617
    goto :goto_e

    .line 618
    .line 619
    .line 620
    :cond_1e
    invoke-direct {p0, p2}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->updateViews(Ljava/util/List;)V

    .line 621
    :cond_1f
    :goto_12
    return-void
.end method

.method public setChatThread(Lcom/narvii/model/ChatThread;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->chatThread:Lcom/narvii/model/ChatThread;

    return-void
.end method

.method public setDisplayMode(I)V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->displayMode:I

    .line 3
    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->gridModeContainer:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    move v3, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v3, v1

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->pairModeContainer:Landroid/widget/LinearLayout;

    .line 20
    const/4 v3, 0x1

    .line 21
    .line 22
    if-ne p1, v3, :cond_1

    .line 23
    move v1, v2

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    :cond_2
    iput p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->displayMode:I

    .line 29
    return-void
.end method

.method public setPresenterItemClickListener(Lcom/narvii/chat/video/PresenterItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->itemClickListener:Lcom/narvii/chat/video/PresenterItemClickListener;

    return-void
.end method
