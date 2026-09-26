.class public Lcom/narvii/flag/model/GeneraCheckResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "SourceFile"


# instance fields
.field public communityGeneralCheckResult:Lcom/narvii/model/CommunityGeneralCheckResult;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/model/CommunityGeneralCheckResult;
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
