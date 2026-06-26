.class public Lcom/narvii/services/DrawerResponseListenerProvider;
.super Ljava/lang/Object;
.source "DrawerResponseListenerProvider.java"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Object;",
        ">;>;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field currentActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field joined:Z

.field latestDownload:Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private downloadLaunchImage(Ljava/lang/String;)V
    .locals 9

    .line 134
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    const-string v1, "filesDir"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 135
    new-instance v7, Ljava/io/File;

    const-string v1, "community-launch-image.u"

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 136
    invoke-static {v7}, Lcom/narvii/util/Utils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/narvii/services/DrawerResponseListenerProvider;->latestDownload:Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, v1, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->url:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 147
    :cond_1
    invoke-static {p1}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "community-launch-image.jpg"

    const-string v3, "community-launch-image.gif"

    if-eqz v1, :cond_2

    .line 148
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v1

    move-object v6, v3

    goto :goto_0

    .line 151
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 152
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v6, v1

    move-object v5, v3

    .line 154
    :goto_0
    new-instance v8, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;

    new-instance v4, Ljava/io/File;

    const-string v1, "community-launch-image.t"

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;-><init>(Lcom/narvii/services/DrawerResponseListenerProvider;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    iput-object v8, p0, Lcom/narvii/services/DrawerResponseListenerProvider;->latestDownload:Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;

    .line 155
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 6

    .line 80
    instance-of v0, p1, Lcom/narvii/community/FullCommunityResponse;

    if-eqz v0, :cond_2

    .line 81
    check-cast p1, Lcom/narvii/community/FullCommunityResponse;

    .line 82
    iget-object v0, p1, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    iget v0, v0, Lcom/narvii/model/Community;->id:I

    .line 85
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    const-string/jumbo v2, "themePack"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/theme/ThemePackService;

    .line 86
    iget-object v2, p1, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    iget v3, v2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v2}, Lcom/narvii/model/Community;->themePackRevision()I

    move-result v2

    iget-object v4, p1, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    invoke-virtual {v4}, Lcom/narvii/model/Community;->themePackUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/narvii/theme/ThemePackService;->require(IILjava/lang/String;Z)V

    .line 89
    iget-object v1, p1, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    iget-object v1, v1, Lcom/narvii/model/Community;->promotionalMediaList:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 90
    iget-object v1, p1, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    iget-object v1, v1, Lcom/narvii/model/Community;->promotionalMediaList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Media;

    iget-object v1, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/narvii/services/DrawerResponseListenerProvider;->downloadLaunchImage(Ljava/lang/String;)V

    .line 93
    :cond_0
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    const-string v2, "account"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 94
    iget-object v2, p0, Lcom/narvii/services/DrawerResponseListenerProvider;->currentActivity:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 95
    :goto_0
    iget-boolean v3, p0, Lcom/narvii/services/DrawerResponseListenerProvider;->joined:Z

    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    iget-object p1, p1, Lcom/narvii/community/FullCommunityResponse;->currentUserInfo:Lcom/narvii/community/CommunityUserInfo;

    if-nez p1, :cond_2

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "auto join community"

    .line 97
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v1, "/community/join"

    invoke-virtual {p1, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 100
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    const-string v2, "api"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 101
    new-instance v2, Lcom/narvii/services/DrawerResponseListenerProvider$1;

    const-class v3, Lcom/narvii/model/api/UserResponse;

    invoke-direct {v2, p0, v3, v0}, Lcom/narvii/services/DrawerResponseListenerProvider$1;-><init>(Lcom/narvii/services/DrawerResponseListenerProvider;Ljava/lang/Class;I)V

    invoke-virtual {v1, p1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 126
    iput-boolean v5, p0, Lcom/narvii/services/DrawerResponseListenerProvider;->joined:Z

    :cond_2
    return-void
.end method

.method public create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/Callback;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/narvii/services/DrawerResponseListenerProvider;->create(Lcom/narvii/app/NVContext;)Lcom/narvii/util/Callback;

    move-result-object p1

    return-object p1
.end method

.method public destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p2, Lcom/narvii/util/Callback;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/DrawerResponseListenerProvider;->destroy(Lcom/narvii/app/NVContext;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 62
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_1

    .line 63
    iget-object p2, p0, Lcom/narvii/services/DrawerResponseListenerProvider;->currentActivity:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    :goto_0
    if-ne p2, p1, :cond_1

    .line 65
    iput-object v0, p0, Lcom/narvii/services/DrawerResponseListenerProvider;->currentActivity:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p2, Lcom/narvii/util/Callback;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/DrawerResponseListenerProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 55
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    .line 56
    new-instance p2, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/narvii/services/DrawerResponseListenerProvider;->currentActivity:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p2, Lcom/narvii/util/Callback;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/DrawerResponseListenerProvider;->resume(Lcom/narvii/app/NVContext;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Lcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 48
    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/narvii/services/DrawerResponseListenerProvider;->joined:Z

    :cond_0
    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p2, Lcom/narvii/util/Callback;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/DrawerResponseListenerProvider;->start(Lcom/narvii/app/NVContext;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p2, Lcom/narvii/util/Callback;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/DrawerResponseListenerProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/Callback;)V

    return-void
.end method
