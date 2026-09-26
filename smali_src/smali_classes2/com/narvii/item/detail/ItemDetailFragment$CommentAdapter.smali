.class Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;
.super Lcom/narvii/comment/list/CommentListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/item/detail/ItemDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommentAdapter"
.end annotation


# instance fields
.field flHeight:I

.field final synthetic this$0:Lcom/narvii/item/detail/ItemDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/item/detail/ItemDetailFragment;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/comment/list/CommentListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string v0, "Page Detailed View"

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->source:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v0, Lcom/narvii/util/logging/LoggingSource;->PostDetailView:Lcom/narvii/util/logging/LoggingSource;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/comment/list/CommentListAdapter;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 14
    .line 15
    const-string v0, "loggingOrigin"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/narvii/util/logging/LoggingOrigin;->valueOf(Ljava/lang/String;)Lcom/narvii/util/logging/LoggingOrigin;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    iput-object p1, p0, Lcom/narvii/comment/list/CommentListAdapter;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 28
    :cond_0
    return-void
.end method

.method public static safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

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
.method public autoLoadNextPage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected firstLoadingHeight()I
    .locals 1

    iget v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;->flHeight:I

    return v0
.end method

.method public getCount()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/item/detail/ItemDetailFragment;->access$2700(Lcom/narvii/item/detail/ItemDetailFragment;)Z

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
    .line 13
    :cond_0
    invoke-super {p0}, Lcom/narvii/comment/list/CommentListAdapter;->getCount()I

    .line 14
    move-result v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 29
    move-result v1

    .line 30
    .line 31
    :goto_0
    if-lez v1, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->pageSize()I

    .line 35
    move-result v2

    .line 36
    .line 37
    if-ge v1, v2, :cond_2

    .line 38
    .line 39
    add-int/lit8 v0, v0, -0x1

    .line 40
    :cond_2
    return v0
.end method

.method protected getParent()Lcom/narvii/model/NVObject;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/list/NVPagedAdapter;->LOAD_MORE:Lcom/narvii/util/Tag;

    .line 3
    .line 4
    if-ne p3, v0, :cond_0

    .line 5
    .line 6
    new-instance p1, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {p1}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;-><init>()V

    .line 10
    .line 11
    iget-object p2, p0, Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    .line 18
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->feed(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    .line 23
    move-result-object p1

    .line 24
    const/4 p2, 0x2

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->type(I)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    iget-object p2, p0, Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 31
    .line 32
    const-string p3, "id"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->id(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    const-string p2, "Page Detailed View"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->source(Ljava/lang/String;)Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/narvii/comment/list/CommentListFragment$IntentBuilder;->build()Landroid/content/Intent;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-static {p0, p1}, Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 54
    const/4 p1, 0x1

    .line 55
    return p1

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/comment/list/CommentListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 59
    move-result p1

    .line 60
    return p1
.end method

.method protected onViewStickerClicked(Landroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 3
    .line 4
    const/16 v1, 0x6f

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1, v1}, Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;->safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 8
    return-void
.end method

.method public showListEnd(I)Z
    .locals 0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
