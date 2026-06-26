.class final Lcom/google/android/gms/internal/ads/zzkb;
.super Landroid/os/Handler;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field private final zzaqk:Lcom/google/android/gms/internal/ads/zzkc;

.field private final zzaql:Lcom/google/android/gms/internal/ads/zzka;

.field private final zzaqm:I

.field private volatile zzaqn:Ljava/lang/Thread;

.field private final synthetic zzaqo:Lcom/google/android/gms/internal/ads/zzjz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzjz;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzkc;Lcom/google/android/gms/internal/ads/zzka;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkb;->zzaqo:Lcom/google/android/gms/internal/ads/zzjz;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzkb;->zzaqk:Lcom/google/android/gms/internal/ads/zzkc;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzkb;->zzaql:Lcom/google/android/gms/internal/ads/zzka;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzkb;->zzaqm:I

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 33
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkb;->zzaqo:Lcom/google/android/gms/internal/ads/zzjz;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzjz;->zza(Lcom/google/android/gms/internal/ads/zzjz;Z)Z

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkb;->zzaqo:Lcom/google/android/gms/internal/ads/zzjz;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzjz;->zza(Lcom/google/android/gms/internal/ads/zzjz;Lcom/google/android/gms/internal/ads/zzkb;)Lcom/google/android/gms/internal/ads/zzkb;

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkb;->zzaqk:Lcom/google/android/gms/internal/ads/zzkc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzkc;->zzfq()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkb;->zzaql:Lcom/google/android/gms/internal/ads/zzka;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkb;->zzaqk:Lcom/google/android/gms/internal/ads/zzkc;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzka;->zzb(Lcom/google/android/gms/internal/ads/zzkc;)V

    return-void

    .line 41
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkb;->zzaql:Lcom/google/android/gms/internal/ads/zzka;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkb;->zzaqk:Lcom/google/android/gms/internal/ads/zzkc;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/io/IOException;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzka;->zza(Lcom/google/android/gms/internal/ads/zzkc;Ljava/io/IOException;)V

    :goto_0
    return-void

    .line 42
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkb;->zzaql:Lcom/google/android/gms/internal/ads/zzka;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkb;->zzaqk:Lcom/google/android/gms/internal/ads/zzkc;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzka;->zza(Lcom/google/android/gms/internal/ads/zzkc;)V

    return-void

    .line 34
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Error;

    throw p1
.end method

.method public final quit()V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkb;->zzaqk:Lcom/google/android/gms/internal/ads/zzkc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzkc;->zzfp()V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkb;->zzaqn:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkb;->zzaqn:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 5

    const-string v0, "LoadTask"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 11
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzkb;->zzaqn:Ljava/lang/Thread;

    .line 12
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzkb;->zzaqm:I

    if-lez v3, :cond_0

    .line 13
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzkb;->zzaqm:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 14
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkb;->zzaqk:Lcom/google/android/gms/internal/ads/zzkc;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzkc;->zzfq()Z

    move-result v3

    if-nez v3, :cond_1

    .line 15
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkb;->zzaqk:Lcom/google/android/gms/internal/ads/zzkc;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzkc;->zzfr()V

    .line 16
    :cond_1
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "Unexpected error loading stream"

    .line 30
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x2

    .line 31
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 32
    throw v1

    :catch_1
    move-exception v1

    const-string v3, "Unexpected exception loading stream"

    .line 26
    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/zzkd;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzkd;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 22
    :catch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkb;->zzaqk:Lcom/google/android/gms/internal/ads/zzkc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzkc;->zzfq()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzkh;->checkState(Z)V

    .line 23
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catch_3
    move-exception v0

    .line 19
    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
