.class public abstract Landroidx/compose/animation/ExitTransition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/ExitTransition$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/animation/ExitTransition$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final None:Landroidx/compose/animation/ExitTransition;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/animation/ExitTransition$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroidx/compose/animation/ExitTransition$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/animation/ExitTransition;->Companion:Landroidx/compose/animation/ExitTransition$Companion;

    .line 9
    .line 10
    new-instance v0, Landroidx/compose/animation/ExitTransitionImpl;

    .line 11
    .line 12
    new-instance v8, Landroidx/compose/animation/TransitionData;

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    .line 18
    const/16 v6, 0xf

    .line 19
    const/4 v7, 0x0

    .line 20
    move-object v1, v8

    .line 21
    .line 22
    .line 23
    invoke-direct/range {v1 .. v7}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;ILkotlin/jvm/internal/k;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v8}, Landroidx/compose/animation/ExitTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    .line 27
    .line 28
    sput-object v0, Landroidx/compose/animation/ExitTransition;->None:Landroidx/compose/animation/ExitTransition;

    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/animation/ExitTransition;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Landroidx/compose/animation/TransitionData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final b(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;
    .locals 6
    .param p1    # Landroidx/compose/animation/ExitTransition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "exit"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/animation/ExitTransitionImpl;

    .line 8
    .line 9
    new-instance v1, Landroidx/compose/animation/TransitionData;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/animation/ExitTransition;->a()Landroidx/compose/animation/TransitionData;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Landroidx/compose/animation/TransitionData;->b()Landroidx/compose/animation/Fade;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/compose/animation/ExitTransition;->a()Landroidx/compose/animation/TransitionData;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Landroidx/compose/animation/TransitionData;->b()Landroidx/compose/animation/Fade;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/animation/ExitTransition;->a()Landroidx/compose/animation/TransitionData;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Landroidx/compose/animation/TransitionData;->d()Landroidx/compose/animation/Slide;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroidx/compose/animation/ExitTransition;->a()Landroidx/compose/animation/TransitionData;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Landroidx/compose/animation/TransitionData;->d()Landroidx/compose/animation/Slide;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/animation/ExitTransition;->a()Landroidx/compose/animation/TransitionData;

    .line 49
    move-result-object v4

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Landroidx/compose/animation/TransitionData;->a()Landroidx/compose/animation/ChangeSize;

    .line 53
    move-result-object v4

    .line 54
    .line 55
    if-nez v4, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroidx/compose/animation/ExitTransition;->a()Landroidx/compose/animation/TransitionData;

    .line 59
    move-result-object v4

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Landroidx/compose/animation/TransitionData;->a()Landroidx/compose/animation/ChangeSize;

    .line 63
    move-result-object v4

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/animation/ExitTransition;->a()Landroidx/compose/animation/TransitionData;

    .line 67
    move-result-object v5

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5}, Landroidx/compose/animation/TransitionData;->c()Landroidx/compose/animation/Scale;

    .line 71
    move-result-object v5

    .line 72
    .line 73
    if-nez v5, :cond_3

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Landroidx/compose/animation/ExitTransition;->a()Landroidx/compose/animation/TransitionData;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroidx/compose/animation/TransitionData;->c()Landroidx/compose/animation/Scale;

    .line 81
    move-result-object v5

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-direct {v1, v2, v3, v4, v5}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;)V

    .line 85
    .line 86
    .line 87
    invoke-direct {v0, v1}, Landroidx/compose/animation/ExitTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    .line 88
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Landroidx/compose/animation/ExitTransition;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroidx/compose/animation/ExitTransition;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/animation/ExitTransition;->a()Landroidx/compose/animation/TransitionData;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/animation/ExitTransition;->a()Landroidx/compose/animation/TransitionData;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/animation/ExitTransition;->a()Landroidx/compose/animation/TransitionData;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/animation/TransitionData;->hashCode()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method
