.class Lcom/huawei/multimedia/audiokit/interfaces/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/multimedia/audiokit/interfaces/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/multimedia/audiokit/interfaces/c;


# direct methods
.method constructor <init>(Lcom/huawei/multimedia/audiokit/interfaces/c;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/c$b;->this$0:Lcom/huawei/multimedia/audiokit/interfaces/c;

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
    const-string v0, "HwAudioKit.HwAudioKaraokeFeatureKit"

    .line 3
    .line 4
    const-string v1, "binderDied"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lm5/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/c$b;->this$0:Lcom/huawei/multimedia/audiokit/interfaces/c;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/huawei/multimedia/audiokit/interfaces/c;->i(Lcom/huawei/multimedia/audiokit/interfaces/c;)Landroid/os/IBinder;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/c$b;->this$0:Lcom/huawei/multimedia/audiokit/interfaces/c;

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lcom/huawei/multimedia/audiokit/interfaces/c;->h(Lcom/huawei/multimedia/audiokit/interfaces/c;)Landroid/os/IBinder$DeathRecipient;

    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 24
    .line 25
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/c$b;->this$0:Lcom/huawei/multimedia/audiokit/interfaces/c;

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/huawei/multimedia/audiokit/interfaces/c;->d(Lcom/huawei/multimedia/audiokit/interfaces/c;)Lcom/huawei/multimedia/audiokit/interfaces/b;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    const/16 v1, 0x3eb

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/huawei/multimedia/audiokit/interfaces/b;->f(I)V

    .line 35
    .line 36
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/c$b;->this$0:Lcom/huawei/multimedia/audiokit/interfaces/c;

    .line 37
    const/4 v1, 0x0

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/huawei/multimedia/audiokit/interfaces/c;->j(Lcom/huawei/multimedia/audiokit/interfaces/c;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 41
    return-void
.end method
