.class final synthetic Lcom/google/android/gms/internal/ads/zzajl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdbj:Lcom/google/android/gms/internal/ads/zzajj;

.field private final zzdbk:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzajj;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzdbj:Lcom/google/android/gms/internal/ads/zzajj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzdbk:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzdbj:Lcom/google/android/gms/internal/ads/zzajj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzdbk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzajj;->zzcq(Ljava/lang/String;)V

    return-void
.end method
