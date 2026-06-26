.class public Lcom/narvii/model/InfluencerInfo;
.super Ljava/lang/Object;
.source "InfluencerInfo.java"


# instance fields
.field public fansCount:I

.field public monthlyFee:I

.field public pinned:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 17
    :cond_1
    instance-of v2, p1, Lcom/narvii/model/InfluencerInfo;

    if-eqz v2, :cond_2

    .line 18
    check-cast p1, Lcom/narvii/model/InfluencerInfo;

    .line 19
    iget v2, p0, Lcom/narvii/model/InfluencerInfo;->fansCount:I

    iget v3, p1, Lcom/narvii/model/InfluencerInfo;->fansCount:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/narvii/model/InfluencerInfo;->monthlyFee:I

    iget p1, p1, Lcom/narvii/model/InfluencerInfo;->monthlyFee:I

    if-ne v2, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method
