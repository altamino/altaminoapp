.class final synthetic Lcom/google/android/gms/internal/ads/zzbsj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbtu;


# instance fields
.field private final zzdbk:Ljava/lang/String;

.field private final zzdsr:Ljava/lang/String;

.field private final zzfkd:Lcom/google/android/gms/internal/ads/zzasr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzasr;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzfkd:Lcom/google/android/gms/internal/ads/zzasr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzdbk:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzdsr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzr(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzfkd:Lcom/google/android/gms/internal/ads/zzasr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzdbk:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzdsr:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbrl;

    .line 2
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbrl;->zzb(Lcom/google/android/gms/internal/ads/zzasr;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
