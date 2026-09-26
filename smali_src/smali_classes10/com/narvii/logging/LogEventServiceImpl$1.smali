.class Lcom/narvii/logging/LogEventServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/logging/LogEventServiceImpl$1;->this$0:Lcom/narvii/logging/LogEventServiceImpl;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/logging/LogEventServiceImpl$1;->this$0:Lcom/narvii/logging/LogEventServiceImpl;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/logging/LogEventServiceImpl;->b(Lcom/narvii/logging/LogEventServiceImpl;)Ljava/util/LinkedList;

    .line 6
    move-result-object p1

    .line 7
    monitor-enter p1

    .line 8
    .line 9
    :try_start_0
    iget-object p2, p0, Lcom/narvii/logging/LogEventServiceImpl$1;->this$0:Lcom/narvii/logging/LogEventServiceImpl;

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Lcom/narvii/logging/LogEventServiceImpl;->b(Lcom/narvii/logging/LogEventServiceImpl;)Ljava/util/LinkedList;

    .line 13
    move-result-object p2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/util/LinkedList;->clear()V

    .line 17
    monitor-exit p1

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p2

    .line 20
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p2
.end method
