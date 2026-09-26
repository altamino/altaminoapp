.class public final Lcoil/transition/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil/transition/c;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCrossfadeTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CrossfadeTransition.kt\ncoil/transition/CrossfadeTransition\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,78:1\n1#2:79\n*E\n"
.end annotation


# instance fields
.field private final durationMillis:I

.field private final preferExactIntrinsicSize:Z

.field private final result:Lcoil/request/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final target:Lcoil/transition/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcoil/transition/d;Lcoil/request/i;)V
    .locals 7
    .param p1    # Lcoil/transition/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil/request/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcoil/transition/a;-><init>(Lcoil/transition/d;Lcoil/request/i;IZILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Lcoil/transition/d;Lcoil/request/i;I)V
    .locals 7
    .param p1    # Lcoil/transition/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil/request/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcoil/transition/a;-><init>(Lcoil/transition/d;Lcoil/request/i;IZILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Lcoil/transition/d;Lcoil/request/i;IZ)V
    .locals 0
    .param p1    # Lcoil/transition/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil/request/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/transition/a;->target:Lcoil/transition/d;

    iput-object p2, p0, Lcoil/transition/a;->result:Lcoil/request/i;

    iput p3, p0, Lcoil/transition/a;->durationMillis:I

    iput-boolean p4, p0, Lcoil/transition/a;->preferExactIntrinsicSize:Z

    if-lez p3, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "durationMillis must be > 0."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcoil/transition/d;Lcoil/request/i;IZILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/16 p3, 0x64

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcoil/transition/a;-><init>(Lcoil/transition/d;Lcoil/request/i;IZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 1
    .line 2
    new-instance v7, Lc0/b;

    .line 3
    .line 4
    iget-object v0, p0, Lcoil/transition/a;->target:Lcoil/transition/d;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcoil/transition/d;->d()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    iget-object v0, p0, Lcoil/transition/a;->result:Lcoil/request/i;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcoil/request/i;->a()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    iget-object v0, p0, Lcoil/transition/a;->result:Lcoil/request/i;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcoil/request/i;->b()Lcoil/request/h;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcoil/request/h;->J()Lcoil/size/h;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    iget v4, p0, Lcoil/transition/a;->durationMillis:I

    .line 27
    .line 28
    iget-object v0, p0, Lcoil/transition/a;->result:Lcoil/request/i;

    .line 29
    .line 30
    instance-of v5, v0, Lcoil/request/p;

    .line 31
    .line 32
    if-eqz v5, :cond_1

    .line 33
    .line 34
    check-cast v0, Lcoil/request/p;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcoil/request/p;->d()Z

    .line 38
    move-result v0

    .line 39
    .line 40
    if-nez v0, :cond_0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 43
    :goto_0
    move v5, v0

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :goto_2
    iget-boolean v6, p0, Lcoil/transition/a;->preferExactIntrinsicSize:Z

    .line 49
    move-object v0, v7

    .line 50
    .line 51
    .line 52
    invoke-direct/range {v0 .. v6}, Lc0/b;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcoil/size/h;IZZ)V

    .line 53
    .line 54
    iget-object v0, p0, Lcoil/transition/a;->result:Lcoil/request/i;

    .line 55
    .line 56
    instance-of v1, v0, Lcoil/request/p;

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    iget-object v0, p0, Lcoil/transition/a;->target:Lcoil/transition/d;

    .line 61
    .line 62
    .line 63
    invoke-interface {v0, v7}, Lf0/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 64
    goto :goto_3

    .line 65
    .line 66
    :cond_2
    instance-of v0, v0, Lcoil/request/e;

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    iget-object v0, p0, Lcoil/transition/a;->target:Lcoil/transition/d;

    .line 71
    .line 72
    .line 73
    invoke-interface {v0, v7}, Lf0/a;->c(Landroid/graphics/drawable/Drawable;)V

    .line 74
    :cond_3
    :goto_3
    return-void
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lcoil/transition/a;->durationMillis:I

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcoil/transition/a;->preferExactIntrinsicSize:Z

    return v0
.end method
