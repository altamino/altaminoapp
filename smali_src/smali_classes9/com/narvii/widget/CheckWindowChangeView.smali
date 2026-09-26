.class public Lcom/narvii/widget/CheckWindowChangeView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/CheckWindowChangeView$onWindowVisibilityChangedListener;,
        Lcom/narvii/widget/CheckWindowChangeView$OnWindowFocusChangedListener;
    }
.end annotation


# instance fields
.field onWindowFocusChangedListener:Lcom/narvii/widget/CheckWindowChangeView$OnWindowFocusChangedListener;

.field onWindowVisibilityChangedListener:Lcom/narvii/widget/CheckWindowChangeView$onWindowVisibilityChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    const/16 p1, 0x8

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widget/CheckWindowChangeView;->onWindowFocusChangedListener:Lcom/narvii/widget/CheckWindowChangeView$OnWindowFocusChangedListener;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Lcom/narvii/widget/CheckWindowChangeView$OnWindowFocusChangedListener;->onChanged(Z)V

    .line 11
    :cond_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widget/CheckWindowChangeView;->onWindowVisibilityChangedListener:Lcom/narvii/widget/CheckWindowChangeView$onWindowVisibilityChangedListener;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Lcom/narvii/widget/CheckWindowChangeView$onWindowVisibilityChangedListener;->onChanged(I)V

    .line 11
    :cond_0
    return-void
.end method

.method public setOnWindowFocusChangedListener(Lcom/narvii/widget/CheckWindowChangeView$OnWindowFocusChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/CheckWindowChangeView;->onWindowFocusChangedListener:Lcom/narvii/widget/CheckWindowChangeView$OnWindowFocusChangedListener;

    return-void
.end method

.method public setOnWindowVisibilityChangedListener(Lcom/narvii/widget/CheckWindowChangeView$onWindowVisibilityChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/CheckWindowChangeView;->onWindowVisibilityChangedListener:Lcom/narvii/widget/CheckWindowChangeView$onWindowVisibilityChangedListener;

    return-void
.end method
