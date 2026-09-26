.class public Lcom/coloros/ocs/base/common/api/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/ocs/base/common/api/g$a;,
        Lcom/coloros/ocs/base/common/api/g$b;,
        Lcom/coloros/ocs/base/common/api/g$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/os/Looper;

.field private c:Lg1/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg1/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Lcom/coloros/ocs/base/common/api/g$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/common/api/g$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private f:Lcom/coloros/ocs/base/common/api/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/common/api/g$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private g:Lcom/coloros/ocs/base/common/api/g$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/common/api/g<",
            "TT;>.c;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lg1/b;Lcom/coloros/ocs/base/common/api/g$b;Lcom/coloros/ocs/base/common/api/g$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lg1/b<",
            "TT;>;",
            "Lcom/coloros/ocs/base/common/api/g$b<",
            "TT;>;",
            "Lcom/coloros/ocs/base/common/api/g$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const-class v0, Lcom/coloros/ocs/base/common/api/g;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/coloros/ocs/base/common/api/g;->a:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/g;->b:Landroid/os/Looper;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/coloros/ocs/base/common/api/g;->c:Lg1/b;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/coloros/ocs/base/common/api/g;->e:Lcom/coloros/ocs/base/common/api/g$b;

    .line 18
    .line 19
    iput-object p4, p0, Lcom/coloros/ocs/base/common/api/g;->f:Lcom/coloros/ocs/base/common/api/g$a;

    .line 20
    .line 21
    new-instance p1, Lcom/coloros/ocs/base/common/api/g$c;

    .line 22
    .line 23
    iget-object p2, p0, Lcom/coloros/ocs/base/common/api/g;->b:Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, p0, p2}, Lcom/coloros/ocs/base/common/api/g$c;-><init>(Lcom/coloros/ocs/base/common/api/g;Landroid/os/Looper;)V

    .line 27
    .line 28
    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/g;->g:Lcom/coloros/ocs/base/common/api/g$c;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/coloros/ocs/base/common/api/g;I)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/g;->a:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "errorCode "

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lc1/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/g;->e:Lcom/coloros/ocs/base/common/api/g$b;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/g;->a:Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    const-string/jumbo v0, "notifier is not null "

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Lc1/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/g;->e:Lcom/coloros/ocs/base/common/api/g$b;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/coloros/ocs/base/common/api/g;->c:Lg1/b;

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, p0}, Lcom/coloros/ocs/base/common/api/g$b;->a(Lg1/b;)V

    .line 37
    return-void

    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/g;->f:Lcom/coloros/ocs/base/common/api/g$a;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget-object p0, p0, Lcom/coloros/ocs/base/common/api/g;->c:Lg1/b;

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Le1/a;->a(I)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-interface {v0, p0, p1, v1}, Lcom/coloros/ocs/base/common/api/g$a;->a(Lg1/b;ILjava/lang/String;)V

    .line 51
    :cond_1
    return-void
.end method


# virtual methods
.method public b()Lcom/coloros/ocs/base/common/api/g$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/coloros/ocs/base/common/api/g$a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/g;->f:Lcom/coloros/ocs/base/common/api/g$a;

    return-object v0
.end method

.method public c()Lg1/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg1/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/g;->c:Lg1/b;

    return-object v0
.end method

.method public d(I)V
    .locals 1

    .line 1
    .line 2
    iput p1, p0, Lcom/coloros/ocs/base/common/api/g;->d:I

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    iput v0, p1, Landroid/os/Message;->what:I

    .line 10
    .line 11
    iget v0, p0, Lcom/coloros/ocs/base/common/api/g;->d:I

    .line 12
    .line 13
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 14
    .line 15
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/g;->g:Lcom/coloros/ocs/base/common/api/g$c;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 19
    return-void
.end method
