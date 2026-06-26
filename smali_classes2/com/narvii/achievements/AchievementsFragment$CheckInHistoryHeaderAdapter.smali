.class Lcom/narvii/achievements/AchievementsFragment$CheckInHistoryHeaderAdapter;
.super Lcom/narvii/list/HeaderAdapter;
.source "AchievementsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/achievements/AchievementsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckInHistoryHeaderAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/achievements/AchievementsFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/achievements/AchievementsFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/narvii/achievements/AchievementsFragment$CheckInHistoryHeaderAdapter;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    .line 261
    invoke-direct {p0, p2}, Lcom/narvii/list/HeaderAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/narvii/list/HeaderAdapter;->attachedAdapter:Lcom/narvii/list/NVAdapter;

    instance-of v1, v0, Lcom/narvii/checkin/CheckInHistoryAdapter;

    if-eqz v1, :cond_0

    .line 267
    check-cast v0, Lcom/narvii/checkin/CheckInHistoryAdapter;

    invoke-virtual {v0}, Lcom/narvii/checkin/CheckInHistoryAdapter;->isDataGot()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b00dc

    .line 276
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
