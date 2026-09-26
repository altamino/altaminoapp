.class public final Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _toggleViewState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final toggleOptionsRepository:Lcom/narvii/util/debug/model/ToggleOptionsRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final toggleViewState:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;->Companion:Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/util/debug/model/ToggleOptionsRepository;)V
    .locals 1
    .param p1    # Lcom/narvii/util/debug/model/ToggleOptionsRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "toggleOptionsRepository"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;->toggleOptionsRepository:Lcom/narvii/util/debug/model/ToggleOptionsRepository;

    .line 12
    .line 13
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    sget-object v0, Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Loading;->INSTANCE:Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState$Loading;

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    iput-object p1, p0, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;->_toggleViewState:Landroidx/lifecycle/MutableLiveData;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;->toggleViewState:Landroidx/lifecycle/LiveData;

    .line 23
    return-void
.end method

.method public static final synthetic access$getToggleOptionsRepository$p(Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;)Lcom/narvii/util/debug/model/ToggleOptionsRepository;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;->toggleOptionsRepository:Lcom/narvii/util/debug/model/ToggleOptionsRepository;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$get_toggleViewState$p(Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;->_toggleViewState:Landroidx/lifecycle/MutableLiveData;

    .line 3
    return-object p0
.end method

.method public static final factory(Lcom/narvii/util/debug/model/ToggleOptionsRepository;)Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1
    .param p0    # Lcom/narvii/util/debug/model/ToggleOptionsRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;->Companion:Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel$Companion;

    invoke-virtual {v0, p0}, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel$Companion;->factory(Lcom/narvii/util/debug/model/ToggleOptionsRepository;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final fetchToggleOptions()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/o0;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    new-instance v3, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel$fetchToggleOptions$1;

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    .line 12
    invoke-direct {v3, p0, v4}, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel$fetchToggleOptions$1;-><init>(Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;Lkotlin/coroutines/d;)V

    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x0

    .line 15
    .line 16
    .line 17
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 18
    return-void
.end method

.method public final getToggleViewState()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/narvii/util/debug/viewmodel/DebugToggleOptionsViewState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;->toggleViewState:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final updateAttestationFailure(Z)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/o0;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    new-instance v3, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel$updateAttestationFailure$1;

    .line 9
    const/4 v4, 0x0

    .line 10
    .line 11
    .line 12
    invoke-direct {v3, p0, p1, v4}, Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel$updateAttestationFailure$1;-><init>(Lcom/narvii/util/debug/viewmodel/ToggleOptionsViewModel;ZLkotlin/coroutines/d;)V

    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x0

    .line 15
    .line 16
    .line 17
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 18
    return-void
.end method
