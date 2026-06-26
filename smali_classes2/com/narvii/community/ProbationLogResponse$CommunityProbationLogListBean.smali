.class public Lcom/narvii/community/ProbationLogResponse$CommunityProbationLogListBean;
.super Ljava/lang/Object;
.source "ProbationLogResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/ProbationLogResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommunityProbationLogListBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/community/ProbationLogResponse$CommunityProbationLogListBean$AuthorBean;
    }
.end annotation


# instance fields
.field public author:Lcom/narvii/community/ProbationLogResponse$CommunityProbationLogListBean$AuthorBean;

.field public createdTime:Ljava/lang/String;

.field public mediaList:Ljava/lang/Object;

.field public message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
