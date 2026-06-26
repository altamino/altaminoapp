.class final synthetic Lcom/google/android/gms/internal/ads/zzcpq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgea:Lcom/google/android/gms/internal/ads/zzcpp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcpp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpq;->zzgea:Lcom/google/android/gms/internal/ads/zzcpp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpq;->zzgea:Lcom/google/android/gms/internal/ads/zzcpp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcpp;->zzalc()V

    return-void
.end method
