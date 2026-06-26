.class Lcom/narvii/item/detail/ItemDetailFragment$Adapter;
.super Lcom/narvii/detail/FeedDetailAdapter;
.source "ItemDetailFragment.java"

# interfaces
.implements Lcom/narvii/widget/ThumbGallery$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/item/detail/ItemDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/detail/FeedDetailAdapter<",
        "Lcom/narvii/model/Item;",
        ">;",
        "Lcom/narvii/widget/ThumbGallery$OnItemClickListener;"
    }
.end annotation


# instance fields
.field contributorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/item/contributor/Contributor;",
            ">;"
        }
    .end annotation
.end field

.field final contributorListener:Lcom/narvii/util/http/ApiResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/item/contributor/ContributorListResponse;",
            ">;"
        }
    .end annotation
.end field

.field contributorRequest:Lcom/narvii/util/http/ApiRequest;

.field contributorsErrorMsg:Ljava/lang/String;

.field fmt:Lcom/narvii/util/DateTimeFormatter;

.field inMyFavorites:Z

.field final optinAds:Z

.field final synthetic this$0:Lcom/narvii/item/detail/ItemDetailFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/item/detail/ItemDetailFragment;)V
    .locals 2

    .line 694
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    .line 695
    invoke-direct {p0, p1}, Lcom/narvii/detail/FeedDetailAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 892
    new-instance v0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter$1;

    const-class v1, Lcom/narvii/item/contributor/ContributorListResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter$1;-><init>(Lcom/narvii/item/detail/ItemDetailFragment$Adapter;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 696
    new-instance v0, Lcom/narvii/util/DateTimeFormatter;

    invoke-direct {v0}, Lcom/narvii/util/DateTimeFormatter;-><init>()V

    iput-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->fmt:Lcom/narvii/util/DateTimeFormatter;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->optinAds:Z

    return-void
.end method


# virtual methods
.method protected buildCells(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 919
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Item;

    .line 920
    invoke-virtual {p0}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->taggedObjects()Ljava/util/List;

    move-result-object v1

    .line 921
    iget-object v2, v0, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/narvii/model/User;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 924
    :goto_0
    sget-object v5, Lcom/narvii/item/detail/ItemDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 928
    sget-object v5, Lcom/narvii/item/detail/ItemDetailFragment;->ABOUT_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 931
    iget-object v5, v0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array v6, v4, [Ljava/lang/String;

    const-string/jumbo v7, "props"

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v5

    if-eqz v5, :cond_4

    if-eqz v5, :cond_2

    .line 934
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 935
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v7, v6, :cond_3

    .line 936
    invoke-virtual {v5, v7}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/String;

    const-string/jumbo v11, "value"

    aput-object v11, v10, v3

    .line 937
    invoke-static {v9, v10}, Lcom/narvii/util/JacksonUtils;->nodeString(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    add-int/lit8 v8, v8, 0x1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :cond_3
    if-lez v8, :cond_4

    .line 943
    sget-object v5, Lcom/narvii/item/detail/ItemDetailFragment;->PROPERTY:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 944
    sget-object v5, Lcom/narvii/detail/DetailAdapter;->DIVIDER_LINE:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 949
    :cond_4
    iget-object v5, v0, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {v5}, Lcom/narvii/detail/FeedDetailFragment;->isMine()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 950
    sget-object v3, Lcom/narvii/item/detail/ItemDetailFragment;->ADD_DESC:Lcom/narvii/detail/DetailAdapter$AddTag;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 952
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 953
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 954
    iget-object v7, v0, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    iget-object v8, v0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    invoke-virtual {p0, v7, v8, v6, v5}, Lcom/narvii/detail/DetailAdapter;->splitSegments(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object v5, v6

    .line 970
    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 973
    :goto_2
    iget-object v3, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {v3}, Lcom/narvii/item/detail/ItemDetailFragment;->access$1500(Lcom/narvii/item/detail/ItemDetailFragment;)Z

    move-result v3

    if-nez v3, :cond_6

    return-void

    .line 978
    :cond_6
    invoke-virtual {p0, p1}, Lcom/narvii/detail/FeedDetailAdapter;->addDivider(Ljava/util/List;)V

    .line 981
    iget-object v3, v0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v4, :cond_7

    .line 982
    sget-object v3, Lcom/narvii/item/detail/ItemDetailFragment;->GALLERY_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 983
    sget-object v3, Lcom/narvii/item/detail/ItemDetailFragment;->GALLERY:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz v1, :cond_8

    .line 987
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 988
    sget-object v1, Lcom/narvii/detail/FeedDetailAdapter;->LINKED_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 989
    sget-object v1, Lcom/narvii/detail/FeedDetailAdapter;->LINKED:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    :cond_8
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->allowTipping()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 996
    sget-object v1, Lcom/narvii/detail/DetailAdapter;->TIPPING:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1000
    :cond_9
    iget-boolean v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->optinAds:Z

    if-eqz v1, :cond_a

    .line 1001
    sget-object v1, Lcom/narvii/item/detail/ItemDetailFragment;->AD_ABOVECOMMENT:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    if-nez v2, :cond_b

    .line 1006
    sget-object v1, Lcom/narvii/item/detail/ItemDetailFragment;->AUTHOR_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    sget-object v1, Lcom/narvii/item/detail/ItemDetailFragment;->USER:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1010
    :cond_b
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorList:Ljava/util/List;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 1011
    sget-object v1, Lcom/narvii/item/detail/ItemDetailFragment;->CONTRIBUTORS_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1012
    sget-object v1, Lcom/narvii/item/detail/ItemDetailFragment;->CONTRIBUTORS:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    if-nez v2, :cond_e

    .line 1016
    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    move-result v1

    if-lez v1, :cond_e

    .line 1017
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {v1}, Lcom/narvii/item/detail/ItemDetailFragment;->access$1600(Lcom/narvii/item/detail/ItemDetailFragment;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {v1}, Lcom/narvii/item/detail/ItemDetailFragment;->access$1700(Lcom/narvii/item/detail/ItemDetailFragment;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    move-result v1

    if-ne v1, v4, :cond_d

    goto :goto_3

    .line 1020
    :cond_d
    sget-object v1, Lcom/narvii/item/detail/ItemDetailFragment;->LIKES_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getTotalVotesCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/narvii/detail/DetailAdapter$HeaderTag;->setCount(I)V

    .line 1021
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->LIKES_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1022
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->USER_GRID:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1027
    :cond_e
    :goto_3
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1028
    sget-object v0, Lcom/narvii/detail/DetailAdapter;->COMMENT_ADD:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public commentNew()V
    .locals 2

    .line 744
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    iget-object v0, v0, Lcom/narvii/detail/FeedDetailFragment;->blockPass:Lcom/narvii/util/statistics/TmpValue;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 745
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->commentNew()V

    return-void
.end method

.method public commentNew(Ljava/lang/String;)V
    .locals 0

    .line 1312
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->commentNew(Ljava/lang/String;)V

    .line 1313
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    iget-object p1, p1, Lcom/narvii/item/detail/ItemDetailFragment;->commentAdapter:Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;

    invoke-static {p1}, Lcom/narvii/comment/post/CommentPostActivity;->setStatusListener(Lcom/narvii/comment/post/CommentPostActivity$StatusListener;)V

    return-void
.end method

.method protected commentRefresh()V
    .locals 2

    .line 1329
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    iget-object v1, v0, Lcom/narvii/item/detail/ItemDetailFragment;->commentAdapter:Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailFragment;->commentExtraHeight()I

    move-result v0

    iput v0, v1, Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;->flHeight:I

    .line 1330
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    iget-object v0, v0, Lcom/narvii/item/detail/ItemDetailFragment;->commentAdapter:Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;

    invoke-virtual {v0}, Lcom/narvii/comment/list/CommentListAdapter;->resetList()V

    return-void
.end method

.method protected commentSort()I
    .locals 1

    .line 1318
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    iget-object v0, v0, Lcom/narvii/item/detail/ItemDetailFragment;->commentAdapter:Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;

    invoke-virtual {v0}, Lcom/narvii/comment/list/CommentListAdapter;->sort()I

    move-result v0

    return v0
.end method

.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 866
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {v0}, Lcom/narvii/item/detail/ItemDetailFragment;->access$1400(Lcom/narvii/item/detail/ItemDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 869
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/item/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {v2}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method protected createUserListRequest(II)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 874
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 877
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/item/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {v2}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isGlobalInteractionScope()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "/g-vote"

    goto :goto_0

    :cond_1
    const-string v2, "/vote"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&size="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&cv=1.2"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 877
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 880
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .line 1055
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_0

    .line 1056
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    const v0, 0x7f0b0144

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/item/detail/ItemDetailFragment;->access$1802(Lcom/narvii/item/detail/ItemDetailFragment;Landroid/view/View;)Landroid/view/View;

    .line 1057
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {p1}, Lcom/narvii/item/detail/ItemDetailFragment;->access$1900(Lcom/narvii/item/detail/ItemDetailFragment;)V

    .line 1058
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {p1}, Lcom/narvii/item/detail/ItemDetailFragment;->access$1800(Lcom/narvii/item/detail/ItemDetailFragment;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1060
    :cond_0
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->GALLERY:Lcom/narvii/detail/DetailAdapter$CellType;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    const p1, 0x7f0b013f

    .line 1061
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 1064
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Item;

    .line 1066
    iget-object p3, p2, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_1

    .line 1067
    new-instance v1, Ljava/util/ArrayList;

    iget-object p2, p2, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1068
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    const p2, 0x7f090818

    .line 1071
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/ThumbGallery;

    .line 1072
    iget-boolean p3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    invoke-virtual {p2, p3}, Lcom/narvii/widget/ThumbGallery;->setDarkTheme(Z)V

    .line 1073
    invoke-virtual {p2, v1}, Lcom/narvii/widget/ThumbGallery;->setMediaList(Ljava/util/List;)V

    .line 1074
    invoke-virtual {p2, p0}, Lcom/narvii/widget/ThumbGallery;->setOnItemClickListener(Lcom/narvii/widget/ThumbGallery$OnItemClickListener;)V

    return-object p1

    .line 1077
    :cond_2
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->USER:Lcom/narvii/detail/DetailAdapter$CellType;

    const v3, 0x7f090c10

    const v4, 0x7f090764

    const/4 v5, 0x1

    if-ne p1, v0, :cond_4

    const p1, 0x7f0b0146

    .line 1078
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 1079
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Item;

    .line 1080
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/UserAvatarLayout;

    iget-object v0, p2, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {p3, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 1081
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NicknameView;

    .line 1082
    iget-object v0, p2, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {p3, v0, v5}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;Z)V

    .line 1083
    iget-boolean v0, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    invoke-virtual {p3, v0}, Lcom/narvii/widget/NicknameView;->setDarkTheme(Z)V

    const p3, 0x7f09032e

    .line 1084
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->fmt:Lcom/narvii/util/DateTimeFormatter;

    iget-object p2, p2, Lcom/narvii/model/Feed;->modifiedTime:Ljava/util/Date;

    invoke-virtual {v1, p2}, Lcom/narvii/util/DateTimeFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {p3}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    move-result p3

    if-nez p3, :cond_3

    const p3, -0x555556

    goto :goto_0

    :cond_3
    const/4 p3, -0x1

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p1

    .line 1088
    :cond_4
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->CONTRIBUTORS:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_11

    const p1, 0x7f0b0142

    .line 1089
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x6

    new-array p2, p2, [Landroid/view/View;

    const p3, 0x7f0902db

    .line 1090
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    aput-object p3, p2, v2

    const p3, 0x7f0902dc

    .line 1091
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    aput-object p3, p2, v5

    const/4 p3, 0x2

    const v0, 0x7f0902dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    aput-object v0, p2, p3

    const/4 p3, 0x3

    const v0, 0x7f0902de

    .line 1092
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    aput-object v0, p2, p3

    const/4 p3, 0x4

    const v0, 0x7f0902df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    aput-object v0, p2, p3

    const/4 p3, 0x5

    const v0, 0x7f0902e0

    .line 1093
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    aput-object v0, p2, p3

    .line 1095
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 1096
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorList:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 1097
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v6, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/item/contributor/Contributor;

    .line 1098
    invoke-virtual {v7}, Lcom/narvii/item/contributor/Contributor;->isOriginalAuthor()Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v6, v7

    goto :goto_1

    .line 1101
    :cond_5
    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    move-object v6, v1

    :cond_7
    const/4 v0, 0x0

    .line 1105
    :goto_2
    array-length v7, p2

    const/16 v8, 0x8

    if-ge v0, v7, :cond_b

    .line 1106
    aget-object v7, p2, v0

    .line 1107
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v0, :cond_8

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/narvii/item/contributor/Contributor;

    goto :goto_3

    :cond_8
    move-object v9, v1

    :goto_3
    if-nez v9, :cond_9

    .line 1109
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 1110
    :cond_9
    array-length v10, p2

    sub-int/2addr v10, v5

    if-ne v0, v10, :cond_a

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v10

    array-length v11, p2

    if-le v10, v11, :cond_a

    .line 1111
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 1113
    :cond_a
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1114
    iget-object v8, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1115
    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {v8, v9}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 1116
    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/narvii/widget/NicknameView;

    .line 1117
    invoke-virtual {v7, v9}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 1118
    iget-boolean v8, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    invoke-virtual {v7, v8}, Lcom/narvii/widget/NicknameView;->setDarkTheme(Z)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_b
    const v0, 0x7f0902e1

    .line 1121
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v6, :cond_c

    .line 1123
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 1125
    :cond_c
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1126
    iget-object v1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1127
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/UserAvatarLayout;

    invoke-virtual {v1, v6}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 1128
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/NicknameView;

    .line 1129
    invoke-virtual {v1, v6}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 1130
    iget-boolean v3, p0, Lcom/narvii/list/NVAdapter;->darkTheme:Z

    invoke-virtual {v1, v3}, Lcom/narvii/widget/NicknameView;->setDarkTheme(Z)V

    .line 1131
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NicknameView;

    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    const v3, 0x7f0f0d0d

    invoke-virtual {v1, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, -0xcb6d25

    invoke-virtual {v0, v1, v3}, Lcom/narvii/widget/NicknameView;->setRole2(Ljava/lang/String;I)V

    :goto_5
    const v0, 0x7f0909f5

    .line 1133
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    array-length p2, p2

    if-le p3, p2, :cond_d

    const/4 p2, 0x0

    goto :goto_6

    :cond_d
    const/16 p2, 0x8

    :goto_6
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1134
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    const v1, 0x7f0f0f64

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorList:Ljava/util/List;

    if-nez v4, :cond_e

    const/4 v4, 0x0

    goto :goto_7

    :cond_e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p3, v1, v3}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f060207

    const p3, 0x7f060209

    .line 1135
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/narvii/detail/DetailAdapter;->setTextColorSelector(Landroid/view/View;III)V

    .line 1136
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09097a

    .line 1137
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorList:Ljava/util/List;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorsErrorMsg:Ljava/lang/String;

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_8

    :cond_f
    const/16 v0, 0x8

    :goto_8
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1138
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0908cb

    .line 1139
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorList:Ljava/util/List;

    if-nez p3, :cond_10

    iget-object p3, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorsErrorMsg:Ljava/lang/String;

    if-nez p3, :cond_10

    goto :goto_9

    :cond_10
    const/16 v2, 0x8

    :goto_9
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    return-object p1

    .line 1142
    :cond_11
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->PROPERTY:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, v0, :cond_12

    const p1, 0x7f0b0145

    .line 1143
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 1144
    iget-object p2, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    iget-object p2, p2, Lcom/narvii/item/detail/ItemDetailFragment;->itemAdapter:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    invoke-virtual {p2}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Item;

    .line 1145
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Item;

    iget-object p2, p2, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    new-array p3, v5, [Ljava/lang/String;

    const-string/jumbo v0, "props"

    aput-object v0, p3, v2

    invoke-static {p2, p3}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p2

    const p3, 0x7f0905f5

    .line 1146
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/item/property/ItemPropertyList;

    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDarkTheme()Z

    move-result v0

    invoke-virtual {p3, p2, v0}, Lcom/narvii/item/property/ItemPropertyList;->setItemProperties(Lcom/fasterxml/jackson/databind/JsonNode;Z)V

    return-object p1

    .line 1150
    :cond_12
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/detail/FeedDetailAdapter;->getCell(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1164
    sget-object p3, Lcom/narvii/detail/DetailAdapter;->COMMENT_HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p1, p3, :cond_14

    const p1, 0x7f090290

    .line 1165
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/Item;

    invoke-virtual {p3}, Lcom/narvii/model/Feed;->getTotalCommentsCount()I

    move-result p3

    if-nez p3, :cond_13

    const-string p3, ""

    goto :goto_a

    :cond_13
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Item;

    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getTotalCommentsCount()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_a
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    .line 1169
    :cond_14
    sget-object p3, Lcom/narvii/item/detail/ItemDetailFragment;->ABOUT_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    if-ne p1, p3, :cond_15

    .line 1170
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1173
    :cond_15
    sget-object p3, Lcom/narvii/item/detail/ItemDetailFragment;->LIKES_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    if-ne p1, p3, :cond_16

    .line 1174
    iget-object p1, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_16
    return-object p2
.end method

.method protected getCellTypes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/detail/DetailAdapter$CellType;",
            ">;)V"
        }
    .end annotation

    .line 1033
    invoke-super {p0, p1}, Lcom/narvii/detail/FeedDetailAdapter;->getCellTypes(Ljava/util/List;)V

    .line 1035
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1036
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->PROPERTY:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1037
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->GALLERY:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1038
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->USER:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1039
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->CONTRIBUTORS:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1040
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->ADS:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1041
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->AD_ABOVECOMMENT:Lcom/narvii/detail/DetailAdapter$CellType;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 720
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isPageBackgroundEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailAdapter;->getResponse()Lcom/narvii/model/api/FeedResponse;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 723
    :cond_0
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isPageBackgroundEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailAdapter;->getResponse()Lcom/narvii/model/api/FeedResponse;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 715
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 704
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isPageBackgroundEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailAdapter;->getResponse()Lcom/narvii/model/api/FeedResponse;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 707
    :cond_0
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->isListShown()Z

    move-result v0

    return v0
.end method

.method protected notJoined()Z
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {v0}, Lcom/narvii/item/detail/ItemDetailFragment;->access$600(Lcom/narvii/item/detail/ItemDetailFragment;)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 781
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->notifyDataSetChanged()V

    .line 782
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {v0}, Lcom/narvii/item/detail/ItemDetailFragment;->access$100(Lcom/narvii/item/detail/ItemDetailFragment;)V

    .line 783
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorRequest:Lcom/narvii/util/http/ApiRequest;

    if-nez v0, :cond_0

    .line 784
    invoke-virtual {p0}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->sendContributorRequest()V

    :cond_0
    return-void
.end method

.method public objectType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/Item;",
            ">;"
        }
    .end annotation

    .line 790
    const-class v0, Lcom/narvii/model/Item;

    return-object v0
.end method

.method public onItemClick(Lcom/narvii/model/Media;)V
    .locals 5

    .line 1273
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {v0}, Lcom/narvii/item/detail/ItemDetailFragment;->access$2100(Lcom/narvii/item/detail/ItemDetailFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1274
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object p1

    const-string v0, "Page Detailed View"

    invoke-static {p0, p1, v0}, Lcom/narvii/influencer/FansOnlyHintDialog;->showFansOnlyHintDialog(Lcom/narvii/app/NVContext;Lcom/narvii/influencer/FansOnlyContent;Ljava/lang/String;)V

    return-void

    .line 1277
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Item;

    .line 1279
    invoke-virtual {p1}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1280
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/optionmenu/OptionMenuFragment;

    invoke-static {p1, v0, v2}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1282
    :cond_1
    iget-object v1, v0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 1283
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 1284
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/narvii/media/MediaGalleryOptionActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1285
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "parent"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1286
    const-class v0, Lcom/narvii/model/Item;

    const-string/jumbo v3, "parentClass"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1287
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    iget-boolean v0, v0, Lcom/narvii/detail/DetailFragment;->preview:Z

    const-string/jumbo v3, "preview"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1288
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "list"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-ltz p1, :cond_2

    const-string/jumbo v0, "position"

    .line 1290
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1292
    :cond_2
    invoke-virtual {p0, v2}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 1183
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {v0}, Lcom/narvii/item/detail/ItemDetailFragment;->access$2000(Lcom/narvii/item/detail/ItemDetailFragment;)Z

    move-result v0

    const-string v1, "Page Detailed View"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->USER:Lcom/narvii/detail/DetailAdapter$CellType;

    if-eq p3, v0, :cond_0

    .line 1184
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/narvii/influencer/FansOnlyHintDialog;->showFansOnlyHintDialog(Lcom/narvii/app/NVContext;Lcom/narvii/influencer/FansOnlyContent;Ljava/lang/String;)V

    return v2

    .line 1188
    :cond_0
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->HEADER:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v0, :cond_2

    if-nez p5, :cond_2

    .line 1190
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Item;

    .line 1191
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    const-class p4, Lcom/narvii/media/MediaGalleryActivity;

    invoke-direct {p2, p3, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1193
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string/jumbo p4, "parent"

    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1194
    const-class p3, Lcom/narvii/model/Item;

    const-string/jumbo p4, "parentClass"

    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1195
    iget-object p1, p1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 1196
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "list"

    .line 1195
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1197
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    iget-object p1, p1, Lcom/narvii/item/detail/ItemDetailFragment;->header:Lcom/narvii/list/overlay/OverlayLayout;

    const p3, 0x7f090a50

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/SlideshowView;

    if-eqz p1, :cond_1

    .line 1199
    invoke-virtual {p1}, Lcom/narvii/widget/SlideshowView;->getCurrentIndex()I

    move-result p1

    const-string/jumbo p3, "position"

    .line 1200
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1202
    :cond_1
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    iget-boolean p1, p1, Lcom/narvii/detail/DetailFragment;->preview:Z

    const-string/jumbo p3, "preview"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1203
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 1207
    :cond_2
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->USER:Lcom/narvii/detail/DetailAdapter$CellType;

    if-ne p3, v0, :cond_4

    .line 1208
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object p1

    .line 1209
    iget-object p1, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    const-string p2, "Source"

    .line 1211
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1212
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 1215
    :cond_4
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->CONTRIBUTORS:Lcom/narvii/detail/DetailAdapter$CellType;

    const/4 v1, 0x0

    if-ne p3, v0, :cond_12

    .line 1217
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1218
    iget-object p2, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorList:Ljava/util/List;

    if-eqz p2, :cond_6

    .line 1219
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object p3, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/narvii/item/contributor/Contributor;

    .line 1220
    invoke-virtual {p4}, Lcom/narvii/item/contributor/Contributor;->isOriginalAuthor()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object p3, p4

    goto :goto_0

    .line 1223
    :cond_5
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    move-object p3, v1

    :cond_7
    if-nez p5, :cond_8

    goto/16 :goto_1

    .line 1228
    :cond_8
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p2

    const p4, 0x7f0902e1

    if-ne p2, p4, :cond_9

    .line 1229
    invoke-static {p0, p3}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1230
    :cond_9
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p2

    const p3, 0x7f0902db

    if-ne p2, p3, :cond_a

    const/4 p2, 0x0

    .line 1231
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1232
    :cond_a
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p2

    const p3, 0x7f0902dc

    if-ne p2, p3, :cond_b

    .line 1233
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1234
    :cond_b
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p2

    const p3, 0x7f0902dd

    if-ne p2, p3, :cond_c

    const/4 p2, 0x2

    .line 1235
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1236
    :cond_c
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p2

    const p3, 0x7f0902de

    if-ne p2, p3, :cond_d

    const/4 p2, 0x3

    .line 1237
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1238
    :cond_d
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p2

    const p3, 0x7f0902df

    const/4 p4, 0x4

    if-ne p2, p3, :cond_e

    .line 1239
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1240
    :cond_e
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p2

    const p3, 0x7f0902e0

    if-ne p2, p3, :cond_f

    const/4 p2, 0x5

    .line 1241
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1242
    :cond_f
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f09097a

    if-ne p1, p2, :cond_10

    .line 1243
    iput-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorsErrorMsg:Ljava/lang/String;

    .line 1244
    invoke-virtual {p0}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->sendContributorRequest()V

    .line 1245
    invoke-virtual {p0}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 1246
    :cond_10
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0909f5

    if-ne p1, p2, :cond_11

    .line 1247
    const-class p1, Lcom/narvii/item/contributor/ContributorListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 1248
    iget-object p2, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {p2}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Item;

    iget-object p2, p2, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    const-string p3, "itemId"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1249
    iget-object p2, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {p2}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Item;

    iget-object p2, p2, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {p2}, Lcom/narvii/model/User;->isSystem()Z

    move-result p2

    const-string p3, "canReorder"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1250
    iget-object p2, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorList:Ljava/util/List;

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "contributorList"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1251
    iget-object p2, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {p2, p1, p4}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_11
    :goto_1
    return v2

    .line 1255
    :cond_12
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->ADD_DESC:Lcom/narvii/detail/DetailAdapter$AddTag;

    if-ne p3, v0, :cond_14

    if-eqz p5, :cond_13

    .line 1256
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f090063

    if-ne p1, p2, :cond_13

    .line 1257
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    invoke-direct {p1, p0}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object p2, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {p2}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/feed/FeedHelper;->refreshAndEdit(Lcom/narvii/model/Feed;)V

    :cond_13
    return v2

    .line 1261
    :cond_14
    sget-object v0, Lcom/narvii/item/detail/ItemDetailFragment;->LIKES_HEADER:Lcom/narvii/detail/DetailAdapter$HeaderTag;

    if-ne p3, v0, :cond_16

    if-eqz p5, :cond_15

    .line 1263
    invoke-virtual {p0, p5, v1}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->onUserGridClick(Landroid/view/View;Ljava/lang/String;)Z

    :cond_15
    return v2

    .line 1267
    :cond_16
    invoke-super/range {p0 .. p5}, Lcom/narvii/detail/FeedDetailAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 728
    invoke-super {p0, p1}, Lcom/narvii/detail/FeedDetailAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    .line 729
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string/jumbo v1, "update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/Comment;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "new"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "delete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Item;

    .line 732
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {v1}, Lcom/narvii/item/detail/ItemDetailFragment;->access$300(Lcom/narvii/item/detail/ItemDetailFragment;)Lcom/narvii/feed/FeedContinuousViewer;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 733
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v2, v1, Lcom/narvii/model/Comment;

    if-eqz v2, :cond_1

    .line 734
    check-cast v1, Lcom/narvii/model/Comment;

    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/narvii/comment/CommentHelper;->updateFeedWithComment(Lcom/narvii/model/Feed;Lcom/narvii/model/Comment;Ljava/lang/String;)Lcom/narvii/model/Feed;

    .line 736
    :cond_1
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {p1, v0}, Lcom/narvii/item/detail/ItemDetailFragment;->access$400(Lcom/narvii/item/detail/ItemDetailFragment;Lcom/narvii/model/Feed;)V

    :cond_2
    return-void
.end method

.method protected onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/FeedResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "Lcom/narvii/model/api/FeedResponse<",
            "+",
            "Lcom/narvii/model/Item;",
            ">;)V"
        }
    .end annotation

    .line 813
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    iget-boolean v0, v0, Lcom/narvii/detail/DetailFragment;->preview:Z

    if-eqz v0, :cond_1

    .line 814
    instance-of v0, p2, Lcom/narvii/model/api/ItemResponse;

    if-eqz v0, :cond_1

    .line 815
    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Item;

    if-eqz v0, :cond_0

    .line 817
    move-object v1, p2

    check-cast v1, Lcom/narvii/model/api/ItemResponse;

    .line 818
    iget-object v1, v1, Lcom/narvii/model/api/ItemResponse;->item:Lcom/narvii/model/Item;

    iget-object v2, v0, Lcom/narvii/model/Item;->label:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/model/Item;->label:Ljava/lang/String;

    .line 819
    iget-object v2, v0, Lcom/narvii/model/Feed;->keywords:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/model/Feed;->keywords:Ljava/lang/String;

    .line 820
    iget-object v2, v0, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    .line 821
    iget-object v2, v0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iput-object v2, v1, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 822
    iget v2, v0, Lcom/narvii/model/Feed;->latitude:I

    iput v2, v1, Lcom/narvii/model/Feed;->latitude:I

    .line 823
    iget v2, v0, Lcom/narvii/model/Feed;->longitude:I

    iput v2, v1, Lcom/narvii/model/Feed;->longitude:I

    .line 824
    iget-object v2, v0, Lcom/narvii/model/Feed;->address:Ljava/lang/String;

    iput-object v2, v1, Lcom/narvii/model/Feed;->address:Ljava/lang/String;

    .line 825
    iget-object v2, v0, Lcom/narvii/model/Feed;->modifiedTime:Ljava/util/Date;

    iput-object v2, v1, Lcom/narvii/model/Feed;->modifiedTime:Ljava/util/Date;

    .line 826
    iget-object v0, v0, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    iput-object v0, v1, Lcom/narvii/model/Feed;->mediaList:Ljava/util/List;

    .line 827
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    :cond_0
    return-void

    .line 833
    :cond_1
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->onFeedObjectResponse()V

    .line 835
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V

    .line 836
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {p1}, Lcom/narvii/item/detail/ItemDetailFragment;->access$700(Lcom/narvii/item/detail/ItemDetailFragment;)V

    .line 837
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {p0}, Lcom/narvii/detail/DetailAdapter;->getObject()Lcom/narvii/model/NVObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Feed;

    invoke-static {p1, p2}, Lcom/narvii/item/detail/ItemDetailFragment;->access$800(Lcom/narvii/item/detail/ItemDetailFragment;Lcom/narvii/model/Feed;)V

    return-void
.end method

.method protected bridge synthetic onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 685
    check-cast p2, Lcom/narvii/model/api/FeedResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/FeedResponse;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 775
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "inMyFavorites"

    .line 776
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->inMyFavorites:Z

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 768
    invoke-super {p0}, Lcom/narvii/detail/DetailAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 769
    iget-boolean v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->inMyFavorites:Z

    const-string v2, "inMyFavorites"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected onTipBoxClicked(Z)V
    .locals 0

    .line 750
    invoke-super {p0, p1}, Lcom/narvii/detail/DetailAdapter;->onTipBoxClicked(Z)V

    if-nez p1, :cond_0

    .line 752
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {p1}, Lcom/narvii/item/detail/ItemDetailFragment;->access$500(Lcom/narvii/item/detail/ItemDetailFragment;)V

    :cond_0
    return-void
.end method

.method protected onUserGridClick(Landroid/view/View;Ljava/lang/String;)Z
    .locals 2

    .line 1298
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {v0}, Lcom/narvii/item/detail/ItemDetailFragment;->access$2200(Lcom/narvii/item/detail/ItemDetailFragment;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1299
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object p1

    const-string p2, "Page Detailed View"

    invoke-static {p0, p1, p2}, Lcom/narvii/influencer/FansOnlyHintDialog;->showFansOnlyHintDialog(Lcom/narvii/app/NVContext;Lcom/narvii/influencer/FansOnlyContent;Ljava/lang/String;)V

    return v1

    .line 1302
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/detail/DetailAdapter;->onUserGridClick(Landroid/view/View;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1303
    const-class p1, Lcom/narvii/feed/vote/VoterListFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 1304
    iget-object p2, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {p2}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object p2

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "nvObject"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1305
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return v1
.end method

.method protected preview()Z
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    iget-boolean v0, v0, Lcom/narvii/detail/DetailFragment;->preview:Z

    return v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/ItemResponse;",
            ">;"
        }
    .end annotation

    .line 795
    const-class v0, Lcom/narvii/model/api/ItemResponse;

    return-object v0
.end method

.method sendContributorRequest()V
    .locals 4

    .line 884
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Item;

    if-eqz v0, :cond_1

    .line 885
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {v1}, Lcom/narvii/detail/DetailFragment;->id()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 887
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/item/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/narvii/model/Item;->itemId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/contributors"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorRequest:Lcom/narvii/util/http/ApiRequest;

    const-string v0, "api"

    .line 888
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 889
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorRequest:Lcom/narvii/util/http/ApiRequest;

    iget-object v2, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected setCommentSort(I)V
    .locals 2

    .line 1323
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    iget-object v1, v0, Lcom/narvii/item/detail/ItemDetailFragment;->commentAdapter:Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;

    invoke-virtual {v0}, Lcom/narvii/detail/DetailFragment;->commentExtraHeight()I

    move-result v0

    iput v0, v1, Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;->flHeight:I

    .line 1324
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    iget-object v0, v0, Lcom/narvii/item/detail/ItemDetailFragment;->commentAdapter:Lcom/narvii/item/detail/ItemDetailFragment$CommentAdapter;

    invoke-virtual {v0, p1}, Lcom/narvii/comment/list/CommentListAdapter;->setSort(I)V

    return-void
.end method

.method public setObject(Lcom/narvii/model/Item;)V
    .locals 2

    .line 801
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailAdapter;->getResponse()Lcom/narvii/model/api/FeedResponse;

    move-result-object v0

    if-nez v0, :cond_0

    .line 802
    new-instance v0, Lcom/narvii/model/api/ItemResponse;

    invoke-direct {v0}, Lcom/narvii/model/api/ItemResponse;-><init>()V

    goto :goto_0

    .line 804
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/detail/FeedDetailAdapter;->getResponse()Lcom/narvii/model/api/FeedResponse;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/api/ItemResponse;

    .line 806
    :goto_0
    iget-boolean v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->inMyFavorites:Z

    iput v1, v0, Lcom/narvii/model/api/ItemResponse;->inMyFavorites:I

    .line 807
    iput-object p1, v0, Lcom/narvii/model/api/ItemResponse;->item:Lcom/narvii/model/Item;

    .line 808
    invoke-virtual {p0, v0}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->setResponse(Lcom/narvii/model/api/FeedResponse;)V

    return-void
.end method

.method public bridge synthetic setObject(Lcom/narvii/model/NVObject;)V
    .locals 0

    .line 685
    check-cast p1, Lcom/narvii/model/Item;

    invoke-virtual {p0, p1}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->setObject(Lcom/narvii/model/Item;)V

    return-void
.end method

.method public setResponse(Lcom/narvii/model/api/FeedResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/api/FeedResponse<",
            "+",
            "Lcom/narvii/model/Item;",
            ">;)V"
        }
    .end annotation

    .line 843
    move-object v0, p1

    check-cast v0, Lcom/narvii/model/api/ItemResponse;

    iget v1, v0, Lcom/narvii/model/api/ItemResponse;->inMyFavorites:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->inMyFavorites:Z

    .line 844
    invoke-super {p0, p1}, Lcom/narvii/detail/FeedDetailAdapter;->setResponse(Lcom/narvii/model/api/FeedResponse;)V

    .line 845
    iget-object v0, v0, Lcom/narvii/model/api/ItemResponse;->item:Lcom/narvii/model/Item;

    if-eqz v0, :cond_3

    .line 847
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/model/Feed;->hasBackground()Z

    move-result v4

    invoke-static {v1, v4}, Lcom/narvii/item/detail/ItemDetailFragment;->access$902(Lcom/narvii/item/detail/ItemDetailFragment;Z)Z

    .line 848
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getBackgroundMedia()Lcom/narvii/model/Media;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    move-result v4

    invoke-static {v4}, Lcom/narvii/util/PaletteUtils;->isDarkColor(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    invoke-static {v1, v2}, Lcom/narvii/item/detail/ItemDetailFragment;->access$1002(Lcom/narvii/item/detail/ItemDetailFragment;Z)Z

    .line 849
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/model/Feed;->getBackgroundColor()I

    move-result v2

    invoke-static {v1, v2}, Lcom/narvii/item/detail/ItemDetailFragment;->access$1102(Lcom/narvii/item/detail/ItemDetailFragment;I)I

    .line 850
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {v1}, Lcom/narvii/item/detail/ItemDetailFragment;->access$1200(Lcom/narvii/item/detail/ItemDetailFragment;)V

    .line 851
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {v1}, Lcom/narvii/item/detail/ItemDetailFragment;->access$1300(Lcom/narvii/item/detail/ItemDetailFragment;)V

    .line 854
    :cond_3
    iget-boolean v1, p1, Lcom/narvii/model/api/FeedResponse;->isBookmarked:Z

    iput-boolean v1, p0, Lcom/narvii/detail/FeedDetailAdapter;->isBookmarked:Z

    .line 855
    iget-object v1, p1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    iget-object v1, v1, Lcom/narvii/item/detail/ItemDetailFragment;->onFinishListener:Lcom/narvii/util/Callback;

    if-eqz v1, :cond_4

    .line 856
    invoke-virtual {p1}, Lcom/narvii/model/api/FeedResponse;->object()Lcom/narvii/model/Feed;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 859
    :cond_4
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->resetHover()V

    .line 861
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/detail/DetailFragment;->setDisabledStatus(Lcom/narvii/model/NVObject;)V

    return-void
.end method

.method public bridge synthetic setResponse(Lcom/narvii/model/api/ObjectResponse;)V
    .locals 0

    .line 685
    check-cast p1, Lcom/narvii/model/api/FeedResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->setResponse(Lcom/narvii/model/api/FeedResponse;)V

    return-void
.end method

.method protected shouldBlockShareMedia()Z
    .locals 2

    .line 1343
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {v0}, Lcom/narvii/item/detail/ItemDetailFragment;->access$2400(Lcom/narvii/item/detail/ItemDetailFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1344
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v0

    const-string v1, "Page Detailed View"

    invoke-static {p0, v0, v1}, Lcom/narvii/influencer/FansOnlyHintDialog;->showFansOnlyHintDialog(Lcom/narvii/app/NVContext;Lcom/narvii/influencer/FansOnlyContent;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    .line 1347
    :cond_0
    invoke-super {p0}, Lcom/narvii/detail/FeedDetailAdapter;->shouldBlockShareMedia()Z

    move-result v0

    return v0
.end method

.method protected showEmojiOnly()Z
    .locals 5

    const-string v0, "affiliations"

    .line 1335
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/AffiliationsService;

    .line 1336
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {v1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Item;

    iget v1, v1, Lcom/narvii/model/Feed;->ndcId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {v1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Item;

    iget v1, v1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    const-string v4, "__communityId"

    .line 1337
    invoke-virtual {v1, v4}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {v1, v4}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 1338
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-static {v0}, Lcom/narvii/item/detail/ItemDetailFragment;->access$2300(Lcom/narvii/item/detail/ItemDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public taggedObjects()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
            ">;"
        }
    .end annotation

    .line 1046
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    iget-boolean v1, v0, Lcom/narvii/detail/DetailFragment;->preview:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "taggedObjects"

    .line 1047
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/Item;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 1049
    :cond_0
    invoke-super {p0}, Lcom/narvii/detail/FeedDetailAdapter;->taggedObjects()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
