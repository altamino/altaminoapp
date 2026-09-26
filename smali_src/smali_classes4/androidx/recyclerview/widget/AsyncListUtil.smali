.class public Landroidx/recyclerview/widget/AsyncListUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;,
        Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "AsyncListUtil"


# instance fields
.field mAllowScrollHints:Z

.field private final mBackgroundCallback:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mDataCallback:Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/AsyncListUtil$DataCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field mDisplayedGeneration:I

.field mItemCount:I

.field private final mMainThreadCallback:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mMainThreadProxy:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mMissingPositions:Landroid/util/SparseIntArray;

.field final mPrevRange:[I

.field mRequestedGeneration:I

.field private mScrollHint:I

.field final mTClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mTileList:Landroidx/recyclerview/widget/TileList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/TileList<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mTileSize:I

.field final mTmpRange:[I

.field final mTmpRangeExtended:[I

.field final mViewCallback:Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;


# direct methods
.method public constructor <init>(Ljava/lang/Class;ILandroidx/recyclerview/widget/AsyncListUtil$DataCallback;Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;)V
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I",
            "Landroidx/recyclerview/widget/AsyncListUtil$DataCallback<",
            "TT;>;",
            "Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x2

    .line 5
    .line 6
    new-array v1, v0, [I

    .line 7
    .line 8
    iput-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    .line 9
    .line 10
    new-array v1, v0, [I

    .line 11
    .line 12
    iput-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mPrevRange:[I

    .line 13
    .line 14
    new-array v0, v0, [I

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    iput v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    .line 20
    .line 21
    iput v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    .line 22
    .line 23
    iput v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mDisplayedGeneration:I

    .line 24
    .line 25
    iput v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mRequestedGeneration:I

    .line 26
    .line 27
    new-instance v0, Landroid/util/SparseIntArray;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 31
    .line 32
    iput-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    .line 33
    .line 34
    new-instance v0, Landroidx/recyclerview/widget/AsyncListUtil$1;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/AsyncListUtil$1;-><init>(Landroidx/recyclerview/widget/AsyncListUtil;)V

    .line 38
    .line 39
    iput-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mMainThreadCallback:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    .line 40
    .line 41
    new-instance v1, Landroidx/recyclerview/widget/AsyncListUtil$2;

    .line 42
    .line 43
    .line 44
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/AsyncListUtil$2;-><init>(Landroidx/recyclerview/widget/AsyncListUtil;)V

    .line 45
    .line 46
    iput-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundCallback:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    .line 47
    .line 48
    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTClass:Ljava/lang/Class;

    .line 49
    .line 50
    iput p2, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    .line 51
    .line 52
    iput-object p3, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mDataCallback:Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;

    .line 53
    .line 54
    iput-object p4, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mViewCallback:Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;

    .line 55
    .line 56
    new-instance p1, Landroidx/recyclerview/widget/TileList;

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/TileList;-><init>(I)V

    .line 60
    .line 61
    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTileList:Landroidx/recyclerview/widget/TileList;

    .line 62
    .line 63
    new-instance p1, Landroidx/recyclerview/widget/MessageThreadUtil;

    .line 64
    .line 65
    .line 66
    invoke-direct {p1}, Landroidx/recyclerview/widget/MessageThreadUtil;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-interface {p1, v0}, Landroidx/recyclerview/widget/ThreadUtil;->a(Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;)Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    .line 70
    move-result-object p2

    .line 71
    .line 72
    iput-object p2, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mMainThreadProxy:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    .line 73
    .line 74
    .line 75
    invoke-interface {p1, v1}, Landroidx/recyclerview/widget/ThreadUtil;->b(Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;)Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncListUtil;->a()V

    .line 82
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    .line 8
    .line 9
    iget v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mRequestedGeneration:I

    .line 10
    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    iput v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mRequestedGeneration:I

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->c(I)V

    .line 17
    return-void
.end method

.method b()V
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mViewCallback:Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;->b([I)V

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    aget v2, v0, v1

    .line 13
    const/4 v3, 0x1

    .line 14
    .line 15
    aget v4, v0, v3

    .line 16
    .line 17
    if-gt v2, v4, :cond_7

    .line 18
    .line 19
    if-gez v2, :cond_0

    .line 20
    goto :goto_2

    .line 21
    .line 22
    :cond_0
    iget v5, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    .line 23
    .line 24
    if-lt v4, v5, :cond_1

    .line 25
    return-void

    .line 26
    .line 27
    :cond_1
    iget-boolean v5, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mAllowScrollHints:Z

    .line 28
    .line 29
    if-nez v5, :cond_2

    .line 30
    .line 31
    iput v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :cond_2
    iget-object v5, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mPrevRange:[I

    .line 35
    .line 36
    aget v6, v5, v3

    .line 37
    .line 38
    if-gt v2, v6, :cond_5

    .line 39
    .line 40
    aget v5, v5, v1

    .line 41
    .line 42
    if-le v5, v4, :cond_3

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_3
    if-ge v2, v5, :cond_4

    .line 46
    .line 47
    iput v3, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_4
    if-le v2, v5, :cond_6

    .line 51
    const/4 v5, 0x2

    .line 52
    .line 53
    iput v5, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    .line 54
    goto :goto_1

    .line 55
    .line 56
    :cond_5
    :goto_0
    iput v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    .line 57
    .line 58
    :cond_6
    :goto_1
    iget-object v5, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mPrevRange:[I

    .line 59
    .line 60
    aput v2, v5, v1

    .line 61
    .line 62
    aput v4, v5, v3

    .line 63
    .line 64
    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mViewCallback:Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;

    .line 65
    .line 66
    iget-object v4, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    .line 67
    .line 68
    iget v5, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v0, v4, v5}, Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;->a([I[II)V

    .line 72
    .line 73
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    .line 74
    .line 75
    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    .line 76
    .line 77
    aget v2, v2, v1

    .line 78
    .line 79
    aget v4, v0, v1

    .line 80
    .line 81
    .line 82
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 83
    move-result v4

    .line 84
    .line 85
    .line 86
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 87
    move-result v2

    .line 88
    .line 89
    aput v2, v0, v1

    .line 90
    .line 91
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    .line 92
    .line 93
    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    .line 94
    .line 95
    aget v2, v2, v3

    .line 96
    .line 97
    aget v4, v0, v3

    .line 98
    .line 99
    iget v5, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    .line 100
    sub-int/2addr v5, v3

    .line 101
    .line 102
    .line 103
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 104
    move-result v4

    .line 105
    .line 106
    .line 107
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 108
    move-result v2

    .line 109
    .line 110
    aput v2, v0, v3

    .line 111
    .line 112
    iget-object v4, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    .line 113
    .line 114
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    .line 115
    .line 116
    aget v5, v0, v1

    .line 117
    .line 118
    aget v6, v0, v3

    .line 119
    .line 120
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    .line 121
    .line 122
    aget v7, v0, v1

    .line 123
    .line 124
    aget v8, v0, v3

    .line 125
    .line 126
    iget v9, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    .line 127
    .line 128
    .line 129
    invoke-interface/range {v4 .. v9}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->a(IIIII)V

    .line 130
    :cond_7
    :goto_2
    return-void
.end method
