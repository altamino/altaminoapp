.class public Lcom/narvii/sharedfolder/SharedPhotoFromPostCallback;
.super Lcom/narvii/sharedfolder/SharedPhotoPickCallback;
.source "SharedPhotoFromPostCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoPickCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected uploadMedia(Ljava/util/HashMap;Lcom/narvii/app/NVActivity;ZLjava/lang/String;)V
    .locals 6
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

    .line 22
    new-instance v0, Lcom/narvii/sharedfolder/SharedFolderHelper;

    invoke-direct {v0, p2}, Lcom/narvii/sharedfolder/SharedFolderHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const-string v1, "mediaList"

    .line 23
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-class v2, Lcom/narvii/model/Media;

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v1, "objectId"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    const-string v1, "objectType"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Lcom/narvii/sharedfolder/SharedPhotoFromPostCallback$1;

    invoke-direct {v5, p0, p3, p2}, Lcom/narvii/sharedfolder/SharedPhotoFromPostCallback$1;-><init>(Lcom/narvii/sharedfolder/SharedPhotoFromPostCallback;ZLcom/narvii/app/NVActivity;)V

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/sharedfolder/SharedFolderHelper;->addPhotosFromPosts(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILcom/narvii/util/Callback;)V

    return-void
.end method
