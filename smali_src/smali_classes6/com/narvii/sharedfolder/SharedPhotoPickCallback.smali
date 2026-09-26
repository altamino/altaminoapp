.class public Lcom/narvii/sharedfolder/SharedPhotoPickCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/media/MediaPickCallback;


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


# virtual methods
.method public onPick(Ljava/util/HashMap;Lcom/narvii/app/NVActivity;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/narvii/app/NVActivity;",
            "Z)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const-string v0, "folderId"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Ljava/lang/String;

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/sharedfolder/SharedPhotoPickCallback;->uploadMedia(Ljava/util/HashMap;Lcom/narvii/app/NVActivity;ZLjava/lang/String;)V

    .line 16
    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    const-string p3, "statistics"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p3}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object p2

    .line 24
    .line 25
    check-cast p2, Lcom/narvii/util/statistics/StatisticsService;

    .line 26
    .line 27
    const-string p3, "Upload Shared Folder Media"

    .line 28
    .line 29
    .line 30
    invoke-interface {p2, p3}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    const-string p3, "pickSource"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object p3

    .line 38
    .line 39
    check-cast p3, Ljava/lang/String;

    .line 40
    .line 41
    const-string v0, "Type"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v0, p3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 45
    move-result-object p2

    .line 46
    .line 47
    const-string p3, "Source"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    check-cast p1, Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    const-string p2, "Upload Shared Folder Media Total"

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 63
    :cond_1
    return-void
.end method

.method protected uploadMedia(Ljava/util/HashMap;Lcom/narvii/app/NVActivity;ZLjava/lang/String;)V
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/narvii/app/NVActivity;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p2}, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string v1, "showAddAlbumAlert"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 13
    move-result v2

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    move-result v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x1

    .line 28
    .line 29
    :goto_0
    iput-boolean v1, v0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->showAddAlbumAlert:Z

    .line 30
    .line 31
    xor-int/lit8 v1, p3, 0x1

    .line 32
    .line 33
    iput-boolean v1, v0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->showAddAlbumAlertImmediately:Z

    .line 34
    .line 35
    const-string v1, "mediaList"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    check-cast p1, Ljava/lang/String;

    .line 42
    .line 43
    const-class v1, Lcom/narvii/model/Media;

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    new-instance v1, Lcom/narvii/sharedfolder/SharedPhotoPickCallback$1;

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, p0, p3, p2}, Lcom/narvii/sharedfolder/SharedPhotoPickCallback$1;-><init>(Lcom/narvii/sharedfolder/SharedPhotoPickCallback;ZLcom/narvii/app/NVActivity;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1, p4, v1}, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->uploadMedia(Ljava/util/List;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    .line 56
    return-void
.end method
