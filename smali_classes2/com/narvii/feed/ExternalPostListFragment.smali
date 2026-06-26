.class public Lcom/narvii/feed/ExternalPostListFragment;
.super Lcom/narvii/feed/FeedListFragment;
.source "ExternalPostListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/feed/ExternalPostListFragment$Adapter;
    }
.end annotation


# static fields
.field public static final KEY_EXTERNAL_SOURCE:Ljava/lang/String; = "KEY_EXTERNAL_SOURCE"

.field public static final KEY_SOURCE_ORIGIN_ID:Ljava/lang/String; = "KEY_EXTERNAL_SOURCE_ID"


# instance fields
.field sourceId:Ljava/lang/String;

.field sourceTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/narvii/feed/FeedListFragment;-><init>()V

    return-void
.end method

.method private sendExternalSoureRequest()V
    .locals 4

    .line 91
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/external-source/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/feed/ExternalPostListFragment;->sourceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "api"

    .line 92
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 93
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    new-instance v2, Lcom/narvii/feed/ExternalPostListFragment$1;

    const-class v3, Lcom/narvii/feed/ExternalSourceResponse;

    invoke-direct {v2, p0, v3}, Lcom/narvii/feed/ExternalPostListFragment$1;-><init>(Lcom/narvii/feed/ExternalPostListFragment;Ljava/lang/Class;)V

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method protected createFeedAdapter(Landroid/os/Bundle;)Lcom/narvii/feed/FeedListAdapter;
    .locals 0

    .line 66
    new-instance p1, Lcom/narvii/feed/ExternalPostListFragment$Adapter;

    invoke-direct {p1, p0}, Lcom/narvii/feed/ExternalPostListFragment$Adapter;-><init>(Lcom/narvii/feed/ExternalPostListFragment;)V

    return-object p1
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 41
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "KEY_EXTERNAL_SOURCE_ID"

    .line 42
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/ExternalPostListFragment;->sourceId:Ljava/lang/String;

    const-string v0, "title"

    .line 43
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/feed/ExternalPostListFragment;->sourceTitle:Ljava/lang/String;

    const-string v0, "KEY_EXTERNAL_SOURCE"

    .line 44
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/ExternalSource;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/ExternalSource;

    if-eqz v0, :cond_1

    .line 46
    iget-object v1, p0, Lcom/narvii/feed/ExternalPostListFragment;->sourceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, v0, Lcom/narvii/model/ExternalSource;->sourceId:Ljava/lang/String;

    iput-object v1, p0, Lcom/narvii/feed/ExternalPostListFragment;->sourceId:Ljava/lang/String;

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/narvii/feed/ExternalPostListFragment;->sourceTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    iget-object v0, v0, Lcom/narvii/model/ExternalSource;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/narvii/feed/ExternalPostListFragment;->sourceTitle:Ljava/lang/String;

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/narvii/feed/ExternalPostListFragment;->sourceTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/narvii/feed/ExternalPostListFragment;->sourceTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/narvii/feed/ExternalPostListFragment;->sourceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 55
    invoke-direct {p0}, Lcom/narvii/feed/ExternalPostListFragment;->sendExternalSoureRequest()V

    :cond_2
    return-void
.end method
