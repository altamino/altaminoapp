.class Landroidx/appcompat/app/AlertController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;


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
.method public a(Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 0

    .line 1
    .line 2
    iget-object p2, p0, Landroidx/appcompat/app/AlertController$2;->val$top:Landroid/view/View;

    .line 3
    .line 4
    iget-object p3, p0, Landroidx/appcompat/app/AlertController$2;->val$bottom:Landroid/view/View;

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2, p3}, Landroidx/appcompat/app/AlertController;->f(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 8
    return-void
.end method
