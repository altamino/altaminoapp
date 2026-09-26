.class public final synthetic Lcom/google/android/gms/cloudmessaging/zzf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/cloudmessaging/zzm;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cloudmessaging/zzm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/zzf;->zza:Lcom/google/android/gms/cloudmessaging/zzm;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzf;->zza:Lcom/google/android/gms/cloudmessaging/zzm;

    .line 3
    .line 4
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 5
    .line 6
    const-string v2, "MessengerIpcClient"

    .line 7
    const/4 v3, 0x3

    .line 8
    .line 9
    .line 10
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 11
    move-result v2

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const/16 v3, 0x29

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 21
    .line 22
    const-string v3, "Received response to request: "

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v3, "MessengerIpcClient"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    .line 37
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    monitor-enter v0

    .line 39
    .line 40
    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/cloudmessaging/zzm;->zze:Landroid/util/SparseArray;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    check-cast v2, Lcom/google/android/gms/cloudmessaging/zzp;

    .line 47
    .line 48
    if-nez v2, :cond_1

    .line 49
    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const/16 v2, 0x32

    .line 53
    .line 54
    .line 55
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 56
    .line 57
    const-string v2, "Received response for unknown request: "

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v1, "MessengerIpcClient"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    .line 72
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    monitor-exit v0

    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    goto :goto_1

    .line 77
    .line 78
    :cond_1
    iget-object v3, v0, Lcom/google/android/gms/cloudmessaging/zzm;->zze:Landroid/util/SparseArray;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/google/android/gms/cloudmessaging/zzm;->zzf()V

    .line 85
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    const-string v0, "unsupported"

    .line 92
    const/4 v1, 0x0

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 96
    move-result v0

    .line 97
    .line 98
    if-eqz v0, :cond_2

    .line 99
    .line 100
    new-instance p1, Lcom/google/android/gms/cloudmessaging/zzq;

    .line 101
    .line 102
    const-string v0, "Not supported by GmsCore"

    .line 103
    const/4 v1, 0x0

    .line 104
    const/4 v3, 0x4

    .line 105
    .line 106
    .line 107
    invoke-direct {p1, v3, v0, v1}, Lcom/google/android/gms/cloudmessaging/zzq;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, p1}, Lcom/google/android/gms/cloudmessaging/zzp;->zzc(Lcom/google/android/gms/cloudmessaging/zzq;)V

    .line 111
    goto :goto_0

    .line 112
    .line 113
    .line 114
    :cond_2
    invoke-virtual {v2, p1}, Lcom/google/android/gms/cloudmessaging/zzp;->zza(Landroid/os/Bundle;)V

    .line 115
    :goto_0
    const/4 p1, 0x1

    .line 116
    return p1

    .line 117
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    throw p1
.end method
