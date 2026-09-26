.class public Landroidx/navigation/NavGraphNavigator;
.super Landroidx/navigation/Navigator;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/navigation/Navigator$Name;
    value = "navigation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/Navigator<",
        "Landroidx/navigation/NavGraph;",
        ">;"
    }
.end annotation


# instance fields
.field private final navigatorProvider:Landroidx/navigation/NavigatorProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/navigation/NavigatorProvider;)V
    .locals 1
    .param p1    # Landroidx/navigation/NavigatorProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "navigatorProvider"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/navigation/Navigator;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/navigation/NavGraphNavigator;->navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 11
    return-void
.end method

.method private final m(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->f()Landroidx/navigation/NavDestination;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Landroidx/navigation/NavGraph;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->d()Landroid/os/Bundle;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->I()I

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->J()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string/jumbo p2, "no start destination defined via app:startDestination for "

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->m()Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p2

    .line 56
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 57
    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2, v3}, Landroidx/navigation/NavGraph;->F(Ljava/lang/String;Z)Landroidx/navigation/NavDestination;

    .line 62
    move-result-object v1

    .line 63
    goto :goto_1

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {v0, v1, v3}, Landroidx/navigation/NavGraph;->D(IZ)Landroidx/navigation/NavDestination;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    :goto_1
    if-eqz v1, :cond_3

    .line 70
    .line 71
    iget-object v0, p0, Landroidx/navigation/NavGraphNavigator;->navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->r()Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2}, Landroidx/navigation/NavigatorProvider;->e(Ljava/lang/String;)Landroidx/navigation/Navigator;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroidx/navigation/Navigator;->b()Landroidx/navigation/NavigatorState;

    .line 83
    move-result-object v2

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, p1}, Landroidx/navigation/NavDestination;->e(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v1, p1}, Landroidx/navigation/NavigatorState;->a(Landroidx/navigation/NavDestination;Landroid/os/Bundle;)Landroidx/navigation/NavBackStackEntry;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Lkotlin/collections/t;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 95
    move-result-object p1

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1, p2, p3}, Landroidx/navigation/Navigator;->e(Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 99
    return-void

    .line 100
    .line 101
    .line 102
    :cond_3
    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->H()Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 106
    .line 107
    new-instance p3, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    const-string v0, "navigation destination "

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string p1, " is not a direct child of this NavGraph"

    .line 121
    .line 122
    .line 123
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    .line 130
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 131
    throw p2
.end method


# virtual methods
.method public bridge synthetic a()Landroidx/navigation/NavDestination;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/navigation/NavGraphNavigator;->l()Landroidx/navigation/NavGraph;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public e(Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/navigation/NavOptions;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/navigation/Navigator$Extras;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/navigation/NavOptions;",
            "Landroidx/navigation/Navigator$Extras;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "entries"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v0, p2, p3}, Landroidx/navigation/NavGraphNavigator;->m(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public l()Landroidx/navigation/NavGraph;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/navigation/NavGraph;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Landroidx/navigation/NavGraph;-><init>(Landroidx/navigation/Navigator;)V

    .line 6
    return-object v0
.end method
