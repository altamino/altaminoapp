.class public final Landroidx/lifecycle/ViewTreeViewModelStoreOwner;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/view/View;)Landroidx/lifecycle/ViewModelStoreOwner;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Landroidx/lifecycle/ViewTreeViewModelStoreOwner$findViewTreeViewModelStoreOwner$1;->INSTANCE:Landroidx/lifecycle/ViewTreeViewModelStoreOwner$findViewTreeViewModelStoreOwner$1;

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0}, Lkotlin/sequences/j;->f(Ljava/lang/Object;Le8/l;)Lkotlin/sequences/g;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    sget-object v0, Landroidx/lifecycle/ViewTreeViewModelStoreOwner$findViewTreeViewModelStoreOwner$2;->INSTANCE:Landroidx/lifecycle/ViewTreeViewModelStoreOwner$findViewTreeViewModelStoreOwner$2;

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Lkotlin/sequences/j;->v(Lkotlin/sequences/g;Le8/l;)Lkotlin/sequences/g;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Lkotlin/sequences/j;->o(Lkotlin/sequences/g;)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 24
    return-object p0
.end method

.method public static final b(Landroid/view/View;Landroidx/lifecycle/ViewModelStoreOwner;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/lifecycle/ViewModelStoreOwner;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget v0, Landroidx/lifecycle/viewmodel/R$id;->view_tree_view_model_store_owner:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 11
    return-void
.end method
