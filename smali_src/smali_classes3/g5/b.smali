.class public final Lg5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final bits:[I

.field private final height:I

.field private final rowSize:I

.field private final width:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p1}, Lg5/b;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iput p1, p0, Lg5/b;->width:I

    iput p2, p0, Lg5/b;->height:I

    add-int/lit8 p1, p1, 0x1f

    .line 3
    div-int/lit8 p1, p1, 0x20

    iput p1, p0, Lg5/b;->rowSize:I

    mul-int/2addr p1, p2

    .line 4
    new-array p1, p1, [I

    iput-object p1, p0, Lg5/b;->bits:[I

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Both dimensions must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(III[I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg5/b;->width:I

    iput p2, p0, Lg5/b;->height:I

    iput p3, p0, Lg5/b;->rowSize:I

    iput-object p4, p0, Lg5/b;->bits:[I

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    iget v1, p0, Lg5/b;->height:I

    .line 5
    .line 6
    iget v2, p0, Lg5/b;->width:I

    .line 7
    .line 8
    add-int/lit8 v2, v2, 0x1

    .line 9
    mul-int/2addr v1, v2

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 13
    const/4 v1, 0x0

    .line 14
    move v2, v1

    .line 15
    .line 16
    :goto_0
    iget v3, p0, Lg5/b;->height:I

    .line 17
    .line 18
    if-ge v2, v3, :cond_2

    .line 19
    move v3, v1

    .line 20
    .line 21
    :goto_1
    iget v4, p0, Lg5/b;->width:I

    .line 22
    .line 23
    if-ge v3, v4, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v3, v2}, Lg5/b;->f(II)Z

    .line 27
    move-result v4

    .line 28
    .line 29
    if-eqz v4, :cond_0

    .line 30
    move-object v4, p1

    .line 31
    goto :goto_2

    .line 32
    :cond_0
    move-object v4, p2

    .line 33
    .line 34
    .line 35
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    goto :goto_1

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    return-object p1
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lg5/b;->bits:[I

    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    .line 7
    :goto_0
    if-ge v2, v0, :cond_0

    .line 8
    .line 9
    iget-object v3, p0, Lg5/b;->bits:[I

    .line 10
    .line 11
    aput v1, v3, v2

    .line 12
    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
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
    invoke-virtual {p0}, Lg5/b;->e()Lg5/b;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public e()Lg5/b;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lg5/b;

    .line 3
    .line 4
    iget v1, p0, Lg5/b;->width:I

    .line 5
    .line 6
    iget v2, p0, Lg5/b;->height:I

    .line 7
    .line 8
    iget v3, p0, Lg5/b;->rowSize:I

    .line 9
    .line 10
    iget-object v4, p0, Lg5/b;->bits:[I

    .line 11
    .line 12
    .line 13
    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    .line 14
    move-result-object v4

    .line 15
    .line 16
    check-cast v4, [I

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1, v2, v3, v4}, Lg5/b;-><init>(III[I)V

    .line 20
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lg5/b;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    check-cast p1, Lg5/b;

    .line 9
    .line 10
    iget v0, p0, Lg5/b;->width:I

    .line 11
    .line 12
    iget v2, p1, Lg5/b;->width:I

    .line 13
    .line 14
    if-ne v0, v2, :cond_1

    .line 15
    .line 16
    iget v0, p0, Lg5/b;->height:I

    .line 17
    .line 18
    iget v2, p1, Lg5/b;->height:I

    .line 19
    .line 20
    if-ne v0, v2, :cond_1

    .line 21
    .line 22
    iget v0, p0, Lg5/b;->rowSize:I

    .line 23
    .line 24
    iget v2, p1, Lg5/b;->rowSize:I

    .line 25
    .line 26
    if-ne v0, v2, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lg5/b;->bits:[I

    .line 29
    .line 30
    iget-object p1, p1, Lg5/b;->bits:[I

    .line 31
    .line 32
    .line 33
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    .line 34
    move-result p1

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    const/4 p1, 0x1

    .line 38
    return p1

    .line 39
    :cond_1
    return v1
.end method

.method public f(II)Z
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lg5/b;->rowSize:I

    .line 3
    mul-int/2addr p2, v0

    .line 4
    .line 5
    div-int/lit8 v0, p1, 0x20

    .line 6
    add-int/2addr p2, v0

    .line 7
    .line 8
    iget-object v0, p0, Lg5/b;->bits:[I

    .line 9
    .line 10
    aget p2, v0, p2

    .line 11
    .line 12
    and-int/lit8 p1, p1, 0x1f

    .line 13
    .line 14
    ushr-int p1, p2, p1

    .line 15
    const/4 p2, 0x1

    .line 16
    and-int/2addr p1, p2

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    return p2

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lg5/b;->height:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lg5/b;->width:I

    .line 3
    .line 4
    mul-int/lit8 v1, v0, 0x1f

    .line 5
    add-int/2addr v1, v0

    .line 6
    .line 7
    mul-int/lit8 v1, v1, 0x1f

    .line 8
    .line 9
    iget v0, p0, Lg5/b;->height:I

    .line 10
    add-int/2addr v1, v0

    .line 11
    .line 12
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    .line 14
    iget v0, p0, Lg5/b;->rowSize:I

    .line 15
    add-int/2addr v1, v0

    .line 16
    .line 17
    mul-int/lit8 v1, v1, 0x1f

    .line 18
    .line 19
    iget-object v0, p0, Lg5/b;->bits:[I

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    .line 23
    move-result v0

    .line 24
    add-int/2addr v1, v0

    .line 25
    return v1
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lg5/b;->width:I

    return v0
.end method

.method public j(II)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lg5/b;->rowSize:I

    .line 3
    mul-int/2addr p2, v0

    .line 4
    .line 5
    div-int/lit8 v0, p1, 0x20

    .line 6
    add-int/2addr p2, v0

    .line 7
    .line 8
    iget-object v0, p0, Lg5/b;->bits:[I

    .line 9
    .line 10
    aget v1, v0, p2

    .line 11
    .line 12
    and-int/lit8 p1, p1, 0x1f

    .line 13
    const/4 v2, 0x1

    .line 14
    .line 15
    shl-int p1, v2, p1

    .line 16
    or-int/2addr p1, v1

    .line 17
    .line 18
    aput p1, v0, p2

    .line 19
    return-void
.end method

.method public k(IIII)V
    .locals 7

    .line 1
    .line 2
    if-ltz p2, :cond_4

    .line 3
    .line 4
    if-ltz p1, :cond_4

    .line 5
    .line 6
    if-lez p4, :cond_3

    .line 7
    .line 8
    if-lez p3, :cond_3

    .line 9
    add-int/2addr p3, p1

    .line 10
    add-int/2addr p4, p2

    .line 11
    .line 12
    iget v0, p0, Lg5/b;->height:I

    .line 13
    .line 14
    if-gt p4, v0, :cond_2

    .line 15
    .line 16
    iget v0, p0, Lg5/b;->width:I

    .line 17
    .line 18
    if-gt p3, v0, :cond_2

    .line 19
    .line 20
    :goto_0
    if-ge p2, p4, :cond_1

    .line 21
    .line 22
    iget v0, p0, Lg5/b;->rowSize:I

    .line 23
    mul-int/2addr v0, p2

    .line 24
    move v1, p1

    .line 25
    .line 26
    :goto_1
    if-ge v1, p3, :cond_0

    .line 27
    .line 28
    iget-object v2, p0, Lg5/b;->bits:[I

    .line 29
    .line 30
    div-int/lit8 v3, v1, 0x20

    .line 31
    add-int/2addr v3, v0

    .line 32
    .line 33
    aget v4, v2, v3

    .line 34
    .line 35
    and-int/lit8 v5, v1, 0x1f

    .line 36
    const/4 v6, 0x1

    .line 37
    .line 38
    shl-int v5, v6, v5

    .line 39
    or-int/2addr v4, v5

    .line 40
    .line 41
    aput v4, v2, v3

    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    goto :goto_1

    .line 45
    .line 46
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-void

    .line 49
    .line 50
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    const-string p2, "The region must fit inside the matrix"

    .line 53
    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    throw p1

    .line 57
    .line 58
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    const-string p2, "Height and width must be at least 1"

    .line 61
    .line 62
    .line 63
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    throw p1

    .line 65
    .line 66
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    const-string p2, "Left and top must be nonnegative"

    .line 69
    .line 70
    .line 71
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p1
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, "\n"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2, v0}, Lg5/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    const-string v0, "X "

    .line 3
    .line 4
    const-string v1, "  "

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Lg5/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
