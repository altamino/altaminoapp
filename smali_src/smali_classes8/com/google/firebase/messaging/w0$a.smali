.class Lcom/google/firebase/messaging/w0$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/w0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private task:Lcom/google/firebase/messaging/w0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/messaging/w0;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/firebase/messaging/w0$a;->task:Lcom/google/firebase/messaging/w0;

    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/messaging/w0;->c()Z

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
    new-instance v0, Landroid/content/IntentFilter;

    .line 16
    .line 17
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/firebase/messaging/w0$a;->task:Lcom/google/firebase/messaging/w0;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/google/firebase/messaging/w0;->b()Landroid/content/Context;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 30
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/google/firebase/messaging/w0$a;->task:Lcom/google/firebase/messaging/w0;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/messaging/w0;->d()Z

    .line 9
    move-result p1

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    return-void

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-static {}, Lcom/google/firebase/messaging/w0;->c()Z

    .line 16
    move-result p1

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    const-string p1, "FirebaseMessaging"

    .line 21
    .line 22
    const-string p2, "Connectivity changed. Starting background sync."

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    :cond_2
    iget-object p1, p0, Lcom/google/firebase/messaging/w0$a;->task:Lcom/google/firebase/messaging/w0;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/google/firebase/messaging/w0;->a(Lcom/google/firebase/messaging/w0;)Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iget-object p2, p0, Lcom/google/firebase/messaging/w0$a;->task:Lcom/google/firebase/messaging/w0;

    .line 34
    .line 35
    const-wide/16 v0, 0x0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->j(Ljava/lang/Runnable;J)V

    .line 39
    .line 40
    iget-object p1, p0, Lcom/google/firebase/messaging/w0$a;->task:Lcom/google/firebase/messaging/w0;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/google/firebase/messaging/w0;->b()Landroid/content/Context;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 48
    const/4 p1, 0x0

    .line 49
    .line 50
    iput-object p1, p0, Lcom/google/firebase/messaging/w0$a;->task:Lcom/google/firebase/messaging/w0;

    .line 51
    return-void
.end method
