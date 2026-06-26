.class Lcom/narvii/util/stats/StatsService$1;
.super Ljava/lang/Object;
.source "StatsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/stats/StatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/stats/StatsService;


# direct methods
.method constructor <init>(Lcom/narvii/util/stats/StatsService;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/narvii/util/stats/StatsService$1;->this$0:Lcom/narvii/util/stats/StatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/narvii/util/stats/StatsService$1;->this$0:Lcom/narvii/util/stats/StatsService;

    invoke-virtual {v0}, Lcom/narvii/util/stats/StatsService;->flush()V

    .line 134
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    iget-object v0, p0, Lcom/narvii/util/stats/StatsService$1;->this$0:Lcom/narvii/util/stats/StatsService;

    invoke-static {v0}, Lcom/narvii/util/stats/StatsService;->access$000(Lcom/narvii/util/stats/StatsService;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
