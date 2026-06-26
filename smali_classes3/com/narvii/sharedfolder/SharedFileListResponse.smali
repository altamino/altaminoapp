.class public Lcom/narvii/sharedfolder/SharedFileListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "SharedFileListResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/model/SharedFile;",
        ">;"
    }
.end annotation


# instance fields
.field public fileList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/SharedFile;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/SharedFile;",
            ">;"
        }
    .end annotation
.end field

.field public totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/narvii/model/api/ListResponse;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/narvii/sharedfolder/SharedFileListResponse;->totalCount:I

    return-void
.end method


# virtual methods
.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/SharedFile;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedFileListResponse;->fileList:Ljava/util/List;

    return-object v0
.end method
