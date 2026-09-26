.class Lcom/google/firebase/messaging/b1$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/b1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private task:Lcom/google/firebase/messaging/b1;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/firebase/messaging/b1;


# direct methods
.method public constructor <init>(Lcom/google/firebase/messaging/b1;Lcom/google/firebase/messaging/b1;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/firebase/messaging/b1$a;->this$0:Lcom/google/firebase/messaging/b1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/firebase/messaging/b1$a;->task:Lcom/google/firebase/messaging/b1;

    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/messaging/b1;->b()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "FirebaseMessaging"

    .line 9
    .line 10
    const-string v1, "Connectivity change received registered"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/messaging/b1$a;->this$0:Lcom/google/firebase/messaging/b1;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/google/firebase/messaging/b1;->d(Lcom/google/firebase/messaging/b1;)Landroid/content/Context;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    new-instance v1, Landroid/content/IntentFilter;

    .line 22
    .line 23
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 30
    return-void
.end method

.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object p2, p0, Lcom/google/firebase/messaging/b1$a;->task:Lcom/google/firebase/messaging/b1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    :try_start_1
    invoke-static {p2}, Lcom/google/firebase/messaging/b1;->a(Lcom/google/firebase/messaging/b1;)Z

    .line 11
    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    .line 13
    if-nez p2, :cond_1

    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    .line 17
    .line 18
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/google/firebase/messaging/b1;->b()Z

    .line 19
    move-result p2

    .line 20
    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    const-string p2, "FirebaseMessaging"

    .line 24
    .line 25
    const-string v0, "Connectivity changed. Starting background sync."

    .line 26
    .line 27
    .line 28
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/google/firebase/messaging/b1$a;->task:Lcom/google/firebase/messaging/b1;

    .line 34
    .line 35
    .line 36
    invoke-static {p2}, Lcom/google/firebase/messaging/b1;->c(Lcom/google/firebase/messaging/b1;)Lcom/google/firebase/messaging/a1;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/firebase/messaging/b1$a;->task:Lcom/google/firebase/messaging/b1;

    .line 40
    .line 41
    const-wide/16 v1, 0x0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v0, v1, v2}, Lcom/google/firebase/messaging/a1;->l(Ljava/lang/Runnable;J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 48
    const/4 p1, 0x0

    .line 49
    .line 50
    iput-object p1, p0, Lcom/google/firebase/messaging/b1$a;->task:Lcom/google/firebase/messaging/b1;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    monitor-exit p0

    .line 52
    return-void

    .line 53
    :goto_1
    monitor-exit p0

    .line 54
    throw p1
.end method
