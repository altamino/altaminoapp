.class final Lcom/android/billingclient/api/s1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# instance fields
.field final synthetic zza:Lcom/android/billingclient/api/t1;

.field private final zzb:Lcom/android/billingclient/api/p;

.field private final zzc:Lcom/android/billingclient/api/v0;

.field private final zzd:Lcom/android/billingclient/api/d;

.field private final zze:Lcom/android/billingclient/api/u;

.field private final zzf:Lcom/android/billingclient/api/n0;

.field private zzg:Z


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/t1;Lcom/android/billingclient/api/p;Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/n0;Lcom/android/billingclient/api/q1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/s1;->zza:Lcom/android/billingclient/api/t1;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/android/billingclient/api/s1;->zzb:Lcom/android/billingclient/api/p;

    iput-object p4, p0, Lcom/android/billingclient/api/s1;->zzf:Lcom/android/billingclient/api/n0;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/t1;Lcom/android/billingclient/api/v0;Lcom/android/billingclient/api/n0;Lcom/android/billingclient/api/q1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/s1;->zza:Lcom/android/billingclient/api/t1;

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/billingclient/api/s1;->zzb:Lcom/android/billingclient/api/p;

    iput-object p3, p0, Lcom/android/billingclient/api/s1;->zzf:Lcom/android/billingclient/api/n0;

    return-void
.end method

.method static bridge synthetic a(Lcom/android/billingclient/api/s1;)Lcom/android/billingclient/api/v0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic b(Lcom/android/billingclient/api/s1;)Lcom/android/billingclient/api/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/s1;->zzb:Lcom/android/billingclient/api/p;

    return-object p0
.end method

.method private final e(Landroid/os/Bundle;Lcom/android/billingclient/api/h;I)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "FAILURE_LOGGING_PAYLOAD"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 6
    move-result-object v1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    :try_start_0
    iget-object p2, p0, Lcom/android/billingclient/api/s1;->zzf:Lcom/android/billingclient/api/n0;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzej;->zza()Lcom/google/android/gms/internal/play_billing/zzej;

    .line 18
    move-result-object p3

    .line 19
    .line 20
    .line 21
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzhy;->zzx([BLcom/google/android/gms/internal/play_billing/zzej;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-interface {p2, p1}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    return-void

    .line 27
    .line 28
    :catchall_0
    const-string p1, "BillingBroadcastManager"

    .line 29
    .line 30
    const-string p2, "Failed parsing Api failure."

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void

    .line 35
    .line 36
    :cond_0
    iget-object p1, p0, Lcom/android/billingclient/api/s1;->zzf:Lcom/android/billingclient/api/n0;

    .line 37
    .line 38
    const/16 v0, 0x17

    .line 39
    .line 40
    .line 41
    invoke-static {v0, p3, p2}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 46
    return-void
.end method


# virtual methods
.method public final declared-synchronized c(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 6
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/content/IntentFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean p3, p0, Lcom/android/billingclient/api/s1;->zzg:Z

    .line 4
    .line 5
    if-nez p3, :cond_1

    .line 6
    .line 7
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 p4, 0x21

    .line 10
    .line 11
    if-lt p3, p4, :cond_0

    .line 12
    .line 13
    iget-object p3, p0, Lcom/android/billingclient/api/s1;->zza:Lcom/android/billingclient/api/t1;

    .line 14
    .line 15
    .line 16
    invoke-static {p3}, Lcom/android/billingclient/api/t1;->b(Lcom/android/billingclient/api/t1;)Lcom/android/billingclient/api/s1;

    .line 17
    move-result-object v1

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x2

    .line 21
    move-object v0, p1

    .line 22
    move-object v2, p2

    .line 23
    .line 24
    .line 25
    invoke-static/range {v0 .. v5}, Lcom/android/billingclient/api/r1;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_0
    iget-object p3, p0, Lcom/android/billingclient/api/s1;->zza:Lcom/android/billingclient/api/t1;

    .line 31
    .line 32
    .line 33
    invoke-static {p3}, Lcom/android/billingclient/api/t1;->a(Lcom/android/billingclient/api/t1;)Landroid/content/Context;

    .line 34
    move-result-object p3

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 38
    move-result-object p3

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 42
    .line 43
    iget-object p3, p0, Lcom/android/billingclient/api/s1;->zza:Lcom/android/billingclient/api/t1;

    .line 44
    .line 45
    .line 46
    invoke-static {p3}, Lcom/android/billingclient/api/t1;->b(Lcom/android/billingclient/api/t1;)Lcom/android/billingclient/api/s1;

    .line 47
    move-result-object p3

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    :goto_0
    const/4 p1, 0x1

    .line 52
    .line 53
    iput-boolean p1, p0, Lcom/android/billingclient/api/s1;->zzg:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :cond_1
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :goto_1
    monitor-exit p0

    .line 59
    throw p1
.end method

.method public final declared-synchronized d(Landroid/content/Context;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/s1;->zzg:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/billingclient/api/s1;->zza:Lcom/android/billingclient/api/t1;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/android/billingclient/api/t1;->b(Lcom/android/billingclient/api/t1;)Lcom/android/billingclient/api/s1;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 15
    const/4 p1, 0x0

    .line 16
    .line 17
    iput-boolean p1, p0, Lcom/android/billingclient/api/s1;->zzg:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    :try_start_1
    const-string p1, "BillingBroadcastManager"

    .line 24
    .line 25
    const-string v0, "Receiver is not registered."

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :goto_0
    monitor-exit p0

    .line 32
    throw p1
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    const-string v1, "BillingBroadcastManager"

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-string p1, "Bundle is null."

    .line 12
    .line 13
    .line 14
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/billingclient/api/s1;->zzf:Lcom/android/billingclient/api/n0;

    .line 17
    .line 18
    sget-object p2, Lcom/android/billingclient/api/p0;->zzj:Lcom/android/billingclient/api/h;

    .line 19
    .line 20
    const/16 v1, 0xb

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v0, p2}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v0}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/billingclient/api/s1;->zzb:Lcom/android/billingclient/api/p;

    .line 30
    .line 31
    if-eqz p1, :cond_5

    .line 32
    const/4 v0, 0x0

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, p2, v0}, Lcom/android/billingclient/api/p;->a(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 36
    return-void

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/play_billing/zzb;->zze(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/billingclient/api/h;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 44
    move-result-object p2

    .line 45
    .line 46
    const-string v3, "INTENT_SOURCE"

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v3

    .line 51
    const/4 v4, 0x2

    .line 52
    .line 53
    const-string v5, "LAUNCH_BILLING_FLOW"

    .line 54
    .line 55
    if-eq v3, v5, :cond_1

    .line 56
    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v3

    .line 62
    .line 63
    if-eqz v3, :cond_2

    .line 64
    :cond_1
    move v0, v4

    .line 65
    .line 66
    :cond_2
    const-string v3, "com.android.vending.billing.PURCHASES_UPDATED"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v3

    .line 71
    .line 72
    if-nez v3, :cond_6

    .line 73
    .line 74
    const-string v3, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result v3

    .line 79
    .line 80
    if-eqz v3, :cond_3

    .line 81
    goto :goto_0

    .line 82
    .line 83
    :cond_3
    const-string v3, "com.android.vending.billing.ALTERNATIVE_BILLING"

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result p2

    .line 88
    .line 89
    if-eqz p2, :cond_5

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Lcom/android/billingclient/api/h;->b()I

    .line 93
    move-result p2

    .line 94
    .line 95
    if-eqz p2, :cond_4

    .line 96
    .line 97
    .line 98
    invoke-direct {p0, p1, v2, v0}, Lcom/android/billingclient/api/s1;->e(Landroid/os/Bundle;Lcom/android/billingclient/api/h;I)V

    .line 99
    .line 100
    iget-object p1, p0, Lcom/android/billingclient/api/s1;->zzb:Lcom/android/billingclient/api/p;

    .line 101
    .line 102
    .line 103
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzaf;->zzk()Lcom/google/android/gms/internal/play_billing/zzaf;

    .line 104
    move-result-object p2

    .line 105
    .line 106
    .line 107
    invoke-interface {p1, v2, p2}, Lcom/android/billingclient/api/p;->a(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 108
    return-void

    .line 109
    .line 110
    :cond_4
    const-string p1, "AlternativeBillingListener and UserChoiceBillingListener is null."

    .line 111
    .line 112
    .line 113
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    iget-object p1, p0, Lcom/android/billingclient/api/s1;->zzf:Lcom/android/billingclient/api/n0;

    .line 116
    .line 117
    sget-object p2, Lcom/android/billingclient/api/p0;->zzj:Lcom/android/billingclient/api/h;

    .line 118
    .line 119
    const/16 v1, 0x4d

    .line 120
    .line 121
    .line 122
    invoke-static {v1, v0, p2}, Lcom/android/billingclient/api/m0;->a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 123
    move-result-object v0

    .line 124
    .line 125
    .line 126
    invoke-interface {p1, v0}, Lcom/android/billingclient/api/n0;->a(Lcom/google/android/gms/internal/play_billing/zzhy;)V

    .line 127
    .line 128
    iget-object p1, p0, Lcom/android/billingclient/api/s1;->zzb:Lcom/android/billingclient/api/p;

    .line 129
    .line 130
    .line 131
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzaf;->zzk()Lcom/google/android/gms/internal/play_billing/zzaf;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    .line 135
    invoke-interface {p1, p2, v0}, Lcom/android/billingclient/api/p;->a(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 136
    :cond_5
    return-void

    .line 137
    .line 138
    .line 139
    :cond_6
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzi(Landroid/os/Bundle;)Ljava/util/List;

    .line 140
    move-result-object p2

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Lcom/android/billingclient/api/h;->b()I

    .line 144
    move-result v1

    .line 145
    .line 146
    if-nez v1, :cond_7

    .line 147
    .line 148
    iget-object p1, p0, Lcom/android/billingclient/api/s1;->zzf:Lcom/android/billingclient/api/n0;

    .line 149
    .line 150
    .line 151
    invoke-static {v0}, Lcom/android/billingclient/api/m0;->b(I)Lcom/google/android/gms/internal/play_billing/zzic;

    .line 152
    move-result-object v0

    .line 153
    .line 154
    .line 155
    invoke-interface {p1, v0}, Lcom/android/billingclient/api/n0;->c(Lcom/google/android/gms/internal/play_billing/zzic;)V

    .line 156
    goto :goto_1

    .line 157
    .line 158
    .line 159
    :cond_7
    invoke-direct {p0, p1, v2, v0}, Lcom/android/billingclient/api/s1;->e(Landroid/os/Bundle;Lcom/android/billingclient/api/h;I)V

    .line 160
    .line 161
    :goto_1
    iget-object p1, p0, Lcom/android/billingclient/api/s1;->zzb:Lcom/android/billingclient/api/p;

    .line 162
    .line 163
    .line 164
    invoke-interface {p1, v2, p2}, Lcom/android/billingclient/api/p;->a(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 165
    return-void
.end method
