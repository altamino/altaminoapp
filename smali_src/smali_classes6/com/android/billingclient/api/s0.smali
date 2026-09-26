.class final Lcom/android/billingclient/api/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/n0;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/play_billing/zzio;

.field private final zzb:Lcom/android/billingclient/api/u0;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/zzio;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/android/billingclient/api/u0;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/android/billingclient/api/u0;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/billingclient/api/s0;->zzb:Lcom/android/billingclient/api/u0;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/android/billingclient/api/s0;->zza:Lcom/google/android/gms/internal/play_billing/zzio;

    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/play_billing/zzhy;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/internal/play_billing/zzhy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zziv;->zzv()Lcom/google/android/gms/internal/play_billing/zziu;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/billingclient/api/s0;->zza:Lcom/google/android/gms/internal/play_billing/zzio;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zziu;->zzk(Lcom/google/android/gms/internal/play_billing/zzio;)Lcom/google/android/gms/internal/play_billing/zziu;

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zziu;->zzi(Lcom/google/android/gms/internal/play_billing/zzhy;)Lcom/google/android/gms/internal/play_billing/zziu;

    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/billingclient/api/s0;->zzb:Lcom/android/billingclient/api/u0;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzet;->zzc()Lcom/google/android/gms/internal/play_billing/zzex;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zziv;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/u0;->a(Lcom/google/android/gms/internal/play_billing/zziv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    return-void

    .line 30
    .line 31
    :catchall_0
    const-string p1, "BillingLogger"

    .line 32
    .line 33
    const-string v0, "Unable to log."

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/play_billing/zziz;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/internal/play_billing/zziz;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zziv;->zzv()Lcom/google/android/gms/internal/play_billing/zziu;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/billingclient/api/s0;->zza:Lcom/google/android/gms/internal/play_billing/zzio;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zziu;->zzk(Lcom/google/android/gms/internal/play_billing/zzio;)Lcom/google/android/gms/internal/play_billing/zziu;

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zziu;->zzl(Lcom/google/android/gms/internal/play_billing/zziz;)Lcom/google/android/gms/internal/play_billing/zziu;

    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/billingclient/api/s0;->zzb:Lcom/android/billingclient/api/u0;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzet;->zzc()Lcom/google/android/gms/internal/play_billing/zzex;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zziv;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/u0;->a(Lcom/google/android/gms/internal/play_billing/zziv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    return-void

    .line 30
    .line 31
    :catchall_0
    const-string p1, "BillingLogger"

    .line 32
    .line 33
    const-string v0, "Unable to log."

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/play_billing/zzic;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/internal/play_billing/zzic;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zziv;->zzv()Lcom/google/android/gms/internal/play_billing/zziu;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/billingclient/api/s0;->zza:Lcom/google/android/gms/internal/play_billing/zzio;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zziu;->zzk(Lcom/google/android/gms/internal/play_billing/zzio;)Lcom/google/android/gms/internal/play_billing/zziu;

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zziu;->zzj(Lcom/google/android/gms/internal/play_billing/zzic;)Lcom/google/android/gms/internal/play_billing/zziu;

    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/billingclient/api/s0;->zzb:Lcom/android/billingclient/api/u0;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzet;->zzc()Lcom/google/android/gms/internal/play_billing/zzex;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zziv;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/u0;->a(Lcom/google/android/gms/internal/play_billing/zziv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    return-void

    .line 30
    .line 31
    :catchall_0
    const-string p1, "BillingLogger"

    .line 32
    .line 33
    const-string v0, "Unable to log."

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method
