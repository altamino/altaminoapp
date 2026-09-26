.class public Landroidx/recyclerview/widget/DiffUtil$DiffResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiffResult"
.end annotation


# static fields
.field private static final FLAG_CHANGED:I = 0x2

.field private static final FLAG_MASK:I = 0xf

.field private static final FLAG_MOVED:I = 0xc

.field private static final FLAG_MOVED_CHANGED:I = 0x4

.field private static final FLAG_MOVED_NOT_CHANGED:I = 0x8

.field private static final FLAG_NOT_CHANGED:I = 0x1

.field private static final FLAG_OFFSET:I = 0x4

.field public static final NO_POSITION:I = -0x1


# instance fields
.field private final mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

.field private final mDetectMoves:Z

.field private final mDiagonals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/DiffUtil$Diagonal;",
            ">;"
        }
    .end annotation
.end field

.field private final mNewItemStatuses:[I

.field private final mNewListSize:I

.field private final mOldItemStatuses:[I

.field private final mOldListSize:I


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/util/List;[I[IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$Callback;",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/DiffUtil$Diagonal;",
            ">;[I[IZ)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    .line 8
    .line 9
    iput-object p4, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    .line 10
    const/4 p2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {p3, p2}, Ljava/util/Arrays;->fill([II)V

    .line 14
    .line 15
    .line 16
    invoke-static {p4, p2}, Ljava/util/Arrays;->fill([II)V

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/recyclerview/widget/DiffUtil$Callback;->e()I

    .line 22
    move-result p2

    .line 23
    .line 24
    iput p2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/recyclerview/widget/DiffUtil$Callback;->d()I

    .line 28
    move-result p1

    .line 29
    .line 30
    iput p1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    .line 31
    .line 32
    iput-boolean p5, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->a()V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->e()V

    .line 39
    return-void
.end method

.method private a()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    const/4 v0, 0x0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 20
    .line 21
    :goto_0
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget v2, v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    .line 32
    .line 33
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v1, v1, v1}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    .line 42
    .line 43
    new-instance v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 44
    .line 45
    iget v3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    .line 46
    .line 47
    iget v4, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    .line 48
    .line 49
    .line 50
    invoke-direct {v2, v3, v4, v1}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method private d(I)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    .line 10
    :goto_0
    if-ge v1, v0, :cond_3

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    .line 13
    .line 14
    .line 15
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    check-cast v3, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 19
    .line 20
    :goto_1
    iget v4, v3, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    .line 21
    .line 22
    if-ge v2, v4, :cond_2

    .line 23
    .line 24
    iget-object v4, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    .line 25
    .line 26
    aget v4, v4, v2

    .line 27
    .line 28
    if-nez v4, :cond_1

    .line 29
    .line 30
    iget-object v4, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, p1, v2}, Landroidx/recyclerview/widget/DiffUtil$Callback;->b(II)Z

    .line 34
    move-result v4

    .line 35
    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1, v2}, Landroidx/recyclerview/widget/DiffUtil$Callback;->a(II)Z

    .line 42
    move-result v0

    .line 43
    const/4 v1, 0x4

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    const/16 v0, 0x8

    .line 48
    goto :goto_2

    .line 49
    :cond_0
    move v0, v1

    .line 50
    .line 51
    :goto_2
    iget-object v3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    .line 52
    .line 53
    shl-int/lit8 v4, v2, 0x4

    .line 54
    or-int/2addr v4, v0

    .line 55
    .line 56
    aput v4, v3, p1

    .line 57
    .line 58
    iget-object v3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    .line 59
    shl-int/2addr p1, v1

    .line 60
    or-int/2addr p1, v0

    .line 61
    .line 62
    aput p1, v3, v2

    .line 63
    return-void

    .line 64
    .line 65
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 66
    goto :goto_1

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-virtual {v3}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->b()I

    .line 70
    move-result v2

    .line 71
    .line 72
    add-int/lit8 v1, v1, 0x1

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    return-void
.end method

.method private e()V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    :goto_0
    iget v3, v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    .line 22
    .line 23
    if-ge v2, v3, :cond_0

    .line 24
    .line 25
    iget v3, v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 26
    add-int/2addr v3, v2

    .line 27
    .line 28
    iget v4, v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    .line 29
    add-int/2addr v4, v2

    .line 30
    .line 31
    iget-object v5, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, v3, v4}, Landroidx/recyclerview/widget/DiffUtil$Callback;->a(II)Z

    .line 35
    move-result v5

    .line 36
    .line 37
    if-eqz v5, :cond_1

    .line 38
    const/4 v5, 0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 v5, 0x2

    .line 41
    .line 42
    :goto_1
    iget-object v6, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    .line 43
    .line 44
    shl-int/lit8 v7, v4, 0x4

    .line 45
    or-int/2addr v7, v5

    .line 46
    .line 47
    aput v7, v6, v3

    .line 48
    .line 49
    iget-object v6, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    .line 50
    .line 51
    shl-int/lit8 v3, v3, 0x4

    .line 52
    or-int/2addr v3, v5

    .line 53
    .line 54
    aput v3, v6, v4

    .line 55
    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDetectMoves:Z

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->f()V

    .line 65
    :cond_3
    return-void
.end method

.method private f()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v2

    .line 12
    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    check-cast v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 20
    .line 21
    :goto_1
    iget v3, v2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 22
    .line 23
    if-ge v1, v3, :cond_1

    .line 24
    .line 25
    iget-object v3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    .line 26
    .line 27
    aget v3, v3, v1

    .line 28
    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->d(I)V

    .line 33
    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_1

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {v2}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->a()I

    .line 39
    move-result v1

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return-void
.end method

.method private static g(Ljava/util/Collection;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;",
            ">;IZ)",
            "Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 17
    .line 18
    iget v1, v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->posInOwnerList:I

    .line 19
    .line 20
    if-ne v1, p1, :cond_0

    .line 21
    .line 22
    iget-boolean v1, v0, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->removal:Z

    .line 23
    .line 24
    if-ne v1, p2, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result p1

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    check-cast p1, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 42
    .line 43
    if-eqz p2, :cond_2

    .line 44
    .line 45
    iget v1, p1, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 46
    .line 47
    add-int/lit8 v1, v1, -0x1

    .line 48
    .line 49
    iput v1, p1, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_2
    iget v1, p1, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 53
    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    iput v1, p1, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    return-object v0
.end method


# virtual methods
.method public b(Landroidx/recyclerview/widget/ListUpdateCallback;)V
    .locals 12
    .param p1    # Landroidx/recyclerview/widget/ListUpdateCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 13
    move-object p1, v0

    .line 14
    .line 15
    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    .line 16
    .line 17
    new-instance v1, Ljava/util/ArrayDeque;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 21
    .line 22
    iget v2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    .line 23
    .line 24
    iget v3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    .line 25
    .line 26
    iget-object v4, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    .line 27
    .line 28
    .line 29
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 30
    move-result v4

    .line 31
    const/4 v5, 0x1

    .line 32
    sub-int/2addr v4, v5

    .line 33
    .line 34
    :goto_1
    if-ltz v4, :cond_a

    .line 35
    .line 36
    iget-object v6, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    .line 37
    .line 38
    .line 39
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v6

    .line 41
    .line 42
    check-cast v6, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->a()I

    .line 46
    move-result v7

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->b()I

    .line 50
    move-result v8

    .line 51
    :cond_1
    :goto_2
    const/4 v9, 0x0

    .line 52
    .line 53
    if-le v2, v7, :cond_4

    .line 54
    .line 55
    add-int/lit8 v2, v2, -0x1

    .line 56
    .line 57
    iget-object v10, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    .line 58
    .line 59
    aget v10, v10, v2

    .line 60
    .line 61
    and-int/lit8 v11, v10, 0xc

    .line 62
    .line 63
    if-eqz v11, :cond_3

    .line 64
    .line 65
    shr-int/lit8 v11, v10, 0x4

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v11, v9}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->g(Ljava/util/Collection;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 69
    move-result-object v9

    .line 70
    .line 71
    if-eqz v9, :cond_2

    .line 72
    .line 73
    iget v9, v9, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 74
    .line 75
    sub-int v9, v0, v9

    .line 76
    sub-int/2addr v9, v5

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v2, v9}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->d(II)V

    .line 80
    .line 81
    and-int/lit8 v10, v10, 0x4

    .line 82
    .line 83
    if-eqz v10, :cond_1

    .line 84
    .line 85
    iget-object v10, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v10, v2, v11}, Landroidx/recyclerview/widget/DiffUtil$Callback;->c(II)Ljava/lang/Object;

    .line 89
    move-result-object v10

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v9, v5, v10}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->a(IILjava/lang/Object;)V

    .line 93
    goto :goto_2

    .line 94
    .line 95
    :cond_2
    new-instance v9, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 96
    .line 97
    sub-int v10, v0, v2

    .line 98
    sub-int/2addr v10, v5

    .line 99
    .line 100
    .line 101
    invoke-direct {v9, v2, v10, v5}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 105
    goto :goto_2

    .line 106
    .line 107
    .line 108
    :cond_3
    invoke-virtual {p1, v2, v5}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->c(II)V

    .line 109
    .line 110
    add-int/lit8 v0, v0, -0x1

    .line 111
    goto :goto_2

    .line 112
    .line 113
    :cond_4
    :goto_3
    if-le v3, v8, :cond_7

    .line 114
    .line 115
    add-int/lit8 v3, v3, -0x1

    .line 116
    .line 117
    iget-object v7, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    .line 118
    .line 119
    aget v7, v7, v3

    .line 120
    .line 121
    and-int/lit8 v10, v7, 0xc

    .line 122
    .line 123
    if-eqz v10, :cond_6

    .line 124
    .line 125
    shr-int/lit8 v10, v7, 0x4

    .line 126
    .line 127
    .line 128
    invoke-static {v1, v10, v5}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->g(Ljava/util/Collection;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 129
    move-result-object v11

    .line 130
    .line 131
    if-nez v11, :cond_5

    .line 132
    .line 133
    new-instance v7, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    .line 134
    .line 135
    sub-int v10, v0, v2

    .line 136
    .line 137
    .line 138
    invoke-direct {v7, v3, v10, v9}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    .line 139
    .line 140
    .line 141
    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 142
    goto :goto_3

    .line 143
    .line 144
    :cond_5
    iget v11, v11, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    .line 145
    .line 146
    sub-int v11, v0, v11

    .line 147
    sub-int/2addr v11, v5

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v11, v2}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->d(II)V

    .line 151
    .line 152
    and-int/lit8 v7, v7, 0x4

    .line 153
    .line 154
    if-eqz v7, :cond_4

    .line 155
    .line 156
    iget-object v7, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v7, v10, v3}, Landroidx/recyclerview/widget/DiffUtil$Callback;->c(II)Ljava/lang/Object;

    .line 160
    move-result-object v7

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v2, v5, v7}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->a(IILjava/lang/Object;)V

    .line 164
    goto :goto_3

    .line 165
    .line 166
    .line 167
    :cond_6
    invoke-virtual {p1, v2, v5}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->b(II)V

    .line 168
    .line 169
    add-int/lit8 v0, v0, 0x1

    .line 170
    goto :goto_3

    .line 171
    .line 172
    :cond_7
    iget v2, v6, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 173
    .line 174
    iget v3, v6, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    .line 175
    .line 176
    :goto_4
    iget v7, v6, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    .line 177
    .line 178
    if-ge v9, v7, :cond_9

    .line 179
    .line 180
    iget-object v7, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    .line 181
    .line 182
    aget v7, v7, v2

    .line 183
    .line 184
    and-int/lit8 v7, v7, 0xf

    .line 185
    const/4 v8, 0x2

    .line 186
    .line 187
    if-ne v7, v8, :cond_8

    .line 188
    .line 189
    iget-object v7, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v7, v2, v3}, Landroidx/recyclerview/widget/DiffUtil$Callback;->c(II)Ljava/lang/Object;

    .line 193
    move-result-object v7

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, v2, v5, v7}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->a(IILjava/lang/Object;)V

    .line 197
    .line 198
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 199
    .line 200
    add-int/lit8 v3, v3, 0x1

    .line 201
    .line 202
    add-int/lit8 v9, v9, 0x1

    .line 203
    goto :goto_4

    .line 204
    .line 205
    :cond_9
    iget v2, v6, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 206
    .line 207
    iget v3, v6, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    .line 208
    .line 209
    add-int/lit8 v4, v4, -0x1

    .line 210
    .line 211
    goto/16 :goto_1

    .line 212
    .line 213
    .line 214
    :cond_a
    invoke-virtual {p1}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->e()V

    .line 215
    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Landroidx/recyclerview/widget/AdapterListUpdateCallback;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/AdapterListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->b(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 9
    return-void
.end method
