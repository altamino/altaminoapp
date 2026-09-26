.class Landroidx/appcompat/app/AlertController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AlertController;->p(Landroid/view/ViewGroup;Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AlertController;

.field final synthetic val$bottom:Landroid/view/View;

.field final synthetic val$top:Landroid/view/View;


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$3;->this$0:Landroidx/appcompat/app/AlertController;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$3;->val$top:Landroid/view/View;

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/appcompat/app/AlertController$3;->val$bottom:Landroid/view/View;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Landroidx/appcompat/app/AlertController;->f(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 12
    return-void
.end method
