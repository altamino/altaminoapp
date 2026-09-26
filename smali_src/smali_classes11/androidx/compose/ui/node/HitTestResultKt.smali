.class public final Landroidx/compose/ui/node/HitTestResultKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static final a(FZ)J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 4
    move-result p0

    .line 5
    int-to-long v0, p0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-wide/16 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    const-wide/16 p0, 0x0

    .line 13
    .line 14
    :goto_0
    const/16 v2, 0x20

    .line 15
    shl-long/2addr v0, v2

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    const-wide v2, 0xffffffffL

    .line 21
    and-long/2addr p0, v2

    .line 22
    or-long/2addr p0, v0

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1}, Landroidx/compose/ui/node/DistanceAndInLayer;->b(J)J

    .line 26
    move-result-wide p0

    .line 27
    return-wide p0
.end method

.method public static final synthetic b(FZ)J
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/node/HitTestResultKt;->a(FZ)J

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method
