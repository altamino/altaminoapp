.class public Lcom/narvii/sharedfolder/SharedFileResponse;
.super Lcom/narvii/model/api/ObjectResponse;
.source "SharedFileResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ObjectResponse<",
        "Lcom/narvii/model/SharedFile;",
        ">;"
    }
.end annotation


# instance fields
.field public file:Lcom/narvii/model/SharedFile;


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
    invoke-virtual {p0}, Lcom/narvii/sharedfolder/SharedFileResponse;->object()Lcom/narvii/model/SharedFile;

    move-result-object v0

    return-object v0
.end method

.method public object()Lcom/narvii/model/SharedFile;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedFileResponse;->file:Lcom/narvii/model/SharedFile;

    return-object v0
.end method
