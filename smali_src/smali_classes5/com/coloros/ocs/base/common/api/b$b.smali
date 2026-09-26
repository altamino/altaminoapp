.class final Lcom/coloros/ocs/base/common/api/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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
    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/b$b;->a:Lcom/coloros/ocs/base/common/api/b;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/coloros/ocs/base/common/api/b;->t()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "binderDied()"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lc1/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/b$b;->a:Lcom/coloros/ocs/base/common/api/b;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/coloros/ocs/base/common/api/b;->w(Lcom/coloros/ocs/base/common/api/b;)Lcom/coloros/ocs/base/common/api/b$c;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/b$b;->a:Lcom/coloros/ocs/base/common/api/b;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/coloros/ocs/base/common/api/b;->q(Lcom/coloros/ocs/base/common/api/b;)Lcom/coloros/ocs/base/b;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/b$b;->a:Lcom/coloros/ocs/base/common/api/b;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/coloros/ocs/base/common/api/b;->q(Lcom/coloros/ocs/base/common/api/b;)Lcom/coloros/ocs/base/b;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/b$b;->a:Lcom/coloros/ocs/base/common/api/b;

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/coloros/ocs/base/common/api/b;->q(Lcom/coloros/ocs/base/common/api/b;)Lcom/coloros/ocs/base/b;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 48
    move-result v0

    .line 49
    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/b$b;->a:Lcom/coloros/ocs/base/common/api/b;

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lcom/coloros/ocs/base/common/api/b;->q(Lcom/coloros/ocs/base/common/api/b;)Lcom/coloros/ocs/base/b;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    iget-object v1, p0, Lcom/coloros/ocs/base/common/api/b$b;->a:Lcom/coloros/ocs/base/common/api/b;

    .line 63
    .line 64
    .line 65
    invoke-static {v1}, Lcom/coloros/ocs/base/common/api/b;->n(Lcom/coloros/ocs/base/common/api/b;)Landroid/os/IBinder$DeathRecipient;

    .line 66
    move-result-object v1

    .line 67
    const/4 v2, 0x0

    .line 68
    .line 69
    .line 70
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 71
    .line 72
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/b$b;->a:Lcom/coloros/ocs/base/common/api/b;

    .line 73
    const/4 v1, 0x0

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v1}, Lcom/coloros/ocs/base/common/api/b;->f(Lcom/coloros/ocs/base/common/api/b;Lcom/coloros/ocs/base/b;)Lcom/coloros/ocs/base/b;

    .line 77
    .line 78
    :cond_0
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/b$b;->a:Lcom/coloros/ocs/base/common/api/b;

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Lcom/coloros/ocs/base/common/api/b;->y(Lcom/coloros/ocs/base/common/api/b;)Z

    .line 82
    move-result v0

    .line 83
    .line 84
    if-eqz v0, :cond_1

    .line 85
    .line 86
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/b$b;->a:Lcom/coloros/ocs/base/common/api/b;

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Lcom/coloros/ocs/base/common/api/b;->s(Lcom/coloros/ocs/base/common/api/b;)Lcom/coloros/ocs/base/common/CapabilityInfo;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    if-eqz v0, :cond_1

    .line 93
    .line 94
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/b$b;->a:Lcom/coloros/ocs/base/common/api/b;

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Lcom/coloros/ocs/base/common/api/b;->u(Lcom/coloros/ocs/base/common/api/b;)I

    .line 98
    .line 99
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/b$b;->a:Lcom/coloros/ocs/base/common/api/b;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/api/b;->a()V

    .line 103
    :cond_1
    return-void
.end method
