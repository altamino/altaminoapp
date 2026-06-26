.class public Lcom/narvii/model/SharedAlbum;
.super Lcom/narvii/model/NVObject;
.source "SharedAlbum.java"

# interfaces
.implements Lcom/narvii/model/AuthorGetter;


# static fields
.field public static final SHARED_FOLDER_TYPE_CUSTOM:I = 0x1

.field public static final SHARED_FOLDER_TYPE_DEFAULT:I = 0x2

.field public static final STATUS_LOCKED:I = 0x4


# instance fields
.field public author:Lcom/narvii/model/User;

.field public coverMediaList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/Media;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field public createdTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public description:Ljava/lang/String;

.field public filesCount:I

.field public folderId:Ljava/lang/String;

.field public folderType:I

.field public modifiedTime:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        using = Lcom/narvii/util/JacksonUtils$DateDeserializer;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;
        using = Lcom/narvii/util/JacksonUtils$DateSerializer;
    .end annotation
.end field

.field public status:I

.field public title:Ljava/lang/String;

.field public votesCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Lcom/narvii/model/User;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/narvii/model/SharedAlbum;->author:Lcom/narvii/model/User;

    return-object v0
.end method

.method public getCoverImage()Lcom/narvii/model/Media;
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/narvii/model/SharedAlbum;->coverMediaList:Ljava/util/List;

    invoke-static {v0}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/narvii/model/SharedAlbum;->coverMediaList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    return-object v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/narvii/model/SharedAlbum;->isDefaultAlbum()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    sget v0, Lcom/narvii/lib/R$string;->all_photos:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/narvii/model/SharedAlbum;->title:Ljava/lang/String;

    return-object p1
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/narvii/model/SharedAlbum;->folderId:Ljava/lang/String;

    return-object v0
.end method

.method public isDefaultAlbum()Z
    .locals 2

    .line 48
    iget v0, p0, Lcom/narvii/model/SharedAlbum;->folderType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLocked()Z
    .locals 2

    .line 84
    iget v0, p0, Lcom/narvii/model/SharedAlbum;->status:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public objectType()I
    .locals 1

    const/16 v0, 0x6a

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public status()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/narvii/model/SharedAlbum;->status:I

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/narvii/model/SharedAlbum;->author:Lcom/narvii/model/User;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
