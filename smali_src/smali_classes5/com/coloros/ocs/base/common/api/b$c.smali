.class final Lcom/coloros/ocs/base/common/api/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/ocs/base/common/api/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/ocs/base/common/api/b;


# direct methods
.method private constructor <init>(Lcom/coloros/ocs/base/common/api/b;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/b$c;->a:Lcom/coloros/ocs/base/common/api/b;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/ocs/base/common/api/b;B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/coloros/ocs/base/common/api/b$c;-><init>(Lcom/coloros/ocs/base/common/api/b;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/coloros/ocs/base/common/api/b;->t()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "onServiceConnected"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lc1/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/b$c;->a:Lcom/coloros/ocs/base/common/api/b;

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Lcom/coloros/ocs/base/b$a;->x1(Landroid/os/IBinder;)Lcom/coloros/ocs/base/b;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Lcom/coloros/ocs/base/common/api/b;->f(Lcom/coloros/ocs/base/common/api/b;Lcom/coloros/ocs/base/b;)Lcom/coloros/ocs/base/b;

    .line 20
    .line 21
    :try_start_0
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/b$c;->a:Lcom/coloros/ocs/base/common/api/b;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/coloros/ocs/base/common/api/b;->q(Lcom/coloros/ocs/base/common/api/b;)Lcom/coloros/ocs/base/b;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    iget-object p2, p0, Lcom/coloros/ocs/base/common/api/b$c;->a:Lcom/coloros/ocs/base/common/api/b;

    .line 32
    .line 33
    .line 34
    invoke-static {p2}, Lcom/coloros/ocs/base/common/api/b;->n(Lcom/coloros/ocs/base/common/api/b;)Landroid/os/IBinder$DeathRecipient;

    .line 35
    move-result-object p2

    .line 36
    const/4 v0, 0x0

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    .line 46
    :goto_0
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/b$c;->a:Lcom/coloros/ocs/base/common/api/b;

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lcom/coloros/ocs/base/common/api/b;->s(Lcom/coloros/ocs/base/common/api/b;)Lcom/coloros/ocs/base/common/CapabilityInfo;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    if-nez p1, :cond_0

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/coloros/ocs/base/common/api/b;->t()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    const-string p2, "handle authenticate"

    .line 59
    .line 60
    .line 61
    invoke-static {p1, p2}, Lc1/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/b$c;->a:Lcom/coloros/ocs/base/common/api/b;

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Lcom/coloros/ocs/base/common/api/b;->g(Lcom/coloros/ocs/base/common/api/b;)Lcom/coloros/ocs/base/common/api/h;

    .line 67
    move-result-object p1

    .line 68
    const/4 p2, 0x3

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 72
    return-void

    .line 73
    .line 74
    .line 75
    :cond_0
    invoke-static {}, Lcom/coloros/ocs/base/common/api/b;->t()Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    const-string p2, "handle reconnect"

    .line 79
    .line 80
    .line 81
    invoke-static {p1, p2}, Lc1/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 85
    move-result-object p1

    .line 86
    const/4 p2, 0x4

    .line 87
    .line 88
    iput p2, p1, Landroid/os/Message;->what:I

    .line 89
    .line 90
    iget-object p2, p0, Lcom/coloros/ocs/base/common/api/b$c;->a:Lcom/coloros/ocs/base/common/api/b;

    .line 91
    .line 92
    .line 93
    invoke-static {p2}, Lcom/coloros/ocs/base/common/api/b;->g(Lcom/coloros/ocs/base/common/api/b;)Lcom/coloros/ocs/base/common/api/h;

    .line 94
    move-result-object p2

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 98
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/coloros/ocs/base/common/api/b;->t()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "onServiceDisconnected()"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lc1/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/b$c;->a:Lcom/coloros/ocs/base/common/api/b;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/coloros/ocs/base/common/api/b;->u(Lcom/coloros/ocs/base/common/api/b;)I

    .line 16
    .line 17
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/b$c;->a:Lcom/coloros/ocs/base/common/api/b;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/coloros/ocs/base/common/api/b;->w(Lcom/coloros/ocs/base/common/api/b;)Lcom/coloros/ocs/base/common/api/b$c;

    .line 21
    .line 22
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/b$c;->a:Lcom/coloros/ocs/base/common/api/b;

    .line 23
    const/4 v0, 0x0

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0}, Lcom/coloros/ocs/base/common/api/b;->f(Lcom/coloros/ocs/base/common/api/b;Lcom/coloros/ocs/base/b;)Lcom/coloros/ocs/base/b;

    .line 27
    return-void
.end method
