.class public Lcom/narvii/community/ProbationLogResponse$CommunityProbationLogListBean$AuthorBean;
.super Ljava/lang/Object;
.source "ProbationLogResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/ProbationLogResponse$CommunityProbationLogListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthorBean"
.end annotation


# instance fields
.field public icon:Ljava/lang/Object;

.field public nickname:Ljava/lang/String;

.field public role:I

.field public status:I

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
