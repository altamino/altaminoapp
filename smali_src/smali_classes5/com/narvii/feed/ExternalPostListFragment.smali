.class public Lcom/narvii/feed/ExternalPostListFragment;
.super Lcom/narvii/feed/FeedListFragment;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/feed/FeedListFragment;-><init>()V

    .line 4
    return-void
.end method

.method private sendExternalSoureRequest()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "/external-source/"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/narvii/feed/ExternalPostListFragment;->sourceId:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    const-string v1, "api"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    new-instance v2, Lcom/narvii/feed/ExternalPostListFragment$1;

    .line 42
    .line 43
    const-class v3, Lcom/narvii/feed/ExternalSourceResponse;

    .line 44
    .line 45
    .line 46
    invoke-direct {v2, p0, v3}, Lcom/narvii/feed/ExternalPostListFragment$1;-><init>(Lcom/narvii/feed/ExternalPostListFragment;Ljava/lang/Class;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected createFeedAdapter(Landroid/os/Bundle;)Lcom/narvii/feed/FeedListAdapter;
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/feed/ExternalPostListFragment$Adapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/feed/ExternalPostListFragment$Adapter;-><init>(Lcom/narvii/feed/ExternalPostListFragment;)V

    .line 6
    return-object p1
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onAttach(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "KEY_EXTERNAL_SOURCE_ID"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/feed/ExternalPostListFragment;->sourceId:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "title"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/feed/ExternalPostListFragment;->sourceTitle:Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "KEY_EXTERNAL_SOURCE"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    const-class v1, Lcom/narvii/model/ExternalSource;

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    check-cast v0, Lcom/narvii/model/ExternalSource;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v1, p0, Lcom/narvii/feed/ExternalPostListFragment;->sourceId:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    move-result v1

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    iget-object v1, v0, Lcom/narvii/model/ExternalSource;->sourceId:Ljava/lang/String;

    .line 46
    .line 47
    iput-object v1, p0, Lcom/narvii/feed/ExternalPostListFragment;->sourceId:Ljava/lang/String;

    .line 48
    .line 49
    :cond_0
    iget-object v1, p0, Lcom/narvii/feed/ExternalPostListFragment;->sourceTitle:Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    move-result v1

    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    iget-object v0, v0, Lcom/narvii/model/ExternalSource;->title:Ljava/lang/String;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/narvii/feed/ExternalPostListFragment;->sourceTitle:Ljava/lang/String;

    .line 60
    .line 61
    :cond_1
    iget-object v0, p0, Lcom/narvii/feed/ExternalPostListFragment;->sourceTitle:Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/feed/ExternalPostListFragment;->sourceTitle:Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    move-result v0

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    iget-object v0, p0, Lcom/narvii/feed/ExternalPostListFragment;->sourceId:Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    move-result v0

    .line 79
    .line 80
    if-nez v0, :cond_2

    .line 81
    .line 82
    .line 83
    invoke-direct {p0}, Lcom/narvii/feed/ExternalPostListFragment;->sendExternalSoureRequest()V

    .line 84
    .line 85
    :cond_2
    if-nez p1, :cond_3

    .line 86
    .line 87
    const-string p1, "statistics"

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 94
    .line 95
    const-string v0, "External Channel Opened"

    .line 96
    .line 97
    .line 98
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    const-string v0, "External Channel Opened Total"

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 105
    :cond_3
    return-void
.end method
