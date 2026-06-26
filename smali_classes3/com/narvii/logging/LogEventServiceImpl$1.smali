.class Lcom/narvii/logging/LogEventServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "LogEventServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/logging/LogEventServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/logging/LogEventServiceImpl;


# direct methods
.method constructor <init>(Lcom/narvii/logging/LogEventServiceImpl;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/narvii/logging/LogEventServiceImpl$1;->this$0:Lcom/narvii/logging/LogEventServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/narvii/logging/LogEventServiceImpl$1;->this$0:Lcom/narvii/logging/LogEventServiceImpl;

    invoke-static {p1}, Lcom/narvii/logging/LogEventServiceImpl;->access$000(Lcom/narvii/logging/LogEventServiceImpl;)Ljava/util/LinkedList;

    move-result-object p1

    monitor-enter p1

    .line 68
    :try_start_0
    iget-object p2, p0, Lcom/narvii/logging/LogEventServiceImpl$1;->this$0:Lcom/narvii/logging/LogEventServiceImpl;

    invoke-static {p2}, Lcom/narvii/logging/LogEventServiceImpl;->access$000(Lcom/narvii/logging/LogEventServiceImpl;)Ljava/util/LinkedList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/LinkedList;->clear()V

    .line 69
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
