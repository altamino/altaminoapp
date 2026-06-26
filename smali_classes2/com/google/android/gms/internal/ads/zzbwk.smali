.class public final Lcom/google/android/gms/internal/ads/zzbwk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdti;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdti<",
        "Lcom/google/android/gms/internal/ads/zzbuz<",
        "Lcom/google/android/gms/internal/ads/zzbur;",
        ">;>;"
    }
.end annotation


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzbvz;Lcom/google/android/gms/internal/ads/zzbxg;)Lcom/google/android/gms/internal/ads/zzbuz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbvz;",
            "Lcom/google/android/gms/internal/ads/zzbxg;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzbuz<",
            "Lcom/google/android/gms/internal/ads/zzbur;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance p0, Lcom/google/android/gms/internal/ads/zzbuz;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbm;->zzeaf:Ljava/util/concurrent/Executor;

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbuz;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 7
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdto;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbuz;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method
