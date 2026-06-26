.class public final Lcom/narvii/chat/global/GlobalChatCategoryItemView$categoryThreadLoadCallback$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "GlobalChatCategoryItemView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/global/GlobalChatCategoryItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalChatCategoryItemView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalChatCategoryItemView.kt\ncom/narvii/chat/global/GlobalChatCategoryItemView$categoryThreadLoadCallback$1\n*L\n1#1,230:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/global/GlobalChatCategoryItemView;


# direct methods
.method constructor <init>(Lcom/narvii/chat/global/GlobalChatCategoryItemView;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView$categoryThreadLoadCallback$1;->this$0:Lcom/narvii/chat/global/GlobalChatCategoryItemView;

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

    .line 67
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 68
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView$categoryThreadLoadCallback$1;->this$0:Lcom/narvii/chat/global/GlobalChatCategoryItemView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->access$setCurStartIndexForThread$p(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)V

    .line 69
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView$categoryThreadLoadCallback$1;->this$0:Lcom/narvii/chat/global/GlobalChatCategoryItemView;

    invoke-static {p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->access$showThreadSections(Lcom/narvii/chat/global/GlobalChatCategoryItemView;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/global/CategoryThreadResponse;)V
    .locals 3

    .line 56
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 58
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView$categoryThreadLoadCallback$1;->this$0:Lcom/narvii/chat/global/GlobalChatCategoryItemView;

    invoke-virtual {p2}, Lcom/narvii/chat/global/CategoryThreadResponse;->list()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView$categoryThreadLoadCallback$1;->this$0:Lcom/narvii/chat/global/GlobalChatCategoryItemView;

    invoke-static {p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->access$getThreadList$p(Lcom/narvii/chat/global/GlobalChatCategoryItemView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :cond_0
    invoke-static {v0, p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->access$setCurStartIndexForThread$p(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)V

    .line 59
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView$categoryThreadLoadCallback$1;->this$0:Lcom/narvii/chat/global/GlobalChatCategoryItemView;

    new-instance v0, Lcom/narvii/chat/global/GlobalThreadListWrapper;

    iget-object v1, p2, Lcom/narvii/chat/global/CategoryThreadResponse;->threadListWrapper:Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;

    iget-object v2, p2, Lcom/narvii/chat/global/CategoryThreadResponse;->threadCategory:Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;

    invoke-direct {v0, v1, v2}, Lcom/narvii/chat/global/GlobalThreadListWrapper;-><init>(Lcom/narvii/chat/global/GlobalThreadListWrapper$ThreadListWrapper;Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;)V

    iget-object p2, p2, Lcom/narvii/chat/global/CategoryThreadResponse;->communityInfoMapping:Ljava/util/Map;

    const-string v1, "resp.communityInfoMapping"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0, p2}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->access$innerSetThreadCategory(Lcom/narvii/chat/global/GlobalChatCategoryItemView;Lcom/narvii/chat/global/GlobalThreadListWrapper;Ljava/util/Map;)V

    return-void

    .line 62
    :cond_1
    iget-object p2, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView$categoryThreadLoadCallback$1;->this$0:Lcom/narvii/chat/global/GlobalChatCategoryItemView;

    invoke-static {p2, p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->access$setCurStartIndexForThread$p(Lcom/narvii/chat/global/GlobalChatCategoryItemView;I)V

    .line 63
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalChatCategoryItemView$categoryThreadLoadCallback$1;->this$0:Lcom/narvii/chat/global/GlobalChatCategoryItemView;

    invoke-static {p1}, Lcom/narvii/chat/global/GlobalChatCategoryItemView;->access$showThreadSections(Lcom/narvii/chat/global/GlobalChatCategoryItemView;)V

    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 54
    check-cast p2, Lcom/narvii/chat/global/CategoryThreadResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/global/GlobalChatCategoryItemView$categoryThreadLoadCallback$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/chat/global/CategoryThreadResponse;)V

    return-void
.end method
