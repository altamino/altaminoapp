.class Lcom/coloros/ocs/base/common/api/i;
.super Ld1/a;
.source "SourceFile"


# instance fields
.field a:Lcom/coloros/ocs/base/common/api/f;

.field b:Lcom/coloros/ocs/base/common/api/e;

.field private final c:Ljava/lang/String;

.field private d:Lcom/coloros/ocs/base/common/api/h;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/coloros/ocs/base/common/api/h;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Ld1/a;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    const-class p1, Lcom/coloros/ocs/base/common/api/i;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/i;->c:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/coloros/ocs/base/common/api/i;->d:Lcom/coloros/ocs/base/common/api/h;

    .line 14
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/i;->c:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "business handler what "

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lc1/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    const/16 v0, 0x64

    .line 20
    const/4 v1, 0x5

    .line 21
    .line 22
    if-eq p1, v0, :cond_1

    .line 23
    .line 24
    const/16 v0, 0x65

    .line 25
    .line 26
    if-eq p1, v0, :cond_0

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    iput v1, p1, Landroid/os/Message;->what:I

    .line 34
    .line 35
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/i;->d:Lcom/coloros/ocs/base/common/api/h;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 39
    :goto_0
    return-void

    .line 40
    .line 41
    :cond_1
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/i;->a:Lcom/coloros/ocs/base/common/api/f;

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-interface {p1}, Lcom/coloros/ocs/base/common/api/f;->onConnectionSucceed()V

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    iput v1, p1, Landroid/os/Message;->what:I

    .line 53
    .line 54
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/i;->d:Lcom/coloros/ocs/base/common/api/h;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 58
    return-void
.end method
