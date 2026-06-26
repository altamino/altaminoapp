.class final synthetic Lcom/google/android/gms/internal/ads/zzbeu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzecm:Z

.field private final zzega:J

.field private final zzegk:Lcom/google/android/gms/internal/ads/zzbek;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbek;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbeu;->zzegk:Lcom/google/android/gms/internal/ads/zzbek;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbeu;->zzecm:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzbeu;->zzega:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbeu;->zzegk:Lcom/google/android/gms/internal/ads/zzbek;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbeu;->zzecm:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbeu;->zzega:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbek;->zze(ZJ)V

    return-void
.end method
