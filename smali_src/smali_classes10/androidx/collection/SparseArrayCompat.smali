.class public Landroidx/collection/SparseArrayCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[I

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Landroidx/collection/ContainerHelpers;->EMPTY_INTS:[I

    iput-object p1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 4
    sget-object p1, Landroidx/collection/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Landroidx/collection/ContainerHelpers;->e(I)I

    move-result p1

    .line 6
    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 7
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private i()V
    .locals 8

    .line 1
    .line 2
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 7
    const/4 v3, 0x0

    .line 8
    move v4, v3

    .line 9
    move v5, v4

    .line 10
    .line 11
    :goto_0
    if-ge v4, v0, :cond_2

    .line 12
    .line 13
    aget-object v6, v2, v4

    .line 14
    .line 15
    sget-object v7, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    .line 16
    .line 17
    if-eq v6, v7, :cond_1

    .line 18
    .line 19
    if-eq v4, v5, :cond_0

    .line 20
    .line 21
    aget v7, v1, v4

    .line 22
    .line 23
    aput v7, v1, v5

    .line 24
    .line 25
    aput-object v6, v2, v5

    .line 26
    const/4 v6, 0x0

    .line 27
    .line 28
    aput-object v6, v2, v4

    .line 29
    .line 30
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 31
    .line 32
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_2
    iput-boolean v3, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    .line 36
    .line 37
    iput v5, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 38
    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 7
    .line 8
    add-int/lit8 v2, v0, -0x1

    .line 9
    .line 10
    aget v1, v1, v2

    .line 11
    .line 12
    if-gt p1, v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Landroidx/collection/SparseArrayCompat;->o(ILjava/lang/Object;)V

    .line 16
    return-void

    .line 17
    .line 18
    :cond_0
    iget-boolean v1, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 23
    array-length v1, v1

    .line 24
    .line 25
    if-lt v0, v1, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Landroidx/collection/SparseArrayCompat;->i()V

    .line 29
    .line 30
    :cond_1
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 33
    array-length v1, v1

    .line 34
    .line 35
    if-lt v0, v1, :cond_2

    .line 36
    .line 37
    add-int/lit8 v1, v0, 0x1

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Landroidx/collection/ContainerHelpers;->e(I)I

    .line 41
    move-result v1

    .line 42
    .line 43
    new-array v2, v1, [I

    .line 44
    .line 45
    new-array v1, v1, [Ljava/lang/Object;

    .line 46
    .line 47
    iget-object v3, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 48
    array-length v4, v3

    .line 49
    const/4 v5, 0x0

    .line 50
    .line 51
    .line 52
    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    iget-object v3, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 55
    array-length v4, v3

    .line 56
    .line 57
    .line 58
    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    .line 60
    iput-object v2, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 61
    .line 62
    iput-object v1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 63
    .line 64
    :cond_2
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 65
    .line 66
    aput p1, v1, v0

    .line 67
    .line 68
    iget-object p1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 69
    .line 70
    aput-object p2, p1, v0

    .line 71
    .line 72
    add-int/lit8 v0, v0, 0x1

    .line 73
    .line 74
    iput v0, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 75
    return-void
.end method

.method public c()V
    .locals 5

    .line 1
    .line 2
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    .line 8
    :goto_0
    if-ge v3, v0, :cond_0

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    aput-object v4, v1, v3

    .line 12
    .line 13
    add-int/lit8 v3, v3, 0x1

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    iput v2, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 17
    .line 18
    iput-boolean v2, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    .line 19
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->e()Landroidx/collection/SparseArrayCompat;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public e()Landroidx/collection/SparseArrayCompat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroidx/collection/SparseArrayCompat;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    check-cast v1, [I

    .line 15
    .line 16
    iput-object v1, v0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, [Ljava/lang/Object;

    .line 25
    .line 26
    iput-object v1, v0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return-object v0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .line 30
    new-instance v1, Ljava/lang/AssertionError;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 34
    throw v1
.end method

.method public f(I)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/collection/SparseArrayCompat;->l(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-ltz p1, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public g(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/collection/SparseArrayCompat;->m(Ljava/lang/Object;)I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-ltz p1, :cond_0

    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public j(I)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/collection/SparseArrayCompat;->k(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public k(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 3
    .line 4
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Landroidx/collection/ContainerHelpers;->a([III)I

    .line 8
    move-result p1

    .line 9
    .line 10
    if-ltz p1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 13
    .line 14
    aget-object p1, v0, p1

    .line 15
    .line 16
    sget-object v0, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    .line 17
    .line 18
    if-ne p1, v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-object p1

    .line 21
    :cond_1
    :goto_0
    return-object p2
.end method

.method public l(I)I
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/collection/SparseArrayCompat;->i()V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 10
    .line 11
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1, p1}, Landroidx/collection/ContainerHelpers;->a([III)I

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public m(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/collection/SparseArrayCompat;->i()V

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    .line 10
    :goto_0
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 11
    .line 12
    if-ge v0, v1, :cond_2

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 15
    .line 16
    aget-object v1, v1, v0

    .line 17
    .line 18
    if-ne v1, p1, :cond_1

    .line 19
    return v0

    .line 20
    .line 21
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    const/4 p1, -0x1

    .line 24
    return p1
.end method

.method public n(I)I
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/collection/SparseArrayCompat;->i()V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 10
    .line 11
    aget p1, v0, p1

    .line 12
    return p1
.end method

.method public o(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 3
    .line 4
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Landroidx/collection/ContainerHelpers;->a([III)I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 13
    .line 14
    aput-object p2, p1, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    not-int v0, v0

    .line 17
    .line 18
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 19
    .line 20
    if-ge v0, v1, :cond_1

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 23
    .line 24
    aget-object v3, v2, v0

    .line 25
    .line 26
    sget-object v4, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    .line 27
    .line 28
    if-ne v3, v4, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 31
    .line 32
    aput p1, v1, v0

    .line 33
    .line 34
    aput-object p2, v2, v0

    .line 35
    return-void

    .line 36
    .line 37
    :cond_1
    iget-boolean v2, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 42
    array-length v2, v2

    .line 43
    .line 44
    if-lt v1, v2, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Landroidx/collection/SparseArrayCompat;->i()V

    .line 48
    .line 49
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 50
    .line 51
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v1, p1}, Landroidx/collection/ContainerHelpers;->a([III)I

    .line 55
    move-result v0

    .line 56
    not-int v0, v0

    .line 57
    .line 58
    :cond_2
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 59
    .line 60
    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 61
    array-length v2, v2

    .line 62
    .line 63
    if-lt v1, v2, :cond_3

    .line 64
    .line 65
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    .line 68
    invoke-static {v1}, Landroidx/collection/ContainerHelpers;->e(I)I

    .line 69
    move-result v1

    .line 70
    .line 71
    new-array v2, v1, [I

    .line 72
    .line 73
    new-array v1, v1, [Ljava/lang/Object;

    .line 74
    .line 75
    iget-object v3, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 76
    array-length v4, v3

    .line 77
    const/4 v5, 0x0

    .line 78
    .line 79
    .line 80
    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    .line 82
    iget-object v3, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 83
    array-length v4, v3

    .line 84
    .line 85
    .line 86
    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    .line 88
    iput-object v2, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 89
    .line 90
    iput-object v1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 91
    .line 92
    :cond_3
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 93
    .line 94
    sub-int v2, v1, v0

    .line 95
    .line 96
    if-eqz v2, :cond_4

    .line 97
    .line 98
    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 99
    .line 100
    add-int/lit8 v3, v0, 0x1

    .line 101
    sub-int/2addr v1, v0

    .line 102
    .line 103
    .line 104
    invoke-static {v2, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    .line 106
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 107
    .line 108
    iget v2, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 109
    sub-int/2addr v2, v0

    .line 110
    .line 111
    .line 112
    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    .line 114
    :cond_4
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->mKeys:[I

    .line 115
    .line 116
    aput p1, v1, v0

    .line 117
    .line 118
    iget-object p1, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 119
    .line 120
    aput-object p2, p1, v0

    .line 121
    .line 122
    iget p1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 123
    .line 124
    add-int/lit8 p1, p1, 0x1

    .line 125
    .line 126
    iput p1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 127
    :goto_0
    return-void
.end method

.method public p(I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 3
    .line 4
    aget-object v1, v0, p1

    .line 5
    .line 6
    sget-object v2, Landroidx/collection/SparseArrayCompat;->DELETED:Ljava/lang/Object;

    .line 7
    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    aput-object v2, v0, p1

    .line 11
    const/4 p1, 0x1

    .line 12
    .line 13
    iput-boolean p1, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    .line 14
    :cond_0
    return-void
.end method

.method public q(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/collection/SparseArrayCompat;->l(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-ltz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 9
    .line 10
    aget-object v1, v0, p1

    .line 11
    .line 12
    aput-object p2, v0, p1

    .line 13
    return-object v1

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return-object p1
.end method

.method public r()I
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/collection/SparseArrayCompat;->i()V

    .line 8
    .line 9
    :cond_0
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 10
    return v0
.end method

.method public s(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->mGarbage:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/collection/SparseArrayCompat;->i()V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->mValues:[Ljava/lang/Object;

    .line 10
    .line 11
    aget-object p1, v0, p1

    .line 12
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->r()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-gtz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "{}"

    .line 9
    return-object v0

    .line 10
    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 14
    .line 15
    mul-int/lit8 v1, v1, 0x1c

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 19
    .line 20
    const/16 v1, 0x7b

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    :goto_0
    iget v2, p0, Landroidx/collection/SparseArrayCompat;->mSize:I

    .line 27
    .line 28
    if-ge v1, v2, :cond_3

    .line 29
    .line 30
    if-lez v1, :cond_1

    .line 31
    .line 32
    const-string v2, ", "

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0, v1}, Landroidx/collection/SparseArrayCompat;->n(I)I

    .line 39
    move-result v2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const/16 v2, 0x3d

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v1}, Landroidx/collection/SparseArrayCompat;->s(I)Ljava/lang/Object;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    if-eq v2, p0, :cond_2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    goto :goto_1

    .line 58
    .line 59
    :cond_2
    const-string v2, "(this Map)"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_3
    const/16 v1, 0x7d

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    return-object v0
.end method
