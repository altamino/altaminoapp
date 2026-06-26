.class public Lcom/narvii/master/setting/CommunitySubPushSetting;
.super Ljava/lang/Object;
.source "CommunitySubPushSetting.java"


# instance fields
.field public communityActivitiesEnabled:Z

.field public communityBroadcastsEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setAllSubSetting(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityBroadcastsEnabled:Z

    .line 14
    iput-boolean p1, p0, Lcom/narvii/master/setting/CommunitySubPushSetting;->communityActivitiesEnabled:Z

    return-void
.end method
