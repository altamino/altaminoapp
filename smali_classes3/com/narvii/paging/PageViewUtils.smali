.class public Lcom/narvii/paging/PageViewUtils;
.super Ljava/lang/Object;
.source "PageViewUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPageViewParent(Landroid/view/View;)Lcom/narvii/paging/PageView;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :goto_0
    if-eqz p0, :cond_3

    .line 32
    instance-of v1, p0, Lcom/narvii/paging/PageView;

    if-eqz v1, :cond_1

    .line 33
    check-cast p0, Lcom/narvii/paging/PageView;

    return-object p0

    .line 35
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_2

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_2
    move-object p0, v0

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static onBindViewHolder(Lcom/narvii/app/NVFragment;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 15
    instance-of p2, p1, Lcom/narvii/paging/PageView;

    if-eqz p2, :cond_2

    .line 16
    check-cast p1, Lcom/narvii/paging/PageView;

    .line 17
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isResumed()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 18
    invoke-virtual {p1}, Lcom/narvii/paging/PageView;->onResume()V

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/paging/PageView;->onPause()V

    :cond_2
    :goto_0
    return-void
.end method
