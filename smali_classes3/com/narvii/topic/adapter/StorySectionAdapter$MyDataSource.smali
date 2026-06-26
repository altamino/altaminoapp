.class public final Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;
.super Lcom/narvii/paging/source/DataSource;
.source "StorySectionAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/topic/adapter/StorySectionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyDataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/source/DataSource<",
        "Lcom/narvii/topic/model/StorySections;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/adapter/StorySectionAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/topic/adapter/StorySectionAdapter;Lcom/narvii/app/NVContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;->this$0:Lcom/narvii/topic/adapter/StorySectionAdapter;

    invoke-direct {p0, p2}, Lcom/narvii/paging/source/DataSource;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method

.method public static final synthetic access$notifyPageSourceChange(Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;)V
    .locals 0

    .line 131
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->notifyPageSourceChange()V

    return-void
.end method

.method public static final synthetic access$pageLoadFailed(Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;Ljava/lang/String;)V
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Lcom/narvii/paging/source/DataSource;->pageLoadFailed(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$pageLoadFinished(Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;)V
    .locals 0

    .line 131
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->pageLoadFinished()V

    return-void
.end method

.method public static synthetic sendRequest$default(Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;Lcom/narvii/paging/source/PageRequestCallback;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 133
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;->sendRequest(Lcom/narvii/paging/source/PageRequestCallback;Z)V

    return-void
.end method


# virtual methods
.method public onErrorRetry()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 195
    invoke-static {p0, v0, v1, v2, v0}, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;->sendRequest$default(Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;Lcom/narvii/paging/source/PageRequestCallback;ZILjava/lang/Object;)V

    return-void
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 0

    const/4 p1, 0x1

    .line 191
    invoke-virtual {p0, p2, p1}, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;->sendRequest(Lcom/narvii/paging/source/PageRequestCallback;Z)V

    return-void
.end method

.method public final sendRequest(Lcom/narvii/paging/source/PageRequestCallback;Z)V
    .locals 4

    if-nez p2, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->pageLoadBegin()V

    .line 136
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getContext()Lcom/narvii/app/NVContext;

    move-result-object p2

    .line 137
    instance-of v0, p2, Lcom/narvii/paging/NVRecyclerViewFragment;

    if-eqz v0, :cond_0

    .line 138
    check-cast p2, Lcom/narvii/paging/NVRecyclerViewFragment;

    invoke-virtual {p2}, Lcom/narvii/paging/NVRecyclerViewFragment;->updateViews()V

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getContext()Lcom/narvii/app/NVContext;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const-string v1, "content_language"

    invoke-interface {p2, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/language/ContentLanguageService;

    goto :goto_0

    :cond_1
    move-object p2, v0

    .line 142
    :goto_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "topic/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;->this$0:Lcom/narvii/topic/adapter/StorySectionAdapter;

    invoke-virtual {v3}, Lcom/narvii/topic/adapter/StorySectionAdapter;->getTopicId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/feed/story/explore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 144
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    if-eqz p2, :cond_2

    .line 145
    invoke-virtual {p2}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    move-object p2, v0

    :goto_1
    const-string v2, "language"

    invoke-virtual {v1, v2, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    const-string v1, "v"

    const-string v2, "2.0.0"

    .line 146
    invoke-virtual {p2, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    const-string v1, "type"

    const-string v2, "topic-list"

    .line 147
    invoke-virtual {p2, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p2

    .line 148
    invoke-virtual {p0}, Lcom/narvii/paging/source/DataSource;->getContext()Lcom/narvii/app/NVContext;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v0, "api"

    invoke-interface {v1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    :cond_3
    if-eqz v0, :cond_4

    .line 149
    new-instance v1, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource$sendRequest$1;

    const-class v2, Lcom/narvii/topic/model/StorySectionListResponse;

    invoke-direct {v1, p0, p1, v2}, Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource$sendRequest$1;-><init>(Lcom/narvii/topic/adapter/StorySectionAdapter$MyDataSource;Lcom/narvii/paging/source/PageRequestCallback;Ljava/lang/Class;)V

    invoke-virtual {v0, p2, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_4
    return-void
.end method
