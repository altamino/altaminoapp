.class Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper$2;->this$0:Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;

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
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    iget-object p2, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper$2;->this$0:Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->a(Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;)Ljava/lang/Runnable;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper$2;->this$0:Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;->a(Lcom/narvii/services/incubator/IncubatorMyCommunityListHelper;)Ljava/lang/Runnable;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    const-wide/16 v0, 0xc8

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 23
    return-void
.end method
