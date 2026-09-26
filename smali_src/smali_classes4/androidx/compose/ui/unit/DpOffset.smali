.class public final Landroidx/compose/ui/unit/DpOffset;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/unit/DpOffset$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Dp.kt\nandroidx/compose/ui/unit/DpOffset\n+ 2 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 Dp.kt\nandroidx/compose/ui/unit/Dp\n*L\n1#1,558:1\n34#2:559\n41#2:561\n175#3:560\n175#3:562\n338#3:565\n155#3:566\n59#4:563\n52#4:564\n*S KotlinDebug\n*F\n+ 1 Dp.kt\nandroidx/compose/ui/unit/DpOffset\n*L\n274#1:559\n287#1:561\n274#1:560\n287#1:562\n312#1:565\n322#1:566\n301#1:563\n308#1:564\n*E\n"
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/unit/DpOffset$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Unspecified:J

.field private static final Zero:J


# instance fields
.field private final packedValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/unit/DpOffset$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/ui/unit/DpOffset$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/unit/DpOffset;->Companion:Landroidx/compose/ui/unit/DpOffset$Companion;

    .line 9
    const/4 v0, 0x0

    .line 10
    int-to-float v0, v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 18
    move-result v0

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v0}, Landroidx/compose/ui/unit/DpKt;->a(FF)J

    .line 22
    move-result-wide v0

    .line 23
    .line 24
    sput-wide v0, Landroidx/compose/ui/unit/DpOffset;->Zero:J

    .line 25
    .line 26
    sget-object v0, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    .line 30
    move-result v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    .line 34
    move-result v0

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v0}, Landroidx/compose/ui/unit/DpKt;->a(FF)J

    .line 38
    move-result-wide v0

    .line 39
    .line 40
    sput-wide v0, Landroidx/compose/ui/unit/DpOffset;->Unspecified:J

    .line 41
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
    iput-wide p1, p0, Landroidx/compose/ui/unit/DpOffset;->packedValue:J

    .line 6
    return-void
.end method

.method public static final synthetic a()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/unit/DpOffset;->Unspecified:J

    return-wide v0
.end method

.method public static final synthetic b()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/unit/DpOffset;->Zero:J

    return-wide v0
.end method

.method public static final synthetic c(J)Landroidx/compose/ui/unit/DpOffset;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/unit/DpOffset;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/DpOffset;-><init>(J)V

    return-object v0
.end method

.method public static d(J)J
    .locals 0

    .line 1
    return-wide p0
.end method

.method public static e(JLjava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p2, Landroidx/compose/ui/unit/DpOffset;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Landroidx/compose/ui/unit/DpOffset;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/DpOffset;->k()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final f(JJ)Z
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

.method public static final g(J)F
    .locals 2

    .line 1
    .line 2
    sget-wide v0, Landroidx/compose/ui/unit/DpOffset;->Unspecified:J

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
    .line 18
    .line 19
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    .line 23
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string p1, "DpOffset is unspecified"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p0
.end method

.method public static final h(J)F
    .locals 2

    .line 1
    .line 2
    sget-wide v0, Landroidx/compose/ui/unit/DpOffset;->Unspecified:J

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
    .line 21
    .line 22
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    .line 26
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string p1, "DpOffset is unspecified"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p0
.end method

.method public static i(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li/a;->a(J)I

    move-result p0

    return p0
.end method

.method public static j(J)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/unit/DpOffset;->Companion:Landroidx/compose/ui/unit/DpOffset$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/unit/DpOffset$Companion;->a()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    cmp-long v0, p0, v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    const/16 v1, 0x28

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/DpOffset;->g(J)F

    .line 24
    move-result v1

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->k(F)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v1, ", "

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/DpOffset;->h(J)F

    .line 40
    move-result p0

    .line 41
    .line 42
    .line 43
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->k(F)Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const/16 p0, 0x29

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_0
    const-string p0, "DpOffset.Unspecified"

    .line 60
    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/unit/DpOffset;->packedValue:J

    invoke-static {v0, v1, p1}, Landroidx/compose/ui/unit/DpOffset;->e(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/unit/DpOffset;->packedValue:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/DpOffset;->i(J)I

    move-result v0

    return v0
.end method

.method public final synthetic k()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/unit/DpOffset;->packedValue:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/compose/ui/unit/DpOffset;->packedValue:J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/DpOffset;->j(J)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
