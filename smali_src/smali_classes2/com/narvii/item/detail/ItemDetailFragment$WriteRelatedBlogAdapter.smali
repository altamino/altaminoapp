.class Lcom/narvii/item/detail/ItemDetailFragment$WriteRelatedBlogAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$WriteRelatedBlogAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$WriteRelatedBlogAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/item/detail/ItemDetailFragment;->access$2900(Lcom/narvii/item/detail/ItemDetailFragment;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return v1

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$WriteRelatedBlogAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->isMine()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    const/4 v1, 0x2

    .line 20
    :cond_1
    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    move-result v0

    .line 5
    add-int/2addr v0, p1

    .line 6
    int-to-long v0, v0

    .line 7
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    .line 5
    const p1, 0x7f0d0184

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    const p2, 0x7f0a03dc

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    check-cast p2, Landroid/widget/ImageView;

    .line 19
    .line 20
    iget-object p3, p0, Lcom/narvii/item/detail/ItemDetailFragment$WriteRelatedBlogAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    .line 24
    move-result p3

    .line 25
    .line 26
    if-nez p3, :cond_0

    .line 27
    .line 28
    .line 29
    const p3, 0x7f08041f

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_0
    const p3, 0x7f080420

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    .line 38
    iget-object p2, p0, Lcom/narvii/item/detail/ItemDetailFragment$WriteRelatedBlogAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 39
    .line 40
    .line 41
    const p3, 0x7f0a103f

    .line 42
    .line 43
    .line 44
    const v0, -0x777778

    .line 45
    .line 46
    .line 47
    invoke-static {p2, p1, p3, v0}, Lcom/narvii/item/detail/ItemDetailFragment;->access$3000(Lcom/narvii/item/detail/ItemDetailFragment;Landroid/view/View;II)V

    .line 48
    return-object p1

    .line 49
    .line 50
    :cond_1
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$WriteRelatedBlogAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    .line 54
    move-result p1

    .line 55
    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    .line 59
    const p1, 0x7f0d04e4

    .line 60
    goto :goto_1

    .line 61
    .line 62
    .line 63
    :cond_2
    const p1, 0x7f0d04e5

    .line 64
    .line 65
    .line 66
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 71
    move-result-object p1

    .line 72
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

    .line 1
    .line 2
    new-instance p1, Landroid/content/Intent;

    .line 3
    .line 4
    iget-object p2, p0, Lcom/narvii/item/detail/ItemDetailFragment$WriteRelatedBlogAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    const-class p3, Lcom/narvii/blog/post/BlogPostActivity;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    .line 15
    new-instance p2, Lcom/narvii/blog/post/BlogPost;

    .line 16
    .line 17
    .line 18
    invoke-direct {p2}, Lcom/narvii/blog/post/BlogPost;-><init>()V

    .line 19
    .line 20
    new-instance p3, Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    iget-object p4, p0, Lcom/narvii/item/detail/ItemDetailFragment$WriteRelatedBlogAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p4}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 29
    move-result-object p4

    .line 30
    .line 31
    check-cast p4, Lcom/narvii/model/Item;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    iput-object p3, p2, Lcom/narvii/blog/post/BlogPost;->itemList:Ljava/util/List;

    .line 37
    .line 38
    const-string p3, "post"

    .line 39
    .line 40
    .line 41
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    const-string p2, "Source"

    .line 48
    .line 49
    const-string p3, "Write a Blog About This Favorite"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    .line 54
    sget-object p2, Lcom/narvii/util/logging/LoggingSource;->PostDetailView:Lcom/narvii/util/logging/LoggingSource;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 58
    move-result-object p2

    .line 59
    .line 60
    const-string p3, "loggingSource"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    invoke-static {p0, p1}, Lcom/narvii/item/detail/ItemDetailFragment$WriteRelatedBlogAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 67
    const/4 p1, 0x1

    .line 68
    return p1
.end method
