.class final synthetic Lcom/google/android/gms/internal/ads/zzbet;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdwj:I

.field private final zzegk:Lcom/google/android/gms/internal/ads/zzbek;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbek;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbet;->zzegk:Lcom/google/android/gms/internal/ads/zzbek;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbet;->zzdwj:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbet;->zzegk:Lcom/google/android/gms/internal/ads/zzbek;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbet;->zzdwj:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbek;->zzdf(I)V

    return-void
.end method
