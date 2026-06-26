.class final Lcom/google/android/gms/internal/ads/zzalc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbbt;


# instance fields
.field private final synthetic zzdcy:Lcom/google/android/gms/internal/ads/zzakw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzala;Lcom/google/android/gms/internal/ads/zzakw;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzdcy:Lcom/google/android/gms/internal/ads/zzakw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const-string v0, "Rejecting reference for JS Engine."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzawz;->zzds(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzdcy:Lcom/google/android/gms/internal/ads/zzakw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->reject()V

    return-void
.end method
