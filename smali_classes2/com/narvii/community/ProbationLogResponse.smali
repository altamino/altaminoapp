.class public Lcom/narvii/community/ProbationLogResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "ProbationLogResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/community/ProbationLogResponse$CommunityProbationLogListBean;
    }
.end annotation


# instance fields
.field public communityProbationLogCount:I

.field public communityProbationLogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/community/ProbationLogResponse$CommunityProbationLogListBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    return-void
.end method
