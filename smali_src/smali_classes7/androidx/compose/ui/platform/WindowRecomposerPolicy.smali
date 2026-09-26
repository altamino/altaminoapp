.class public final Landroidx/compose/ui/platform/WindowRecomposerPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Landroidx/compose/ui/InternalComposeUiApi;
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/ui/platform/WindowRecomposerPolicy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final factory:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/compose/ui/platform/WindowRecomposerFactory;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/compose/ui/platform/WindowRecomposerPolicy;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/compose/ui/platform/WindowRecomposerPolicy;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/platform/WindowRecomposerPolicy;->INSTANCE:Landroidx/compose/ui/platform/WindowRecomposerPolicy;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    sget-object v1, Landroidx/compose/ui/platform/WindowRecomposerFactory;->Companion:Landroidx/compose/ui/platform/WindowRecomposerFactory$Companion;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/compose/ui/platform/WindowRecomposerFactory$Companion;->a()Landroidx/compose/ui/platform/WindowRecomposerFactory;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    sput-object v0, Landroidx/compose/ui/platform/WindowRecomposerPolicy;->factory:Ljava/util/concurrent/atomic/AtomicReference;

    .line 21
    .line 22
    const/16 v0, 0x8

    .line 23
    .line 24
    sput v0, Landroidx/compose/ui/platform/WindowRecomposerPolicy;->$stable:I

    .line 25
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Landroidx/compose/runtime/Recomposer;
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "rootView"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/platform/WindowRecomposerPolicy;->factory:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Landroidx/compose/ui/platform/WindowRecomposerFactory;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, p1}, Landroidx/compose/ui/platform/WindowRecomposerFactory;->a(Landroid/view/View;)Landroidx/compose/runtime/Recomposer;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->i(Landroid/view/View;Landroidx/compose/runtime/CompositionContext;)V

    .line 21
    .line 22
    sget-object v1, Lkotlinx/coroutines/t1;->INSTANCE:Lkotlinx/coroutines/t1;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    const-string v3, "rootView.handler"

    .line 29
    .line 30
    .line 31
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    const-string v3, "windowRecomposer cleanup"

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v3}, Lkotlinx/coroutines/android/HandlerDispatcherKt;->from(Landroid/os/Handler;Ljava/lang/String;)Lkotlinx/coroutines/android/HandlerDispatcher;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Lkotlinx/coroutines/android/HandlerDispatcher;->getImmediate()Lkotlinx/coroutines/android/HandlerDispatcher;

    .line 41
    move-result-object v2

    .line 42
    const/4 v3, 0x0

    .line 43
    .line 44
    new-instance v4, Landroidx/compose/ui/platform/WindowRecomposerPolicy$createAndInstallWindowRecomposer$unsetJob$1;

    .line 45
    const/4 v5, 0x0

    .line 46
    .line 47
    .line 48
    invoke-direct {v4, v0, p1, v5}, Landroidx/compose/ui/platform/WindowRecomposerPolicy$createAndInstallWindowRecomposer$unsetJob$1;-><init>(Landroidx/compose/runtime/Recomposer;Landroid/view/View;Lkotlin/coroutines/d;)V

    .line 49
    const/4 v5, 0x2

    .line 50
    const/4 v6, 0x0

    .line 51
    .line 52
    .line 53
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;Lkotlinx/coroutines/q0;Le8/p;ILjava/lang/Object;)Lkotlinx/coroutines/b2;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    new-instance v2, Landroidx/compose/ui/platform/WindowRecomposerPolicy$createAndInstallWindowRecomposer$1;

    .line 57
    .line 58
    .line 59
    invoke-direct {v2, v1}, Landroidx/compose/ui/platform/WindowRecomposerPolicy$createAndInstallWindowRecomposer$1;-><init>(Lkotlinx/coroutines/b2;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 63
    return-object v0
.end method
