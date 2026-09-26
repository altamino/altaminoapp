.class public Lcom/narvii/model/InfluencerInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public fansCount:I

.field public monthlyFee:I

.field public pinned:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    .line 7
    if-ne p1, p0, :cond_1

    .line 8
    return v1

    .line 9
    .line 10
    :cond_1
    instance-of v2, p1, Lcom/narvii/model/InfluencerInfo;

    .line 11
    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    check-cast p1, Lcom/narvii/model/InfluencerInfo;

    .line 15
    .line 16
    iget v2, p0, Lcom/narvii/model/InfluencerInfo;->fansCount:I

    .line 17
    .line 18
    iget v3, p1, Lcom/narvii/model/InfluencerInfo;->fansCount:I

    .line 19
    .line 20
    if-ne v2, v3, :cond_2

    .line 21
    .line 22
    iget v2, p0, Lcom/narvii/model/InfluencerInfo;->monthlyFee:I

    .line 23
    .line 24
    iget p1, p1, Lcom/narvii/model/InfluencerInfo;->monthlyFee:I

    .line 25
    .line 26
    if-ne v2, p1, :cond_2

    .line 27
    move v0, v1

    .line 28
    :cond_2
    return v0
.end method
