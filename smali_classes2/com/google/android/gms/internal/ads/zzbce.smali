.class final synthetic Lcom/google/android/gms/internal/ads/zzbce;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdwj:I

.field private final zzebl:Lcom/google/android/gms/internal/ads/zzbcd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbcd;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbce;->zzebl:Lcom/google/android/gms/internal/ads/zzbcd;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbce;->zzdwj:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbce;->zzebl:Lcom/google/android/gms/internal/ads/zzbcd;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbce;->zzdwj:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbcd;->zzcx(I)V

    return-void
.end method
