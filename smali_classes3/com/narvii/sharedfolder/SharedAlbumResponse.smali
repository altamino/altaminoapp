.class public Lcom/narvii/sharedfolder/SharedAlbumResponse;
.super Lcom/narvii/model/api/ObjectResponse;
.source "SharedAlbumResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ObjectResponse<",
        "Lcom/narvii/model/SharedAlbum;",
        ">;"
    }
.end annotation


# instance fields
.field public folder:Lcom/narvii/model/SharedAlbum;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/narvii/model/api/ObjectResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic object()Lcom/narvii/model/NVObject;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedAlbumResponse;->object()Lcom/narvii/model/SharedAlbum;

    move-result-object v0

    return-object v0
.end method

.method public object()Lcom/narvii/model/SharedAlbum;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedAlbumResponse;->folder:Lcom/narvii/model/SharedAlbum;

    return-object v0
.end method
