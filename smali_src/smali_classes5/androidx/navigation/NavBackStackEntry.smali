.class public final Landroidx/navigation/NavBackStackEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;
.implements Landroidx/lifecycle/ViewModelStoreOwner;
.implements Landroidx/lifecycle/HasDefaultViewModelProviderFactory;
.implements Landroidx/savedstate/SavedStateRegistryOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavBackStackEntry$Companion;,
        Landroidx/navigation/NavBackStackEntry$NavResultSavedStateFactory;,
        Landroidx/navigation/NavBackStackEntry$SavedStateViewModel;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavBackStackEntry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavBackStackEntry.kt\nandroidx/navigation/NavBackStackEntry\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,281:1\n1720#2,3:282\n1849#2,2:285\n*S KotlinDebug\n*F\n+ 1 NavBackStackEntry.kt\nandroidx/navigation/NavBackStackEntry\n*L\n247#1:282,3\n255#1:285,2\n*E\n"
.end annotation


# static fields
.field public static final Companion:Landroidx/navigation/NavBackStackEntry$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final arguments:Landroid/os/Bundle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final defaultFactory$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private destination:Landroidx/navigation/NavDestination;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final id:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lifecycle:Landroidx/lifecycle/LifecycleRegistry;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private maxLifecycle:Landroidx/lifecycle/Lifecycle$State;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final savedState:Landroid/os/Bundle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final savedStateHandle$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private savedStateRegistryAttached:Z

.field private final savedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewModelStoreProvider:Landroidx/navigation/NavViewModelStoreProvider;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigation/NavBackStackEntry$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/NavBackStackEntry$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Landroidx/navigation/NavBackStackEntry;->Companion:Landroidx/navigation/NavBackStackEntry$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    iput-object p3, p0, Landroidx/navigation/NavBackStackEntry;->arguments:Landroid/os/Bundle;

    iput-object p4, p0, Landroidx/navigation/NavBackStackEntry;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    iput-object p5, p0, Landroidx/navigation/NavBackStackEntry;->viewModelStoreProvider:Landroidx/navigation/NavViewModelStoreProvider;

    iput-object p6, p0, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    iput-object p7, p0, Landroidx/navigation/NavBackStackEntry;->savedState:Landroid/os/Bundle;

    .line 3
    new-instance p1, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {p1, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 4
    sget-object p1, Landroidx/savedstate/SavedStateRegistryController;->Companion:Landroidx/savedstate/SavedStateRegistryController$Companion;

    invoke-virtual {p1, p0}, Landroidx/savedstate/SavedStateRegistryController$Companion;->a(Landroidx/savedstate/SavedStateRegistryOwner;)Landroidx/savedstate/SavedStateRegistryController;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->savedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    .line 5
    new-instance p1, Landroidx/navigation/NavBackStackEntry$defaultFactory$2;

    invoke-direct {p1, p0}, Landroidx/navigation/NavBackStackEntry$defaultFactory$2;-><init>(Landroidx/navigation/NavBackStackEntry;)V

    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->defaultFactory$delegate:Lw7/m;

    .line 6
    new-instance p1, Landroidx/navigation/NavBackStackEntry$savedStateHandle$2;

    invoke-direct {p1, p0}, Landroidx/navigation/NavBackStackEntry$savedStateHandle$2;-><init>(Landroidx/navigation/NavBackStackEntry;)V

    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->savedStateHandle$delegate:Lw7/m;

    .line 7
    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->maxLifecycle:Landroidx/lifecycle/Lifecycle$State;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;Ljava/lang/String;Landroid/os/Bundle;Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Landroidx/navigation/NavBackStackEntry;-><init>(Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/NavBackStackEntry;Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroidx/navigation/NavBackStackEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v2, p1, Landroidx/navigation/NavBackStackEntry;->context:Landroid/content/Context;

    .line 10
    iget-object v3, p1, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 11
    iget-object v5, p1, Landroidx/navigation/NavBackStackEntry;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    .line 12
    iget-object v6, p1, Landroidx/navigation/NavBackStackEntry;->viewModelStoreProvider:Landroidx/navigation/NavViewModelStoreProvider;

    .line 13
    iget-object v7, p1, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    .line 14
    iget-object v8, p1, Landroidx/navigation/NavBackStackEntry;->savedState:Landroid/os/Bundle;

    move-object v1, p0

    move-object v4, p2

    .line 15
    invoke-direct/range {v1 .. v8}, Landroidx/navigation/NavBackStackEntry;-><init>(Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 16
    iget-object p2, p1, Landroidx/navigation/NavBackStackEntry;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    iput-object p2, p0, Landroidx/navigation/NavBackStackEntry;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    .line 17
    iget-object p1, p1, Landroidx/navigation/NavBackStackEntry;->maxLifecycle:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, p1}, Landroidx/navigation/NavBackStackEntry;->l(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/navigation/NavBackStackEntry;Landroid/os/Bundle;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 8
    iget-object p2, p1, Landroidx/navigation/NavBackStackEntry;->arguments:Landroid/os/Bundle;

    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/navigation/NavBackStackEntry;-><init>(Landroidx/navigation/NavBackStackEntry;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final synthetic a(Landroidx/navigation/NavBackStackEntry;)Landroid/content/Context;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry;->context:Landroid/content/Context;

    .line 3
    return-object p0
.end method

.method public static final synthetic b(Landroidx/navigation/NavBackStackEntry;)Landroidx/lifecycle/LifecycleRegistry;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 3
    return-object p0
.end method

.method public static final synthetic c(Landroidx/navigation/NavBackStackEntry;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Landroidx/navigation/NavBackStackEntry;->savedStateRegistryAttached:Z

    .line 3
    return p0
.end method

.method private final e()Landroidx/lifecycle/SavedStateViewModelFactory;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->defaultFactory$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/lifecycle/SavedStateViewModelFactory;

    .line 9
    return-object v0
.end method


# virtual methods
.method public final d()Landroid/os/Bundle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->arguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_5

    .line 4
    .line 5
    instance-of v1, p1, Landroidx/navigation/NavBackStackEntry;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    .line 12
    .line 13
    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    .line 14
    .line 15
    iget-object v2, p1, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_5

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 24
    .line 25
    iget-object v2, p1, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v1

    .line 30
    .line 31
    if-eqz v1, :cond_5

    .line 32
    .line 33
    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 34
    .line 35
    iget-object v2, p1, Landroidx/navigation/NavBackStackEntry;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    move-result v1

    .line 40
    .line 41
    if-eqz v1, :cond_5

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/navigation/NavBackStackEntry;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    .line 52
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    move-result v1

    .line 54
    .line 55
    if-eqz v1, :cond_5

    .line 56
    .line 57
    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->arguments:Landroid/os/Bundle;

    .line 58
    .line 59
    iget-object v2, p1, Landroidx/navigation/NavBackStackEntry;->arguments:Landroid/os/Bundle;

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    move-result v1

    .line 64
    .line 65
    if-nez v1, :cond_4

    .line 66
    .line 67
    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->arguments:Landroid/os/Bundle;

    .line 68
    .line 69
    if-eqz v1, :cond_5

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    if-eqz v1, :cond_5

    .line 76
    .line 77
    .line 78
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 79
    move-result v2

    .line 80
    .line 81
    if-eqz v2, :cond_1

    .line 82
    goto :goto_1

    .line 83
    .line 84
    .line 85
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    .line 89
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    move-result v2

    .line 91
    .line 92
    if-eqz v2, :cond_4

    .line 93
    .line 94
    .line 95
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    move-result-object v2

    .line 97
    .line 98
    check-cast v2, Ljava/lang/String;

    .line 99
    .line 100
    iget-object v3, p0, Landroidx/navigation/NavBackStackEntry;->arguments:Landroid/os/Bundle;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    move-result-object v3

    .line 105
    .line 106
    iget-object v4, p1, Landroidx/navigation/NavBackStackEntry;->arguments:Landroid/os/Bundle;

    .line 107
    .line 108
    if-eqz v4, :cond_3

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    move-result-object v2

    .line 113
    goto :goto_0

    .line 114
    :cond_3
    const/4 v2, 0x0

    .line 115
    .line 116
    .line 117
    :goto_0
    invoke-static {v3, v2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    move-result v2

    .line 119
    .line 120
    if-nez v2, :cond_2

    .line 121
    goto :goto_2

    .line 122
    :cond_4
    :goto_1
    const/4 v0, 0x1

    .line 123
    :cond_5
    :goto_2
    return v0
.end method

.method public final f()Landroidx/navigation/NavDestination;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v2, v1, v2}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;-><init>(Landroidx/lifecycle/viewmodel/CreationExtras;ILkotlin/jvm/internal/k;)V

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->context:Landroid/content/Context;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    move-result-object v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v1, v2

    .line 18
    .line 19
    :goto_0
    instance-of v3, v1, Landroid/app/Application;

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    move-object v2, v1

    .line 23
    .line 24
    check-cast v2, Landroid/app/Application;

    .line 25
    .line 26
    :cond_1
    if-eqz v2, :cond_2

    .line 27
    .line 28
    sget-object v1, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->APPLICATION_KEY:Landroidx/lifecycle/viewmodel/CreationExtras$Key;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;->c(Landroidx/lifecycle/viewmodel/CreationExtras$Key;Ljava/lang/Object;)V

    .line 32
    .line 33
    :cond_2
    sget-object v1, Landroidx/lifecycle/SavedStateHandleSupport;->SAVED_STATE_REGISTRY_OWNER_KEY:Landroidx/lifecycle/viewmodel/CreationExtras$Key;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;->c(Landroidx/lifecycle/viewmodel/CreationExtras$Key;Ljava/lang/Object;)V

    .line 37
    .line 38
    sget-object v1, Landroidx/lifecycle/SavedStateHandleSupport;->VIEW_MODEL_STORE_OWNER_KEY:Landroidx/lifecycle/viewmodel/CreationExtras$Key;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;->c(Landroidx/lifecycle/viewmodel/CreationExtras$Key;Ljava/lang/Object;)V

    .line 42
    .line 43
    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->arguments:Landroid/os/Bundle;

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    sget-object v2, Landroidx/lifecycle/SavedStateHandleSupport;->DEFAULT_ARGS_KEY:Landroidx/lifecycle/viewmodel/CreationExtras$Key;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v2, v1}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;->c(Landroidx/lifecycle/viewmodel/CreationExtras$Key;Ljava/lang/Object;)V

    .line 51
    :cond_3
    return-object v0
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/navigation/NavBackStackEntry;->e()Landroidx/lifecycle/SavedStateViewModelFactory;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method public getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->savedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/savedstate/SavedStateRegistryController;->b()Landroidx/savedstate/SavedStateRegistry;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/navigation/NavBackStackEntry;->savedStateRegistryAttached:Z

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/lifecycle/LifecycleRegistry;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->viewModelStoreProvider:Landroidx/navigation/NavViewModelStoreProvider;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Landroidx/navigation/NavViewModelStoreProvider;->a(Ljava/lang/String;)Landroidx/lifecycle/ViewModelStore;

    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v1, "You must call setViewModelStore() on your NavHostController before accessing the ViewModelStore of a navigation graph."

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    throw v0

    .line 38
    .line 39
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string v1, "You cannot access the NavBackStackEntry\'s ViewModels after the NavBackStackEntry is destroyed."

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    throw v0

    .line 50
    .line 51
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string v1, "You cannot access the NavBackStackEntry\'s ViewModels until it is added to the NavController\'s back stack (i.e., the Lifecycle of the NavBackStackEntry reaches the CREATED state)."

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    throw v0
.end method

.method public final h()Landroidx/lifecycle/Lifecycle$State;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->maxLifecycle:Landroidx/lifecycle/Lifecycle$State;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    move-result v0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->hashCode()I

    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->arguments:Landroid/os/Bundle;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v2

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    check-cast v2, Ljava/lang/String;

    .line 42
    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-object v3, p0, Landroidx/navigation/NavBackStackEntry;->arguments:Landroid/os/Bundle;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 55
    move-result v2

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    const/4 v2, 0x0

    .line 58
    :goto_1
    add-int/2addr v0, v2

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_1
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    .line 63
    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 67
    move-result v1

    .line 68
    add-int/2addr v0, v1

    .line 69
    .line 70
    mul-int/lit8 v0, v0, 0x1f

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/navigation/NavBackStackEntry;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 78
    move-result v1

    .line 79
    add-int/2addr v0, v1

    .line 80
    return v0
.end method

.method public final i(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/Lifecycle$Event;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    const-string v0, "event"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle$Event;->c()Landroidx/lifecycle/Lifecycle$State;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-string v0, "event.targetState"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/navigation/NavBackStackEntry;->m()V

    .line 20
    return-void
.end method

.method public final j(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "outBundle"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->savedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/savedstate/SavedStateRegistryController;->e(Landroid/os/Bundle;)V

    .line 12
    return-void
.end method

.method public final k(Landroidx/navigation/NavDestination;)V
    .locals 1
    .param p1    # Landroidx/navigation/NavDestination;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    return-void
.end method

.method public final l(Landroidx/lifecycle/Lifecycle$State;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/Lifecycle$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    const-string v0, "maxState"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry;->maxLifecycle:Landroidx/lifecycle/Lifecycle$State;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/navigation/NavBackStackEntry;->m()V

    .line 11
    return-void
.end method

.method public final m()V
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/navigation/NavBackStackEntry;->savedStateRegistryAttached:Z

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->savedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/savedstate/SavedStateRegistryController;->c()V

    .line 10
    const/4 v0, 0x1

    .line 11
    .line 12
    iput-boolean v0, p0, Landroidx/navigation/NavBackStackEntry;->savedStateRegistryAttached:Z

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->viewModelStoreProvider:Landroidx/navigation/NavViewModelStoreProvider;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Landroidx/lifecycle/SavedStateHandleSupport;->c(Landroidx/savedstate/SavedStateRegistryOwner;)V

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->savedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->savedState:Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroidx/savedstate/SavedStateRegistryController;->d(Landroid/os/Bundle;)V

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 32
    move-result v0

    .line 33
    .line 34
    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->maxLifecycle:Landroidx/lifecycle/Lifecycle$State;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 38
    move-result v1

    .line 39
    .line 40
    if-ge v0, v1, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 43
    .line 44
    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->o(Landroidx/lifecycle/Lifecycle$State;)V

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_2
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 51
    .line 52
    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry;->maxLifecycle:Landroidx/lifecycle/Lifecycle$State;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->o(Landroidx/lifecycle/Lifecycle$State;)V

    .line 56
    :goto_0
    return-void
.end method
