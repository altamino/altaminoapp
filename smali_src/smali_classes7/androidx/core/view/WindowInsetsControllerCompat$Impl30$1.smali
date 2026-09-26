.class Landroidx/core/view/WindowInsetsControllerCompat$Impl30$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/WindowInsetsAnimationControlListener;


# instance fields
.field private mCompatAnimController:Landroidx/core/view/WindowInsetsAnimationControllerCompat;

.field final synthetic this$0:Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

.field final synthetic val$listener:Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;


# virtual methods
.method public onCancelled(Landroid/view/WindowInsetsAnimationController;)V
    .locals 1
    .param p1    # Landroid/view/WindowInsetsAnimationController;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$1;->val$listener:Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$1;->mCompatAnimController:Landroidx/core/view/WindowInsetsAnimationControllerCompat;

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-interface {v0, p1}, Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;->a(Landroidx/core/view/WindowInsetsAnimationControllerCompat;)V

    .line 12
    return-void
.end method

.method public onFinished(Landroid/view/WindowInsetsAnimationController;)V
    .locals 1
    .param p1    # Landroid/view/WindowInsetsAnimationController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$1;->val$listener:Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$1;->mCompatAnimController:Landroidx/core/view/WindowInsetsAnimationControllerCompat;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;->c(Landroidx/core/view/WindowInsetsAnimationControllerCompat;)V

    .line 8
    return-void
.end method

.method public onReady(Landroid/view/WindowInsetsAnimationController;I)V
    .locals 1
    .param p1    # Landroid/view/WindowInsetsAnimationController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsAnimationControllerCompat;-><init>(Landroid/view/WindowInsetsAnimationController;)V

    .line 6
    .line 7
    iput-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$1;->mCompatAnimController:Landroidx/core/view/WindowInsetsAnimationControllerCompat;

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/core/view/WindowInsetsControllerCompat$Impl30$1;->val$listener:Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;

    .line 10
    .line 11
    .line 12
    invoke-interface {p1, v0, p2}, Landroidx/core/view/WindowInsetsAnimationControlListenerCompat;->b(Landroidx/core/view/WindowInsetsAnimationControllerCompat;I)V

    .line 13
    return-void
.end method
