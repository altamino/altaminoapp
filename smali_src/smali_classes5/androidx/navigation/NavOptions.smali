.class public final Landroidx/navigation/NavOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavOptions$Builder;
    }
.end annotation


# instance fields
.field private final enterAnim:I

.field private final exitAnim:I

.field private final popEnterAnim:I

.field private final popExitAnim:I

.field private final popUpToId:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private final popUpToInclusive:Z

.field private popUpToRoute:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final popUpToSaveState:Z

.field private final restoreState:Z

.field private final singleTop:Z


# direct methods
.method public constructor <init>(ZZIZZIIII)V
    .locals 0
    .param p3    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation

        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p7    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation

        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p8    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation

        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p9    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation

        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/navigation/NavOptions;->singleTop:Z

    iput-boolean p2, p0, Landroidx/navigation/NavOptions;->restoreState:Z

    iput p3, p0, Landroidx/navigation/NavOptions;->popUpToId:I

    iput-boolean p4, p0, Landroidx/navigation/NavOptions;->popUpToInclusive:Z

    iput-boolean p5, p0, Landroidx/navigation/NavOptions;->popUpToSaveState:Z

    iput p6, p0, Landroidx/navigation/NavOptions;->enterAnim:I

    iput p7, p0, Landroidx/navigation/NavOptions;->exitAnim:I

    iput p8, p0, Landroidx/navigation/NavOptions;->popEnterAnim:I

    iput p9, p0, Landroidx/navigation/NavOptions;->popExitAnim:I

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;ZZIIII)V
    .locals 12
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object v0, p3

    .line 2
    sget-object v1, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {v1, p3}, Landroidx/navigation/NavDestination$Companion;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    .line 3
    invoke-direct/range {v2 .. v11}, Landroidx/navigation/NavOptions;-><init>(ZZIZZIIII)V

    move-object v1, p0

    iput-object v0, v1, Landroidx/navigation/NavOptions;->popUpToRoute:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation

    .annotation build Landroidx/annotation/AnimatorRes;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/navigation/NavOptions;->enterAnim:I

    return v0
.end method

.method public final b()I
    .locals 1
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation

    .annotation build Landroidx/annotation/AnimatorRes;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/navigation/NavOptions;->exitAnim:I

    return v0
.end method

.method public final c()I
    .locals 1
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation

    .annotation build Landroidx/annotation/AnimatorRes;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/navigation/NavOptions;->popEnterAnim:I

    return v0
.end method

.method public final d()I
    .locals 1
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation

    .annotation build Landroidx/annotation/AnimatorRes;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/navigation/NavOptions;->popExitAnim:I

    return v0
.end method

.method public final e()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/navigation/NavOptions;->popUpToId:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
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
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    const-class v3, Landroidx/navigation/NavOptions;

    .line 14
    .line 15
    .line 16
    invoke-static {v3, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    move-result v2

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_1
    check-cast p1, Landroidx/navigation/NavOptions;

    .line 23
    .line 24
    iget-boolean v2, p0, Landroidx/navigation/NavOptions;->singleTop:Z

    .line 25
    .line 26
    iget-boolean v3, p1, Landroidx/navigation/NavOptions;->singleTop:Z

    .line 27
    .line 28
    if-ne v2, v3, :cond_2

    .line 29
    .line 30
    iget-boolean v2, p0, Landroidx/navigation/NavOptions;->restoreState:Z

    .line 31
    .line 32
    iget-boolean v3, p1, Landroidx/navigation/NavOptions;->restoreState:Z

    .line 33
    .line 34
    if-ne v2, v3, :cond_2

    .line 35
    .line 36
    iget v2, p0, Landroidx/navigation/NavOptions;->popUpToId:I

    .line 37
    .line 38
    iget v3, p1, Landroidx/navigation/NavOptions;->popUpToId:I

    .line 39
    .line 40
    if-ne v2, v3, :cond_2

    .line 41
    .line 42
    iget-object v2, p0, Landroidx/navigation/NavOptions;->popUpToRoute:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p1, Landroidx/navigation/NavOptions;->popUpToRoute:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    move-result v2

    .line 49
    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    iget-boolean v2, p0, Landroidx/navigation/NavOptions;->popUpToInclusive:Z

    .line 53
    .line 54
    iget-boolean v3, p1, Landroidx/navigation/NavOptions;->popUpToInclusive:Z

    .line 55
    .line 56
    if-ne v2, v3, :cond_2

    .line 57
    .line 58
    iget-boolean v2, p0, Landroidx/navigation/NavOptions;->popUpToSaveState:Z

    .line 59
    .line 60
    iget-boolean v3, p1, Landroidx/navigation/NavOptions;->popUpToSaveState:Z

    .line 61
    .line 62
    if-ne v2, v3, :cond_2

    .line 63
    .line 64
    iget v2, p0, Landroidx/navigation/NavOptions;->enterAnim:I

    .line 65
    .line 66
    iget v3, p1, Landroidx/navigation/NavOptions;->enterAnim:I

    .line 67
    .line 68
    if-ne v2, v3, :cond_2

    .line 69
    .line 70
    iget v2, p0, Landroidx/navigation/NavOptions;->exitAnim:I

    .line 71
    .line 72
    iget v3, p1, Landroidx/navigation/NavOptions;->exitAnim:I

    .line 73
    .line 74
    if-ne v2, v3, :cond_2

    .line 75
    .line 76
    iget v2, p0, Landroidx/navigation/NavOptions;->popEnterAnim:I

    .line 77
    .line 78
    iget v3, p1, Landroidx/navigation/NavOptions;->popEnterAnim:I

    .line 79
    .line 80
    if-ne v2, v3, :cond_2

    .line 81
    .line 82
    iget v2, p0, Landroidx/navigation/NavOptions;->popExitAnim:I

    .line 83
    .line 84
    iget p1, p1, Landroidx/navigation/NavOptions;->popExitAnim:I

    .line 85
    .line 86
    if-ne v2, p1, :cond_2

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    move v0, v1

    .line 89
    :goto_0
    return v0

    .line 90
    :cond_3
    :goto_1
    return v1
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/navigation/NavOptions;->popUpToInclusive:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/navigation/NavOptions;->singleTop:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/navigation/NavOptions;->popUpToSaveState:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/navigation/NavOptions;->g()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    mul-int/lit8 v0, v0, 0x1f

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/navigation/NavOptions;->i()Z

    .line 10
    move-result v1

    .line 11
    add-int/2addr v0, v1

    .line 12
    .line 13
    mul-int/lit8 v0, v0, 0x1f

    .line 14
    .line 15
    iget v1, p0, Landroidx/navigation/NavOptions;->popUpToId:I

    .line 16
    add-int/2addr v0, v1

    .line 17
    .line 18
    mul-int/lit8 v0, v0, 0x1f

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/navigation/NavOptions;->popUpToRoute:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 26
    move-result v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    :goto_0
    add-int/2addr v0, v1

    .line 30
    .line 31
    mul-int/lit8 v0, v0, 0x1f

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/navigation/NavOptions;->f()Z

    .line 35
    move-result v1

    .line 36
    add-int/2addr v0, v1

    .line 37
    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/navigation/NavOptions;->h()Z

    .line 42
    move-result v1

    .line 43
    add-int/2addr v0, v1

    .line 44
    .line 45
    mul-int/lit8 v0, v0, 0x1f

    .line 46
    .line 47
    iget v1, p0, Landroidx/navigation/NavOptions;->enterAnim:I

    .line 48
    add-int/2addr v0, v1

    .line 49
    .line 50
    mul-int/lit8 v0, v0, 0x1f

    .line 51
    .line 52
    iget v1, p0, Landroidx/navigation/NavOptions;->exitAnim:I

    .line 53
    add-int/2addr v0, v1

    .line 54
    .line 55
    mul-int/lit8 v0, v0, 0x1f

    .line 56
    .line 57
    iget v1, p0, Landroidx/navigation/NavOptions;->popEnterAnim:I

    .line 58
    add-int/2addr v0, v1

    .line 59
    .line 60
    mul-int/lit8 v0, v0, 0x1f

    .line 61
    .line 62
    iget v1, p0, Landroidx/navigation/NavOptions;->popExitAnim:I

    .line 63
    add-int/2addr v0, v1

    .line 64
    return v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/navigation/NavOptions;->restoreState:Z

    return v0
.end method
