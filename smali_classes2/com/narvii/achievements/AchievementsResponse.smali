.class public Lcom/narvii/achievements/AchievementsResponse;
.super Lcom/narvii/model/api/ObjectResponse;
.source "AchievementsResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/model/api/ObjectResponse<",
        "Lcom/narvii/achievements/AchievementsItem;",
        ">;"
    }
.end annotation


# instance fields
.field public achievements:Lcom/narvii/achievements/AchievementsItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/narvii/model/api/ObjectResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public object()Lcom/narvii/achievements/AchievementsItem;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/narvii/achievements/AchievementsResponse;->achievements:Lcom/narvii/achievements/AchievementsItem;

    return-object v0
.end method

.method public bridge synthetic object()Lcom/narvii/model/NVObject;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/narvii/achievements/AchievementsResponse;->object()Lcom/narvii/achievements/AchievementsItem;

    move-result-object v0

    return-object v0
.end method
