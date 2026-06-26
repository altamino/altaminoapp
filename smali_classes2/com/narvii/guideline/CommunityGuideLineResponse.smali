.class public Lcom/narvii/guideline/CommunityGuideLineResponse;
.super Lcom/narvii/model/api/ObjectResponse;
.source "CommunityGuideLineResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ObjectResponse<",
        "Lcom/narvii/guideline/CommunityGuideline;",
        ">;"
    }
.end annotation


# instance fields
.field public communityGuideline:Lcom/narvii/guideline/CommunityGuideline;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/narvii/model/api/ObjectResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public object()Lcom/narvii/guideline/CommunityGuideline;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/narvii/guideline/CommunityGuideLineResponse;->communityGuideline:Lcom/narvii/guideline/CommunityGuideline;

    return-object v0
.end method

.method public bridge synthetic object()Lcom/narvii/model/NVObject;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/narvii/guideline/CommunityGuideLineResponse;->object()Lcom/narvii/guideline/CommunityGuideline;

    move-result-object v0

    return-object v0
.end method
