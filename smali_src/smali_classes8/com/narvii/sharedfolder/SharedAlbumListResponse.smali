.class public Lcom/narvii/sharedfolder/SharedAlbumListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/model/SharedAlbum;",
        ">;"
    }
.end annotation


# instance fields
.field public folderList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/SharedAlbum;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/SharedAlbum;",
            ">;"
        }
    .end annotation
.end field

.field public totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/api/ListResponse;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/sharedfolder/SharedAlbumListResponse;->totalCount:I

    .line 7
    return-void
.end method


# virtual methods
.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/SharedAlbum;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumListResponse;->folderList:Ljava/util/List;

    return-object v0
.end method
