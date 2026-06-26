.class public Lcom/narvii/poll/PollOptionListResponse;
.super Lcom/narvii/model/api/ListResponse;
.source "PollOptionListResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ListResponse<",
        "Lcom/narvii/model/PollOption;",
        ">;"
    }
.end annotation


# instance fields
.field public polloptList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/PollOption;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/PollOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
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
            "Lcom/narvii/model/PollOption;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/narvii/poll/PollOptionListResponse;->polloptList:Ljava/util/List;

    return-object v0
.end method
