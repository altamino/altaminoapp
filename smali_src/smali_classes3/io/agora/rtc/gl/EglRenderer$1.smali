.class Lio/agora/rtc/gl/EglRenderer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/gl/EglRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/gl/EglRenderer;


# direct methods
.method constructor <init>(Lio/agora/rtc/gl/EglRenderer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/gl/EglRenderer$1;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$1;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lio/agora/rtc/gl/EglRenderer;->access$100(Lio/agora/rtc/gl/EglRenderer;)V

    .line 6
    .line 7
    iget-object v0, p0, Lio/agora/rtc/gl/EglRenderer$1;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lio/agora/rtc/gl/EglRenderer;->access$200(Lio/agora/rtc/gl/EglRenderer;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    monitor-enter v0

    .line 13
    .line 14
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer$1;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lio/agora/rtc/gl/EglRenderer;->access$300(Lio/agora/rtc/gl/EglRenderer;)Landroid/os/Handler;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer$1;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lio/agora/rtc/gl/EglRenderer;->access$300(Lio/agora/rtc/gl/EglRenderer;)Landroid/os/Handler;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    iget-object v2, p0, Lio/agora/rtc/gl/EglRenderer$1;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Lio/agora/rtc/gl/EglRenderer;->access$400(Lio/agora/rtc/gl/EglRenderer;)Ljava/lang/Runnable;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    iget-object v1, p0, Lio/agora/rtc/gl/EglRenderer$1;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Lio/agora/rtc/gl/EglRenderer;->access$300(Lio/agora/rtc/gl/EglRenderer;)Landroid/os/Handler;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    iget-object v2, p0, Lio/agora/rtc/gl/EglRenderer$1;->this$0:Lio/agora/rtc/gl/EglRenderer;

    .line 44
    .line 45
    .line 46
    invoke-static {v2}, Lio/agora/rtc/gl/EglRenderer;->access$400(Lio/agora/rtc/gl/EglRenderer;)Ljava/lang/Runnable;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 50
    .line 51
    const-wide/16 v4, 0x4

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 55
    move-result-wide v3

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v1

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    :goto_0
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw v1
.end method
