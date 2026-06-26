.class public Lcom/narvii/poll/VotersSummaryResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "VotersSummaryResponse.java"


# instance fields
.field public votersSummary:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/poll/Voter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/poll/Voter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getVoter(Ljava/lang/String;)Lcom/narvii/poll/Voter;
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/narvii/poll/VotersSummaryResponse;->votersSummary:Ljava/util/List;

    if-nez v0, :cond_0

    .line 19
    sget-object p1, Lcom/narvii/poll/Voter;->EMPTY:Lcom/narvii/poll/Voter;

    return-object p1

    .line 21
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/poll/Voter;

    .line 22
    iget-object v2, v1, Lcom/narvii/poll/Voter;->polloptId:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 26
    :cond_2
    sget-object p1, Lcom/narvii/poll/Voter;->EMPTY:Lcom/narvii/poll/Voter;

    return-object p1
.end method
