.class public final Lcom/google/firebase/sessions/f0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/sessions/f0;-><init>(Lkotlin/coroutines/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/sessions/f0;


# direct methods
.method constructor <init>(Lcom/google/firebase/sessions/f0;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/firebase/sessions/f0$d;->this$0:Lcom/google/firebase/sessions/f0;

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
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v0, "Connected to SessionLifecycleService. Queue size "

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/firebase/sessions/f0$d;->this$0:Lcom/google/firebase/sessions/f0;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/google/firebase/sessions/f0;->c(Lcom/google/firebase/sessions/f0;)Ljava/util/concurrent/LinkedBlockingDeque;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    .line 20
    move-result v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    const-string v0, "SessionLifecycleClient"

    .line 30
    .line 31
    .line 32
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    iget-object p1, p0, Lcom/google/firebase/sessions/f0$d;->this$0:Lcom/google/firebase/sessions/f0;

    .line 35
    .line 36
    new-instance v0, Landroid/os/Messenger;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v0}, Lcom/google/firebase/sessions/f0;->f(Lcom/google/firebase/sessions/f0;Landroid/os/Messenger;)V

    .line 43
    .line 44
    iget-object p1, p0, Lcom/google/firebase/sessions/f0$d;->this$0:Lcom/google/firebase/sessions/f0;

    .line 45
    const/4 p2, 0x1

    .line 46
    .line 47
    .line 48
    invoke-static {p1, p2}, Lcom/google/firebase/sessions/f0;->g(Lcom/google/firebase/sessions/f0;Z)V

    .line 49
    .line 50
    iget-object p1, p0, Lcom/google/firebase/sessions/f0$d;->this$0:Lcom/google/firebase/sessions/f0;

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lcom/google/firebase/sessions/f0;->a(Lcom/google/firebase/sessions/f0;)Ljava/util/List;

    .line 54
    move-result-object p2

    .line 55
    .line 56
    .line 57
    invoke-static {p1, p2}, Lcom/google/firebase/sessions/f0;->d(Lcom/google/firebase/sessions/f0;Ljava/util/List;)Lkotlinx/coroutines/b2;

    .line 58
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p1, "SessionLifecycleClient"

    .line 3
    .line 4
    const-string v0, "Disconnected from SessionLifecycleService"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/firebase/sessions/f0$d;->this$0:Lcom/google/firebase/sessions/f0;

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/google/firebase/sessions/f0;->f(Lcom/google/firebase/sessions/f0;Landroid/os/Messenger;)V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/google/firebase/sessions/f0$d;->this$0:Lcom/google/firebase/sessions/f0;

    .line 16
    const/4 v0, 0x0

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Lcom/google/firebase/sessions/f0;->g(Lcom/google/firebase/sessions/f0;Z)V

    .line 20
    return-void
.end method
