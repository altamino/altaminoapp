.class Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper$2;
.super Landroid/content/BroadcastReceiver;
.source "IncubatorMyCommunityListHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;


# direct methods
.method constructor <init>(Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper$2;->this$0:Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 92
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper$2;->this$0:Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;

    invoke-static {p2}, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->access$000(Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    iget-object p1, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper$2;->this$0:Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;

    invoke-static {p1}, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->access$000(Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
