.class final Lcom/narvii/chat/global/GlobalCategoryChatListFragment$Adapter;
.super Lcom/narvii/chat/global/GlobalChatListAdapter;
.source "SourceFile"


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
    .param p1    # Lcom/narvii/chat/global/GlobalCategoryChatListFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/chat/global/GlobalCategoryChatListFragment$Adapter;->this$0:Lcom/narvii/chat/global/GlobalCategoryChatListFragment;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/chat/global/GlobalChatListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalCategoryChatListFragment$Adapter;->this$0:Lcom/narvii/chat/global/GlobalCategoryChatListFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/chat/global/GlobalCategoryChatListFragment;->access$getCategory$p(Lcom/narvii/chat/global/GlobalCategoryChatListFragment;)Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const-string v0, "category"

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 22
    const/4 v0, 0x0

    .line 23
    .line 24
    :cond_0
    iget-object v0, v0, Lcom/narvii/chat/global/GlobalThreadListWrapper$GlobalThreadCategory;->categoryId:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    const-string v2, "/chat/thread/explore/categories/"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/narvii/chat/global/GlobalChatListAdapter;->getLanguageService()Lcom/narvii/language/ContentLanguageService;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    const-string v1, "language"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 63
    move-result-object p1

    .line 64
    .line 65
    const-string v0, "build(...)"

    .line 66
    .line 67
    .line 68
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    return-object p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ChatList"

    return-object v0
.end method

.method public onAttach()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;

    .line 6
    .line 7
    const-class v1, Lcom/narvii/model/ChatThread;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/DivideColumnImpressionCollector;-><init>(Ljava/lang/Class;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 14
    return-void
.end method
