.class Lcom/narvii/item/detail/ItemDetailFragment$RelatedBlogHeaderAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "ItemDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/item/detail/ItemDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RelatedBlogHeaderAdapter"
.end annotation


# instance fields
.field private isListEmpty:Z

.field final synthetic this$0:Lcom/narvii/item/detail/ItemDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/item/detail/ItemDetailFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1550
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$RelatedBlogHeaderAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 1551
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, 0x1

    .line 1548
    iput-boolean p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$RelatedBlogHeaderAdapter;->isListEmpty:Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 1561
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$RelatedBlogHeaderAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {v0}, Lcom/narvii/item/detail/ItemDetailFragment;->access$3300(Lcom/narvii/item/detail/ItemDetailFragment;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1564
    :cond_0
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$RelatedBlogHeaderAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->isMine()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$RelatedBlogHeaderAdapter;->isListEmpty:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const p1, 0x7f0b0141

    .line 1584
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0904f4

    .line 1585
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1587
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0600ed

    goto :goto_0

    :cond_0
    const v0, 0x7f0600ef

    :goto_0
    invoke-static {p3, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    const p2, 0x7f090b5b

    .line 1590
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_3

    const p3, 0x7f0f037b

    .line 1594
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 1595
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    if-eqz p3, :cond_2

    const/4 p3, -0x1

    goto :goto_1

    :cond_2
    const p3, -0x777778

    :goto_1
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setListEmpty(Z)V
    .locals 0

    .line 1568
    iput-boolean p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$RelatedBlogHeaderAdapter;->isListEmpty:Z

    .line 1569
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
