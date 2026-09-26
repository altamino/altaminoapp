.class public final Landroidx/compose/ui/layout/ScaleFactor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/layout/ScaleFactor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScaleFactor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScaleFactor.kt\nandroidx/compose/ui/layout/ScaleFactor\n+ 2 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,197:1\n34#2:198\n41#2:199\n*S KotlinDebug\n*F\n+ 1 ScaleFactor.kt\nandroidx/compose/ui/layout/ScaleFactor\n*L\n51#1:198\n65#1:199\n*E\n"
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/layout/ScaleFactor$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Unspecified:J


# instance fields
.field private final packedValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/layout/ScaleFactor$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/ui/layout/ScaleFactor$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/layout/ScaleFactor;->Companion:Landroidx/compose/ui/layout/ScaleFactor$Companion;

    .line 9
    .line 10
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v0}, Landroidx/compose/ui/layout/ScaleFactorKt;->a(FF)J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    sput-wide v0, Landroidx/compose/ui/layout/ScaleFactor;->Unspecified:J

    .line 17
    return-void
.end method

.method public static a(J)J
    .locals 0

    .line 1
    return-wide p0
.end method

.method public static b(JLjava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p2, Landroidx/compose/ui/layout/ScaleFactor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Landroidx/compose/ui/layout/ScaleFactor;

    invoke-virtual {p2}, Landroidx/compose/ui/layout/ScaleFactor;->g()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final c(J)F
    .locals 2

    .line 1
    .line 2
    sget-wide v0, Landroidx/compose/ui/layout/ScaleFactor;->Unspecified:J

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
    const-string p1, "ScaleFactor is unspecified"

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

.method public static final d(J)F
    .locals 2

    .line 1
    .line 2
    sget-wide v0, Landroidx/compose/ui/layout/ScaleFactor;->Unspecified:J

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
    const-string p1, "ScaleFactor is unspecified"

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

.method public static e(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li/a;->a(J)I

    move-result p0

    return p0
.end method

.method public static f(J)Ljava/lang/String;
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
    const-string v1, "ScaleFactor("

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1}, Landroidx/compose/ui/layout/ScaleFactor;->c(J)F

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Landroidx/compose/ui/layout/ScaleFactorKt;->b(F)F

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, ", "

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-static {p0, p1}, Landroidx/compose/ui/layout/ScaleFactor;->d(J)F

    .line 30
    move-result p0

    .line 31
    .line 32
    .line 33
    invoke-static {p0}, Landroidx/compose/ui/layout/ScaleFactorKt;->b(F)F

    .line 34
    move-result p0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const/16 p0, 0x29

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/layout/ScaleFactor;->packedValue:J

    invoke-static {v0, v1, p1}, Landroidx/compose/ui/layout/ScaleFactor;->b(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/layout/ScaleFactor;->packedValue:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/layout/ScaleFactor;->packedValue:J

    invoke-static {v0, v1}, Landroidx/compose/ui/layout/ScaleFactor;->e(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/compose/ui/layout/ScaleFactor;->packedValue:J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/compose/ui/layout/ScaleFactor;->f(J)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
