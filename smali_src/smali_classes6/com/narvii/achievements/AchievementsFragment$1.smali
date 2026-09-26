.class Lcom/narvii/achievements/AchievementsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/achievements/AchievementsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/achievements/AchievementsFragment;


# direct methods
.method constructor <init>(Lcom/narvii/achievements/AchievementsFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/achievements/AchievementsFragment$1;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string v0, "com.narvii.action.ACTION_STREAK_REPAIR_CHANGED"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/achievements/AchievementsFragment$1;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lcom/narvii/achievements/AchievementsFragment;->t(Lcom/narvii/achievements/AchievementsFragment;)Lcom/narvii/checkin/CheckInHistoryAdapter;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/achievements/AchievementsFragment$1;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/narvii/achievements/AchievementsFragment;->v(Lcom/narvii/achievements/AchievementsFragment;)Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/achievements/AchievementsFragment$1;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    .line 31
    .line 32
    const-string v0, "config"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 39
    .line 40
    const-string v0, "cid"

    .line 41
    const/4 v1, 0x0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 45
    move-result p2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 49
    move-result p1

    .line 50
    .line 51
    if-ne p2, p1, :cond_0

    .line 52
    .line 53
    iget-object p1, p0, Lcom/narvii/achievements/AchievementsFragment$1;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Lcom/narvii/achievements/AchievementsFragment;->t(Lcom/narvii/achievements/AchievementsFragment;)Lcom/narvii/checkin/CheckInHistoryAdapter;

    .line 57
    move-result-object p1

    .line 58
    const/4 p2, 0x0

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1, p2}, Lcom/narvii/checkin/CheckInHistoryAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 62
    :cond_0
    return-void
.end method
