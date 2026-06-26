.class final synthetic Lcom/google/android/gms/internal/ads/zzcnt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzemf:Lcom/google/android/gms/internal/ads/zzbgz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbgz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzemf:Lcom/google/android/gms/internal/ads/zzbgz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzemf:Lcom/google/android/gms/internal/ads/zzbgz;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaac()V

    return-void
.end method
