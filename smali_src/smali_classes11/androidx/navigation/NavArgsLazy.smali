.class public final Landroidx/navigation/NavArgsLazy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw7/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Args::",
        "Landroidx/navigation/NavArgs;",
        ">",
        "Ljava/lang/Object;",
        "Lw7/m<",
        "TArgs;>;"
    }
.end annotation


# instance fields
.field private final argumentProducer:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cached:Landroidx/navigation/NavArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TArgs;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final navArgsClass:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "TArgs;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/KClass;Le8/a;)V
    .locals 1
    .param p1    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "TArgs;>;",
            "Le8/a<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "navArgsClass"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "argumentProducer"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/navigation/NavArgsLazy;->navArgsClass:Lkotlin/reflect/KClass;

    .line 16
    .line 17
    iput-object p2, p0, Landroidx/navigation/NavArgsLazy;->argumentProducer:Le8/a;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Landroidx/navigation/NavArgs;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TArgs;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/navigation/NavArgsLazy;->cached:Landroidx/navigation/NavArgs;

    .line 3
    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/navigation/NavArgsLazy;->argumentProducer:Le8/a;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Le8/a;->invoke()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroidx/navigation/NavArgsLazyKt;->a()Landroidx/collection/ArrayMap;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/navigation/NavArgsLazy;->navArgsClass:Lkotlin/reflect/KClass;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Ljava/lang/reflect/Method;

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/navigation/NavArgsLazy;->navArgsClass:Lkotlin/reflect/KClass;

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Ld8/a;->a(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroidx/navigation/NavArgsLazyKt;->b()[Ljava/lang/Class;

    .line 36
    move-result-object v2

    .line 37
    array-length v3, v2

    .line 38
    .line 39
    .line 40
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    check-cast v2, [Ljava/lang/Class;

    .line 44
    .line 45
    const-string v3, "fromBundle"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-static {}, Landroidx/navigation/NavArgsLazyKt;->a()Landroidx/collection/ArrayMap;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    iget-object v3, p0, Landroidx/navigation/NavArgsLazy;->navArgsClass:Lkotlin/reflect/KClass;

    .line 56
    .line 57
    .line 58
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    const-string v2, "navArgsClass.java.getMet\u2026hod\n                    }"

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    :cond_0
    const/4 v2, 0x1

    .line 65
    .line 66
    new-array v2, v2, [Ljava/lang/Object;

    .line 67
    const/4 v3, 0x0

    .line 68
    .line 69
    aput-object v0, v2, v3

    .line 70
    const/4 v0, 0x0

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    check-cast v0, Landroidx/navigation/NavArgs;

    .line 79
    .line 80
    iput-object v0, p0, Landroidx/navigation/NavArgsLazy;->cached:Landroidx/navigation/NavArgs;

    .line 81
    goto :goto_0

    .line 82
    .line 83
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    .line 84
    .line 85
    .line 86
    const-string/jumbo v1, "null cannot be cast to non-null type Args of androidx.navigation.NavArgsLazy"

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 90
    throw v0

    .line 91
    :cond_2
    :goto_0
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/navigation/NavArgsLazy;->a()Landroidx/navigation/NavArgs;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Landroidx/navigation/NavArgsLazy;->cached:Landroidx/navigation/NavArgs;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
