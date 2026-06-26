.class public Lcom/narvii/sharedfolder/SharedPhotoPickCallback;
.super Ljava/lang/Object;
.source "SharedPhotoPickCallback.java"

# interfaces
.implements Lcom/narvii/media/MediaPickCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPick(Ljava/util/HashMap;Lcom/narvii/app/NVActivity;Z)V
    .locals 2
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

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "folderId"

    .line 26
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 28
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/narvii/sharedfolder/SharedPhotoPickCallback;->uploadMedia(Ljava/util/HashMap;Lcom/narvii/app/NVActivity;ZLjava/lang/String;)V

    return-void
.end method

.method protected uploadMedia(Ljava/util/HashMap;Lcom/narvii/app/NVActivity;ZLjava/lang/String;)V
    .locals 3
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

    .line 40
    new-instance v0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;

    invoke-direct {v0, p2}, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;-><init>(Lcom/narvii/app/NVContext;)V

    if-eqz p1, :cond_0

    const-string v1, "showAddAlbumAlert"

    .line 42
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 45
    :goto_0
    iput-boolean v1, v0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->showAddAlbumAlert:Z

    xor-int/lit8 v1, p3, 0x1

    .line 46
    iput-boolean v1, v0, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->showAddAlbumAlertImmediately:Z

    const-string v1, "mediaList"

    .line 47
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-class v1, Lcom/narvii/model/Media;

    invoke-static {p1, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v1, Lcom/narvii/sharedfolder/SharedPhotoPickCallback$1;

    invoke-direct {v1, p0, p3, p2}, Lcom/narvii/sharedfolder/SharedPhotoPickCallback$1;-><init>(Lcom/narvii/sharedfolder/SharedPhotoPickCallback;ZLcom/narvii/app/NVActivity;)V

    invoke-virtual {v0, p1, p4, v1}, Lcom/narvii/sharedfolder/SharedPhotoPostHelper;->uploadMedia(Ljava/util/List;Ljava/lang/String;Lcom/narvii/util/Callback;)V

    return-void
.end method
