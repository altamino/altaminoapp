.class final synthetic Lcom/google/android/gms/internal/ads/zzcdx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbvp;


# instance fields
.field private final zzemf:Lcom/google/android/gms/internal/ads/zzbgz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbgz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdx;->zzemf:Lcom/google/android/gms/internal/ads/zzbgz;

    return-void
.end method


# virtual methods
.method public final zzagy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdx;->zzemf:Lcom/google/android/gms/internal/ads/zzbgz;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgz;->destroy()V

    return-void
.end method
