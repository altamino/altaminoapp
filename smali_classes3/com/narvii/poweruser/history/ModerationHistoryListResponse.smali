.class public Lcom/narvii/poweruser/history/ModerationHistoryListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "ModerationHistoryListResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/poweruser/history/ModerationHistory;",
        ">;"
    }
.end annotation


# instance fields
.field public adminLogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/poweruser/history/ModerationHistory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/narvii/model/api/ListResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/poweruser/history/ModerationHistory;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/narvii/poweruser/history/ModerationHistoryListResponse;->adminLogList:Ljava/util/List;

    return-object v0
.end method
