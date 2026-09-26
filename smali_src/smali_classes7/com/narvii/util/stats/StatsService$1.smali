.class Lcom/narvii/util/stats/StatsService$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/stats/StatsService$1;->this$0:Lcom/narvii/util/stats/StatsService;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/stats/StatsService$1;->this$0:Lcom/narvii/util/stats/StatsService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/stats/StatsService;->flush()V

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/util/stats/StatsService$1;->this$0:Lcom/narvii/util/stats/StatsService;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/util/stats/StatsService;->c(Lcom/narvii/util/stats/StatsService;)I

    .line 16
    move-result v0

    .line 17
    int-to-long v0, v0

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 21
    return-void
.end method
