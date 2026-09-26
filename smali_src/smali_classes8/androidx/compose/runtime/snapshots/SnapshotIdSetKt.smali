.class public final Landroidx/compose/runtime/snapshots/SnapshotIdSetKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(J)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotIdSetKt;->c(J)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final b([II)I
    .locals 4
    .param p0    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    array-length v0, p0

    .line 7
    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    :goto_0
    if-gt v1, v0, :cond_2

    .line 12
    .line 13
    add-int v2, v1, v0

    .line 14
    .line 15
    ushr-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    aget v3, p0, v2

    .line 18
    .line 19
    if-le p1, v3, :cond_0

    .line 20
    .line 21
    add-int/lit8 v1, v2, 0x1

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    if-ge p1, v3, :cond_1

    .line 25
    .line 26
    add-int/lit8 v0, v2, -0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return v2

    .line 29
    .line 30
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 31
    neg-int p0, v1

    .line 32
    return p0
.end method

.method private static final c(J)I
    .locals 6

    .line 1
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/32 v4, 0xffff

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    shr-long/2addr p0, v1

    :cond_1
    const-wide/16 v4, 0xff

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    shr-long/2addr p0, v1

    :cond_2
    const-wide/16 v4, 0xf

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    shr-long/2addr p0, v1

    :cond_3
    const-wide/16 v4, 0x1

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_4

    return v0

    :cond_4
    const-wide/16 v4, 0x2

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_5
    const-wide/16 v4, 0x4

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_6

    add-int/lit8 v0, v0, 0x2

    return v0

    :cond_6
    const-wide/16 v4, 0x8

    and-long/2addr p0, v4

    cmp-long p0, p0, v2

    if-eqz p0, :cond_7

    add-int/lit8 v0, v0, 0x3

    return v0

    :cond_7
    const/4 p0, -0x1

    return p0
.end method
