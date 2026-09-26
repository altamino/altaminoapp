.class Lcom/coloros/ocs/mediaunit/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/ocs/mediaunit/e;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/ocs/mediaunit/e;


# direct methods
.method constructor <init>(Lcom/coloros/ocs/mediaunit/e;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/coloros/ocs/mediaunit/e$a;->this$0:Lcom/coloros/ocs/mediaunit/e;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/coloros/ocs/mediaunit/e$a;->this$0:Lcom/coloros/ocs/mediaunit/e;

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Lcom/coloros/ocs/mediaunit/a$a;->x1(Landroid/os/IBinder;)Lcom/coloros/ocs/mediaunit/a;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/coloros/ocs/mediaunit/e;->h(Lcom/coloros/ocs/mediaunit/e;Lcom/coloros/ocs/mediaunit/a;)Lcom/coloros/ocs/mediaunit/a;

    .line 10
    .line 11
    :try_start_0
    iget-object p1, p0, Lcom/coloros/ocs/mediaunit/e$a;->this$0:Lcom/coloros/ocs/mediaunit/e;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/coloros/ocs/mediaunit/e;->g(Lcom/coloros/ocs/mediaunit/e;)Lcom/coloros/ocs/mediaunit/a;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iget-object p2, p0, Lcom/coloros/ocs/mediaunit/e$a;->this$0:Lcom/coloros/ocs/mediaunit/e;

    .line 18
    .line 19
    .line 20
    invoke-static {p2}, Lcom/coloros/ocs/mediaunit/e;->i(Lcom/coloros/ocs/mediaunit/e;)Landroid/os/IBinder;

    .line 21
    move-result-object p2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/coloros/ocs/mediaunit/e$a;->this$0:Lcom/coloros/ocs/mediaunit/e;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/coloros/ocs/mediaunit/e;->j(Lcom/coloros/ocs/mediaunit/e;)Landroid/content/Context;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, p2, v0}, Lcom/coloros/ocs/mediaunit/a;->N(Landroid/os/IBinder;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/coloros/ocs/mediaunit/e$a;->this$0:Lcom/coloros/ocs/mediaunit/e;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/coloros/ocs/mediaunit/e;->h(Lcom/coloros/ocs/mediaunit/e;Lcom/coloros/ocs/mediaunit/a;)Lcom/coloros/ocs/mediaunit/a;

    .line 7
    return-void
.end method
