.class final synthetic Lcom/google/android/gms/internal/ads/zzbpn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbal;


# instance fields
.field private final zzdzk:Lcom/google/android/gms/internal/ads/zzbbh;

.field private final zzfiy:Lcom/google/android/gms/internal/ads/zzbpk;

.field private final zzfiz:Lcom/google/android/gms/internal/ads/zzban;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbpk;Lcom/google/android/gms/internal/ads/zzban;Lcom/google/android/gms/internal/ads/zzbbh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpn;->zzfiy:Lcom/google/android/gms/internal/ads/zzbpk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbpn;->zzfiz:Lcom/google/android/gms/internal/ads/zzban;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbpn;->zzdzk:Lcom/google/android/gms/internal/ads/zzbbh;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpn;->zzfiy:Lcom/google/android/gms/internal/ads/zzbpk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbpn;->zzfiz:Lcom/google/android/gms/internal/ads/zzban;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbpn;->zzdzk:Lcom/google/android/gms/internal/ads/zzbbh;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbpc;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzbpk;->zza(Lcom/google/android/gms/internal/ads/zzban;Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzbpc;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object p1

    return-object p1
.end method
