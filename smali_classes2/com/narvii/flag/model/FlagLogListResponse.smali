.class public Lcom/narvii/flag/model/FlagLogListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "FlagLogListResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/flag/model/FlagLog;",
        ">;"
    }
.end annotation


# instance fields
.field public flagLogList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/flag/model/FlagLog;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/flag/model/FlagLog;",
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
            "Lcom/narvii/flag/model/FlagLog;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/narvii/flag/model/FlagLogListResponse;->flagLogList:Ljava/util/List;

    return-object v0
.end method
