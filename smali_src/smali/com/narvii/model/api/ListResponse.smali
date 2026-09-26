.class public abstract Lcom/narvii/model/api/ListResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/NVObject;",
        ">",
        "Lcom/narvii/model/api/ApiResponse;"
    }
.end annotation


# instance fields
.field public paging:Lcom/narvii/model/api/Pagination;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getPaging()Lcom/narvii/model/api/Pagination;
    .locals 1

    iget-object v0, p0, Lcom/narvii/model/api/ListResponse;->paging:Lcom/narvii/model/api/Pagination;

    return-object v0
.end method

.method public abstract list()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method
