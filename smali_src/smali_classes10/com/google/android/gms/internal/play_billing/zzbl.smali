.class public final Lcom/google/android/gms/internal/play_billing/zzbl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/play_billing/zzbp;

.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzbo;


# instance fields
.field private final zzc:Ljava/util/Map;

.field private final zzd:Ljava/util/Map;

.field private final zze:Lcom/google/android/gms/internal/play_billing/zzbp;

.field private zzf:Lcom/google/android/gms/internal/play_billing/zzbo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzbi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzbi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzbl;->zza:Lcom/google/android/gms/internal/play_billing/zzbp;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzbj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzbj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzbl;->zzb:Lcom/google/android/gms/internal/play_billing/zzbo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/play_billing/zzbp;Lcom/google/android/gms/internal/play_billing/zzbk;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance p2, Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzbl;->zzc:Ljava/util/Map;

    .line 11
    .line 12
    new-instance p2, Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzbl;->zzd:Ljava/util/Map;

    .line 18
    const/4 p2, 0x0

    .line 19
    .line 20
    iput-object p2, p0, Lcom/google/android/gms/internal/play_billing/zzbl;->zzf:Lcom/google/android/gms/internal/play_billing/zzbo;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzbl;->zze:Lcom/google/android/gms/internal/play_billing/zzbp;

    .line 23
    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/play_billing/zzbl;)Lcom/google/android/gms/internal/play_billing/zzbo;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzbl;->zzf:Lcom/google/android/gms/internal/play_billing/zzbo;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/play_billing/zzbl;)Lcom/google/android/gms/internal/play_billing/zzbp;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzbl;->zze:Lcom/google/android/gms/internal/play_billing/zzbp;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/play_billing/zzbl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzbl;->zzd:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/play_billing/zzbl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/play_billing/zzbl;->zzc:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/play_billing/zzbo;)Lcom/google/android/gms/internal/play_billing/zzbl;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzbl;->zzf:Lcom/google/android/gms/internal/play_billing/zzbo;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/play_billing/zzbq;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzbn;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/play_billing/zzbn;-><init>(Lcom/google/android/gms/internal/play_billing/zzbl;Lcom/google/android/gms/internal/play_billing/zzbm;)V

    .line 7
    return-object v0
.end method

.method final zzg(Lcom/google/android/gms/internal/play_billing/zzba;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "key"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzda;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzba;->zzb()Z

    .line 9
    move-result v1

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzbl;->zzb:Lcom/google/android/gms/internal/play_billing/zzbo;

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzda;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzba;->zzb()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzbl;->zzc:Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzbl;->zzd:Ljava/util/Map;

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void

    .line 34
    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    const-string v0, "key must be repeating"

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    throw p1

    .line 42
    .line 43
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzbl;->zza:Lcom/google/android/gms/internal/play_billing/zzbp;

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzda;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzbl;->zzd:Ljava/util/Map;

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzbl;->zzc:Ljava/util/Map;

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method
