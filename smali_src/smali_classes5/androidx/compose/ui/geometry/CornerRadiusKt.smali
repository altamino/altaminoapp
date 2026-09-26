.class public final Landroidx/compose/ui/geometry/CornerRadiusKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCornerRadius.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CornerRadius.kt\nandroidx/compose/ui/geometry/CornerRadiusKt\n+ 2 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,164:1\n25#2,3:165\n*S KotlinDebug\n*F\n+ 1 CornerRadius.kt\nandroidx/compose/ui/geometry/CornerRadiusKt\n*L\n33#1:165,3\n*E\n"
.end annotation


# direct methods
.method public static final a(FF)J
    .locals 4
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

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
    .line 8
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 9
    move-result p0

    .line 10
    int-to-long p0, p0

    .line 11
    .line 12
    const/16 v2, 0x20

    .line 13
    shl-long/2addr v0, v2

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const-wide v2, 0xffffffffL

    .line 19
    and-long/2addr p0, v2

    .line 20
    or-long/2addr p0, v0

    .line 21
    .line 22
    .line 23
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/CornerRadius;->b(J)J

    .line 24
    move-result-wide p0

    .line 25
    return-wide p0
.end method

.method public static synthetic b(FFILjava/lang/Object;)J
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p2, p2, 0x2

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    move p1, p0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/CornerRadiusKt;->a(FF)J

    .line 9
    move-result-wide p0

    .line 10
    return-wide p0
.end method
