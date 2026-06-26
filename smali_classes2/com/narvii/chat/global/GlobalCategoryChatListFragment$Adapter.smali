.class final Lcom/narvii/chat/global/GlobalCategoryChatListFragment$Adapter;
.super Lcom/narvii/chat/global/GlobalChatListAdapter;
.source "GlobalCategoryChatListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/global/GlobalCategoryChatListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/global/GlobalCategoryChatListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/global/GlobalCategoryChatListFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iput-object p1, p0, Lcom/narvii/chat/global/GlobalCategoryChatListFragment$Adapter;->this$0:Lcom/narvii/chat/global/GlobalCategoryChatListFragment;

    invoke-direct {p0, p2}, Lcom/narvii/chat/global/GlobalChatListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 127
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/chat/thread/explore/categories/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/chat/global/GlobalCategoryChatListFragment$Adapter;->this$0:Lcom/narvii/chat/global/GlobalCategoryChatListFragment;

    invoke-static {v1}, Lcom/narvii/chat/global/GlobalCategoryChatListFragment;->access$getCategory$p(Lcom/narvii/chat/global/GlobalCategoryChatListFragment;)Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;

    move-result-object v1

    iget-object v1, v1, Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;->categoryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 129
    invoke-virtual {p0}, Lcom/narvii/chat/global/GlobalChatListAdapter;->getLanguageService()Lcom/narvii/language/ContentLanguageService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const-string v0, "requestBuilder.build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "ChatList"

    return-object v0
.end method

.method public onAttach()V
    .locals 2

    .line 122
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 123
    new-instance v0, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;

    const-class v1, Lcom/narvii/model/ChatThread;

    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method
