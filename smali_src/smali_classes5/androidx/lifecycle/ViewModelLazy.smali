.class public final Landroidx/lifecycle/ViewModelLazy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw7/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VM:",
        "Landroidx/lifecycle/ViewModel;",
        ">",
        "Ljava/lang/Object;",
        "Lw7/m<",
        "TVM;>;"
    }
.end annotation


# instance fields
.field private cached:Landroidx/lifecycle/ViewModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVM;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final extrasProducer:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Landroidx/lifecycle/viewmodel/CreationExtras;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final factoryProducer:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Landroidx/lifecycle/ViewModelProvider$Factory;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final storeProducer:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Landroidx/lifecycle/ViewModelStore;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewModelClass:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "TVM;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/KClass;Le8/a;Le8/a;)V
    .locals 8
    .param p1    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "TVM;>;",
            "Le8/a<",
            "+",
            "Landroidx/lifecycle/ViewModelStore;",
            ">;",
            "Le8/a<",
            "+",
            "Landroidx/lifecycle/ViewModelProvider$Factory;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "viewModelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storeProducer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factoryProducer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Le8/a;Le8/a;Le8/a;ILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/KClass;Le8/a;Le8/a;Le8/a;)V
    .locals 1
    .param p1    # Lkotlin/reflect/KClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "TVM;>;",
            "Le8/a<",
            "+",
            "Landroidx/lifecycle/ViewModelStore;",
            ">;",
            "Le8/a<",
            "+",
            "Landroidx/lifecycle/ViewModelProvider$Factory;",
            ">;",
            "Le8/a<",
            "+",
            "Landroidx/lifecycle/viewmodel/CreationExtras;",
            ">;)V"
        }
    .end annotation

    const-string v0, "viewModelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storeProducer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factoryProducer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extrasProducer"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/ViewModelLazy;->viewModelClass:Lkotlin/reflect/KClass;

    iput-object p2, p0, Landroidx/lifecycle/ViewModelLazy;->storeProducer:Le8/a;

    iput-object p3, p0, Landroidx/lifecycle/ViewModelLazy;->factoryProducer:Le8/a;

    iput-object p4, p0, Landroidx/lifecycle/ViewModelLazy;->extrasProducer:Le8/a;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/KClass;Le8/a;Le8/a;Le8/a;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    sget-object p4, Landroidx/lifecycle/ViewModelLazy$1;->INSTANCE:Landroidx/lifecycle/ViewModelLazy$1;

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Le8/a;Le8/a;Le8/a;)V

    return-void
.end method


# virtual methods
.method public a()Landroidx/lifecycle/ViewModel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVM;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/lifecycle/ViewModelLazy;->cached:Landroidx/lifecycle/ViewModel;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/lifecycle/ViewModelLazy;->factoryProducer:Le8/a;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Le8/a;->invoke()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/lifecycle/ViewModelLazy;->storeProducer:Le8/a;

    .line 15
    .line 16
    .line 17
    invoke-interface {v1}, Le8/a;->invoke()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Landroidx/lifecycle/ViewModelStore;

    .line 21
    .line 22
    new-instance v2, Landroidx/lifecycle/ViewModelProvider;

    .line 23
    .line 24
    iget-object v3, p0, Landroidx/lifecycle/ViewModelLazy;->extrasProducer:Le8/a;

    .line 25
    .line 26
    .line 27
    invoke-interface {v3}, Le8/a;->invoke()Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    check-cast v3, Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, v1, v0, v3}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)V

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/lifecycle/ViewModelLazy;->viewModelClass:Lkotlin/reflect/KClass;

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Ld8/a;->a(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v0}, Landroidx/lifecycle/ViewModelProvider;->a(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    iput-object v0, p0, Landroidx/lifecycle/ViewModelLazy;->cached:Landroidx/lifecycle/ViewModel;

    .line 46
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->a()Landroidx/lifecycle/ViewModel;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/ViewModelLazy;->cached:Landroidx/lifecycle/ViewModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
