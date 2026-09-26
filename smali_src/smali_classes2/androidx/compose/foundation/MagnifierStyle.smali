.class public final Landroidx/compose/foundation/MagnifierStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
.end annotation

.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/MagnifierStyle$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/foundation/MagnifierStyle$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Default:Landroidx/compose/foundation/MagnifierStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TextDefault:Landroidx/compose/foundation/MagnifierStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final clippingEnabled:Z

.field private final cornerRadius:F

.field private final elevation:F

.field private final fishEyeEnabled:Z

.field private final size:J

.field private final useTextDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/foundation/MagnifierStyle$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/foundation/MagnifierStyle$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/foundation/MagnifierStyle;->Companion:Landroidx/compose/foundation/MagnifierStyle$Companion;

    .line 9
    .line 10
    new-instance v0, Landroidx/compose/foundation/MagnifierStyle;

    .line 11
    .line 12
    const-wide/16 v3, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x0

    .line 17
    .line 18
    const/16 v9, 0x1f

    .line 19
    const/4 v10, 0x0

    .line 20
    move-object v2, v0

    .line 21
    .line 22
    .line 23
    invoke-direct/range {v2 .. v10}, Landroidx/compose/foundation/MagnifierStyle;-><init>(JFFZZILkotlin/jvm/internal/k;)V

    .line 24
    .line 25
    sput-object v0, Landroidx/compose/foundation/MagnifierStyle;->Default:Landroidx/compose/foundation/MagnifierStyle;

    .line 26
    .line 27
    new-instance v1, Landroidx/compose/foundation/MagnifierStyle;

    .line 28
    const/4 v12, 0x1

    .line 29
    .line 30
    iget-wide v13, v0, Landroidx/compose/foundation/MagnifierStyle;->size:J

    .line 31
    .line 32
    iget v15, v0, Landroidx/compose/foundation/MagnifierStyle;->cornerRadius:F

    .line 33
    .line 34
    iget v2, v0, Landroidx/compose/foundation/MagnifierStyle;->elevation:F

    .line 35
    .line 36
    iget-boolean v3, v0, Landroidx/compose/foundation/MagnifierStyle;->clippingEnabled:Z

    .line 37
    .line 38
    iget-boolean v0, v0, Landroidx/compose/foundation/MagnifierStyle;->fishEyeEnabled:Z

    .line 39
    .line 40
    const/16 v19, 0x0

    .line 41
    move-object v11, v1

    .line 42
    .line 43
    move/from16 v16, v2

    .line 44
    .line 45
    move/from16 v17, v3

    .line 46
    .line 47
    move/from16 v18, v0

    .line 48
    .line 49
    .line 50
    invoke-direct/range {v11 .. v19}, Landroidx/compose/foundation/MagnifierStyle;-><init>(ZJFFZZLkotlin/jvm/internal/k;)V

    .line 51
    .line 52
    sput-object v1, Landroidx/compose/foundation/MagnifierStyle;->TextDefault:Landroidx/compose/foundation/MagnifierStyle;

    .line 53
    return-void
.end method

.method private constructor <init>(JFFZZ)V
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 8
    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/MagnifierStyle;-><init>(ZJFFZZLkotlin/jvm/internal/k;)V

    return-void
.end method

.method public synthetic constructor <init>(JFFZZILkotlin/jvm/internal/k;)V
    .locals 7

    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Landroidx/compose/ui/unit/DpSize;->Companion:Landroidx/compose/ui/unit/DpSize$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/DpSize$Companion;->a()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    and-int/lit8 v2, p7, 0x2

    if-eqz v2, :cond_1

    .line 5
    sget-object v2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    move-result v2

    goto :goto_1

    :cond_1
    move v2, p3

    :goto_1
    and-int/lit8 v3, p7, 0x4

    if-eqz v3, :cond_2

    .line 6
    sget-object v3, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/unit/Dp$Companion;->b()F

    move-result v3

    goto :goto_2

    :cond_2
    move v3, p4

    :goto_2
    and-int/lit8 v4, p7, 0x8

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    move v4, p5

    :goto_3
    and-int/lit8 v5, p7, 0x10

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    goto :goto_4

    :cond_4
    move v5, p6

    :goto_4
    const/4 v6, 0x0

    move-object p1, p0

    move-wide p2, v0

    move p4, v2

    move p5, v3

    move p6, v4

    move p7, v5

    move-object p8, v6

    .line 7
    invoke-direct/range {p1 .. p8}, Landroidx/compose/foundation/MagnifierStyle;-><init>(JFFZZLkotlin/jvm/internal/k;)V

    return-void
.end method

.method public synthetic constructor <init>(JFFZZLkotlin/jvm/internal/k;)V
    .locals 0
    .annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p6}, Landroidx/compose/foundation/MagnifierStyle;-><init>(JFFZZ)V

    return-void
.end method

.method private constructor <init>(ZJFFZZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/foundation/MagnifierStyle;->useTextDefault:Z

    iput-wide p2, p0, Landroidx/compose/foundation/MagnifierStyle;->size:J

    iput p4, p0, Landroidx/compose/foundation/MagnifierStyle;->cornerRadius:F

    iput p5, p0, Landroidx/compose/foundation/MagnifierStyle;->elevation:F

    iput-boolean p6, p0, Landroidx/compose/foundation/MagnifierStyle;->clippingEnabled:Z

    iput-boolean p7, p0, Landroidx/compose/foundation/MagnifierStyle;->fishEyeEnabled:Z

    return-void
.end method

.method public synthetic constructor <init>(ZJFFZZLkotlin/jvm/internal/k;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p7}, Landroidx/compose/foundation/MagnifierStyle;-><init>(ZJFFZZ)V

    return-void
.end method

.method public static final synthetic a()Landroidx/compose/foundation/MagnifierStyle;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/MagnifierStyle;->Default:Landroidx/compose/foundation/MagnifierStyle;

    return-object v0
.end method

.method public static final synthetic b()Landroidx/compose/foundation/MagnifierStyle;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/MagnifierStyle;->TextDefault:Landroidx/compose/foundation/MagnifierStyle;

    return-object v0
.end method


# virtual methods
.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/MagnifierStyle;->clippingEnabled:Z

    return v0
.end method

.method public final d()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/MagnifierStyle;->cornerRadius:F

    return v0
.end method

.method public final e()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/MagnifierStyle;->elevation:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/MagnifierStyle;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    return v2

    .line 11
    .line 12
    :cond_1
    iget-boolean v1, p0, Landroidx/compose/foundation/MagnifierStyle;->useTextDefault:Z

    .line 13
    .line 14
    check-cast p1, Landroidx/compose/foundation/MagnifierStyle;

    .line 15
    .line 16
    iget-boolean v3, p1, Landroidx/compose/foundation/MagnifierStyle;->useTextDefault:Z

    .line 17
    .line 18
    if-eq v1, v3, :cond_2

    .line 19
    return v2

    .line 20
    .line 21
    :cond_2
    iget-wide v3, p0, Landroidx/compose/foundation/MagnifierStyle;->size:J

    .line 22
    .line 23
    iget-wide v5, p1, Landroidx/compose/foundation/MagnifierStyle;->size:J

    .line 24
    .line 25
    .line 26
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/unit/DpSize;->f(JJ)Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-nez v1, :cond_3

    .line 30
    return v2

    .line 31
    .line 32
    :cond_3
    iget v1, p0, Landroidx/compose/foundation/MagnifierStyle;->cornerRadius:F

    .line 33
    .line 34
    iget v3, p1, Landroidx/compose/foundation/MagnifierStyle;->cornerRadius:F

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-nez v1, :cond_4

    .line 41
    return v2

    .line 42
    .line 43
    :cond_4
    iget v1, p0, Landroidx/compose/foundation/MagnifierStyle;->elevation:F

    .line 44
    .line 45
    iget v3, p1, Landroidx/compose/foundation/MagnifierStyle;->elevation:F

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->i(FF)Z

    .line 49
    move-result v1

    .line 50
    .line 51
    if-nez v1, :cond_5

    .line 52
    return v2

    .line 53
    .line 54
    :cond_5
    iget-boolean v1, p0, Landroidx/compose/foundation/MagnifierStyle;->clippingEnabled:Z

    .line 55
    .line 56
    iget-boolean v3, p1, Landroidx/compose/foundation/MagnifierStyle;->clippingEnabled:Z

    .line 57
    .line 58
    if-eq v1, v3, :cond_6

    .line 59
    return v2

    .line 60
    .line 61
    :cond_6
    iget-boolean v1, p0, Landroidx/compose/foundation/MagnifierStyle;->fishEyeEnabled:Z

    .line 62
    .line 63
    iget-boolean p1, p1, Landroidx/compose/foundation/MagnifierStyle;->fishEyeEnabled:Z

    .line 64
    .line 65
    if-eq v1, p1, :cond_7

    .line 66
    return v2

    .line 67
    :cond_7
    return v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/MagnifierStyle;->fishEyeEnabled:Z

    return v0
.end method

.method public final g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/MagnifierStyle;->size:J

    return-wide v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/MagnifierStyle;->useTextDefault:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/foundation/MagnifierStyle;->useTextDefault:Z

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/foundation/c;->a(Z)I

    .line 6
    move-result v0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-wide v1, p0, Landroidx/compose/foundation/MagnifierStyle;->size:J

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/DpSize;->i(J)I

    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget v1, p0, Landroidx/compose/foundation/MagnifierStyle;->cornerRadius:F

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->j(F)I

    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    .line 26
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    iget v1, p0, Landroidx/compose/foundation/MagnifierStyle;->elevation:F

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->j(F)I

    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    .line 35
    mul-int/lit8 v0, v0, 0x1f

    .line 36
    .line 37
    iget-boolean v1, p0, Landroidx/compose/foundation/MagnifierStyle;->clippingEnabled:Z

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Landroidx/compose/foundation/c;->a(Z)I

    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    .line 44
    mul-int/lit8 v0, v0, 0x1f

    .line 45
    .line 46
    iget-boolean v1, p0, Landroidx/compose/foundation/MagnifierStyle;->fishEyeEnabled:Z

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Landroidx/compose/foundation/c;->a(Z)I

    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    return v0
.end method

.method public final i()Z
    .locals 4

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/foundation/MagnifierStyle;->Companion:Landroidx/compose/foundation/MagnifierStyle$Companion;

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p0, v3, v1, v2}, Landroidx/compose/foundation/MagnifierStyle$Companion;->d(Landroidx/compose/foundation/MagnifierStyle$Companion;Landroidx/compose/foundation/MagnifierStyle;IILjava/lang/Object;)Z

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/foundation/MagnifierStyle;->useTextDefault:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "MagnifierStyle.TextDefault"

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    const-string v1, "MagnifierStyle(size="

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    iget-wide v1, p0, Landroidx/compose/foundation/MagnifierStyle;->size:J

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/DpSize;->k(J)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v1, ", cornerRadius="

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    iget v1, p0, Landroidx/compose/foundation/MagnifierStyle;->cornerRadius:F

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->k(F)Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v1, ", elevation="

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    iget v1, p0, Landroidx/compose/foundation/MagnifierStyle;->elevation:F

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->k(F)Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v1, ", clippingEnabled="

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    iget-boolean v1, p0, Landroidx/compose/foundation/MagnifierStyle;->clippingEnabled:Z

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v1, ", fishEyeEnabled="

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    iget-boolean v1, p0, Landroidx/compose/foundation/MagnifierStyle;->fishEyeEnabled:Z

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const/16 v1, 0x29

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    :goto_0
    return-object v0
.end method
