.class public Lcom/narvii/paging/PageViewUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getPageViewParent(Landroid/view/View;)Lcom/narvii/paging/PageView;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    :cond_0
    :goto_0
    if-eqz p0, :cond_3

    .line 7
    .line 8
    instance-of v1, p0, Lcom/narvii/paging/PageView;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    check-cast p0, Lcom/narvii/paging/PageView;

    .line 13
    return-object p0

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    instance-of v1, v1, Landroid/view/View;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    check-cast p0, Landroid/view/View;

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    move-object p0, v0

    .line 30
    goto :goto_0

    .line 31
    :cond_3
    return-object v0
.end method

.method public static onBindViewHolder(Lcom/narvii/app/NVFragment;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 8
    .line 9
    instance-of p2, p1, Lcom/narvii/paging/PageView;

    .line 10
    .line 11
    if-eqz p2, :cond_2

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/paging/PageView;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 17
    move-result p0

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/narvii/paging/PageView;->onResume()V

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/paging/PageView;->onPause()V

    .line 27
    :cond_2
    :goto_0
    return-void
.end method
