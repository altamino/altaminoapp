.class public Lcom/narvii/poll/VotersSummaryResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getVoter(Ljava/lang/String;)Lcom/narvii/poll/Voter;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/poll/VotersSummaryResponse;->votersSummary:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object p1, Lcom/narvii/poll/Voter;->EMPTY:Lcom/narvii/poll/Voter;

    .line 7
    return-object p1

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    check-cast v1, Lcom/narvii/poll/Voter;

    .line 24
    .line 25
    iget-object v2, v1, Lcom/narvii/poll/Voter;->polloptId:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v2

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    return-object v1

    .line 33
    .line 34
    :cond_2
    sget-object p1, Lcom/narvii/poll/Voter;->EMPTY:Lcom/narvii/poll/Voter;

    .line 35
    return-object p1
.end method
