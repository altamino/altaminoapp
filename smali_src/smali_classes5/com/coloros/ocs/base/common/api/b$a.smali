.class final Lcom/coloros/ocs/base/common/api/b$a;
.super Lcom/coloros/ocs/base/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/ocs/base/common/api/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/ocs/base/common/api/b;


# direct methods
.method constructor <init>(Lcom/coloros/ocs/base/common/api/b;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/b$a;->a:Lcom/coloros/ocs/base/common/api/b;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/coloros/ocs/base/a$a;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final H0(Lcom/coloros/ocs/base/common/CapabilityInfo;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/coloros/ocs/base/common/api/b;->t()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    const-string/jumbo v1, "thread authenticate success"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lc1/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    iput v1, v0, Landroid/os/Message;->what:I

    .line 18
    .line 19
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/b$a;->a:Lcom/coloros/ocs/base/common/api/b;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/coloros/ocs/base/common/api/b;->g(Lcom/coloros/ocs/base/common/api/b;)Lcom/coloros/ocs/base/common/api/h;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 29
    return-void
.end method

.method public final r(I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/coloros/ocs/base/common/api/b;->t()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "errorCode "

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
    invoke-static {v0, v1}, Lc1/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x2

    .line 23
    .line 24
    iput v1, v0, Landroid/os/Message;->what:I

    .line 25
    .line 26
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 27
    .line 28
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/b$a;->a:Lcom/coloros/ocs/base/common/api/b;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lcom/coloros/ocs/base/common/api/b;->g(Lcom/coloros/ocs/base/common/api/b;)Lcom/coloros/ocs/base/common/api/h;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 36
    return-void
.end method
