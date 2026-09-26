.class public final Landroidx/compose/foundation/layout/AndroidFlingSpline$FlingResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/layout/AndroidFlingSpline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlingResult"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWindowInsetsConnection.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WindowInsetsConnection.android.kt\nandroidx/compose/foundation/layout/AndroidFlingSpline$FlingResult\n+ 2 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,708:1\n34#2:709\n41#2:710\n*S KotlinDebug\n*F\n+ 1 WindowInsetsConnection.android.kt\nandroidx/compose/foundation/layout/AndroidFlingSpline$FlingResult\n*L\n701#1:709\n706#1:710\n*E\n"
.end annotation


# instance fields
.field private final packedValue:J


# direct methods
.method public static a(J)J
    .locals 0

    .line 1
    return-wide p0
.end method

.method public static b(JLjava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p2, Landroidx/compose/foundation/layout/AndroidFlingSpline$FlingResult;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Landroidx/compose/foundation/layout/AndroidFlingSpline$FlingResult;

    invoke-virtual {p2}, Landroidx/compose/foundation/layout/AndroidFlingSpline$FlingResult;->g()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final c(J)F
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lkotlin/jvm/internal/m;->INSTANCE:Lkotlin/jvm/internal/m;

    .line 3
    .line 4
    const/16 v0, 0x20

    .line 5
    shr-long/2addr p0, v0

    .line 6
    long-to-int p0, p0

    .line 7
    .line 8
    .line 9
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static final d(J)F
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lkotlin/jvm/internal/m;->INSTANCE:Lkotlin/jvm/internal/m;

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    const-wide v0, 0xffffffffL

    .line 8
    and-long/2addr p0, v0

    .line 9
    long-to-int p0, p0

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public static e(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li/a;->a(J)I

    move-result p0

    return p0
.end method

.method public static f(J)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlingResult(packedValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/layout/AndroidFlingSpline$FlingResult;->packedValue:J

    invoke-static {v0, v1, p1}, Landroidx/compose/foundation/layout/AndroidFlingSpline$FlingResult;->b(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/layout/AndroidFlingSpline$FlingResult;->packedValue:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/layout/AndroidFlingSpline$FlingResult;->packedValue:J

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/AndroidFlingSpline$FlingResult;->e(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/layout/AndroidFlingSpline$FlingResult;->packedValue:J

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/AndroidFlingSpline$FlingResult;->f(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
