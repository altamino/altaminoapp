.class final Lcom/google/android/gms/internal/ads/zzvp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzut;


# instance fields
.field private final synthetic zzbwq:Lcom/google/android/gms/internal/ads/zzvn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzvn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvp;->zzbwq:Lcom/google/android/gms/internal/ads/zzvn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzp(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvp;->zzbwq:Lcom/google/android/gms/internal/ads/zzvn;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzvn;->zzb(Lcom/google/android/gms/internal/ads/zzvn;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvp;->zzbwq:Lcom/google/android/gms/internal/ads/zzvn;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzvn;->zza(Lcom/google/android/gms/internal/ads/zzvn;)V

    return-void
.end method
