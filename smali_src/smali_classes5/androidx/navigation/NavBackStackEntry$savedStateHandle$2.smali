.class final Landroidx/navigation/NavBackStackEntry$savedStateHandle$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/NavBackStackEntry;-><init>(Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Landroidx/lifecycle/SavedStateHandle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/navigation/NavBackStackEntry;


# direct methods
.method constructor <init>(Landroidx/navigation/NavBackStackEntry;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry$savedStateHandle$2;->this$0:Landroidx/navigation/NavBackStackEntry;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Landroidx/lifecycle/SavedStateHandle;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry$savedStateHandle$2;->this$0:Landroidx/navigation/NavBackStackEntry;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/navigation/NavBackStackEntry;->c(Landroidx/navigation/NavBackStackEntry;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry$savedStateHandle$2;->this$0:Landroidx/navigation/NavBackStackEntry;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroidx/navigation/NavBackStackEntry;->b(Landroidx/navigation/NavBackStackEntry;)Landroidx/lifecycle/LifecycleRegistry;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/lifecycle/LifecycleRegistry;->b()Landroidx/lifecycle/Lifecycle$State;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 21
    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/navigation/NavBackStackEntry$savedStateHandle$2;->this$0:Landroidx/navigation/NavBackStackEntry;

    .line 27
    .line 28
    new-instance v2, Landroidx/navigation/NavBackStackEntry$NavResultSavedStateFactory;

    .line 29
    .line 30
    iget-object v3, p0, Landroidx/navigation/NavBackStackEntry$savedStateHandle$2;->this$0:Landroidx/navigation/NavBackStackEntry;

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, v3}, Landroidx/navigation/NavBackStackEntry$NavResultSavedStateFactory;-><init>(Landroidx/savedstate/SavedStateRegistryOwner;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    .line 37
    .line 38
    const-class v1, Landroidx/navigation/NavBackStackEntry$SavedStateViewModel;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->a(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    check-cast v0, Landroidx/navigation/NavBackStackEntry$SavedStateViewModel;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry$SavedStateViewModel;->d()Landroidx/lifecycle/SavedStateHandle;

    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string v1, "You cannot access the NavBackStackEntry\'s SavedStateHandle after the NavBackStackEntry is destroyed."

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

    .line 62
    .line 63
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    const-string v1, "You cannot access the NavBackStackEntry\'s SavedStateHandle until it is added to the NavController\'s back stack (i.e., the Lifecycle of the NavBackStackEntry reaches the CREATED state)."

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 73
    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/navigation/NavBackStackEntry$savedStateHandle$2;->b()Landroidx/lifecycle/SavedStateHandle;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
