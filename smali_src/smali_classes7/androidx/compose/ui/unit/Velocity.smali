.class public final Landroidx/compose/ui/unit/Velocity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/unit/Velocity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVelocity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Velocity.kt\nandroidx/compose/ui/unit/Velocity\n+ 2 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,144:1\n34#2:145\n41#2:146\n*S KotlinDebug\n*F\n+ 1 Velocity.kt\nandroidx/compose/ui/unit/Velocity\n*L\n45#1:145\n52#1:146\n*E\n"
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/unit/Velocity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Zero:J


# instance fields
.field private final packedValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/unit/Velocity$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/ui/unit/Velocity$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v0}, Landroidx/compose/ui/unit/VelocityKt;->a(FF)J

    .line 13
    move-result-wide v0

    .line 14
    .line 15
    sput-wide v0, Landroidx/compose/ui/unit/Velocity;->Zero:J

    .line 16
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
    iput-wide p1, p0, Landroidx/compose/ui/unit/Velocity;->packedValue:J

    .line 6
    return-void
.end method

.method public static final synthetic a()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/unit/Velocity;->Zero:J

    return-wide v0
.end method

.method public static final synthetic b(J)Landroidx/compose/ui/unit/Velocity;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/unit/Velocity;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/Velocity;-><init>(J)V

    return-object v0
.end method

.method public static c(J)J
    .locals 0

    .line 1
    return-wide p0
.end method

.method public static final d(JFF)J
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/VelocityKt;->a(FF)J

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static synthetic e(JFFILjava/lang/Object;)J
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p5, p4, 0x1

    .line 3
    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Velocity;->h(J)F

    .line 8
    move-result p2

    .line 9
    .line 10
    :cond_0
    and-int/lit8 p4, p4, 0x2

    .line 11
    .line 12
    if-eqz p4, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Velocity;->i(J)F

    .line 16
    move-result p3

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/unit/Velocity;->d(JFF)J

    .line 20
    move-result-wide p0

    .line 21
    return-wide p0
.end method

.method public static f(JLjava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p2, Landroidx/compose/ui/unit/Velocity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Landroidx/compose/ui/unit/Velocity;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/Velocity;->n()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final g(JJ)Z
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

.method public static final h(J)F
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

.method public static final i(J)F
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

.method public static j(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li/a;->a(J)I

    move-result p0

    return p0
.end method

.method public static final k(JJ)J
    .locals 2
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Velocity;->h(J)F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Velocity;->h(J)F

    .line 8
    move-result v1

    .line 9
    sub-float/2addr v0, v1

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Velocity;->i(J)F

    .line 13
    move-result p0

    .line 14
    .line 15
    .line 16
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Velocity;->i(J)F

    .line 17
    move-result p1

    .line 18
    sub-float/2addr p0, p1

    .line 19
    .line 20
    .line 21
    invoke-static {v0, p0}, Landroidx/compose/ui/unit/VelocityKt;->a(FF)J

    .line 22
    move-result-wide p0

    .line 23
    return-wide p0
.end method

.method public static final l(JJ)J
    .locals 2
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Velocity;->h(J)F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Velocity;->h(J)F

    .line 8
    move-result v1

    .line 9
    add-float/2addr v0, v1

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Velocity;->i(J)F

    .line 13
    move-result p0

    .line 14
    .line 15
    .line 16
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Velocity;->i(J)F

    .line 17
    move-result p1

    .line 18
    add-float/2addr p0, p1

    .line 19
    .line 20
    .line 21
    invoke-static {v0, p0}, Landroidx/compose/ui/unit/VelocityKt;->a(FF)J

    .line 22
    move-result-wide p0

    .line 23
    return-wide p0
.end method

.method public static m(J)Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const/16 v1, 0x28

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Velocity;->h(J)F

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, ", "

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Velocity;->i(J)F

    .line 26
    move-result p0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string p0, ") px/sec"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/unit/Velocity;->packedValue:J

    invoke-static {v0, v1, p1}, Landroidx/compose/ui/unit/Velocity;->f(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/unit/Velocity;->packedValue:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Velocity;->j(J)I

    move-result v0

    return v0
.end method

.method public final synthetic n()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/unit/Velocity;->packedValue:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/compose/ui/unit/Velocity;->packedValue:J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Velocity;->m(J)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
