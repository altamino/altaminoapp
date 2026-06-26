.class Lcom/narvii/item/detail/ItemDetailFragment$Adapter$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ItemDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/item/detail/ItemDetailFragment$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/item/contributor/ContributorListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/item/detail/ItemDetailFragment$Adapter;Ljava/lang/Class;)V
    .locals 0

    .line 892
    iput-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter$1;->this$1:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 912
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter$1;->this$1:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    iput-object p4, p1, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorsErrorMsg:Ljava/lang/String;

    .line 913
    invoke-virtual {p1}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/item/contributor/ContributorListResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 895
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter$1;->this$1:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorList:Ljava/util/List;

    .line 896
    iget-object p1, p2, Lcom/narvii/item/contributor/ContributorListResponse;->contributorList:Ljava/util/List;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter$1;->this$1:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter$1;->this$1:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {p1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Item;

    iget-object p1, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-eqz p1, :cond_1

    .line 897
    iget-object p1, p2, Lcom/narvii/item/contributor/ContributorListResponse;->contributorList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/item/contributor/Contributor;

    .line 898
    invoke-virtual {p2}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter$1;->this$1:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    iget-object v1, v1, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->this$0:Lcom/narvii/item/detail/ItemDetailFragment;

    invoke-virtual {v1}, Lcom/narvii/detail/FeedDetailFragment;->getFeed()Lcom/narvii/model/Feed;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Item;

    iget-object v1, v1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter$1;->this$1:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 903
    :cond_1
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter$1;->this$1:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    new-instance p2, Lcom/narvii/util/FilterHelper;

    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/util/FilterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v0, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter$1;->this$1:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorList:Ljava/util/List;

    invoke-virtual {p2, v0}, Lcom/narvii/util/FilterHelper;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorList:Ljava/util/List;

    .line 904
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter$1;->this$1:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    iget-object p2, p1, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorList:Ljava/util/List;

    if-nez p2, :cond_2

    .line 905
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->contributorList:Ljava/util/List;

    .line 907
    :cond_2
    iget-object p1, p0, Lcom/narvii/item/detail/ItemDetailFragment$Adapter$1;->this$1:Lcom/narvii/item/detail/ItemDetailFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 892
    check-cast p2, Lcom/narvii/item/contributor/ContributorListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/item/detail/ItemDetailFragment$Adapter$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/item/contributor/ContributorListResponse;)V

    return-void
.end method
