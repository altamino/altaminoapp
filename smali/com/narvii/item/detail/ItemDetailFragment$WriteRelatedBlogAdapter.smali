.class Lcom/narvii/item/detail/ItemDetailFragment$WriteRelatedBlogAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "ItemDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/item/detail/ItemDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WriteRelatedBlogAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/item/detail/ItemDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/item/detail/ItemDetailFragment;)V
    .locals 0

    .line 1604
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$WriteRelatedBlogAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 1605
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 2

    .line 1610
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$WriteRelatedBlogAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {v0}, Lcom/narvii/item/detail/ItemDetailFragment;->access$3400(Lcom/narvii/item/detail/ItemDetailFragment;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1613
    :cond_0
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$WriteRelatedBlogAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->isMine()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    :cond_1
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1618
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1623
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_1

    const p1, 0x7f0b0166

    .line 1649
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090309

    .line 1651
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 1652
    iget-object p3, p0, Lcom/narvii/item/detail/ItemDetailFragment$WriteRelatedBlogAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {p3}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    move-result p3

    if-nez p3, :cond_0

    const p3, 0x7f080315

    goto :goto_0

    :cond_0
    const p3, 0x7f080316

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1653
    iget-object p2, p0, Lcom/narvii/item/detail/ItemDetailFragment$WriteRelatedBlogAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    const p3, 0x7f090d14

    const v0, -0x777778

    invoke-static {p2, p1, p3, v0}, Lcom/narvii/item/detail/ItemDetailFragment;->access$3500(Lcom/narvii/item/detail/ItemDetailFragment;Landroid/view/View;II)V

    return-object p1

    .line 1656
    :cond_1
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$WriteRelatedBlogAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    move-result p1

    if-nez p1, :cond_2

    const p1, 0x7f0b04b7

    goto :goto_1

    :cond_2
    const p1, 0x7f0b04b8

    .line 1657
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1664
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/narvii/item/detail/ItemDetailFragment$WriteRelatedBlogAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const-class p3, Lcom/narvii/blog/post/BlogPostActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1665
    new-instance p2, Lcom/narvii/blog/post/BlogPost;

    invoke-direct {p2}, Lcom/narvii/blog/post/BlogPost;-><init>()V

    .line 1666
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 1667
    iget-object p4, p0, Lcom/narvii/item/detail/ItemDetailFragment$WriteRelatedBlogAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {p4}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1668
    iput-object p3, p2, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    .line 1669
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "post"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "Source"

    const-string p3, "Write a Blog About This Favorite"

    .line 1670
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1671
    sget-object p2, Lcom/narvii/util/logging/LoggingSource;->PostDetailView:Lcom/narvii/util/logging/LoggingSource;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    const-string p3, "loggingSource"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1672
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
