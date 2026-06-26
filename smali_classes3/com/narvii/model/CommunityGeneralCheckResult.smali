.class public Lcom/narvii/model/CommunityGeneralCheckResult;
.super Ljava/lang/Object;
.source "CommunityGeneralCheckResult.java"


# instance fields
.field public pendingFlagCount:I

.field public pendingKnowledgeBaseRequestCount:I

.field public pendingShareRequestCountMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
