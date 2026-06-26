.class Lcom/narvii/achievements/AchievementsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "AchievementsFragment.java"


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

    .line 78
    iput-object p1, p0, Lcom/narvii/achievements/AchievementsFragment$1;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.narvii.action.ACTION_STREAK_REPAIR_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/narvii/achievements/AchievementsFragment$1;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    invoke-static {p1}, Lcom/narvii/achievements/AchievementsFragment;->access$000(Lcom/narvii/achievements/AchievementsFragment;)Lcom/narvii/checkin/CheckInHistoryAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/achievements/AchievementsFragment$1;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    invoke-static {p1}, Lcom/narvii/achievements/AchievementsFragment;->access$100(Lcom/narvii/achievements/AchievementsFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/narvii/achievements/AchievementsFragment$1;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    const-string v0, "config"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    const/4 v0, 0x0

    const-string v1, "cid"

    .line 84
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/narvii/achievements/AchievementsFragment$1;->this$0:Lcom/narvii/achievements/AchievementsFragment;

    invoke-static {p1}, Lcom/narvii/achievements/AchievementsFragment;->access$000(Lcom/narvii/achievements/AchievementsFragment;)Lcom/narvii/checkin/CheckInHistoryAdapter;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/narvii/checkin/CheckInHistoryAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_0
    return-void
.end method
