.class final Lcom/narvii/suggest/interest/TopicSearchFragment$TopicDataSource;
.super Lcom/narvii/paging/source/PageDataSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/suggest/interest/TopicSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TopicDataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/source/PageDataSource<",
        "Lcom/narvii/model/story/StoryTopic;",
        "Lcom/narvii/model/story/StoryTopicListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private languageService:Lcom/narvii/language/ContentLanguageService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/suggest/interest/TopicSearchFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/suggest/interest/TopicSearchFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/suggest/interest/TopicSearchFragment;
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
    iput-object p1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicDataSource;->this$0:Lcom/narvii/suggest/interest/TopicSearchFragment;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/paging/source/PageDataSource;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    const-string p1, "content_language"

    .line 13
    .line 14
    .line 15
    invoke-interface {p2, p1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    const-string p2, "getService(...)"

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicDataSource;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 26
    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "topic/search"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicDataSource;->this$0:Lcom/narvii/suggest/interest/TopicSearchFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lcom/narvii/suggest/interest/TopicSearchFragment;->access$getInstantSearchListener$p(Lcom/narvii/suggest/interest/TopicSearchFragment;)Lcom/narvii/search/InstantSearchListener;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    const-string v2, "q"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicDataSource;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    const-string v2, "language"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/story/StoryTopicListResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-class v0, Lcom/narvii/model/story/StoryTopicListResponse;

    return-object v0
.end method
