.class final synthetic Lcom/google/android/gms/internal/ads/zzcvz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzgiz:Lcom/google/android/gms/internal/ads/zzcvy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcvy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvz;->zzgiz:Lcom/google/android/gms/internal/ads/zzcvy;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvz;->zzgiz:Lcom/google/android/gms/internal/ads/zzcvy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcvy;->zzamb()Lcom/google/android/gms/internal/ads/zzcvx;

    move-result-object v0

    return-object v0
.end method
