.class Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3$1;
.super Ljava/lang/Object;
.source "LiveLayerOnlineCategoryAdapter.java"

# interfaces
.implements Lcom/narvii/livelayer/ws/LiveLayerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/livelayer/category/OnlineCategoryListResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;

.field final synthetic val$category:Lcom/narvii/livelayer/category/OnlineCategory;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;Lcom/narvii/livelayer/category/OnlineCategory;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;

    iput-object p2, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3$1;->val$category:Lcom/narvii/livelayer/category/OnlineCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserJoined(Ljava/lang/String;Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;I)V"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3$1;->val$category:Lcom/narvii/livelayer/category/OnlineCategory;

    iput p3, v0, Lcom/narvii/livelayer/category/OnlineCategory;->userProfileCount:I

    .line 198
    iget-object v1, v0, Lcom/narvii/livelayer/category/OnlineCategory;->userProfileList:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    .line 199
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, v0, Lcom/narvii/livelayer/category/OnlineCategory;->userProfileList:Ljava/util/LinkedList;

    .line 202
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3$1;->val$category:Lcom/narvii/livelayer/category/OnlineCategory;

    iget-object v1, v1, Lcom/narvii/livelayer/category/OnlineCategory;->userProfileList:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 203
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/User;

    .line 204
    invoke-virtual {v2}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 207
    iget-object v3, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3$1;->val$category:Lcom/narvii/livelayer/category/OnlineCategory;

    iget-object v3, v3, Lcom/narvii/livelayer/category/OnlineCategory;->userProfileList:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 208
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3$1;->val$category:Lcom/narvii/livelayer/category/OnlineCategory;

    iget-object v2, v2, Lcom/narvii/livelayer/category/OnlineCategory;->userProfileList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/16 v3, 0x1e

    if-le v2, v3, :cond_1

    .line 209
    iget-object v2, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3$1;->val$category:Lcom/narvii/livelayer/category/OnlineCategory;

    iget-object v2, v2, Lcom/narvii/livelayer/category/OnlineCategory;->userProfileList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;

    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->dispatchHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;

    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter$3;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;

    iget-object v0, v0, Lcom/narvii/livelayer/LiveLayerOnlineCategoryAdapter;->dispatchHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/livelayer/ws/LiveLayerEventListener;

    if-eqz v0, :cond_3

    .line 217
    invoke-interface {v0, p1, p2, p3}, Lcom/narvii/livelayer/ws/LiveLayerEventListener;->onUserJoined(Ljava/lang/String;Ljava/util/List;I)V

    :cond_3
    return-void
.end method

.method public onUserLeft(Ljava/lang/String;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method
