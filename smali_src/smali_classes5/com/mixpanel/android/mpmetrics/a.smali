.class Lcom/mixpanel/android/mpmetrics/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mixpanel/android/mpmetrics/a$h;,
        Lcom/mixpanel/android/mpmetrics/a$c;,
        Lcom/mixpanel/android/mpmetrics/a$g;,
        Lcom/mixpanel/android/mpmetrics/a$d;,
        Lcom/mixpanel/android/mpmetrics/a$f;,
        Lcom/mixpanel/android/mpmetrics/a$b;,
        Lcom/mixpanel/android/mpmetrics/a$e;,
        Lcom/mixpanel/android/mpmetrics/a$a;
    }
.end annotation


# static fields
.field private static final CLEAR_ANONYMOUS_UPDATES:I = 0x7

.field private static final EMPTY_QUEUES:I = 0x6

.field private static final ENQUEUE_EVENTS:I = 0x1

.field private static final ENQUEUE_GROUP:I = 0x3

.field private static final ENQUEUE_PEOPLE:I = 0x0

.field private static final FLUSH_QUEUE:I = 0x2

.field private static final KILL_WORKER:I = 0x5

.field private static final LOGTAG:Ljava/lang/String; = "MixpanelAPI.Messages"

.field private static final PUSH_ANONYMOUS_PEOPLE_RECORDS:I = 0x4

.field private static final REMOVE_RESIDUAL_IMAGE_FILES:I = 0x9

.field private static final REWRITE_EVENT_PROPERTIES:I = 0x8

.field private static final sInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mixpanel/android/mpmetrics/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final mConfig:Lcom/mixpanel/android/mpmetrics/d;

.field protected final mContext:Landroid/content/Context;

.field private final mInstanceName:Ljava/lang/String;

.field private final mWorker:Lcom/mixpanel/android/mpmetrics/a$h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/mixpanel/android/mpmetrics/a;->sInstances:Ljava/util/Map;

    .line 8
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/mixpanel/android/mpmetrics/d;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/a;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/a;->mConfig:Lcom/mixpanel/android/mpmetrics/d;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/mixpanel/android/mpmetrics/d;->l()Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/a;->mInstanceName:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/a;->d()Lcom/mixpanel/android/mpmetrics/a$h;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/a;->mWorker:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/a;->h()Lcom/mixpanel/android/util/g;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Lcom/mixpanel/android/util/g;->c()V

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/a;->i(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method static synthetic b(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/mixpanel/android/mpmetrics/a;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    return-void
.end method

.method public static g(Landroid/content/Context;Lcom/mixpanel/android/mpmetrics/d;)Lcom/mixpanel/android/mpmetrics/a;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/mixpanel/android/mpmetrics/a;->sInstances:Ljava/util/Map;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    move-result-object p0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/d;->l()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    new-instance v2, Lcom/mixpanel/android/mpmetrics/a;

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, p0, p1}, Lcom/mixpanel/android/mpmetrics/a;-><init>(Landroid/content/Context;Lcom/mixpanel/android/mpmetrics/d;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 33
    move-object v2, p0

    .line 34
    .line 35
    check-cast v2, Lcom/mixpanel/android/mpmetrics/a;

    .line 36
    :goto_0
    monitor-exit v0

    .line 37
    return-object v2

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method private i(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string p1, " (Thread "

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    .line 21
    move-result-wide v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string p1, ")"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    const-string v0, "MixpanelAPI.Messages"

    .line 36
    .line 37
    .line 38
    invoke-static {v0, p1}, Lcom/mixpanel/android/util/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method private j(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string p1, " (Thread "

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    .line 21
    move-result-wide v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string p1, ")"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    const-string v0, "MixpanelAPI.Messages"

    .line 36
    .line 37
    .line 38
    invoke-static {v0, p1, p2}, Lcom/mixpanel/android/util/d;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    return-void
.end method


# virtual methods
.method public c(Lcom/mixpanel/android/mpmetrics/a$c;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x7

    .line 6
    .line 7
    iput v1, v0, Landroid/os/Message;->what:I

    .line 8
    .line 9
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/a;->mWorker:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/mixpanel/android/mpmetrics/a$h;->g(Landroid/os/Message;)V

    .line 15
    return-void
.end method

.method protected d()Lcom/mixpanel/android/mpmetrics/a$h;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/mixpanel/android/mpmetrics/a$h;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/mixpanel/android/mpmetrics/a$h;-><init>(Lcom/mixpanel/android/mpmetrics/a;)V

    .line 6
    return-object v0
.end method

.method public e(Lcom/mixpanel/android/mpmetrics/a$c;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x6

    .line 6
    .line 7
    iput v1, v0, Landroid/os/Message;->what:I

    .line 8
    .line 9
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/a;->mWorker:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/mixpanel/android/mpmetrics/a$h;->g(Landroid/os/Message;)V

    .line 15
    return-void
.end method

.method public f(Lcom/mixpanel/android/mpmetrics/a$a;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    iput v1, v0, Landroid/os/Message;->what:I

    .line 8
    .line 9
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/a;->mWorker:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/mixpanel/android/mpmetrics/a$h;->g(Landroid/os/Message;)V

    .line 15
    return-void
.end method

.method protected h()Lcom/mixpanel/android/util/g;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/mixpanel/android/util/b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/mixpanel/android/util/b;-><init>()V

    .line 6
    return-object v0
.end method

.method protected k(Landroid/content/Context;)Lcom/mixpanel/android/mpmetrics/e;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/a;->mConfig:Lcom/mixpanel/android/mpmetrics/d;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/mixpanel/android/mpmetrics/e;->r(Landroid/content/Context;Lcom/mixpanel/android/mpmetrics/d;)Lcom/mixpanel/android/mpmetrics/e;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public l(Lcom/mixpanel/android/mpmetrics/a$e;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    iput v1, v0, Landroid/os/Message;->what:I

    .line 8
    .line 9
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/a;->mWorker:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/mixpanel/android/mpmetrics/a$h;->g(Landroid/os/Message;)V

    .line 15
    return-void
.end method

.method public m(Lcom/mixpanel/android/mpmetrics/a$c;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    .line 7
    iput v1, v0, Landroid/os/Message;->what:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/a$c;->a()Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    const/4 p1, 0x0

    .line 15
    .line 16
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 17
    .line 18
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/a;->mWorker:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/mixpanel/android/mpmetrics/a$h;->g(Landroid/os/Message;)V

    .line 22
    return-void
.end method

.method public n(Lcom/mixpanel/android/mpmetrics/a$f;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x4

    .line 6
    .line 7
    iput v1, v0, Landroid/os/Message;->what:I

    .line 8
    .line 9
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/a;->mWorker:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/mixpanel/android/mpmetrics/a$h;->g(Landroid/os/Message;)V

    .line 15
    return-void
.end method

.method public o(Ljava/io/File;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const/16 v1, 0x9

    .line 7
    .line 8
    iput v1, v0, Landroid/os/Message;->what:I

    .line 9
    .line 10
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/a;->mWorker:Lcom/mixpanel/android/mpmetrics/a$h;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/mixpanel/android/mpmetrics/a$h;->g(Landroid/os/Message;)V

    .line 16
    return-void
.end method
