.class final synthetic Lcom/google/android/gms/internal/ads/zzcwd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzgjc:Lcom/google/android/gms/internal/ads/zzcwc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcwc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwd;->zzgjc:Lcom/google/android/gms/internal/ads/zzcwc;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwd;->zzgjc:Lcom/google/android/gms/internal/ads/zzcwc;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcwb;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzcwc;->zzgjb:Lcom/google/android/gms/internal/ads/zzvx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcwc;->zzlj:Landroid/content/Context;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzvx;->zzf(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzcwb;-><init>(Lorg/json/JSONObject;)V

    return-object v1
.end method
