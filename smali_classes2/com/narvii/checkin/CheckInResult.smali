.class public Lcom/narvii/checkin/CheckInResult;
.super Lcom/narvii/model/api/ApiResponse;
.source "CheckInResult.java"


# instance fields
.field public additionalReputationPoint:I

.field public canPlayLottery:Z

.field public checkInHistory:Lcom/narvii/model/CheckInHistory;

.field public consecutiveCheckInDays:I

.field public earnedReputationPoint:I

.field public userProfile:Lcom/narvii/model/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    return-void
.end method
