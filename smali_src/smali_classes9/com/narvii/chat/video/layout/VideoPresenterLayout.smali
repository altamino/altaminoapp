.class public Lcom/narvii/chat/video/layout/VideoPresenterLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/video/layout/RtcDataUpdateHandler;


# static fields
.field private static final BOTTOM_CHILD_COUNT:I = 0x4

.field public static final DISPLAY_MODE_GROUP:I = 0x0

.field public static final DISPLAY_MODE_PAIR:I = 0x1

.field private static final GROUP_ROW_COUNT:I = 0x2

.field private static final PAIR_CHILD_COUNT:I = 0x2

.field private static final PAIR_MODE_HEIGHT_RATIO:F = 0.5f

.field private static final PAIR_MODE_WIDTH_RATIO:F = 1.0f

.field public static final PUBLIC_MODE_HEIGHT_SCREEN_RATIO:F = 0.22f

.field public static final PUBLIC_MODE_HEIGHT_WIDTH_RATIO:F = 1.17f

.field private static final TOP_CHILD_COUNT:I = 0x3

.field private static final VIDEO_PRESENTER_LIMIT:I = 0x7


# instance fields
.field private chatThread:Lcom/narvii/model/ChatThread;

.field private communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field private displayMode:I

.field private groupContainer:Landroid/widget/LinearLayout;

.field private groupVideoPresenterViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/chat/video/layout/VideoPresenterItemView;",
            ">;"
        }
    .end annotation
.end field

.field private isLauncher:Z

.field private itemClickListener:Lcom/narvii/chat/video/PresenterItemClickListener;

.field private localChannelUid:I

.field private localMutedUidList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ndcId:I

.field private nvContext:Lcom/narvii/app/NVContext;

.field private organizerUid:I

.field private pairContainer:Landroid/widget/LinearLayout;

.field private pairVideoPresenterViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/chat/video/layout/VideoPresenterItemView;",
            ">;"
        }
    .end annotation
.end field

.field private rowViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private userList:Landroid/util/SparseArray;
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

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->rowViews:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->groupVideoPresenterViews:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->pairVideoPresenterViews:Ljava/util/List;

    const/4 p1, -0x1

    iput p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->localChannelUid:I

    iput p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->organizerUid:I

    .line 6
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    .line 7
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->localMutedUidList:Ljava/util/Set;

    .line 8
    invoke-direct {p0}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->initGroupViews()V

    .line 9
    invoke-direct {p0}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->initPairViews()V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->nvContext:Lcom/narvii/app/NVContext;

    .line 11
    new-instance p2, Lcom/narvii/modulization/CommunityConfigHelper;

    invoke-direct {p2, p1}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/narvii/chat/video/layout/VideoPresenterLayout;Lcom/narvii/chat/video/layout/VideoPresenterItemView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->lambda$configListener$0(Lcom/narvii/chat/video/layout/VideoPresenterItemView;Landroid/view/View;)V

    return-void
.end method

.method private configListener(Lcom/narvii/chat/video/layout/VideoPresenterItemView;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    new-instance v0, Lcom/narvii/chat/video/layout/e;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/video/layout/e;-><init>(Lcom/narvii/chat/video/layout/VideoPresenterLayout;Lcom/narvii/chat/video/layout/VideoPresenterItemView;)V

    .line 9
    .line 10
    iput-object v0, p1, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->subViewClickListener:Lcom/narvii/chat/video/layout/VideoPresenterItemView$SubViewClickListener;

    .line 11
    return-void
.end method

.method public static getContentHeight(Landroid/content/Context;Lcom/narvii/model/ChatThread;)I
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    .line 3
    invoke-static {p0}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070236

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    .line 4
    invoke-static {p0}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e6147ae    # 0.22f

    mul-float/2addr v2, v3

    int-to-float v1, v1

    const v4, 0x3f95c28f    # 1.17f

    mul-float/2addr v1, v4

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    .line 5
    invoke-static {p0}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    int-to-float v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f070237

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    if-eqz p1, :cond_0

    .line 7
    iget p1, p1, Lcom/narvii/model/ChatThread;->type:I

    if-eqz p1, :cond_0

    add-int/2addr v1, p0

    goto :goto_0

    :cond_0
    add-int v1, v0, p0

    :goto_0
    return v1
.end method

.method private initGroupViews()V
    .locals 12

    .line 1
    .line 2
    new-instance v0, Landroid/widget/LinearLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->groupContainer:Landroid/widget/LinearLayout;

    .line 12
    const/4 v1, 0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    .line 23
    move-result v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    const v3, 0x7f070236

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 38
    move-result v2

    .line 39
    const/4 v3, 0x2

    .line 40
    mul-int/2addr v2, v3

    .line 41
    sub-int/2addr v0, v2

    .line 42
    const/4 v2, 0x3

    .line 43
    div-int/2addr v0, v2

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v4

    .line 48
    .line 49
    .line 50
    invoke-static {v4}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    .line 51
    move-result v4

    .line 52
    int-to-float v4, v4

    .line 53
    .line 54
    .line 55
    const v5, 0x3e6147ae    # 0.22f

    .line 56
    mul-float/2addr v4, v5

    .line 57
    int-to-float v0, v0

    .line 58
    .line 59
    .line 60
    const v5, 0x3f95c28f    # 1.17f

    .line 61
    mul-float/2addr v0, v5

    .line 62
    .line 63
    .line 64
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    .line 65
    move-result v0

    .line 66
    float-to-int v0, v0

    .line 67
    .line 68
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 69
    mul-int/2addr v0, v3

    .line 70
    const/4 v5, -0x1

    .line 71
    .line 72
    .line 73
    invoke-direct {v4, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74
    .line 75
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->groupContainer:Landroid/widget/LinearLayout;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    const/4 v0, 0x0

    .line 80
    move v4, v0

    .line 81
    .line 82
    :goto_0
    if-ge v4, v3, :cond_3

    .line 83
    .line 84
    new-instance v6, Landroid/widget/LinearLayout;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 88
    move-result-object v7

    .line 89
    .line 90
    .line 91
    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 95
    .line 96
    if-ne v4, v1, :cond_0

    .line 97
    const/4 v7, 0x4

    .line 98
    goto :goto_1

    .line 99
    :cond_0
    move v7, v2

    .line 100
    :goto_1
    move v8, v0

    .line 101
    .line 102
    :goto_2
    const/high16 v9, 0x3f800000    # 1.0f

    .line 103
    .line 104
    if-ge v8, v7, :cond_2

    .line 105
    .line 106
    new-instance v10, Lcom/narvii/chat/video/layout/VideoPresenterItemView;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 110
    move-result-object v11

    .line 111
    .line 112
    .line 113
    invoke-direct {v10, v11}, Lcom/narvii/chat/video/layout/VideoPresenterItemView;-><init>(Landroid/content/Context;)V

    .line 114
    .line 115
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 116
    .line 117
    .line 118
    invoke-direct {v11, v0, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    .line 123
    iget-object v9, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->groupVideoPresenterViews:Ljava/util/List;

    .line 124
    .line 125
    .line 126
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    if-ne v4, v1, :cond_1

    .line 129
    .line 130
    add-int/lit8 v9, v7, -0x1

    .line 131
    .line 132
    if-ne v8, v9, :cond_1

    .line 133
    .line 134
    const/16 v9, 0x8

    .line 135
    .line 136
    .line 137
    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    :cond_1
    invoke-direct {p0, v10}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->configListener(Lcom/narvii/chat/video/layout/VideoPresenterItemView;)V

    .line 141
    .line 142
    add-int/lit8 v8, v8, 0x1

    .line 143
    goto :goto_2

    .line 144
    .line 145
    :cond_2
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 146
    .line 147
    .line 148
    invoke-direct {v7, v5, v0, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 149
    .line 150
    iget-object v8, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->rowViews:Ljava/util/List;

    .line 151
    .line 152
    .line 153
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    iget-object v8, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->groupContainer:Landroid/widget/LinearLayout;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v8, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    .line 160
    add-int/lit8 v4, v4, 0x1

    .line 161
    goto :goto_0

    .line 162
    :cond_3
    return-void
.end method

.method private initPairViews()V
    .locals 8

    .line 1
    .line 2
    new-instance v0, Landroid/widget/LinearLayout;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->pairContainer:Landroid/widget/LinearLayout;

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 16
    .line 17
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 18
    const/4 v2, -0x1

    .line 19
    const/4 v3, -0x2

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 23
    .line 24
    iget-object v2, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->pairContainer:Landroid/widget/LinearLayout;

    .line 25
    .line 26
    const/16 v3, 0x8

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    iget-object v2, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->pairContainer:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    .line 42
    move-result v0

    .line 43
    int-to-float v0, v0

    .line 44
    .line 45
    const/high16 v2, 0x3f000000    # 0.5f

    .line 46
    mul-float/2addr v0, v2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    .line 53
    invoke-static {v2}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    .line 54
    move-result v2

    .line 55
    int-to-float v2, v2

    .line 56
    .line 57
    const/high16 v4, 0x3f800000    # 1.0f

    .line 58
    mul-float/2addr v2, v4

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 62
    move-result v0

    .line 63
    float-to-int v0, v0

    .line 64
    move v2, v1

    .line 65
    :goto_0
    const/4 v5, 0x2

    .line 66
    .line 67
    if-ge v2, v5, :cond_1

    .line 68
    .line 69
    new-instance v5, Lcom/narvii/chat/video/layout/VideoPresenterItemView;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 73
    move-result-object v6

    .line 74
    .line 75
    .line 76
    invoke-direct {v5, v6}, Lcom/narvii/chat/video/layout/VideoPresenterItemView;-><init>(Landroid/content/Context;)V

    .line 77
    const/4 v6, 0x1

    .line 78
    .line 79
    if-ne v2, v6, :cond_0

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    :cond_0
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 85
    .line 86
    .line 87
    invoke-direct {v6, v1, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 88
    .line 89
    iget-object v7, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->pairContainer:Landroid/widget/LinearLayout;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    .line 94
    iget-object v6, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->pairVideoPresenterViews:Ljava/util/List;

    .line 95
    .line 96
    .line 97
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    invoke-direct {p0, v5}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->configListener(Lcom/narvii/chat/video/layout/VideoPresenterItemView;)V

    .line 101
    .line 102
    add-int/lit8 v2, v2, 0x1

    .line 103
    goto :goto_0

    .line 104
    :cond_1
    return-void
.end method

.method private synthetic lambda$configListener$0(Lcom/narvii/chat/video/layout/VideoPresenterItemView;Landroid/view/View;)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->itemClickListener:Lcom/narvii/chat/video/PresenterItemClickListener;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    .line 8
    .line 9
    iget v1, p1, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->channelUid:I

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    .line 18
    .line 19
    iget v2, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->localChannelUid:I

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x1

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget-object v1, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 32
    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget v1, v1, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 36
    .line 37
    if-ne v1, v3, :cond_1

    .line 38
    move v1, v3

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v1, v2

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 44
    move-result v4

    .line 45
    .line 46
    .line 47
    const v5, 0x7f0a0245

    .line 48
    .line 49
    if-ne v4, v5, :cond_2

    .line 50
    move v2, v3

    .line 51
    goto :goto_1

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 55
    move-result p2

    .line 56
    .line 57
    .line 58
    const v3, 0x7f0a0244

    .line 59
    .line 60
    if-ne p2, v3, :cond_3

    .line 61
    const/4 v2, 0x2

    .line 62
    .line 63
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->itemClickListener:Lcom/narvii/chat/video/PresenterItemClickListener;

    .line 64
    .line 65
    .line 66
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/narvii/chat/video/PresenterItemClickListener;->onPresenterItemClicked(Landroid/view/View;Lcom/narvii/chat/rtc/ChannelUserWrapper;ZI)V

    .line 67
    return-void
.end method

.method private updateChildView(Lcom/narvii/chat/video/layout/VideoPresenterItemView;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 12

    .line 1
    .line 2
    if-eqz p1, :cond_a

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->localMutedUidList:Ljava/util/Set;

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
    move v9, v3

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    move v9, v2

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
    iget-object v4, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

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
    move v8, v3

    .line 62
    goto :goto_5

    .line 63
    :cond_5
    move v8, v2

    .line 64
    .line 65
    :goto_5
    iget-object v4, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->chatThread:Lcom/narvii/model/ChatThread;

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
    move v10, v3

    .line 91
    goto :goto_7

    .line 92
    :cond_7
    move v10, v2

    .line 93
    .line 94
    :goto_7
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 98
    move-result v0

    .line 99
    .line 100
    if-ne v0, v3, :cond_8

    .line 101
    .line 102
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->chatThread:Lcom/narvii/model/ChatThread;

    .line 103
    .line 104
    if-eqz v0, :cond_8

    .line 105
    .line 106
    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    .line 107
    .line 108
    if-nez v0, :cond_8

    .line 109
    move v11, v3

    .line 110
    goto :goto_8

    .line 111
    :cond_8
    move v11, v2

    .line 112
    .line 113
    :goto_8
    if-eqz p2, :cond_9

    .line 114
    .line 115
    iget v0, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 116
    .line 117
    iget v1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->localChannelUid:I

    .line 118
    .line 119
    if-ne v0, v1, :cond_9

    .line 120
    move v6, v3

    .line 121
    goto :goto_9

    .line 122
    :cond_9
    move v6, v2

    .line 123
    .line 124
    :goto_9
    iget-boolean v7, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->isLauncher:Z

    .line 125
    move-object v4, p1

    .line 126
    move-object v5, p2

    .line 127
    .line 128
    .line 129
    invoke-virtual/range {v4 .. v11}, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->updatePresenter(Lcom/narvii/chat/rtc/ChannelUserWrapper;ZZZZZZ)V

    .line 130
    :cond_a
    return-void
.end method

.method private updateViews()V
    .locals 5

    iget v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->displayMode:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->pairVideoPresenterViews:Ljava/util/List;

    .line 18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/video/layout/VideoPresenterItemView;

    .line 19
    iget v3, v1, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->channelUid:I

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 21
    invoke-direct {p0, v1, v3}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->updateChildView(Lcom/narvii/chat/video/layout/VideoPresenterItemView;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->groupVideoPresenterViews:Ljava/util/List;

    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/video/layout/VideoPresenterItemView;

    .line 23
    iget v3, v1, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->channelUid:I

    if-ne v3, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    .line 24
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 25
    invoke-direct {p0, v1, v3}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->updateChildView(Lcom/narvii/chat/video/layout/VideoPresenterItemView;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private updateViews(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->displayMode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    move v0, v4

    :goto_0
    if-ge v0, v2, :cond_11

    iget-object v6, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->pairVideoPresenterViews:Ljava/util/List;

    .line 1
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v0, :cond_0

    iget-object v7, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    goto :goto_1

    :cond_0
    move-object v7, v1

    .line 3
    :goto_1
    move-object v8, v6

    check-cast v8, Lcom/narvii/chat/video/layout/VideoPresenterItemView;

    invoke-direct {p0, v8, v7}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->updateChildView(Lcom/narvii/chat/video/layout/VideoPresenterItemView;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    if-ne v0, v5, :cond_2

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-lt v7, v2, :cond_1

    move v7, v4

    goto :goto_2

    :cond_1
    move v7, v3

    :goto_2
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v4

    move v6, v0

    :goto_3
    iget-object v7, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v0, v7, :cond_5

    iget-object v7, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 7
    iget-object v7, v7, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v7, :cond_4

    iget v7, v7, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    if-ne v7, v5, :cond_4

    add-int/lit8 v6, v6, 0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    move v0, v4

    :goto_4
    const/4 v7, 0x7

    if-ge v0, v7, :cond_f

    iget-object v7, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->groupVideoPresenterViews:Ljava/util/List;

    .line 8
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/chat/video/layout/VideoPresenterItemView;

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v0, :cond_6

    iget-object v8, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    goto :goto_5

    :cond_6
    move-object v8, v1

    .line 10
    :goto_5
    invoke-direct {p0, v7, v8}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->updateChildView(Lcom/narvii/chat/video/layout/VideoPresenterItemView;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    if-nez v6, :cond_7

    .line 11
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    :cond_7
    if-ne v6, v5, :cond_9

    if-nez v0, :cond_8

    move v8, v4

    goto :goto_6

    :cond_8
    move v8, v3

    .line 12
    :goto_6
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    :cond_9
    if-ne v6, v2, :cond_c

    if-eqz v0, :cond_b

    if-ne v0, v5, :cond_a

    goto :goto_7

    :cond_a
    move v8, v3

    goto :goto_8

    :cond_b
    :goto_7
    move v8, v4

    .line 13
    :goto_8
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    :cond_c
    const/4 v8, 0x6

    if-gt v6, v8, :cond_e

    if-ne v0, v8, :cond_d

    move v8, v3

    goto :goto_9

    :cond_d
    move v8, v4

    .line 14
    :goto_9
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    .line 15
    :cond_e
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_f
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->rowViews:Ljava/util/List;

    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v5, :cond_11

    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->rowViews:Ljava/util/List;

    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v0, 0x3

    if-lt v6, v0, :cond_10

    move v3, v4

    :cond_10
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    return-void
.end method


# virtual methods
.method public getContentHeight()I
    .locals 5

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070237

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->displayMode:I

    if-nez v2, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070236

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x3

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e6147ae    # 0.22f

    mul-float/2addr v2, v3

    int-to-float v0, v0

    const v4, 0x3f95c28f    # 1.17f

    mul-float/2addr v0, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    int-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    add-int/2addr v1, v0

    return v1

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    int-to-float v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

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
    iput-object v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->localMutedUidList:Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->updateViews()V

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
    iget p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->displayMode:I

    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-ne p1, v0, :cond_2

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->pairVideoPresenterViews:Ljava/util/List;

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
    check-cast v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;

    .line 28
    .line 29
    iget v2, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->channelUid:I

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
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->groupVideoPresenterViews:Ljava/util/List;

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
    check-cast v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;

    .line 53
    .line 54
    iget v2, v0, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->channelUid:I

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
    invoke-direct {p0, v1, p2}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->updateChildView(Lcom/narvii/chat/video/layout/VideoPresenterItemView;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

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
    if-eqz p2, :cond_11

    .line 3
    .line 4
    if-eqz p1, :cond_11

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
    goto/16 :goto_9

    .line 15
    .line 16
    :cond_0
    iget v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->localChannelUid:I

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
    iput v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->localChannelUid:I

    .line 26
    .line 27
    :cond_1
    iget v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->ndcId:I

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    iput p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->ndcId:I

    .line 36
    .line 37
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    new-instance v1, Ljava/util/ArrayList;

    .line 48
    .line 49
    .line 50
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    const/4 v2, 0x0

    .line 52
    move v3, v2

    .line 53
    .line 54
    :goto_0
    iget-object v4, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 58
    move-result v4

    .line 59
    .line 60
    if-ge v3, v4, :cond_3

    .line 61
    .line 62
    iget-object v4, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 66
    move-result v4

    .line 67
    .line 68
    .line 69
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v4

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    add-int/lit8 v3, v3, 0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    move v3, v2

    .line 78
    .line 79
    .line 80
    :goto_1
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 81
    move-result v4

    .line 82
    const/4 v5, 0x1

    .line 83
    .line 84
    if-ge v3, v4, :cond_a

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 88
    move-result-object v4

    .line 89
    .line 90
    check-cast v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 91
    .line 92
    iget-object v6, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 93
    .line 94
    if-eqz v6, :cond_9

    .line 95
    .line 96
    iget v6, v6, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 97
    .line 98
    if-eq v6, v5, :cond_4

    .line 99
    goto :goto_4

    .line 100
    .line 101
    :cond_4
    iget-object v5, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->chatThread:Lcom/narvii/model/ChatThread;

    .line 102
    .line 103
    if-eqz v5, :cond_6

    .line 104
    .line 105
    iget v6, v5, Lcom/narvii/model/ChatThread;->type:I

    .line 106
    const/4 v7, 0x2

    .line 107
    .line 108
    if-eq v6, v7, :cond_5

    .line 109
    goto :goto_2

    .line 110
    .line 111
    .line 112
    :cond_5
    invoke-virtual {v5}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    .line 113
    move-result-object v5

    .line 114
    goto :goto_3

    .line 115
    :cond_6
    :goto_2
    const/4 v5, 0x0

    .line 116
    .line 117
    :goto_3
    iget-object v6, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    .line 121
    move-result-object v6

    .line 122
    .line 123
    .line 124
    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    move-result v5

    .line 126
    .line 127
    if-eqz v5, :cond_7

    .line 128
    .line 129
    iget v5, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 130
    .line 131
    iput v5, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->organizerUid:I

    .line 132
    .line 133
    :cond_7
    iget-object v5, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    .line 134
    .line 135
    iget v6, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 139
    move-result v5

    .line 140
    .line 141
    if-gez v5, :cond_8

    .line 142
    .line 143
    iget v5, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 144
    .line 145
    .line 146
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    move-result-object v5

    .line 148
    .line 149
    .line 150
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    iget v4, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 153
    .line 154
    .line 155
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    move-result-object v4

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    goto :goto_4

    .line 161
    .line 162
    :cond_8
    iget-object v5, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    .line 163
    .line 164
    iget v6, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 168
    move-result-object v5

    .line 169
    .line 170
    .line 171
    invoke-static {v5, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    move-result v5

    .line 173
    .line 174
    if-nez v5, :cond_9

    .line 175
    .line 176
    iget-object v5, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    .line 177
    .line 178
    iget v6, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4}, Lcom/narvii/chat/rtc/ChannelUserWrapper;->clone()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 182
    move-result-object v4

    .line 183
    .line 184
    .line 185
    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 186
    .line 187
    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 188
    goto :goto_1

    .line 189
    :cond_a
    move v3, v2

    .line 190
    .line 191
    :goto_5
    iget-object v4, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 195
    move-result v4

    .line 196
    .line 197
    if-ge v3, v4, :cond_e

    .line 198
    .line 199
    iget-object v4, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 203
    move-result-object v4

    .line 204
    .line 205
    check-cast v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 206
    .line 207
    iget v6, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 211
    move-result-object v6

    .line 212
    .line 213
    if-eqz v6, :cond_b

    .line 214
    .line 215
    iget v6, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 219
    move-result-object v6

    .line 220
    .line 221
    check-cast v6, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 222
    .line 223
    iget-object v6, v6, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 224
    .line 225
    if-eqz v6, :cond_b

    .line 226
    .line 227
    iget v6, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 228
    .line 229
    .line 230
    invoke-virtual {p2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 231
    move-result-object v6

    .line 232
    .line 233
    check-cast v6, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 234
    .line 235
    iget-object v6, v6, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 236
    .line 237
    iget v6, v6, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 238
    .line 239
    if-eq v6, v5, :cond_b

    .line 240
    move v6, v5

    .line 241
    goto :goto_6

    .line 242
    :cond_b
    move v6, v2

    .line 243
    .line 244
    :goto_6
    iget v7, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 245
    .line 246
    .line 247
    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 248
    move-result v7

    .line 249
    .line 250
    if-ltz v7, :cond_c

    .line 251
    .line 252
    if-eqz v6, :cond_d

    .line 253
    .line 254
    :cond_c
    iget v6, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 255
    .line 256
    .line 257
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 258
    move-result-object v6

    .line 259
    .line 260
    .line 261
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    iget v4, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 264
    .line 265
    .line 266
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    move-result-object v4

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 271
    .line 272
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 273
    goto :goto_5

    .line 274
    :cond_e
    move v3, v2

    .line 275
    .line 276
    .line 277
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 278
    move-result v4

    .line 279
    .line 280
    if-ge v3, v4, :cond_f

    .line 281
    .line 282
    iget-object v4, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    .line 283
    .line 284
    .line 285
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 286
    move-result-object v5

    .line 287
    .line 288
    check-cast v5, Ljava/lang/Integer;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 292
    move-result v5

    .line 293
    .line 294
    .line 295
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 296
    .line 297
    add-int/lit8 v3, v3, 0x1

    .line 298
    goto :goto_7

    .line 299
    .line 300
    .line 301
    :cond_f
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 302
    move-result v0

    .line 303
    .line 304
    if-ge v2, v0, :cond_10

    .line 305
    .line 306
    .line 307
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 308
    move-result-object v0

    .line 309
    .line 310
    check-cast v0, Ljava/lang/Integer;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 314
    move-result v0

    .line 315
    .line 316
    .line 317
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 318
    move-result-object v0

    .line 319
    .line 320
    check-cast v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/ChannelUserWrapper;->clone()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 324
    move-result-object v0

    .line 325
    .line 326
    iget-object v3, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    .line 327
    .line 328
    .line 329
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 330
    move-result-object v4

    .line 331
    .line 332
    check-cast v4, Ljava/lang/Integer;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 336
    move-result v4

    .line 337
    .line 338
    .line 339
    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 340
    .line 341
    add-int/lit8 v2, v2, 0x1

    .line 342
    goto :goto_8

    .line 343
    .line 344
    .line 345
    :cond_10
    invoke-direct {p0, v1}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->updateViews(Ljava/util/List;)V

    .line 346
    :cond_11
    :goto_9
    return-void
.end method

.method public setChatThread(Lcom/narvii/model/ChatThread;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->chatThread:Lcom/narvii/model/ChatThread;

    return-void
.end method

.method public setDisplayMode(I)V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->displayMode:I

    .line 3
    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->groupContainer:Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->pairContainer:Landroid/widget/LinearLayout;

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
    iput p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->displayMode:I

    .line 29
    return-void
.end method

.method public setLauncher(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->isLauncher:Z

    return-void
.end method

.method public setPresenterItemClickListener(Lcom/narvii/chat/video/PresenterItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->itemClickListener:Lcom/narvii/chat/video/PresenterItemClickListener;

    return-void
.end method
