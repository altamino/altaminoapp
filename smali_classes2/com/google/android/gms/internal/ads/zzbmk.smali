.class final synthetic Lcom/google/android/gms/internal/ads/zzbmk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzffo:Lcom/google/android/gms/internal/ads/zzbmj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbmj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmk;->zzffo:Lcom/google/android/gms/internal/ads/zzbmj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmk;->zzffo:Lcom/google/android/gms/internal/ads/zzbmj;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbmj;->zzffm:Lcom/google/android/gms/internal/ads/zzbmg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbmg;->zzb(Lcom/google/android/gms/internal/ads/zzbmg;)Lcom/google/android/gms/internal/ads/zzbmn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbmn;->zzaff()V

    return-void
.end method
