.class public final Lcom/narvii/chat/core/ChatService$queryThreadCheckInfo$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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
    value = "SMAP\nChatService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatService.kt\ncom/narvii/chat/core/ChatService$queryThreadCheckInfo$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1873:1\n1855#2,2:1874\n*S KotlinDebug\n*F\n+ 1 ChatService.kt\ncom/narvii/chat/core/ChatService$queryThreadCheckInfo$2\n*L\n693#1:1874,2\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/core/ChatService;


# direct methods
.method constructor <init>(Lcom/narvii/chat/core/ChatService;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/core/ChatService;",
            "Ljava/lang/Class<",
            "Lcom/narvii/chat/core/GlobalThreadCheckResultMapResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/core/ChatService$queryThreadCheckInfo$2;->this$0:Lcom/narvii/chat/core/ChatService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$queryThreadCheckInfo$2;->this$0:Lcom/narvii/chat/core/ChatService;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/chat/core/ChatService;->access$getCommunitiesIsRequestingThreadCheck$p(Lcom/narvii/chat/core/ChatService;)Ljava/util/HashSet;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 13
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/core/GlobalThreadCheckResultMapResponse;)V
    .locals 6
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/core/GlobalThreadCheckResultMapResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/narvii/chat/core/GlobalThreadCheckResultMapResponse;->getTreatedNdcIds()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p2}, Lcom/narvii/chat/core/GlobalThreadCheckResultMapResponse;->getTreatedNdcIds()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    iget-object v2, p0, Lcom/narvii/chat/core/ChatService$queryThreadCheckInfo$2;->this$0:Lcom/narvii/chat/core/ChatService;

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 7
    invoke-static {v2}, Lcom/narvii/chat/core/ChatService;->access$getLastThreadCheckTime$p(Lcom/narvii/chat/core/ChatService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    invoke-static {v2}, Lcom/narvii/chat/core/ChatService;->access$getThreadCheckInfosMapper$p(Lcom/narvii/chat/core/ChatService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 9
    invoke-static {v2}, Lcom/narvii/chat/core/ChatService;->access$getThreadCheckQueue$p(Lcom/narvii/chat/core/ChatService;)Ljava/util/HashSet;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {p2}, Lcom/narvii/chat/core/GlobalThreadCheckResultMapResponse;->getThreadCheckResultInCommunities()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/narvii/chat/core/ChatService$queryThreadCheckInfo$2;->this$0:Lcom/narvii/chat/core/ChatService;

    .line 11
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 12
    invoke-static {v2}, Lcom/narvii/chat/core/ChatService;->access$getLastThreadCheckTime$p(Lcom/narvii/chat/core/ChatService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    invoke-static {v2}, Lcom/narvii/chat/core/ChatService;->access$getThreadCheckInfosMapper$p(Lcom/narvii/chat/core/ChatService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 14
    invoke-static {v2}, Lcom/narvii/chat/core/ChatService;->access$getThreadCheckQueue$p(Lcom/narvii/chat/core/ChatService;)Ljava/util/HashSet;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$queryThreadCheckInfo$2;->this$0:Lcom/narvii/chat/core/ChatService;

    .line 15
    invoke-virtual {p1, p2}, Lcom/narvii/chat/core/ChatService;->updateThreadCheckTable(Lcom/narvii/chat/core/GlobalThreadCheckResultMapResponse;)V

    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$queryThreadCheckInfo$2;->this$0:Lcom/narvii/chat/core/ChatService;

    .line 16
    invoke-static {p1}, Lcom/narvii/chat/core/ChatService;->access$printCurrentThreadCheckTable(Lcom/narvii/chat/core/ChatService;)V

    iget-object p1, p0, Lcom/narvii/chat/core/ChatService$queryThreadCheckInfo$2;->this$0:Lcom/narvii/chat/core/ChatService;

    .line 17
    invoke-static {p1}, Lcom/narvii/chat/core/ChatService;->access$getCommunitiesIsRequestingThreadCheck$p(Lcom/narvii/chat/core/ChatService;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/chat/core/GlobalThreadCheckResultMapResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/core/ChatService$queryThreadCheckInfo$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/core/GlobalThreadCheckResultMapResponse;)V

    return-void
.end method
