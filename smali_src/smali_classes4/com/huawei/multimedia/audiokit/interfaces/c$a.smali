.class Lcom/huawei/multimedia/audiokit/interfaces/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    iput-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/c$a;->this$0:Lcom/huawei/multimedia/audiokit/interfaces/c;

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

    .line 1
    .line 2
    const-string p1, "HwAudioKit.HwAudioKaraokeFeatureKit"

    .line 3
    .line 4
    const-string v0, "onServiceConnected"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lm5/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/c$a;->this$0:Lcom/huawei/multimedia/audiokit/interfaces/c;

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Lcom/huawei/multimedia/audioengine/b$a;->x1(Landroid/os/IBinder;)Lcom/huawei/multimedia/audioengine/b;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/huawei/multimedia/audiokit/interfaces/c;->b(Lcom/huawei/multimedia/audiokit/interfaces/c;Lcom/huawei/multimedia/audioengine/b;)Lcom/huawei/multimedia/audioengine/b;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/c$a;->this$0:Lcom/huawei/multimedia/audiokit/interfaces/c;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/huawei/multimedia/audiokit/interfaces/c;->a(Lcom/huawei/multimedia/audiokit/interfaces/c;)Lcom/huawei/multimedia/audioengine/b;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/c$a;->this$0:Lcom/huawei/multimedia/audiokit/interfaces/c;

    .line 27
    const/4 v0, 0x1

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v0}, Lcom/huawei/multimedia/audiokit/interfaces/c;->c(Lcom/huawei/multimedia/audiokit/interfaces/c;Z)Z

    .line 31
    .line 32
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/c$a;->this$0:Lcom/huawei/multimedia/audiokit/interfaces/c;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/huawei/multimedia/audiokit/interfaces/c;->d(Lcom/huawei/multimedia/audiokit/interfaces/c;)Lcom/huawei/multimedia/audiokit/interfaces/b;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    const/16 v0, 0x3e8

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcom/huawei/multimedia/audiokit/interfaces/b;->f(I)V

    .line 42
    .line 43
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/c$a;->this$0:Lcom/huawei/multimedia/audiokit/interfaces/c;

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lcom/huawei/multimedia/audiokit/interfaces/c;->e(Lcom/huawei/multimedia/audiokit/interfaces/c;)Landroid/content/Context;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v0}, Lcom/huawei/multimedia/audiokit/interfaces/c;->f(Lcom/huawei/multimedia/audiokit/interfaces/c;Ljava/lang/String;)V

    .line 55
    .line 56
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/c$a;->this$0:Lcom/huawei/multimedia/audiokit/interfaces/c;

    .line 57
    .line 58
    .line 59
    invoke-static {p1, p2}, Lcom/huawei/multimedia/audiokit/interfaces/c;->g(Lcom/huawei/multimedia/audiokit/interfaces/c;Landroid/os/IBinder;)V

    .line 60
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    .line 2
    const-string p1, "HwAudioKit.HwAudioKaraokeFeatureKit"

    .line 3
    .line 4
    const-string v0, "onServiceDisconnected"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lm5/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/c$a;->this$0:Lcom/huawei/multimedia/audiokit/interfaces/c;

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/huawei/multimedia/audiokit/interfaces/c;->c(Lcom/huawei/multimedia/audiokit/interfaces/c;Z)Z

    .line 14
    .line 15
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/c$a;->this$0:Lcom/huawei/multimedia/audiokit/interfaces/c;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/huawei/multimedia/audiokit/interfaces/c;->d(Lcom/huawei/multimedia/audiokit/interfaces/c;)Lcom/huawei/multimedia/audiokit/interfaces/b;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/c$a;->this$0:Lcom/huawei/multimedia/audiokit/interfaces/c;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/huawei/multimedia/audiokit/interfaces/c;->d(Lcom/huawei/multimedia/audiokit/interfaces/c;)Lcom/huawei/multimedia/audiokit/interfaces/b;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    const/16 v0, 0x3e9

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/huawei/multimedia/audiokit/interfaces/b;->f(I)V

    .line 33
    :cond_0
    return-void
.end method
