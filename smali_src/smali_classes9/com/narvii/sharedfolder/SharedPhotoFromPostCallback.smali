.class public Lcom/narvii/sharedfolder/SharedPhotoFromPostCallback;
.super Lcom/narvii/sharedfolder/SharedPhotoPickCallback;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/sharedfolder/SharedPhotoPickCallback;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected uploadMedia(Ljava/util/HashMap;Lcom/narvii/app/NVActivity;ZLjava/lang/String;)V
    .locals 6
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
    new-instance v0, Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p2}, Lcom/narvii/sharedfolder/SharedFolderHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    const-string v1, "mediaList"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    check-cast v1, Ljava/lang/String;

    .line 14
    .line 15
    const-class v2, Lcom/narvii/model/Media;

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    const-string v1, "objectId"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    move-object v3, v1

    .line 27
    .line 28
    check-cast v3, Ljava/lang/String;

    .line 29
    .line 30
    const-string v1, "objectType"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    check-cast p1, Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 40
    move-result v4

    .line 41
    .line 42
    new-instance v5, Lcom/narvii/sharedfolder/SharedPhotoFromPostCallback$1;

    .line 43
    .line 44
    .line 45
    invoke-direct {v5, p0, p3, p2}, Lcom/narvii/sharedfolder/SharedPhotoFromPostCallback$1;-><init>(Lcom/narvii/sharedfolder/SharedPhotoFromPostCallback;ZLcom/narvii/app/NVActivity;)V

    .line 46
    move-object v1, p4

    .line 47
    .line 48
    .line 49
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/sharedfolder/SharedFolderHelper;->addPhotosFromPosts(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILcom/narvii/util/Callback;)V

    .line 50
    return-void
.end method
