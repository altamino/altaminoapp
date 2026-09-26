.class public Landroidx/core/view/NestedScrollingParentHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mNestedScrollAxesNonTouch:I

.field private mNestedScrollAxesTouch:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/core/view/NestedScrollingParentHelper;->mNestedScrollAxesTouch:I

    iget v1, p0, Landroidx/core/view/NestedScrollingParentHelper;->mNestedScrollAxesNonTouch:I

    or-int/2addr v0, v1

    return v0
.end method

.method public b(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/core/view/NestedScrollingParentHelper;->c(Landroid/view/View;Landroid/view/View;II)V

    .line 5
    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/View;II)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    iput p3, p0, Landroidx/core/view/NestedScrollingParentHelper;->mNestedScrollAxesNonTouch:I

    goto :goto_0

    :cond_0
    iput p3, p0, Landroidx/core/view/NestedScrollingParentHelper;->mNestedScrollAxesTouch:I

    :goto_0
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/core/view/NestedScrollingParentHelper;->e(Landroid/view/View;I)V

    .line 5
    return-void
.end method

.method public e(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_0

    iput v0, p0, Landroidx/core/view/NestedScrollingParentHelper;->mNestedScrollAxesNonTouch:I

    goto :goto_0

    :cond_0
    iput v0, p0, Landroidx/core/view/NestedScrollingParentHelper;->mNestedScrollAxesTouch:I

    :goto_0
    return-void
.end method
