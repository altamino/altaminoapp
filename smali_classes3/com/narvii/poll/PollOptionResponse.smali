.class public Lcom/narvii/poll/PollOptionResponse;
.super Lcom/narvii/model/api/ObjectResponse;
.source "PollOptionResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ObjectResponse<",
        "Lcom/narvii/model/PollOption;",
        ">;"
    }
.end annotation


# instance fields
.field public pollOption:Lcom/narvii/model/PollOption;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/narvii/model/api/ObjectResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic object()Lcom/narvii/model/NVObject;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/narvii/poll/PollOptionResponse;->object()Lcom/narvii/model/PollOption;

    move-result-object v0

    return-object v0
.end method

.method public object()Lcom/narvii/model/PollOption;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/narvii/poll/PollOptionResponse;->pollOption:Lcom/narvii/model/PollOption;

    return-object v0
.end method
