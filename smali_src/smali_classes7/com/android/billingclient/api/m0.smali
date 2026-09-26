.class public final synthetic Lcom/android/billingclient/api/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/zzhy;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhy;->zzv()Lcom/google/android/gms/internal/play_billing/zzhx;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzii;->zzv()Lcom/google/android/gms/internal/play_billing/zzie;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/android/billingclient/api/h;->b()I

    .line 12
    move-result v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzie;->zzk(I)Lcom/google/android/gms/internal/play_billing/zzie;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/android/billingclient/api/h;->a()Ljava/lang/String;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/play_billing/zzie;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzie;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/play_billing/zzie;->zzl(I)Lcom/google/android/gms/internal/play_billing/zzie;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhx;->zzi(Lcom/google/android/gms/internal/play_billing/zzie;)Lcom/google/android/gms/internal/play_billing/zzhx;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzhx;->zzk(I)Lcom/google/android/gms/internal/play_billing/zzhx;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzet;->zzc()Lcom/google/android/gms/internal/play_billing/zzex;

    .line 35
    move-result-object p0

    .line 36
    .line 37
    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzhy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return-object p0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    .line 41
    const-string p1, "BillingLogger"

    .line 42
    .line 43
    const-string p2, "Unable to create logging payload"

    .line 44
    .line 45
    .line 46
    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    const/4 p0, 0x0

    .line 48
    return-object p0
.end method

.method public static b(I)Lcom/google/android/gms/internal/play_billing/zzic;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzic;->zzv()Lcom/google/android/gms/internal/play_billing/zzib;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzib;->zzj(I)Lcom/google/android/gms/internal/play_billing/zzib;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzet;->zzc()Lcom/google/android/gms/internal/play_billing/zzex;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzic;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-object p0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    .line 17
    const-string v0, "BillingLogger"

    .line 18
    .line 19
    const-string v1, "Unable to create logging payload"

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    const/4 p0, 0x0

    .line 24
    return-object p0
.end method
