.class public final Lcom/narvii/chat/global/GlobalChatCategoryItemView$categoryThreadLoadCallback$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/global/GlobalChatCategoryItemView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/chat/global/CategoryThreadResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/global/GlobalChatCategoryItemView;


# direct methods
.method constructor <init>(Lcom/narvii/chat/global/GlobalChatCategoryItemView;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/global/GlobalChatCategoryItemView;",
            "Ljava/lang/Class<",
            "Lcom/narvii/chat/global/CategoryThreadResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView$categoryThreadLoadCallback$1;->this$0:Lcom/narvii/chat/global/GlobalChatCategoryItemView;

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
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView$categoryThreadLoadCallback$1;->this$0:Lcom/narvii/chat/global/GlobalChatCategoryItemView;

    .line 6
    const/4 p2, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->access$setCurStartIndexForThread$p(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView$categoryThreadLoadCallback$1;->this$0:Lcom/narvii/chat/global/GlobalChatCategoryItemView;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->access$showThreadSections(Lcom/narvii/chat/global/GlobalChatCategoryItemView;)V

    .line 15
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/global/CategoryThreadResponse;)V
    .locals 3
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/chat/global/CategoryThreadResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView$categoryThreadLoadCallback$1;->this$0:Lcom/narvii/chat/global/GlobalChatCategoryItemView;

    .line 3
    invoke-virtual {p2}, Lcom/narvii/chat/global/CategoryThreadResponse;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->access$getThreadList$p(Lcom/narvii/chat/global/GlobalChatCategoryItemView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :cond_0
    invoke-static {v0, p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->access$setCurStartIndexForThread$p(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)V

    .line 4
    new-instance p1, Lcom/narvii/chat/global/GlobalThreadListWrapper;

    iget-object v1, p2, Lcom/narvii/chat/global/CategoryThreadResponse;->threadListWrapper:Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;

    iget-object v2, p2, Lcom/narvii/chat/global/CategoryThreadResponse;->threadCategory:Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;

    invoke-direct {p1, v1, v2}, Lcom/narvii/chat/global/GlobalThreadListWrapper;-><init>(Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;)V

    iget-object p2, p2, Lcom/narvii/chat/global/CategoryThreadResponse;->communityInfoMapping:Ljava/util/Map;

    const-string v1, "communityInfoMapping"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->access$innerSetThreadCategory(Lcom/narvii/chat/global/GlobalChatCategoryItemView;Lcom/narvii/chat/global/GlobalThreadListWrapper;Ljava/util/Map;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView$categoryThreadLoadCallback$1;->this$0:Lcom/narvii/chat/global/GlobalChatCategoryItemView;

    .line 5
    invoke-static {p2, p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->access$setCurStartIndexForThread$p(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)V

    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView$categoryThreadLoadCallback$1;->this$0:Lcom/narvii/chat/global/GlobalChatCategoryItemView;

    .line 6
    invoke-static {p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->access$showThreadSections(Lcom/narvii/chat/global/GlobalChatCategoryItemView;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/chat/global/CategoryThreadResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/global/GlobalChatCategoryItemView$categoryThreadLoadCallback$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/global/CategoryThreadResponse;)V

    return-void
.end method
