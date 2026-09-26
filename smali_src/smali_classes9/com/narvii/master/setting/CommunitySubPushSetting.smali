.class public Lcom/narvii/master/setting/CommunitySubPushSetting;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public communityActivitiesEnabled:Z

.field public communityBroadcastsEnabled:Z


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
.method public setAllSubSetting(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityBroadcastsEnabled:Z

    iput-boolean p1, p0, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityActivitiesEnabled:Z

    return-void
.end method
