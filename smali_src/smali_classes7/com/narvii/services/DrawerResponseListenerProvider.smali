.class public Lcom/narvii/services/DrawerResponseListenerProvider;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private downloadLaunchImage(Ljava/lang/String;)V
    .locals 9

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "filesDir"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Ljava/io/File;

    .line 13
    .line 14
    new-instance v7, Ljava/io/File;

    .line 15
    .line 16
    const-string v1, "community-launch-image.u"

    .line 17
    .line 18
    .line 19
    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v7}, Lcom/narvii/util/Utils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    return-void

    .line 31
    .line 32
    :cond_0
    iget-object v1, p0, Lcom/narvii/services/DrawerResponseListenerProvider;->latestDownload:Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget-object v1, v1, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;->url:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-static {v1, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    move-result v1

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    return-void

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-static {p1}, Lcom/narvii/util/Utils;->isGif(Ljava/lang/String;)Z

    .line 47
    move-result v1

    .line 48
    .line 49
    const-string v2, "community-launch-image.jpg"

    .line 50
    .line 51
    const-string v3, "community-launch-image.gif"

    .line 52
    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    new-instance v1, Ljava/io/File;

    .line 56
    .line 57
    .line 58
    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    .line 60
    new-instance v3, Ljava/io/File;

    .line 61
    .line 62
    .line 63
    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    move-object v5, v1

    .line 65
    move-object v6, v3

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_2
    new-instance v1, Ljava/io/File;

    .line 69
    .line 70
    .line 71
    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    .line 73
    new-instance v3, Ljava/io/File;

    .line 74
    .line 75
    .line 76
    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    move-object v6, v1

    .line 78
    move-object v5, v3

    .line 79
    .line 80
    :goto_0
    new-instance v8, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;

    .line 81
    .line 82
    new-instance v4, Ljava/io/File;

    .line 83
    .line 84
    const-string v1, "community-launch-image.t"

    .line 85
    .line 86
    .line 87
    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    move-object v1, v8

    .line 89
    move-object v2, p0

    .line 90
    move-object v3, p1

    .line 91
    .line 92
    .line 93
    invoke-direct/range {v1 .. v7}, Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;-><init>(Lcom/narvii/services/DrawerResponseListenerProvider;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 94
    .line 95
    iput-object v8, p0, Lcom/narvii/services/DrawerResponseListenerProvider;->latestDownload:Lcom/narvii/services/DrawerResponseListenerProvider$DownloadLaunchImage;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 99
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 6

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/community/FullCommunityResponse;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/community/FullCommunityResponse;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    .line 9
    .line 10
    iget v0, v0, Lcom/narvii/model/Community;->id:I

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    const-string/jumbo v2, "themePack"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    check-cast v1, Lcom/narvii/theme/ThemePackService;

    .line 24
    .line 25
    iget-object v2, p1, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    .line 26
    .line 27
    iget v3, v2, Lcom/narvii/model/Community;->id:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/narvii/model/Community;->themePackRevision()I

    .line 31
    move-result v2

    .line 32
    .line 33
    iget-object v4, p1, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/narvii/model/Community;->themePackUrl()Ljava/lang/String;

    .line 37
    move-result-object v4

    .line 38
    const/4 v5, 0x1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/narvii/theme/ThemePackService;->require(IILjava/lang/String;Z)V

    .line 42
    .line 43
    iget-object v1, p1, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    .line 44
    .line 45
    iget-object v1, v1, Lcom/narvii/model/Community;->promotionalMediaList:Ljava/util/List;

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 51
    move-result v1

    .line 52
    .line 53
    if-lez v1, :cond_0

    .line 54
    .line 55
    iget-object v1, p1, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    .line 56
    .line 57
    iget-object v1, v1, Lcom/narvii/model/Community;->promotionalMediaList:Ljava/util/List;

    .line 58
    const/4 v2, 0x0

    .line 59
    .line 60
    .line 61
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    check-cast v1, Lcom/narvii/model/Media;

    .line 65
    .line 66
    iget-object v1, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    invoke-direct {p0, v1}, Lcom/narvii/services/DrawerResponseListenerProvider;->downloadLaunchImage(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_0
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    const-string v2, "account"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 82
    .line 83
    iget-object v2, p0, Lcom/narvii/services/DrawerResponseListenerProvider;->currentActivity:Ljava/lang/ref/WeakReference;

    .line 84
    .line 85
    if-nez v2, :cond_1

    .line 86
    const/4 v2, 0x0

    .line 87
    goto :goto_0

    .line 88
    .line 89
    .line 90
    :cond_1
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 91
    move-result-object v2

    .line 92
    .line 93
    check-cast v2, Landroid/app/Activity;

    .line 94
    .line 95
    :goto_0
    iget-boolean v3, p0, Lcom/narvii/services/DrawerResponseListenerProvider;->joined:Z

    .line 96
    .line 97
    if-nez v3, :cond_2

    .line 98
    .line 99
    if-eqz v2, :cond_2

    .line 100
    .line 101
    iget-object p1, p1, Lcom/narvii/community/FullCommunityResponse;->currentUserInfo:Lcom/narvii/community/CommunityUserInfo;

    .line 102
    .line 103
    if-nez p1, :cond_2

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 107
    move-result p1

    .line 108
    .line 109
    if-eqz p1, :cond_2

    .line 110
    .line 111
    const-string p1, "auto join community"

    .line 112
    .line 113
    .line 114
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    const-string v1, "/community/join"

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 128
    move-result-object p1

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 132
    move-result-object p1

    .line 133
    .line 134
    .line 135
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 136
    move-result-object v1

    .line 137
    .line 138
    const-string v2, "api"

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    move-result-object v1

    .line 143
    .line 144
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 145
    .line 146
    new-instance v2, Lcom/narvii/services/DrawerResponseListenerProvider$1;

    .line 147
    .line 148
    const-class v3, Lcom/narvii/model/api/UserResponse;

    .line 149
    .line 150
    .line 151
    invoke-direct {v2, p0, v3, v0}, Lcom/narvii/services/DrawerResponseListenerProvider$1;-><init>(Lcom/narvii/services/DrawerResponseListenerProvider;Ljava/lang/Class;I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, p1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 155
    .line 156
    iput-boolean v5, p0, Lcom/narvii/services/DrawerResponseListenerProvider;->joined:Z

    .line 157
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

    .line 1
    return-object p0
.end method

.method public bridge synthetic create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    .line 2
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

    .line 1
    return-void
.end method

.method public bridge synthetic destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
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

    .line 2
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/narvii/services/DrawerResponseListenerProvider;->currentActivity:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    :goto_0
    if-ne p2, p1, :cond_1

    iput-object v0, p0, Lcom/narvii/services/DrawerResponseListenerProvider;->currentActivity:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
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

    .line 2
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    .line 3
    new-instance p2, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/narvii/services/DrawerResponseListenerProvider;->currentActivity:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public bridge synthetic resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
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

    .line 2
    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/narvii/services/DrawerResponseListenerProvider;->joined:Z

    :cond_0
    return-void
.end method

.method public bridge synthetic start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
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

    .line 1
    return-void
.end method

.method public bridge synthetic stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lcom/narvii/util/Callback;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/DrawerResponseListenerProvider;->stop(Lcom/narvii/app/NVContext;Lcom/narvii/util/Callback;)V

    return-void
.end method
