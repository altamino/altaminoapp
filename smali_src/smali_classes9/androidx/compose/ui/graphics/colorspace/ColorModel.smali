.class public final Landroidx/compose/ui/graphics/colorspace/ColorModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColorModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorModel.kt\nandroidx/compose/ui/graphics/colorspace/ColorModel\n+ 2 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,89:1\n55#2:90\n48#2:91\n48#2:92\n48#2:93\n48#2:94\n*S KotlinDebug\n*F\n+ 1 ColorModel.kt\nandroidx/compose/ui/graphics/colorspace/ColorModel\n*L\n48#1:90\n57#1:91\n64#1:92\n71#1:93\n79#1:94\n*E\n"
.end annotation


# static fields
.field private static final Cmyk:J

.field public static final Companion:Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Lab:J

.field private static final Rgb:J

.field private static final Xyz:J


# instance fields
.field private final packedValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Companion:Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;

    .line 9
    const/4 v0, 0x3

    .line 10
    int-to-long v0, v0

    .line 11
    .line 12
    const/16 v2, 0x20

    .line 13
    .line 14
    shl-long v3, v0, v2

    .line 15
    const/4 v5, 0x0

    .line 16
    int-to-long v5, v5

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    const-wide v7, 0xffffffffL

    .line 22
    and-long/2addr v5, v7

    .line 23
    or-long/2addr v5, v3

    .line 24
    .line 25
    .line 26
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->d(J)J

    .line 27
    move-result-wide v5

    .line 28
    .line 29
    sput-wide v5, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Rgb:J

    .line 30
    const/4 v5, 0x1

    .line 31
    int-to-long v5, v5

    .line 32
    and-long/2addr v5, v7

    .line 33
    or-long/2addr v5, v3

    .line 34
    .line 35
    .line 36
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->d(J)J

    .line 37
    move-result-wide v5

    .line 38
    .line 39
    sput-wide v5, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Xyz:J

    .line 40
    const/4 v5, 0x2

    .line 41
    int-to-long v5, v5

    .line 42
    and-long/2addr v5, v7

    .line 43
    or-long/2addr v3, v5

    .line 44
    .line 45
    .line 46
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->d(J)J

    .line 47
    move-result-wide v3

    .line 48
    .line 49
    sput-wide v3, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Lab:J

    .line 50
    const/4 v3, 0x4

    .line 51
    int-to-long v3, v3

    .line 52
    .line 53
    shl-long v2, v3, v2

    .line 54
    and-long/2addr v0, v7

    .line 55
    or-long/2addr v0, v2

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->d(J)J

    .line 59
    move-result-wide v0

    .line 60
    .line 61
    sput-wide v0, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Cmyk:J

    .line 62
    return-void
.end method

.method public static final synthetic a()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Lab:J

    return-wide v0
.end method

.method public static final synthetic b()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Rgb:J

    return-wide v0
.end method

.method public static final synthetic c()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Xyz:J

    return-wide v0
.end method

.method public static d(J)J
    .locals 0

    .line 1
    return-wide p0
.end method

.method public static e(JLjava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p2, Landroidx/compose/ui/graphics/colorspace/ColorModel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Landroidx/compose/ui/graphics/colorspace/ColorModel;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->j()J

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

.method public static final g(J)I
    .locals 1

    .line 1
    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static h(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li/a;->a(J)I

    move-result p0

    return p0
.end method

.method public static i(J)Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-wide v0, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Rgb:J

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->f(JJ)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string p0, "Rgb"

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    sget-wide v0, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Xyz:J

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->f(JJ)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-string p0, "Xyz"

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    sget-wide v0, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Lab:J

    .line 25
    .line 26
    .line 27
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->f(JJ)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    const-string p0, "Lab"

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_2
    sget-wide v0, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Cmyk:J

    .line 36
    .line 37
    .line 38
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->f(JJ)Z

    .line 39
    move-result p0

    .line 40
    .line 41
    if-eqz p0, :cond_3

    .line 42
    .line 43
    const-string p0, "Cmyk"

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_3
    const-string p0, "Unknown"

    .line 47
    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/graphics/colorspace/ColorModel;->packedValue:J

    invoke-static {v0, v1, p1}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->e(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/graphics/colorspace/ColorModel;->packedValue:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->h(J)I

    move-result v0

    return v0
.end method

.method public final synthetic j()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/colorspace/ColorModel;->packedValue:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/compose/ui/graphics/colorspace/ColorModel;->packedValue:J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->i(J)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
