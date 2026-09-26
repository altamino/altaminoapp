.class final Lcom/google/android/gms/internal/play_billing/zzbn;
.super Lcom/google/android/gms/internal/play_billing/zzbq;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/Map;

.field private final zzb:Ljava/util/Map;

.field private final zzc:Lcom/google/android/gms/internal/play_billing/zzbp;

.field private final zzd:Lcom/google/android/gms/internal/play_billing/zzbo;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/zzbl;Lcom/google/android/gms/internal/play_billing/zzbm;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzbq;-><init>()V

    .line 4
    .line 5
    new-instance p2, Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzbn;->zza:Ljava/util/Map;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzbn;->zzb:Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzbl;->zzf(Lcom/google/android/gms/internal/play_billing/zzbl;)Ljava/util/Map;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-interface {p2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzbl;->zze(Lcom/google/android/gms/internal/play_billing/zzbl;)Ljava/util/Map;

    .line 28
    move-result-object p2

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzbl;->zzc(Lcom/google/android/gms/internal/play_billing/zzbl;)Lcom/google/android/gms/internal/play_billing/zzbp;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzbn;->zzc:Lcom/google/android/gms/internal/play_billing/zzbp;

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzbl;->zzb(Lcom/google/android/gms/internal/play_billing/zzbl;)Lcom/google/android/gms/internal/play_billing/zzbo;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzbn;->zzd:Lcom/google/android/gms/internal/play_billing/zzbo;

    .line 44
    return-void
.end method
