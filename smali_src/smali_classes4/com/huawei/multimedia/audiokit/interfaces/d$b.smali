.class Lcom/huawei/multimedia/audiokit/interfaces/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/multimedia/audiokit/interfaces/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/multimedia/audiokit/interfaces/d;


# direct methods
.method constructor <init>(Lcom/huawei/multimedia/audiokit/interfaces/d;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/d$b;->this$0:Lcom/huawei/multimedia/audiokit/interfaces/d;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/d$b;->this$0:Lcom/huawei/multimedia/audiokit/interfaces/d;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/huawei/multimedia/audiokit/interfaces/d;->i(Lcom/huawei/multimedia/audiokit/interfaces/d;)Landroid/os/IBinder;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/d$b;->this$0:Lcom/huawei/multimedia/audiokit/interfaces/d;

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lcom/huawei/multimedia/audiokit/interfaces/d;->h(Lcom/huawei/multimedia/audiokit/interfaces/d;)Landroid/os/IBinder$DeathRecipient;

    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 17
    .line 18
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/d$b;->this$0:Lcom/huawei/multimedia/audiokit/interfaces/d;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/huawei/multimedia/audiokit/interfaces/d;->d(Lcom/huawei/multimedia/audiokit/interfaces/d;)Lcom/huawei/multimedia/audiokit/interfaces/b;

    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x6

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/huawei/multimedia/audiokit/interfaces/b;->f(I)V

    .line 27
    .line 28
    const-string v0, "HwAudioKit.HwAudioKit"

    .line 29
    .line 30
    const-string v1, "service binder died"

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Lm5/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/d$b;->this$0:Lcom/huawei/multimedia/audiokit/interfaces/d;

    .line 36
    const/4 v1, 0x0

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/huawei/multimedia/audiokit/interfaces/d;->j(Lcom/huawei/multimedia/audiokit/interfaces/d;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 40
    return-void
.end method
