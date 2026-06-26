.class final Lcom/google/android/gms/internal/ads/zzbmh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaho;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzaho<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzffm:Lcom/google/android/gms/internal/ads/zzbmg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbmg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmh;->zzffm:Lcom/google/android/gms/internal/ads/zzbmg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmh;->zzffm:Lcom/google/android/gms/internal/ads/zzbmg;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbmg;->zza(Lcom/google/android/gms/internal/ads/zzbmg;Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzacu;->zzcvs:Lcom/google/android/gms/internal/ads/zzacj;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmh;->zzffm:Lcom/google/android/gms/internal/ads/zzbmg;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbmg;->zza(Lcom/google/android/gms/internal/ads/zzbmg;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbmi;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzbmi;-><init>(Lcom/google/android/gms/internal/ads/zzbmh;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmh;->zzffm:Lcom/google/android/gms/internal/ads/zzbmg;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbmg;->zzb(Lcom/google/android/gms/internal/ads/zzbmg;)Lcom/google/android/gms/internal/ads/zzbmn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbmn;->zzafd()V

    return-void
.end method
