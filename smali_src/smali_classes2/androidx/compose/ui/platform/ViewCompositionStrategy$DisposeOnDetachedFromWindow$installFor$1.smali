.class final Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindow$installFor$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindow;->a(Landroidx/compose/ui/platform/AbstractComposeView;)Le8/a;
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
.field final synthetic $listener:Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindow$installFor$listener$1;

.field final synthetic $view:Landroidx/compose/ui/platform/AbstractComposeView;


# direct methods
.method constructor <init>(Landroidx/compose/ui/platform/AbstractComposeView;Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindow$installFor$listener$1;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindow$installFor$1;->$view:Landroidx/compose/ui/platform/AbstractComposeView;

    iput-object p2, p0, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindow$installFor$1;->$listener:Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindow$installFor$listener$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindow$installFor$1;->invoke()V

    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindow$installFor$1;->$view:Landroidx/compose/ui/platform/AbstractComposeView;

    iget-object v1, p0, Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindow$installFor$1;->$listener:Landroidx/compose/ui/platform/ViewCompositionStrategy$DisposeOnDetachedFromWindow$installFor$listener$1;

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method
