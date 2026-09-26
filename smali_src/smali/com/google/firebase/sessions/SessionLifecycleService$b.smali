.class public final Lcom/google/firebase/sessions/SessionLifecycleService$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/SessionLifecycleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSessionLifecycleService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SessionLifecycleService.kt\ncom/google/firebase/sessions/SessionLifecycleService$MessageHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,253:1\n1851#2,2:254\n1#3:256\n*S KotlinDebug\n*F\n+ 1 SessionLifecycleService.kt\ncom/google/firebase/sessions/SessionLifecycleService$MessageHandler\n*L\n145#1:254,2\n*E\n"
.end annotation


# instance fields
.field private final boundClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private hasForegrounded:Z

.field private lastMsgTimeMs:J


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1    # Landroid/os/Looper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "looper"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 9
    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/firebase/sessions/SessionLifecycleService$b;->boundClients:Ljava/util/ArrayList;

    .line 16
    return-void
.end method

.method private final a()V
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
    const-string v1, "Broadcasting new session: "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    sget-object v1, Lcom/google/firebase/sessions/d0;->Companion:Lcom/google/firebase/sessions/d0$b;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/firebase/sessions/d0$b;->a()Lcom/google/firebase/sessions/d0;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/google/firebase/sessions/d0;->c()Lcom/google/firebase/sessions/y;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    const-string v2, "SessionLifecycleService"

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    sget-object v0, Lcom/google/firebase/sessions/b0;->Companion:Lcom/google/firebase/sessions/b0$a;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/google/firebase/sessions/b0$a;->a()Lcom/google/firebase/sessions/b0;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/google/firebase/sessions/d0$b;->a()Lcom/google/firebase/sessions/d0;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/google/firebase/sessions/d0;->c()Lcom/google/firebase/sessions/y;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v1}, Lcom/google/firebase/sessions/b0;->a(Lcom/google/firebase/sessions/y;)V

    .line 50
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/google/firebase/sessions/SessionLifecycleService$b;->boundClients:Ljava/util/ArrayList;

    .line 54
    .line 55
    .line 56
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    move-result v1

    .line 65
    .line 66
    if-eqz v1, :cond_0

    .line 67
    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    move-result-object v1

    .line 71
    .line 72
    check-cast v1, Landroid/os/Messenger;

    .line 73
    .line 74
    const-string v2, "it"

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {p0, v1}, Lcom/google/firebase/sessions/SessionLifecycleService$b;->f(Landroid/os/Messenger;)V

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

.method private final b(Landroid/os/Message;)V
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
    const-string v1, "Activity backgrounding at "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    .line 14
    move-result-wide v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    const-string v1, "SessionLifecycleService"

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    .line 30
    move-result-wide v0

    .line 31
    .line 32
    iput-wide v0, p0, Lcom/google/firebase/sessions/SessionLifecycleService$b;->lastMsgTimeMs:J

    .line 33
    return-void
.end method

.method private final c(Landroid/os/Message;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/sessions/SessionLifecycleService$b;->boundClients:Ljava/util/ArrayList;

    .line 3
    .line 4
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 10
    .line 11
    const-string v1, "msg.replyTo"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0}, Lcom/google/firebase/sessions/SessionLifecycleService$b;->f(Landroid/os/Messenger;)V

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    const-string v1, "Client "

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v1, " bound at "

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    .line 41
    move-result-wide v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string p1, ". Clients: "

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    iget-object p1, p0, Lcom/google/firebase/sessions/SessionLifecycleService$b;->boundClients:Ljava/util/ArrayList;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 55
    move-result p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    const-string v0, "SessionLifecycleService"

    .line 65
    .line 66
    .line 67
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method private final d(Landroid/os/Message;)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "Activity foregrounding at "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    .line 14
    move-result-wide v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const/16 v1, 0x2e

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    const-string v1, "SessionLifecycleService"

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    iget-boolean v0, p0, Lcom/google/firebase/sessions/SessionLifecycleService$b;->hasForegrounded:Z

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    const-string v0, "Cold start detected."

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v0, 0x1

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/google/firebase/sessions/SessionLifecycleService$b;->hasForegrounded:Z

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/google/firebase/sessions/SessionLifecycleService$b;->g()V

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    .line 51
    move-result-wide v2

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/sessions/SessionLifecycleService$b;->e(J)Z

    .line 55
    move-result v0

    .line 56
    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    const-string v0, "Session too long in background. Creating new session."

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lcom/google/firebase/sessions/SessionLifecycleService$b;->g()V

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    .line 69
    move-result-wide v0

    .line 70
    .line 71
    iput-wide v0, p0, Lcom/google/firebase/sessions/SessionLifecycleService$b;->lastMsgTimeMs:J

    .line 72
    return-void
.end method

.method private final e(J)Z
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/firebase/sessions/SessionLifecycleService$b;->lastMsgTimeMs:J

    .line 3
    sub-long/2addr p1, v0

    .line 4
    .line 5
    sget-object v0, Lcom/google/firebase/sessions/settings/f;->Companion:Lcom/google/firebase/sessions/settings/f$a;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/firebase/sessions/settings/f$a;->c()Lcom/google/firebase/sessions/settings/f;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/firebase/sessions/settings/f;->c()J

    .line 13
    move-result-wide v0

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lk8/b;->r(J)J

    .line 17
    move-result-wide v0

    .line 18
    .line 19
    cmp-long p1, p1, v0

    .line 20
    .line 21
    if-lez p1, :cond_0

    .line 22
    const/4 p1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    return p1
.end method

.method private final f(Landroid/os/Messenger;)V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/firebase/sessions/SessionLifecycleService$b;->hasForegrounded:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/google/firebase/sessions/d0;->Companion:Lcom/google/firebase/sessions/d0$b;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/firebase/sessions/d0$b;->a()Lcom/google/firebase/sessions/d0;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/firebase/sessions/d0;->c()Lcom/google/firebase/sessions/y;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/firebase/sessions/y;->b()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/sessions/SessionLifecycleService$b;->h(Landroid/os/Messenger;Ljava/lang/String;)V

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    sget-object v0, Lcom/google/firebase/sessions/w;->Companion:Lcom/google/firebase/sessions/w$a;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/firebase/sessions/w$a;->a()Lcom/google/firebase/sessions/w;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Lcom/google/firebase/sessions/w;->b()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    const-string v2, "App has not yet foregrounded. Using previously stored session: "

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    const-string v2, "SessionLifecycleService"

    .line 52
    .line 53
    .line 54
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/sessions/SessionLifecycleService$b;->h(Landroid/os/Messenger;Ljava/lang/String;)V

    .line 60
    :cond_1
    :goto_0
    return-void
.end method

.method private final g()V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/sessions/d0;->Companion:Lcom/google/firebase/sessions/d0$b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/sessions/d0$b;->a()Lcom/google/firebase/sessions/d0;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/firebase/sessions/d0;->a()Lcom/google/firebase/sessions/y;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    const-string v2, "Generated new session "

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/firebase/sessions/d0$b;->a()Lcom/google/firebase/sessions/d0;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/google/firebase/sessions/d0;->c()Lcom/google/firebase/sessions/y;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/google/firebase/sessions/y;->b()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    const-string v2, "SessionLifecycleService"

    .line 41
    .line 42
    .line 43
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/google/firebase/sessions/SessionLifecycleService$b;->a()V

    .line 47
    .line 48
    sget-object v1, Lcom/google/firebase/sessions/w;->Companion:Lcom/google/firebase/sessions/w$a;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/google/firebase/sessions/w$a;->a()Lcom/google/firebase/sessions/w;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/google/firebase/sessions/d0$b;->a()Lcom/google/firebase/sessions/d0;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/google/firebase/sessions/d0;->c()Lcom/google/firebase/sessions/y;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/google/firebase/sessions/y;->b()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-interface {v1, v0}, Lcom/google/firebase/sessions/w;->a(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method private final h(Landroid/os/Messenger;Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    const-string v0, "SessionLifecycleService"

    .line 3
    .line 4
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    const-string v2, "SessionUpdateExtra"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const/4 p2, 0x0

    .line 14
    const/4 v2, 0x3

    .line 15
    const/4 v3, 0x0

    .line 16
    .line 17
    .line 18
    invoke-static {p2, v2, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p2

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    const-string v2, "Unable to push new session to "

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const/16 p1, 0x2e

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :catch_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    const-string v1, "Removing dead client from list: "

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p2

    .line 71
    .line 72
    .line 73
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    iget-object p2, p0, Lcom/google/firebase/sessions/SessionLifecycleService$b;->boundClients:Ljava/util/ArrayList;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 79
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "msg"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-wide v0, p0, Lcom/google/firebase/sessions/SessionLifecycleService$b;->lastMsgTimeMs:J

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    .line 11
    move-result-wide v2

    .line 12
    .line 13
    cmp-long v0, v0, v2

    .line 14
    .line 15
    const-string v1, "SessionLifecycleService"

    .line 16
    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    const-string v2, "Ignoring old message from "

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    .line 31
    move-result-wide v2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string p1, " which is older than "

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    iget-wide v2, p0, Lcom/google/firebase/sessions/SessionLifecycleService$b;->lastMsgTimeMs:J

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const/16 p1, 0x2e

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void

    .line 58
    .line 59
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 60
    const/4 v2, 0x1

    .line 61
    .line 62
    if-eq v0, v2, :cond_3

    .line 63
    const/4 v2, 0x2

    .line 64
    .line 65
    if-eq v0, v2, :cond_2

    .line 66
    const/4 v2, 0x4

    .line 67
    .line 68
    if-eq v0, v2, :cond_1

    .line 69
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    const-string v2, "Received unexpected event from the SessionLifecycleClient: "

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    .line 88
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 92
    goto :goto_0

    .line 93
    .line 94
    .line 95
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/firebase/sessions/SessionLifecycleService$b;->c(Landroid/os/Message;)V

    .line 96
    goto :goto_0

    .line 97
    .line 98
    .line 99
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/firebase/sessions/SessionLifecycleService$b;->b(Landroid/os/Message;)V

    .line 100
    goto :goto_0

    .line 101
    .line 102
    .line 103
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/firebase/sessions/SessionLifecycleService$b;->d(Landroid/os/Message;)V

    .line 104
    :goto_0
    return-void
.end method
