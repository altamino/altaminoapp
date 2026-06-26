.class final Lcom/google/android/gms/internal/ads/zzact;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzckr:Lcom/google/android/gms/internal/ads/zzacj;

.field private final synthetic zzcks:Lcom/google/android/gms/internal/ads/zzacr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzacr;Lcom/google/android/gms/internal/ads/zzacj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzact;->zzcks:Lcom/google/android/gms/internal/ads/zzacr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzact;->zzckr:Lcom/google/android/gms/internal/ads/zzacj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzact;->zzckr:Lcom/google/android/gms/internal/ads/zzacj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzact;->zzcks:Lcom/google/android/gms/internal/ads/zzacr;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzacr;->zza(Lcom/google/android/gms/internal/ads/zzacr;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzacj;->zza(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
