.class final Landroidx/recyclerview/widget/AdapterHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/OpReorderer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/AdapterHelper$Callback;,
        Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final POSITION_TYPE_INVISIBLE:I = 0x0

.field static final POSITION_TYPE_NEW_OR_LAID_OUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AHT"


# instance fields
.field final mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

.field final mDisableRecycler:Z

.field private mExistingUpdateTypes:I

.field mOnItemProcessedCallback:Ljava/lang/Runnable;

.field final mOpReorderer:Landroidx/recyclerview/widget/OpReorderer;

.field final mPendingUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field final mPostponedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateOpPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/AdapterHelper$Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/AdapterHelper;-><init>(Landroidx/recyclerview/widget/AdapterHelper$Callback;Z)V

    return-void
.end method

.method constructor <init>(Landroidx/recyclerview/widget/AdapterHelper$Callback;Z)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroidx/core/util/Pools$SimplePool;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Landroidx/core/util/Pools$Pool;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    iput-object p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    iput-boolean p2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mDisableRecycler:Z

    .line 6
    new-instance p1, Landroidx/recyclerview/widget/OpReorderer;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/OpReorderer;-><init>(Landroidx/recyclerview/widget/OpReorderer$Callback;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mOpReorderer:Landroidx/recyclerview/widget/OpReorderer;

    return-void
.end method

.method private c(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->v(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 4
    return-void
.end method

.method private d(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->v(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 4
    return-void
.end method

.method private f(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 10

    .line 1
    .line 2
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 3
    .line 4
    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 5
    add-int/2addr v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, -0x1

    .line 8
    move v4, v0

    .line 9
    move v5, v2

    .line 10
    :goto_0
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x2

    .line 12
    .line 13
    if-ge v4, v1, :cond_5

    .line 14
    .line 15
    iget-object v8, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    .line 16
    .line 17
    .line 18
    invoke-interface {v8, v4}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->d(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 19
    move-result-object v8

    .line 20
    const/4 v9, 0x1

    .line 21
    .line 22
    if-nez v8, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v4}, Landroidx/recyclerview/widget/AdapterHelper;->h(I)Z

    .line 26
    move-result v8

    .line 27
    .line 28
    if-eqz v8, :cond_0

    .line 29
    goto :goto_2

    .line 30
    .line 31
    :cond_0
    if-ne v3, v9, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v7, v0, v5, v6}, Landroidx/recyclerview/widget/AdapterHelper;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    .line 38
    invoke-direct {p0, v3}, Landroidx/recyclerview/widget/AdapterHelper;->v(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 39
    move v3, v9

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v3, v2

    .line 42
    :goto_1
    move v6, v2

    .line 43
    goto :goto_4

    .line 44
    .line 45
    :cond_2
    :goto_2
    if-nez v3, :cond_3

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v7, v0, v5, v6}, Landroidx/recyclerview/widget/AdapterHelper;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    .line 52
    invoke-direct {p0, v3}, Landroidx/recyclerview/widget/AdapterHelper;->k(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 53
    move v3, v9

    .line 54
    goto :goto_3

    .line 55
    :cond_3
    move v3, v2

    .line 56
    :goto_3
    move v6, v9

    .line 57
    .line 58
    :goto_4
    if-eqz v3, :cond_4

    .line 59
    sub-int/2addr v4, v5

    .line 60
    sub-int/2addr v1, v5

    .line 61
    move v5, v9

    .line 62
    goto :goto_5

    .line 63
    .line 64
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 65
    :goto_5
    add-int/2addr v4, v9

    .line 66
    move v3, v6

    .line 67
    goto :goto_0

    .line 68
    .line 69
    :cond_5
    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 70
    .line 71
    if-eq v5, v1, :cond_6

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->b(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v7, v0, v5, v6}, Landroidx/recyclerview/widget/AdapterHelper;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    :cond_6
    if-nez v3, :cond_7

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->k(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 84
    goto :goto_6

    .line 85
    .line 86
    .line 87
    :cond_7
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->v(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 88
    :goto_6
    return-void
.end method

.method private g(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 9

    .line 1
    .line 2
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 3
    .line 4
    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 5
    add-int/2addr v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, -0x1

    .line 8
    move v5, v2

    .line 9
    move v4, v3

    .line 10
    move v3, v0

    .line 11
    :goto_0
    const/4 v6, 0x4

    .line 12
    .line 13
    if-ge v0, v1, :cond_4

    .line 14
    .line 15
    iget-object v7, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    .line 16
    .line 17
    .line 18
    invoke-interface {v7, v0}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->d(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 19
    move-result-object v7

    .line 20
    const/4 v8, 0x1

    .line 21
    .line 22
    if-nez v7, :cond_2

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->h(I)Z

    .line 26
    move-result v7

    .line 27
    .line 28
    if-eqz v7, :cond_0

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_0
    if-ne v4, v8, :cond_1

    .line 32
    .line 33
    iget-object v4, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v6, v3, v5, v4}, Landroidx/recyclerview/widget/AdapterHelper;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 37
    move-result-object v3

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v3}, Landroidx/recyclerview/widget/AdapterHelper;->v(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 41
    move v3, v0

    .line 42
    move v5, v2

    .line 43
    :cond_1
    move v4, v2

    .line 44
    goto :goto_2

    .line 45
    .line 46
    :cond_2
    :goto_1
    if-nez v4, :cond_3

    .line 47
    .line 48
    iget-object v4, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v6, v3, v5, v4}, Landroidx/recyclerview/widget/AdapterHelper;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, v3}, Landroidx/recyclerview/widget/AdapterHelper;->k(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 56
    move v3, v0

    .line 57
    move v5, v2

    .line 58
    :cond_3
    move v4, v8

    .line 59
    :goto_2
    add-int/2addr v5, v8

    .line 60
    .line 61
    add-int/lit8 v0, v0, 0x1

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :cond_4
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 65
    .line 66
    if-eq v5, v0, :cond_5

    .line 67
    .line 68
    iget-object v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->b(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v6, v3, v5, v0}, Landroidx/recyclerview/widget/AdapterHelper;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    :cond_5
    if-nez v4, :cond_6

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->k(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 81
    goto :goto_3

    .line 82
    .line 83
    .line 84
    :cond_6
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->v(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 85
    :goto_3
    return-void
.end method

.method private h(I)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    .line 10
    :goto_0
    if-ge v2, v0, :cond_3

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    check-cast v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 19
    .line 20
    iget v4, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 21
    .line 22
    const/16 v5, 0x8

    .line 23
    const/4 v6, 0x1

    .line 24
    .line 25
    if-ne v4, v5, :cond_0

    .line 26
    .line 27
    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 28
    .line 29
    add-int/lit8 v4, v2, 0x1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/AdapterHelper;->n(II)I

    .line 33
    move-result v3

    .line 34
    .line 35
    if-ne v3, p1, :cond_2

    .line 36
    return v6

    .line 37
    .line 38
    :cond_0
    if-ne v4, v6, :cond_2

    .line 39
    .line 40
    iget v4, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 41
    .line 42
    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 43
    add-int/2addr v3, v4

    .line 44
    .line 45
    :goto_1
    if-ge v4, v3, :cond_2

    .line 46
    .line 47
    add-int/lit8 v5, v2, 0x1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v4, v5}, Landroidx/recyclerview/widget/AdapterHelper;->n(II)I

    .line 51
    move-result v5

    .line 52
    .line 53
    if-ne v5, p1, :cond_1

    .line 54
    return v6

    .line 55
    .line 56
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    return v1
.end method

.method private k(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 11

    .line 1
    .line 2
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eq v0, v1, :cond_8

    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    if-eq v0, v2, :cond_8

    .line 10
    .line 11
    iget v2, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v2, v0}, Landroidx/recyclerview/widget/AdapterHelper;->z(II)I

    .line 15
    move-result v0

    .line 16
    .line 17
    iget v2, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 18
    .line 19
    iget v3, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 20
    const/4 v4, 0x2

    .line 21
    const/4 v5, 0x4

    .line 22
    .line 23
    if-eq v3, v4, :cond_1

    .line 24
    .line 25
    if-ne v3, v5, :cond_0

    .line 26
    move v3, v1

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string/jumbo v2, "op should be remove or update."

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    throw v0

    .line 52
    :cond_1
    const/4 v3, 0x0

    .line 53
    :goto_0
    move v6, v1

    .line 54
    move v7, v6

    .line 55
    .line 56
    :goto_1
    iget v8, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 57
    .line 58
    if-ge v6, v8, :cond_6

    .line 59
    .line 60
    iget v8, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 61
    .line 62
    mul-int v9, v3, v6

    .line 63
    add-int/2addr v8, v9

    .line 64
    .line 65
    iget v9, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, v8, v9}, Landroidx/recyclerview/widget/AdapterHelper;->z(II)I

    .line 69
    move-result v8

    .line 70
    .line 71
    iget v9, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 72
    .line 73
    if-eq v9, v4, :cond_3

    .line 74
    .line 75
    if-eq v9, v5, :cond_2

    .line 76
    goto :goto_3

    .line 77
    .line 78
    :cond_2
    add-int/lit8 v10, v0, 0x1

    .line 79
    .line 80
    if-ne v8, v10, :cond_4

    .line 81
    goto :goto_2

    .line 82
    .line 83
    :cond_3
    if-ne v8, v0, :cond_4

    .line 84
    .line 85
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 86
    goto :goto_4

    .line 87
    .line 88
    :cond_4
    :goto_3
    iget-object v10, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v9, v0, v7, v10}, Landroidx/recyclerview/widget/AdapterHelper;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/AdapterHelper;->l(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->b(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 99
    .line 100
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 101
    .line 102
    if-ne v0, v5, :cond_5

    .line 103
    add-int/2addr v2, v7

    .line 104
    :cond_5
    move v7, v1

    .line 105
    move v0, v8

    .line 106
    .line 107
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 108
    goto :goto_1

    .line 109
    .line 110
    :cond_6
    iget-object v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->b(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 114
    .line 115
    if-lez v7, :cond_7

    .line 116
    .line 117
    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p1, v0, v7, v1}, Landroidx/recyclerview/widget/AdapterHelper;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/AdapterHelper;->l(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/AdapterHelper;->b(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 128
    :cond_7
    return-void

    .line 129
    .line 130
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 131
    .line 132
    .line 133
    const-string/jumbo v0, "should not dispatch add or move for pre layout"

    .line 134
    .line 135
    .line 136
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 137
    throw p1
.end method

.method private v(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    const/4 v1, 0x2

    .line 12
    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    const/4 v1, 0x4

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/16 v1, 0x8

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    .line 23
    .line 24
    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 25
    .line 26
    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1, p1}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->a(II)V

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    const-string v2, "Unknown update op type for "

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    throw v0

    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    .line 56
    .line 57
    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 58
    .line 59
    iget v2, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 60
    .line 61
    iget-object p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    invoke-interface {v0, v1, v2, p1}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->h(IILjava/lang/Object;)V

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    .line 68
    .line 69
    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 70
    .line 71
    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 72
    .line 73
    .line 74
    invoke-interface {v0, v1, p1}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->g(II)V

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    .line 78
    .line 79
    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 80
    .line 81
    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 82
    .line 83
    .line 84
    invoke-interface {v0, v1, p1}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->e(II)V

    .line 85
    :goto_0
    return-void
.end method

.method private z(II)I
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    .line 10
    :goto_0
    const/16 v2, 0x8

    .line 11
    .line 12
    if-ltz v0, :cond_d

    .line 13
    .line 14
    iget-object v3, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    .line 20
    check-cast v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 21
    .line 22
    iget v4, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 23
    const/4 v5, 0x2

    .line 24
    .line 25
    if-ne v4, v2, :cond_8

    .line 26
    .line 27
    iget v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 28
    .line 29
    iget v4, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 30
    .line 31
    if-ge v2, v4, :cond_0

    .line 32
    move v6, v2

    .line 33
    move v7, v4

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    move v7, v2

    .line 36
    move v6, v4

    .line 37
    .line 38
    :goto_1
    if-lt p1, v6, :cond_6

    .line 39
    .line 40
    if-gt p1, v7, :cond_6

    .line 41
    .line 42
    if-ne v6, v2, :cond_3

    .line 43
    .line 44
    if-ne p2, v1, :cond_1

    .line 45
    .line 46
    add-int/lit8 v4, v4, 0x1

    .line 47
    .line 48
    iput v4, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 49
    goto :goto_2

    .line 50
    .line 51
    :cond_1
    if-ne p2, v5, :cond_2

    .line 52
    .line 53
    add-int/lit8 v4, v4, -0x1

    .line 54
    .line 55
    iput v4, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 56
    .line 57
    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 58
    goto :goto_4

    .line 59
    .line 60
    :cond_3
    if-ne p2, v1, :cond_4

    .line 61
    .line 62
    add-int/lit8 v2, v2, 0x1

    .line 63
    .line 64
    iput v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 65
    goto :goto_3

    .line 66
    .line 67
    :cond_4
    if-ne p2, v5, :cond_5

    .line 68
    .line 69
    add-int/lit8 v2, v2, -0x1

    .line 70
    .line 71
    iput v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 72
    .line 73
    :cond_5
    :goto_3
    add-int/lit8 p1, p1, -0x1

    .line 74
    goto :goto_4

    .line 75
    .line 76
    :cond_6
    if-ge p1, v2, :cond_c

    .line 77
    .line 78
    if-ne p2, v1, :cond_7

    .line 79
    .line 80
    add-int/lit8 v2, v2, 0x1

    .line 81
    .line 82
    iput v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 83
    .line 84
    add-int/lit8 v4, v4, 0x1

    .line 85
    .line 86
    iput v4, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 87
    goto :goto_4

    .line 88
    .line 89
    :cond_7
    if-ne p2, v5, :cond_c

    .line 90
    .line 91
    add-int/lit8 v2, v2, -0x1

    .line 92
    .line 93
    iput v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 94
    .line 95
    add-int/lit8 v4, v4, -0x1

    .line 96
    .line 97
    iput v4, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 98
    goto :goto_4

    .line 99
    .line 100
    :cond_8
    iget v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 101
    .line 102
    if-gt v2, p1, :cond_a

    .line 103
    .line 104
    if-ne v4, v1, :cond_9

    .line 105
    .line 106
    iget v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 107
    sub-int/2addr p1, v2

    .line 108
    goto :goto_4

    .line 109
    .line 110
    :cond_9
    if-ne v4, v5, :cond_c

    .line 111
    .line 112
    iget v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 113
    add-int/2addr p1, v2

    .line 114
    goto :goto_4

    .line 115
    .line 116
    :cond_a
    if-ne p2, v1, :cond_b

    .line 117
    .line 118
    add-int/lit8 v2, v2, 0x1

    .line 119
    .line 120
    iput v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 121
    goto :goto_4

    .line 122
    .line 123
    :cond_b
    if-ne p2, v5, :cond_c

    .line 124
    .line 125
    add-int/lit8 v2, v2, -0x1

    .line 126
    .line 127
    iput v2, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 128
    .line 129
    :cond_c
    :goto_4
    add-int/lit8 v0, v0, -0x1

    .line 130
    goto :goto_0

    .line 131
    .line 132
    :cond_d
    iget-object p2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 136
    move-result p2

    .line 137
    sub-int/2addr p2, v1

    .line 138
    .line 139
    :goto_5
    if-ltz p2, :cond_11

    .line 140
    .line 141
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 145
    move-result-object v0

    .line 146
    .line 147
    check-cast v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 148
    .line 149
    iget v1, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 150
    .line 151
    if-ne v1, v2, :cond_f

    .line 152
    .line 153
    iget v1, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 154
    .line 155
    iget v3, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 156
    .line 157
    if-eq v1, v3, :cond_e

    .line 158
    .line 159
    if-gez v1, :cond_10

    .line 160
    .line 161
    :cond_e
    iget-object v1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->b(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 168
    goto :goto_6

    .line 169
    .line 170
    :cond_f
    iget v1, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 171
    .line 172
    if-gtz v1, :cond_10

    .line 173
    .line 174
    iget-object v1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->b(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 181
    .line 182
    :cond_10
    :goto_6
    add-int/lit8 p2, p2, -0x1

    .line 183
    goto :goto_5

    .line 184
    :cond_11
    return p1
.end method


# virtual methods
.method public a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Landroidx/core/util/Pools$Pool;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->a()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;-><init>(IIILjava/lang/Object;)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iput p1, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 19
    .line 20
    iput p2, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 21
    .line 22
    iput p3, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 23
    .line 24
    iput-object p4, v0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 25
    :goto_0
    return-object v0
.end method

.method public b(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mDisableRecycler:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput-object v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mUpdateOpPool:Landroidx/core/util/Pools$Pool;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, p1}, Landroidx/core/util/Pools$Pool;->b(Ljava/lang/Object;)Z

    .line 13
    :cond_0
    return-void
.end method

.method public e(I)I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    :goto_0
    if-ge v1, v0, :cond_7

    .line 10
    .line 11
    iget-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    check-cast v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 18
    .line 19
    iget v3, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 20
    const/4 v4, 0x1

    .line 21
    .line 22
    if-eq v3, v4, :cond_5

    .line 23
    const/4 v4, 0x2

    .line 24
    .line 25
    if-eq v3, v4, :cond_3

    .line 26
    .line 27
    const/16 v4, 0x8

    .line 28
    .line 29
    if-eq v3, v4, :cond_0

    .line 30
    goto :goto_1

    .line 31
    .line 32
    :cond_0
    iget v3, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 33
    .line 34
    if-ne v3, p1, :cond_1

    .line 35
    .line 36
    iget p1, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_1
    if-ge v3, p1, :cond_2

    .line 40
    .line 41
    add-int/lit8 p1, p1, -0x1

    .line 42
    .line 43
    :cond_2
    iget v2, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 44
    .line 45
    if-gt v2, p1, :cond_6

    .line 46
    .line 47
    add-int/lit8 p1, p1, 0x1

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_3
    iget v3, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 51
    .line 52
    if-gt v3, p1, :cond_6

    .line 53
    .line 54
    iget v2, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 55
    add-int/2addr v3, v2

    .line 56
    .line 57
    if-le v3, p1, :cond_4

    .line 58
    const/4 p1, -0x1

    .line 59
    return p1

    .line 60
    :cond_4
    sub-int/2addr p1, v2

    .line 61
    goto :goto_1

    .line 62
    .line 63
    :cond_5
    iget v3, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 64
    .line 65
    if-gt v3, p1, :cond_6

    .line 66
    .line 67
    iget v2, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 68
    add-int/2addr p1, v2

    .line 69
    .line 70
    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 71
    goto :goto_0

    .line 72
    :cond_7
    return p1
.end method

.method i()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    .line 10
    :goto_0
    if-ge v2, v0, :cond_0

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    .line 13
    .line 14
    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v4

    .line 19
    .line 20
    check-cast v4, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 21
    .line 22
    .line 23
    invoke-interface {v3, v4}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->c(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->x(Ljava/util/List;)V

    .line 32
    .line 33
    iput v1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 34
    return-void
.end method

.method j()V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/AdapterHelper;->i()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    .line 13
    :goto_0
    if-ge v2, v0, :cond_5

    .line 14
    .line 15
    iget-object v3, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    check-cast v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 22
    .line 23
    iget v4, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 24
    const/4 v5, 0x1

    .line 25
    .line 26
    if-eq v4, v5, :cond_3

    .line 27
    const/4 v5, 0x2

    .line 28
    .line 29
    if-eq v4, v5, :cond_2

    .line 30
    const/4 v5, 0x4

    .line 31
    .line 32
    if-eq v4, v5, :cond_1

    .line 33
    .line 34
    const/16 v5, 0x8

    .line 35
    .line 36
    if-eq v4, v5, :cond_0

    .line 37
    goto :goto_1

    .line 38
    .line 39
    :cond_0
    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    .line 40
    .line 41
    .line 42
    invoke-interface {v4, v3}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->c(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 43
    .line 44
    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    .line 45
    .line 46
    iget v5, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 47
    .line 48
    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 49
    .line 50
    .line 51
    invoke-interface {v4, v5, v3}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->a(II)V

    .line 52
    goto :goto_1

    .line 53
    .line 54
    :cond_1
    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    .line 55
    .line 56
    .line 57
    invoke-interface {v4, v3}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->c(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 58
    .line 59
    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    .line 60
    .line 61
    iget v5, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 62
    .line 63
    iget v6, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 64
    .line 65
    iget-object v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    invoke-interface {v4, v5, v6, v3}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->h(IILjava/lang/Object;)V

    .line 69
    goto :goto_1

    .line 70
    .line 71
    :cond_2
    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    .line 72
    .line 73
    .line 74
    invoke-interface {v4, v3}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->c(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 75
    .line 76
    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    .line 77
    .line 78
    iget v5, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 79
    .line 80
    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 81
    .line 82
    .line 83
    invoke-interface {v4, v5, v3}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->f(II)V

    .line 84
    goto :goto_1

    .line 85
    .line 86
    :cond_3
    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    .line 87
    .line 88
    .line 89
    invoke-interface {v4, v3}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->c(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 90
    .line 91
    iget-object v4, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    .line 92
    .line 93
    iget v5, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 94
    .line 95
    iget v3, v3, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 96
    .line 97
    .line 98
    invoke-interface {v4, v5, v3}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->e(II)V

    .line 99
    .line 100
    :goto_1
    iget-object v3, p0, Landroidx/recyclerview/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    .line 101
    .line 102
    if-eqz v3, :cond_4

    .line 103
    .line 104
    .line 105
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 106
    .line 107
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 108
    goto :goto_0

    .line 109
    .line 110
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->x(Ljava/util/List;)V

    .line 114
    .line 115
    iput v1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 116
    return-void
.end method

.method l(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->b(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 6
    .line 7
    iget v0, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 8
    const/4 v1, 0x2

    .line 9
    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    const/4 v1, 0x4

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    .line 16
    .line 17
    iget v1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 18
    .line 19
    iget-object p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, p2, v1, p1}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->h(IILjava/lang/Object;)V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    .line 28
    const-string/jumbo p2, "only remove and update ops can be dispatched in first pass"

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p1

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mCallback:Landroidx/recyclerview/widget/AdapterHelper$Callback;

    .line 35
    .line 36
    iget p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, p2, p1}, Landroidx/recyclerview/widget/AdapterHelper$Callback;->f(II)V

    .line 40
    :goto_0
    return-void
.end method

.method m(I)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/AdapterHelper;->n(II)I

    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method n(II)I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    :goto_0
    if-ge p2, v0, :cond_6

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 17
    .line 18
    iget v2, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 19
    .line 20
    const/16 v3, 0x8

    .line 21
    .line 22
    if-ne v2, v3, :cond_2

    .line 23
    .line 24
    iget v2, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 25
    .line 26
    if-ne v2, p1, :cond_0

    .line 27
    .line 28
    iget p1, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 29
    goto :goto_1

    .line 30
    .line 31
    :cond_0
    if-ge v2, p1, :cond_1

    .line 32
    .line 33
    add-int/lit8 p1, p1, -0x1

    .line 34
    .line 35
    :cond_1
    iget v1, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 36
    .line 37
    if-gt v1, p1, :cond_5

    .line 38
    .line 39
    add-int/lit8 p1, p1, 0x1

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_2
    iget v3, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 43
    .line 44
    if-gt v3, p1, :cond_5

    .line 45
    const/4 v4, 0x2

    .line 46
    .line 47
    if-ne v2, v4, :cond_4

    .line 48
    .line 49
    iget v1, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 50
    add-int/2addr v3, v1

    .line 51
    .line 52
    if-ge p1, v3, :cond_3

    .line 53
    const/4 p1, -0x1

    .line 54
    return p1

    .line 55
    :cond_3
    sub-int/2addr p1, v1

    .line 56
    goto :goto_1

    .line 57
    :cond_4
    const/4 v3, 0x1

    .line 58
    .line 59
    if-ne v2, v3, :cond_5

    .line 60
    .line 61
    iget v1, v1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 62
    add-int/2addr p1, v1

    .line 63
    .line 64
    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 65
    goto :goto_0

    .line 66
    :cond_6
    return p1
.end method

.method o(I)Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method p()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method q()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method r(IILjava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    if-ge p2, v1, :cond_0

    .line 5
    return v0

    .line 6
    .line 7
    :cond_0
    iget-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 8
    const/4 v3, 0x4

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v3, p1, p2, p3}, Landroidx/recyclerview/widget/AdapterHelper;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    iget p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 18
    or-int/2addr p1, v3

    .line 19
    .line 20
    iput p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 21
    .line 22
    iget-object p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 26
    move-result p1

    .line 27
    .line 28
    if-ne p1, v1, :cond_1

    .line 29
    move v0, v1

    .line 30
    :cond_1
    return v0
.end method

.method s(II)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    if-ge p2, v1, :cond_0

    .line 5
    return v0

    .line 6
    .line 7
    :cond_0
    iget-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 8
    const/4 v3, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1, p1, p2, v3}, Landroidx/recyclerview/widget/AdapterHelper;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    iget p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 18
    or-int/2addr p1, v1

    .line 19
    .line 20
    iput p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 21
    .line 22
    iget-object p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 26
    move-result p1

    .line 27
    .line 28
    if-ne p1, v1, :cond_1

    .line 29
    move v0, v1

    .line 30
    :cond_1
    return v0
.end method

.method t(III)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-ne p1, p2, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    .line 7
    if-ne p3, v1, :cond_2

    .line 8
    .line 9
    iget-object p3, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    const/16 v3, 0x8

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v3, p1, p2, v2}, Landroidx/recyclerview/widget/AdapterHelper;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    iget p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 22
    or-int/2addr p1, v3

    .line 23
    .line 24
    iput p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 25
    .line 26
    iget-object p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 30
    move-result p1

    .line 31
    .line 32
    if-ne p1, v1, :cond_1

    .line 33
    move v0, v1

    .line 34
    :cond_1
    return v0

    .line 35
    .line 36
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    const-string p2, "Moving more than 1 item is not supported yet"

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p1
.end method

.method u(II)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    if-ge p2, v1, :cond_0

    .line 5
    return v0

    .line 6
    .line 7
    :cond_0
    iget-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x2

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v4, p1, p2, v3}, Landroidx/recyclerview/widget/AdapterHelper;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    iget p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 19
    or-int/2addr p1, v4

    .line 20
    .line 21
    iput p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 22
    .line 23
    iget-object p1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 27
    move-result p1

    .line 28
    .line 29
    if-ne p1, v1, :cond_1

    .line 30
    move v0, v1

    .line 31
    :cond_1
    return v0
.end method

.method w()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mOpReorderer:Landroidx/recyclerview/widget/OpReorderer;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/OpReorderer;->b(Ljava/util/List;)V

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    :goto_0
    if-ge v1, v0, :cond_5

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    check-cast v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 25
    .line 26
    iget v3, v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 27
    const/4 v4, 0x1

    .line 28
    .line 29
    if-eq v3, v4, :cond_3

    .line 30
    const/4 v4, 0x2

    .line 31
    .line 32
    if-eq v3, v4, :cond_2

    .line 33
    const/4 v4, 0x4

    .line 34
    .line 35
    if-eq v3, v4, :cond_1

    .line 36
    .line 37
    const/16 v4, 0x8

    .line 38
    .line 39
    if-eq v3, v4, :cond_0

    .line 40
    goto :goto_1

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/AdapterHelper;->d(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 44
    goto :goto_1

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/AdapterHelper;->g(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 48
    goto :goto_1

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/AdapterHelper;->f(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 52
    goto :goto_1

    .line 53
    .line 54
    .line 55
    :cond_3
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/AdapterHelper;->c(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 56
    .line 57
    :goto_1
    iget-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    .line 58
    .line 59
    if-eqz v2, :cond_4

    .line 60
    .line 61
    .line 62
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 63
    .line 64
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 71
    return-void
.end method

.method x(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    check-cast v2, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/AdapterHelper;->b(Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;)V

    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 23
    return-void
.end method

.method y()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->x(Ljava/util/List;)V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/AdapterHelper;->x(Ljava/util/List;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput v0, p0, Landroidx/recyclerview/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 14
    return-void
.end method
