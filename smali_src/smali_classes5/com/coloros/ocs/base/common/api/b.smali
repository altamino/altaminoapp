.class public abstract Lcom/coloros/ocs/base/common/api/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/ocs/base/common/api/a$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/ocs/base/common/api/b$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IBinder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/coloros/ocs/base/common/api/a$e;"
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "b"


# instance fields
.field volatile b:I

.field c:Landroid/content/Context;

.field d:Lcom/coloros/ocs/base/common/CapabilityInfo;

.field e:Lcom/coloros/ocs/base/common/api/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/common/api/b<",
            "TT;>.c;"
        }
    .end annotation
.end field

.field f:Lcom/coloros/ocs/base/common/api/l;

.field g:Lcom/coloros/ocs/base/common/api/i;

.field h:Lcom/coloros/ocs/base/b;

.field private i:Landroid/os/Looper;

.field private j:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/coloros/ocs/base/common/api/g;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/coloros/ocs/base/common/api/h;

.field private l:I

.field private m:Z

.field private n:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x4

    .line 5
    .line 6
    iput v0, p0, Lcom/coloros/ocs/base/common/api/b;->b:I

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/coloros/ocs/base/common/api/b;->e:Lcom/coloros/ocs/base/common/api/b$c;

    .line 10
    .line 11
    new-instance v1, Ljava/util/LinkedList;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 15
    .line 16
    iput-object v1, p0, Lcom/coloros/ocs/base/common/api/b;->j:Ljava/util/Queue;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/coloros/ocs/base/common/api/b;->g:Lcom/coloros/ocs/base/common/api/i;

    .line 19
    const/4 v0, 0x3

    .line 20
    .line 21
    iput v0, p0, Lcom/coloros/ocs/base/common/api/b;->l:I

    .line 22
    .line 23
    new-instance v0, Lcom/coloros/ocs/base/common/api/b$b;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/coloros/ocs/base/common/api/b$b;-><init>(Lcom/coloros/ocs/base/common/api/b;)V

    .line 27
    .line 28
    iput-object v0, p0, Lcom/coloros/ocs/base/common/api/b;->n:Landroid/os/IBinder$DeathRecipient;

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/b;->c:Landroid/content/Context;

    .line 33
    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    iput-object p2, p0, Lcom/coloros/ocs/base/common/api/b;->i:Landroid/os/Looper;

    .line 37
    .line 38
    .line 39
    invoke-static {p0}, Lcom/coloros/ocs/base/common/api/h;->a(Lcom/coloros/ocs/base/common/api/b;)Lcom/coloros/ocs/base/common/api/h;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/b;->k:Lcom/coloros/ocs/base/common/api/h;

    .line 43
    .line 44
    sget-object p1, Lcom/coloros/ocs/base/common/api/b;->a:Ljava/lang/String;

    .line 45
    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v0, "build client, "

    .line 49
    .line 50
    .line 51
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/b;->z()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    if-nez v0, :cond_0

    .line 58
    .line 59
    const-string v0, ""

    .line 60
    goto :goto_0

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/b;->z()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p2

    .line 72
    .line 73
    .line 74
    invoke-static {p1, p2}, Lc1/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void

    .line 76
    .line 77
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 78
    .line 79
    const-string p2, "Looper must not be null"

    .line 80
    .line 81
    .line 82
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 83
    throw p1

    .line 84
    .line 85
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 86
    .line 87
    .line 88
    const-string/jumbo p2, "null reference"

    .line 89
    .line 90
    .line 91
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 92
    throw p1
.end method

.method static synthetic f(Lcom/coloros/ocs/base/common/api/b;Lcom/coloros/ocs/base/b;)Lcom/coloros/ocs/base/b;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/b;->h:Lcom/coloros/ocs/base/b;

    .line 3
    return-object p1
.end method

.method static synthetic g(Lcom/coloros/ocs/base/common/api/b;)Lcom/coloros/ocs/base/common/api/h;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/coloros/ocs/base/common/api/b;->k:Lcom/coloros/ocs/base/common/api/h;

    .line 3
    return-object p0
.end method

.method private k(Lcom/coloros/ocs/base/common/api/g;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/b;->d:Lcom/coloros/ocs/base/common/CapabilityInfo;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/CapabilityInfo;->c()Lcom/coloros/ocs/base/common/AuthResult;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/b;->d:Lcom/coloros/ocs/base/common/CapabilityInfo;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/CapabilityInfo;->c()Lcom/coloros/ocs/base/common/AuthResult;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/AuthResult;->c()I

    .line 20
    move-result v0

    .line 21
    .line 22
    const/16 v1, 0x3e9

    .line 23
    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/coloros/ocs/base/common/api/g;->d(I)V

    .line 29
    return-void

    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/b;->d:Lcom/coloros/ocs/base/common/CapabilityInfo;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/CapabilityInfo;->c()Lcom/coloros/ocs/base/common/AuthResult;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/AuthResult;->c()I

    .line 39
    move-result v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/coloros/ocs/base/common/api/g;->d(I)V

    .line 43
    :cond_1
    return-void
.end method

.method private l(Lcom/coloros/ocs/base/common/api/g;Z)V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/coloros/ocs/base/common/api/b;->a:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "add taskListenerHolder to queue,but whether is connect "

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

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
    invoke-static {v0, v1}, Lc1/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/b;->j:Ljava/util/Queue;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    const/4 p1, 0x1

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcom/coloros/ocs/base/common/api/b;->m(Z)V

    .line 27
    :cond_0
    return-void
.end method

.method private m(Z)V
    .locals 4

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    const/4 p1, 0x3

    .line 4
    .line 5
    iput p1, p0, Lcom/coloros/ocs/base/common/api/b;->l:I

    .line 6
    .line 7
    :cond_0
    sget-object p1, Lcom/coloros/ocs/base/common/api/b;->a:Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "connect"

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0}, Lc1/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x2

    .line 14
    .line 15
    iput v0, p0, Lcom/coloros/ocs/base/common/api/b;->b:I

    .line 16
    .line 17
    new-instance v0, Lcom/coloros/ocs/base/common/api/b$c;

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0, v1}, Lcom/coloros/ocs/base/common/api/b$c;-><init>(Lcom/coloros/ocs/base/common/api/b;B)V

    .line 22
    .line 23
    iput-object v0, p0, Lcom/coloros/ocs/base/common/api/b;->e:Lcom/coloros/ocs/base/common/api/b$c;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/b;->c:Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/coloros/ocs/base/common/api/b;->v()Landroid/content/Intent;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    iget-object v2, p0, Lcom/coloros/ocs/base/common/api/b;->e:Lcom/coloros/ocs/base/common/api/b$c;

    .line 36
    const/4 v3, 0x1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 40
    move-result v0

    .line 41
    .line 42
    const-string v1, "connect state "

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v1}, Lc1/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/coloros/ocs/base/common/api/b;->x()V

    .line 59
    :cond_1
    return-void
.end method

.method static synthetic n(Lcom/coloros/ocs/base/common/api/b;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/coloros/ocs/base/common/api/b;->n:Landroid/os/IBinder$DeathRecipient;

    .line 3
    return-object p0
.end method

.method static o(I)Lcom/coloros/ocs/base/common/CapabilityInfo;
    .locals 7

    .line 1
    .line 2
    new-instance v6, Lcom/coloros/ocs/base/common/AuthResult;

    .line 3
    .line 4
    const-string v1, ""

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    new-array v5, v0, [B

    .line 10
    move-object v0, v6

    .line 11
    move v4, p0

    .line 12
    .line 13
    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/coloros/ocs/base/common/AuthResult;-><init>(Ljava/lang/String;III[B)V

    .line 15
    .line 16
    new-instance p0, Lcom/coloros/ocs/base/common/CapabilityInfo;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    const/4 v1, 0x1

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v0, v1, v6}, Lcom/coloros/ocs/base/common/CapabilityInfo;-><init>(Ljava/util/List;ILcom/coloros/ocs/base/common/AuthResult;)V

    .line 26
    return-object p0
.end method

.method static synthetic q(Lcom/coloros/ocs/base/common/api/b;)Lcom/coloros/ocs/base/b;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/coloros/ocs/base/common/api/b;->h:Lcom/coloros/ocs/base/b;

    .line 3
    return-object p0
.end method

.method static synthetic s(Lcom/coloros/ocs/base/common/api/b;)Lcom/coloros/ocs/base/common/CapabilityInfo;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/coloros/ocs/base/common/api/b;->d:Lcom/coloros/ocs/base/common/CapabilityInfo;

    .line 3
    return-object p0
.end method

.method static synthetic t()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/coloros/ocs/base/common/api/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic u(Lcom/coloros/ocs/base/common/api/b;)I
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0xd

    .line 3
    .line 4
    iput v0, p0, Lcom/coloros/ocs/base/common/api/b;->b:I

    .line 5
    return v0
.end method

.method private static v()Landroid/content/Intent;
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroid/content/Intent;

    .line 3
    .line 4
    const-string v1, "com.coloros.opencapabilityservice"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    sget-object v1, Lcom/coloros/ocs/base/common/api/b;->a:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    const-string/jumbo v2, "packageName = "

    .line 13
    .line 14
    const-string v3, "com.coloros.ocs.opencapabilityservice"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v2}, Lc1/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    new-instance v1, Landroid/content/ComponentName;

    .line 24
    .line 25
    const-string v2, "com.coloros.ocs.opencapabilityservice.service.ColorOcsService"

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 32
    return-object v0
.end method

.method static synthetic w(Lcom/coloros/ocs/base/common/api/b;)Lcom/coloros/ocs/base/common/api/b$c;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/coloros/ocs/base/common/api/b;->e:Lcom/coloros/ocs/base/common/api/b$c;

    .line 4
    return-object v0
.end method

.method private x()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/coloros/ocs/base/common/api/b;->a:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "retry"

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lc1/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    iget v0, p0, Lcom/coloros/ocs/base/common/api/b;->l:I

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    iput v0, p0, Lcom/coloros/ocs/base/common/api/b;->l:I

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/coloros/ocs/base/common/api/b;->m(Z)V

    .line 21
    return-void

    .line 22
    :cond_0
    const/4 v0, 0x3

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/coloros/ocs/base/common/api/b;->o(I)Lcom/coloros/ocs/base/common/CapabilityInfo;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    iput-object v1, p0, Lcom/coloros/ocs/base/common/api/b;->d:Lcom/coloros/ocs/base/common/CapabilityInfo;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/coloros/ocs/base/common/api/b;->i(I)V

    .line 32
    .line 33
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/b;->f:Lcom/coloros/ocs/base/common/api/l;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-interface {v0}, Lcom/coloros/ocs/base/common/api/l;->a()V

    .line 39
    :cond_1
    return-void
.end method

.method static synthetic y(Lcom/coloros/ocs/base/common/api/b;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/coloros/ocs/base/common/api/b;->m:Z

    .line 3
    return p0
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/coloros/ocs/base/common/api/b;->m(Z)V

    .line 5
    return-void
.end method

.method public b(Lcom/coloros/ocs/base/common/api/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/coloros/ocs/base/common/api/g<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/b;->isConnected()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/coloros/ocs/base/common/api/b;->m:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/b;->h:Lcom/coloros/ocs/base/b;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/b;->h:Lcom/coloros/ocs/base/b;

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, p1}, Lcom/coloros/ocs/base/common/api/b;->k(Lcom/coloros/ocs/base/common/api/g;)V

    .line 37
    return-void

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/coloros/ocs/base/common/api/b;->l(Lcom/coloros/ocs/base/common/api/g;Z)V

    .line 41
    return-void

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-direct {p0, p1}, Lcom/coloros/ocs/base/common/api/b;->k(Lcom/coloros/ocs/base/common/api/g;)V

    .line 45
    return-void

    .line 46
    .line 47
    :cond_2
    iget v0, p0, Lcom/coloros/ocs/base/common/api/b;->b:I

    .line 48
    .line 49
    const/16 v2, 0xd

    .line 50
    .line 51
    if-ne v0, v2, :cond_3

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p1, v1}, Lcom/coloros/ocs/base/common/api/b;->l(Lcom/coloros/ocs/base/common/api/g;Z)V

    .line 55
    return-void

    .line 56
    :cond_3
    const/4 v0, 0x0

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, p1, v0}, Lcom/coloros/ocs/base/common/api/b;->l(Lcom/coloros/ocs/base/common/api/g;Z)V

    .line 60
    return-void
.end method

.method public c(Lcom/coloros/ocs/base/common/api/f;Landroid/os/Handler;)V
    .locals 2
    .param p2    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/b;->d:Lcom/coloros/ocs/base/common/CapabilityInfo;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/CapabilityInfo;->c()Lcom/coloros/ocs/base/common/AuthResult;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/b;->d:Lcom/coloros/ocs/base/common/CapabilityInfo;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/CapabilityInfo;->c()Lcom/coloros/ocs/base/common/AuthResult;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/AuthResult;->c()I

    .line 20
    move-result v0

    .line 21
    .line 22
    const/16 v1, 0x3e9

    .line 23
    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Lcom/coloros/ocs/base/common/api/f;->onConnectionSucceed()V

    .line 30
    return-void

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0, p2}, Lcom/coloros/ocs/base/common/api/b;->j(Landroid/os/Handler;)V

    .line 34
    .line 35
    iget-object p2, p0, Lcom/coloros/ocs/base/common/api/b;->g:Lcom/coloros/ocs/base/common/api/i;

    .line 36
    .line 37
    iput-object p1, p2, Lcom/coloros/ocs/base/common/api/i;->a:Lcom/coloros/ocs/base/common/api/f;

    .line 38
    :cond_1
    return-void
.end method

.method public d(Lcom/coloros/ocs/base/common/api/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/b;->f:Lcom/coloros/ocs/base/common/api/l;

    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/b;->e:Lcom/coloros/ocs/base/common/api/b$c;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/coloros/ocs/base/common/api/b;->a:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "disconnect service."

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lc1/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    iput-object v0, p0, Lcom/coloros/ocs/base/common/api/b;->d:Lcom/coloros/ocs/base/common/CapabilityInfo;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/b;->c:Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/coloros/ocs/base/common/api/b;->e:Lcom/coloros/ocs/base/common/api/b$c;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 26
    const/4 v0, 0x4

    .line 27
    .line 28
    iput v0, p0, Lcom/coloros/ocs/base/common/api/b;->b:I

    .line 29
    :cond_0
    return-void
.end method

.method public e()Lcom/coloros/ocs/base/common/AuthResult;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/b;->d:Lcom/coloros/ocs/base/common/CapabilityInfo;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/coloros/ocs/base/common/CapabilityInfo;->c()Lcom/coloros/ocs/base/common/AuthResult;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method final h()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/coloros/ocs/base/common/api/b;->m:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/b;->e:Lcom/coloros/ocs/base/common/api/b$c;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lcom/coloros/ocs/base/common/api/b;->a:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, "disconnect service."

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lc1/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/b;->c:Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/coloros/ocs/base/common/api/b;->e:Lcom/coloros/ocs/base/common/api/b$c;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 29
    const/4 v0, 0x5

    .line 30
    .line 31
    iput v0, p0, Lcom/coloros/ocs/base/common/api/b;->b:I

    .line 32
    .line 33
    iget-boolean v0, p0, Lcom/coloros/ocs/base/common/api/b;->m:Z

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 37
    .line 38
    iput-object v0, p0, Lcom/coloros/ocs/base/common/api/b;->h:Lcom/coloros/ocs/base/b;

    .line 39
    :cond_0
    return-void
.end method

.method final i(I)V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/coloros/ocs/base/common/api/b;->a:Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "handleAuthenticateFailure"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lc1/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/b;->g:Lcom/coloros/ocs/base/common/api/i;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    const/4 v0, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/coloros/ocs/base/common/api/b;->j(Landroid/os/Handler;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    const/16 v1, 0x65

    .line 22
    .line 23
    iput v1, v0, Landroid/os/Message;->what:I

    .line 24
    .line 25
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 26
    .line 27
    iget-object p1, p0, Lcom/coloros/ocs/base/common/api/b;->g:Lcom/coloros/ocs/base/common/api/i;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 31
    return-void
.end method

.method public isConnected()Z
    .locals 3

    iget v0, p0, Lcom/coloros/ocs/base/common/api/b;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/coloros/ocs/base/common/api/b;->b:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method final j(Landroid/os/Handler;)V
    .locals 2
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/b;->g:Lcom/coloros/ocs/base/common/api/i;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Lcom/coloros/ocs/base/common/api/i;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/b;->i:Landroid/os/Looper;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/coloros/ocs/base/common/api/b;->k:Lcom/coloros/ocs/base/common/api/h;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, v0, v1}, Lcom/coloros/ocs/base/common/api/i;-><init>(Landroid/os/Looper;Lcom/coloros/ocs/base/common/api/h;)V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/coloros/ocs/base/common/api/b;->g:Lcom/coloros/ocs/base/common/api/i;

    .line 18
    return-void

    .line 19
    .line 20
    :cond_0
    new-instance v0, Lcom/coloros/ocs/base/common/api/i;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    iget-object v1, p0, Lcom/coloros/ocs/base/common/api/b;->k:Lcom/coloros/ocs/base/common/api/h;

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p1, v1}, Lcom/coloros/ocs/base/common/api/i;-><init>(Landroid/os/Looper;Lcom/coloros/ocs/base/common/api/h;)V

    .line 30
    .line 31
    iput-object v0, p0, Lcom/coloros/ocs/base/common/api/b;->g:Lcom/coloros/ocs/base/common/api/i;

    .line 32
    return-void

    .line 33
    .line 34
    :cond_1
    if-eqz p1, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    if-eq v0, p1, :cond_2

    .line 45
    .line 46
    sget-object p1, Lcom/coloros/ocs/base/common/api/b;->a:Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    const-string/jumbo v0, "the new handler looper is not the same as the old one."

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v0}, Lc1/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_2
    return-void
.end method

.method final p()V
    .locals 2

    .line 1
    .line 2
    :goto_0
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/b;->j:Ljava/util/Queue;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcom/coloros/ocs/base/common/api/b;->a:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "handleQue"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lc1/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/b;->j:Ljava/util/Queue;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/coloros/ocs/base/common/api/g;

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v0}, Lcom/coloros/ocs/base/common/api/b;->k(Lcom/coloros/ocs/base/common/api/g;)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    sget-object v0, Lcom/coloros/ocs/base/common/api/b;->a:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    const-string/jumbo v1, "task queue is end"

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Lc1/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method final r()V
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lcom/coloros/ocs/base/common/api/b;->a:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    const-string/jumbo v1, "onReconnectSucceed"

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lc1/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    iput v0, p0, Lcom/coloros/ocs/base/common/api/b;->b:I

    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/coloros/ocs/base/common/api/b;->d:Lcom/coloros/ocs/base/common/CapabilityInfo;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/coloros/ocs/base/common/api/b;->h:Lcom/coloros/ocs/base/b;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/b;->z()Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    const-string v3, "1.0.1"

    .line 22
    .line 23
    .line 24
    invoke-interface {v1, v2, v3}, Lcom/coloros/ocs/base/b;->b0(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/coloros/ocs/base/common/CapabilityInfo;->e(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/b;->p()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/coloros/ocs/base/common/api/b;->h()V

    .line 40
    return-void
.end method

.method public abstract z()Ljava/lang/String;
.end method
