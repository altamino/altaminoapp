.class public final Landroidx/fragment/app/FragmentViewModelLazyKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Lw7/m;)Landroidx/lifecycle/ViewModelStoreOwner;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/fragment/app/FragmentViewModelLazyKt;->d(Lw7/m;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Lw7/m;)Landroidx/lifecycle/ViewModelStoreOwner;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/fragment/app/FragmentViewModelLazyKt;->e(Lw7/m;)Landroidx/lifecycle/ViewModelStoreOwner;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Le8/a;Le8/a;Le8/a;)Lw7/m;
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VM:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Landroidx/fragment/app/Fragment;",
            "Lkotlin/reflect/KClass<",
            "TVM;>;",
            "Le8/a<",
            "+",
            "Landroidx/lifecycle/ViewModelStore;",
            ">;",
            "Le8/a<",
            "+",
            "Landroidx/lifecycle/viewmodel/CreationExtras;",
            ">;",
            "Le8/a<",
            "+",
            "Landroidx/lifecycle/ViewModelProvider$Factory;",
            ">;)",
            "Lw7/m<",
            "TVM;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "viewModelClass"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "storeProducer"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "extrasProducer"

    .line 18
    .line 19
    .line 20
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    if-nez p4, :cond_0

    .line 23
    .line 24
    new-instance p4, Landroidx/fragment/app/FragmentViewModelLazyKt$createViewModelLazy$factoryPromise$1;

    .line 25
    .line 26
    .line 27
    invoke-direct {p4, p0}, Landroidx/fragment/app/FragmentViewModelLazyKt$createViewModelLazy$factoryPromise$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 28
    .line 29
    :cond_0
    new-instance p0, Landroidx/lifecycle/ViewModelLazy;

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1, p2, p4, p3}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Le8/a;Le8/a;Le8/a;)V

    .line 33
    return-object p0
.end method

.method private static final d(Lw7/m;)Landroidx/lifecycle/ViewModelStoreOwner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw7/m<",
            "+",
            "Landroidx/lifecycle/ViewModelStoreOwner;",
            ">;)",
            "Landroidx/lifecycle/ViewModelStoreOwner;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 7
    return-object p0
.end method

.method private static final e(Lw7/m;)Landroidx/lifecycle/ViewModelStoreOwner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw7/m<",
            "+",
            "Landroidx/lifecycle/ViewModelStoreOwner;",
            ">;)",
            "Landroidx/lifecycle/ViewModelStoreOwner;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 7
    return-object p0
.end method
