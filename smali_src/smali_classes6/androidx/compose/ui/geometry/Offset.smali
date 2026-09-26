.class public final Landroidx/compose/ui/geometry/Offset;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/geometry/Offset$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOffset.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Offset.kt\nandroidx/compose/ui/geometry/Offset\n+ 2 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,266:1\n34#2:267\n41#2:268\n*S KotlinDebug\n*F\n+ 1 Offset.kt\nandroidx/compose/ui/geometry/Offset\n*L\n70#1:267\n80#1:268\n*E\n"
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/geometry/Offset$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Infinite:J

.field private static final Unspecified:J

.field private static final Zero:J


# instance fields
.field private final packedValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/geometry/Offset$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/ui/geometry/Offset$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v0}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 13
    move-result-wide v0

    .line 14
    .line 15
    sput-wide v0, Landroidx/compose/ui/geometry/Offset;->Zero:J

    .line 16
    .line 17
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v0}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 21
    move-result-wide v0

    .line 22
    .line 23
    sput-wide v0, Landroidx/compose/ui/geometry/Offset;->Infinite:J

    .line 24
    .line 25
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v0}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 29
    move-result-wide v0

    .line 30
    .line 31
    sput-wide v0, Landroidx/compose/ui/geometry/Offset;->Unspecified:J

    .line 32
    return-void
.end method

.method private synthetic constructor <init>(J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-wide p1, p0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 6
    return-void
.end method

.method public static final synthetic a()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/geometry/Offset;->Infinite:J

    return-wide v0
.end method

.method public static final synthetic b()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/geometry/Offset;->Unspecified:J

    return-wide v0
.end method

.method public static final synthetic c()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/geometry/Offset;->Zero:J

    return-wide v0
.end method

.method public static final synthetic d(J)Landroidx/compose/ui/geometry/Offset;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    return-object v0
.end method

.method public static final e(J)F
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final f(J)F
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static g(J)J
    .locals 0

    .line 1
    return-wide p0
.end method

.method public static final h(JF)J
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 4
    move-result v0

    .line 5
    div-float/2addr v0, p2

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 9
    move-result p0

    .line 10
    div-float/2addr p0, p2

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p0}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 14
    move-result-wide p0

    .line 15
    return-wide p0
.end method

.method public static i(JLjava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p2, Landroidx/compose/ui/geometry/Offset;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Offset;->u()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final j(JJ)Z
    .locals 0

    .line 1
    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final k(J)F
    .locals 2
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 8
    move-result v1

    .line 9
    mul-float/2addr v0, v1

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 13
    move-result v1

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 17
    move-result p0

    .line 18
    mul-float/2addr v1, p0

    .line 19
    add-float/2addr v0, v1

    .line 20
    float-to-double p0, v0

    .line 21
    .line 22
    .line 23
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    .line 24
    move-result-wide p0

    .line 25
    double-to-float p0, p0

    .line 26
    return p0
.end method

.method public static final l(J)F
    .locals 2
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 8
    move-result v1

    .line 9
    mul-float/2addr v0, v1

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 13
    move-result v1

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 17
    move-result p0

    .line 18
    mul-float/2addr v1, p0

    .line 19
    add-float/2addr v0, v1

    .line 20
    return v0
.end method

.method public static final m(J)F
    .locals 2

    .line 1
    .line 2
    sget-wide v0, Landroidx/compose/ui/geometry/Offset;->Unspecified:J

    .line 3
    .line 4
    cmp-long v0, p0, v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lkotlin/jvm/internal/m;->INSTANCE:Lkotlin/jvm/internal/m;

    .line 9
    .line 10
    const/16 v0, 0x20

    .line 11
    shr-long/2addr p0, v0

    .line 12
    long-to-int p0, p0

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string p1, "Offset is unspecified"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p0
.end method

.method public static final n(J)F
    .locals 2

    .line 1
    .line 2
    sget-wide v0, Landroidx/compose/ui/geometry/Offset;->Unspecified:J

    .line 3
    .line 4
    cmp-long v0, p0, v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lkotlin/jvm/internal/m;->INSTANCE:Lkotlin/jvm/internal/m;

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const-wide v0, 0xffffffffL

    .line 14
    and-long/2addr p0, v0

    .line 15
    long-to-int p0, p0

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 19
    move-result p0

    .line 20
    return p0

    .line 21
    .line 22
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string p1, "Offset is unspecified"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p0
.end method

.method public static o(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li/a;->a(J)I

    move-result p0

    return p0
.end method

.method public static final p(J)Z
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 14
    move-result p0

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 18
    move-result p0

    .line 19
    .line 20
    if-nez p0, :cond_0

    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    .line 24
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string p1, "Offset argument contained a NaN value."

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p0
.end method

.method public static final q(JJ)J
    .locals 2
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 8
    move-result v1

    .line 9
    sub-float/2addr v0, v1

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 13
    move-result p0

    .line 14
    .line 15
    .line 16
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 17
    move-result p1

    .line 18
    sub-float/2addr p0, p1

    .line 19
    .line 20
    .line 21
    invoke-static {v0, p0}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 22
    move-result-wide p0

    .line 23
    return-wide p0
.end method

.method public static final r(JJ)J
    .locals 2
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 8
    move-result v1

    .line 9
    add-float/2addr v0, v1

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 13
    move-result p0

    .line 14
    .line 15
    .line 16
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 17
    move-result p1

    .line 18
    add-float/2addr p0, p1

    .line 19
    .line 20
    .line 21
    invoke-static {v0, p0}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 22
    move-result-wide p0

    .line 23
    return-wide p0
.end method

.method public static final s(JF)J
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 4
    move-result v0

    .line 5
    mul-float/2addr v0, p2

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 9
    move-result p0

    .line 10
    mul-float/2addr p0, p2

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p0}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 14
    move-result-wide p0

    .line 15
    return-wide p0
.end method

.method public static t(J)Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/OffsetKt;->c(J)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    const-string v1, "Offset("

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/GeometryUtilsKt;->a(FI)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, ", "

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 37
    move-result p0

    .line 38
    .line 39
    .line 40
    invoke-static {p0, v2}, Landroidx/compose/ui/geometry/GeometryUtilsKt;->a(FI)Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const/16 p0, 0x29

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    goto :goto_0

    .line 55
    .line 56
    :cond_0
    const-string p0, "Offset.Unspecified"

    .line 57
    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-static {v0, v1, p1}, Landroidx/compose/ui/geometry/Offset;->i(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->o(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->t(J)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final synthetic u()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    return-wide v0
.end method
