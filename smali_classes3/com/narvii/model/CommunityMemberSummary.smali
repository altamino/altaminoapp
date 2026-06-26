.class public Lcom/narvii/model/CommunityMemberSummary;
.super Ljava/lang/Object;
.source "CommunityMemberSummary.java"


# instance fields
.field public hasOnlineMembers:Z

.field public membersCount:I

.field public userProfileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
