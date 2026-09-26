.class Landroidx/appcompat/app/AlertController$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1
    .line 2
    iget-object p2, p0, Landroidx/appcompat/app/AlertController$4;->val$top:Landroid/view/View;

    .line 3
    .line 4
    iget-object p3, p0, Landroidx/appcompat/app/AlertController$4;->val$bottom:Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2, p3}, Landroidx/appcompat/app/AlertController;->f(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 8
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
