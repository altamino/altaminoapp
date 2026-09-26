.class public Lcom/narvii/checkin/CheckInResult;
.super Lcom/narvii/model/api/ApiResponse;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    .line 4
    return-void
.end method
