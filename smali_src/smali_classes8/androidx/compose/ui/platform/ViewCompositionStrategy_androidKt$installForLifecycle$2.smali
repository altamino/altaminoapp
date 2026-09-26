.class final Landroidx/compose/ui/platform/ViewCompositionStrategy_androidKt$installForLifecycle$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/platform/ViewCompositionStrategy_androidKt;->c(Landroidx/compose/ui/platform/AbstractComposeView;Landroidx/lifecycle/Lifecycle;)Le8/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/a<",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $lifecycle:Landroidx/lifecycle/Lifecycle;

.field final synthetic $observer:Landroidx/lifecycle/LifecycleEventObserver;


# direct methods
.method constructor <init>(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleEventObserver;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/platform/ViewCompositionStrategy_androidKt$installForLifecycle$2;->$lifecycle:Landroidx/lifecycle/Lifecycle;

    iput-object p2, p0, Landroidx/compose/ui/platform/ViewCompositionStrategy_androidKt$installForLifecycle$2;->$observer:Landroidx/lifecycle/LifecycleEventObserver;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/ViewCompositionStrategy_androidKt$installForLifecycle$2;->invoke()V

    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/platform/ViewCompositionStrategy_androidKt$installForLifecycle$2;->$lifecycle:Landroidx/lifecycle/Lifecycle;

    iget-object v1, p0, Landroidx/compose/ui/platform/ViewCompositionStrategy_androidKt$installForLifecycle$2;->$observer:Landroidx/lifecycle/LifecycleEventObserver;

    .line 2
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method
