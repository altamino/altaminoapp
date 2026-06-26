.class public final Lcom/narvii/chat/core/ChatService$queryThreadCheckInfo$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ChatService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/core/ChatService;->queryThreadCheckInfo(Ljava/util/Set;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/chat/core/GlobalThreadCheckResultMapResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatService.kt\ncom/narvii/chat/core/ChatService$queryThreadCheckInfo$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1870:1\n1587#2,2:1871\n*E\n*S KotlinDebug\n*F\n+ 1 ChatService.kt\ncom/narvii/chat/core/ChatService$queryThreadCheckInfo$2\n*L\n705#1,2:1871\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/core/ChatService;


# direct methods
.method constructor <init>(Lcom/narvii/chat/core/ChatService;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 700
    iput-object p1, p0, Lcom/narvii/chat/core/ChatService$queryThreadCheckInfo$2;->this$0:Lcom/narvii/chat/core/ChatService;

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

    .line 725
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 726
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$queryThreadCheckInfo$2;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-static {p1}, Lcom/narvii/chat/core/ChatService;->access$getCommunitiesIsRequestingThreadCheck$p(Lcom/narvii/chat/core/ChatService;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/core/GlobalThreadCheckResultMapResponse;)V
    .locals 5

    .line 702
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 703
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p2, :cond_0

    .line 704
    invoke-virtual {p2}, Lcom/narvii/chat/core/GlobalThreadCheckResultMapResponse;->getTreatedNdcIds()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_2

    .line 705
    invoke-virtual {p2}, Lcom/narvii/chat/core/GlobalThreadCheckResultMapResponse;->getTreatedNdcIds()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1871
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 706
    iget-object v3, p0, Lcom/narvii/chat/core/ChatService$queryThreadCheckInfo$2;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-static {v3}, Lcom/narvii/chat/core/ChatService;->access$getLastThreadCheckTime$p(Lcom/narvii/chat/core/ChatService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 707
    iget-object v3, p0, Lcom/narvii/chat/core/ChatService$queryThreadCheckInfo$2;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-static {v3}, Lcom/narvii/chat/core/ChatService;->access$getThreadCheckInfosMapper$p(Lcom/narvii/chat/core/ChatService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 708
    iget-object v3, p0, Lcom/narvii/chat/core/ChatService$queryThreadCheckInfo$2;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-static {v3}, Lcom/narvii/chat/core/ChatService;->access$getThreadCheckQueue$p(Lcom/narvii/chat/core/ChatService;)Ljava/util/HashSet;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 711
    invoke-virtual {p2}, Lcom/narvii/chat/core/GlobalThreadCheckResultMapResponse;->getThreadCheckResultInCommunities()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 712
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 713
    iget-object v2, p0, Lcom/narvii/chat/core/ChatService$queryThreadCheckInfo$2;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-static {v2}, Lcom/narvii/chat/core/ChatService;->access$getLastThreadCheckTime$p(Lcom/narvii/chat/core/ChatService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 714
    iget-object v2, p0, Lcom/narvii/chat/core/ChatService$queryThreadCheckInfo$2;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-static {v2}, Lcom/narvii/chat/core/ChatService;->access$getThreadCheckInfosMapper$p(Lcom/narvii/chat/core/ChatService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 715
    iget-object v2, p0, Lcom/narvii/chat/core/ChatService$queryThreadCheckInfo$2;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-static {v2}, Lcom/narvii/chat/core/ChatService;->access$getThreadCheckQueue$p(Lcom/narvii/chat/core/ChatService;)Ljava/util/HashSet;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 719
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$queryThreadCheckInfo$2;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/core/ChatService;->updateThreadCheckTable(Lcom/narvii/chat/core/GlobalThreadCheckResultMapResponse;)V

    .line 720
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$queryThreadCheckInfo$2;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-static {p1}, Lcom/narvii/chat/core/ChatService;->access$printCurrentThreadCheckTable(Lcom/narvii/chat/core/ChatService;)V

    .line 721
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$queryThreadCheckInfo$2;->this$0:Lcom/narvii/chat/core/ChatService;

    invoke-static {p1}, Lcom/narvii/chat/core/ChatService;->access$getCommunitiesIsRequestingThreadCheck$p(Lcom/narvii/chat/core/ChatService;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 700
    check-cast p2, Lcom/narvii/chat/core/GlobalThreadCheckResultMapResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/core/ChatService$queryThreadCheckInfo$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/core/GlobalThreadCheckResultMapResponse;)V

    return-void
.end method
