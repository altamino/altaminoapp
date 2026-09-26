.class public final Landroidx/navigation/NavOptionsBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/navigation/NavOptionsDsl;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavOptionsBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavOptionsBuilder.kt\nandroidx/navigation/NavOptionsBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,211:1\n1#2:212\n*E\n"
.end annotation


# instance fields
.field private final builder:Landroidx/navigation/NavOptions$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private inclusive:Z

.field private launchSingleTop:Z

.field private popUpToId:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private popUpToRoute:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private restoreState:Z

.field private saveState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/navigation/NavOptions$Builder;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/navigation/NavOptions$Builder;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/navigation/NavOptionsBuilder;->builder:Landroidx/navigation/NavOptions$Builder;

    .line 11
    const/4 v0, -0x1

    .line 12
    .line 13
    iput v0, p0, Landroidx/navigation/NavOptionsBuilder;->popUpToId:I

    .line 14
    return-void
.end method

.method private final f(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lkotlin/text/k;->z(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/navigation/NavOptionsBuilder;->popUpToRoute:Ljava/lang/String;

    .line 13
    const/4 p1, 0x0

    .line 14
    .line 15
    iput-boolean p1, p0, Landroidx/navigation/NavOptionsBuilder;->inclusive:Z

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string v0, "Cannot pop up to an empty route"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p1

    .line 29
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Le8/l;)V
    .locals 2
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Landroidx/navigation/AnimBuilder;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "animBuilder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/navigation/AnimBuilder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Landroidx/navigation/AnimBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    iget-object p1, p0, Landroidx/navigation/NavOptionsBuilder;->builder:Landroidx/navigation/NavOptions$Builder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/navigation/AnimBuilder;->a()I

    .line 19
    move-result v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroidx/navigation/NavOptions$Builder;->b(I)Landroidx/navigation/NavOptions$Builder;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/navigation/AnimBuilder;->b()I

    .line 27
    move-result v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroidx/navigation/NavOptions$Builder;->c(I)Landroidx/navigation/NavOptions$Builder;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/navigation/AnimBuilder;->c()I

    .line 35
    move-result v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroidx/navigation/NavOptions$Builder;->e(I)Landroidx/navigation/NavOptions$Builder;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/navigation/AnimBuilder;->d()I

    .line 43
    move-result v0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroidx/navigation/NavOptions$Builder;->f(I)Landroidx/navigation/NavOptions$Builder;

    .line 47
    return-void
.end method

.method public final b()Landroidx/navigation/NavOptions;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/navigation/NavOptionsBuilder;->builder:Landroidx/navigation/NavOptions$Builder;

    .line 3
    .line 4
    iget-boolean v1, p0, Landroidx/navigation/NavOptionsBuilder;->launchSingleTop:Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/navigation/NavOptions$Builder;->d(Z)Landroidx/navigation/NavOptions$Builder;

    .line 8
    .line 9
    iget-boolean v1, p0, Landroidx/navigation/NavOptionsBuilder;->restoreState:Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/navigation/NavOptions$Builder;->j(Z)Landroidx/navigation/NavOptions$Builder;

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/navigation/NavOptionsBuilder;->popUpToRoute:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-boolean v2, p0, Landroidx/navigation/NavOptionsBuilder;->inclusive:Z

    .line 19
    .line 20
    iget-boolean v3, p0, Landroidx/navigation/NavOptionsBuilder;->saveState:Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, v2, v3}, Landroidx/navigation/NavOptions$Builder;->h(Ljava/lang/String;ZZ)Landroidx/navigation/NavOptions$Builder;

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    iget v1, p0, Landroidx/navigation/NavOptionsBuilder;->popUpToId:I

    .line 27
    .line 28
    iget-boolean v2, p0, Landroidx/navigation/NavOptionsBuilder;->inclusive:Z

    .line 29
    .line 30
    iget-boolean v3, p0, Landroidx/navigation/NavOptionsBuilder;->saveState:Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, v2, v3}, Landroidx/navigation/NavOptions$Builder;->g(IZZ)Landroidx/navigation/NavOptions$Builder;

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {v0}, Landroidx/navigation/NavOptions$Builder;->a()Landroidx/navigation/NavOptions;

    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method

.method public final c(ILe8/l;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le8/l<",
            "-",
            "Landroidx/navigation/PopUpToBuilder;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "popUpToBuilder"

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroidx/navigation/NavOptionsBuilder;->e(I)V

    .line 10
    const/4 p1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Landroidx/navigation/NavOptionsBuilder;->f(Ljava/lang/String;)V

    .line 14
    .line 15
    new-instance p1, Landroidx/navigation/PopUpToBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {p1}, Landroidx/navigation/PopUpToBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-interface {p2, p1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/navigation/PopUpToBuilder;->a()Z

    .line 25
    move-result p2

    .line 26
    .line 27
    iput-boolean p2, p0, Landroidx/navigation/NavOptionsBuilder;->inclusive:Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/navigation/PopUpToBuilder;->b()Z

    .line 31
    move-result p1

    .line 32
    .line 33
    iput-boolean p1, p0, Landroidx/navigation/NavOptionsBuilder;->saveState:Z

    .line 34
    return-void
.end method

.method public final d(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/navigation/NavOptionsBuilder;->launchSingleTop:Z

    return-void
.end method

.method public final e(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/navigation/NavOptionsBuilder;->popUpToId:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/navigation/NavOptionsBuilder;->inclusive:Z

    return-void
.end method
