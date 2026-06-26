.class final Lcom/narvii/suggest/interest/TopicSearchFragment$TopicDataSource;
.super Lcom/narvii/paging/source/PageDataSource;
.source "TopicSearchFragment.kt"


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

.field final synthetic this$0:Lcom/narvii/suggest/interest/TopicSearchFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/suggest/interest/TopicSearchFragment;Lcom/narvii/app/NVContext;)V
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

    .line 169
    iput-object p1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicDataSource;->this$0:Lcom/narvii/suggest/interest/TopicSearchFragment;

    invoke-direct {p0, p2}, Lcom/narvii/paging/source/PageDataSource;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "content_language"

    .line 171
    invoke-interface {p2, p1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ctx.getService(\"content_language\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    iput-object p1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicDataSource;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 174
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    const-string v1, "topic/search"

    .line 175
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicDataSource;->this$0:Lcom/narvii/suggest/interest/TopicSearchFragment;

    invoke-static {v1}, Lcom/narvii/suggest/interest/TopicSearchFragment;->access$getInstantSearchListener$p(Lcom/narvii/suggest/interest/TopicSearchFragment;)Lcom/narvii/search/InstantSearchListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v1

    const-string v2, "q"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/narvii/suggest/interest/TopicSearchFragment$TopicDataSource;->languageService:Lcom/narvii/language/ContentLanguageService;

    invoke-virtual {v1}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v1

    const-string v2, "language"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

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

    .line 180
    const-class v0, Lcom/narvii/model/story/StoryTopicListResponse;

    return-object v0
.end method
