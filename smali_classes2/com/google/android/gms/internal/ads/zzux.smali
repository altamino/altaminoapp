.class final Lcom/google/android/gms/internal/ads/zzux;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzbvr:Lcom/google/android/gms/internal/ads/zzuw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzuw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzux;->zzbvr:Lcom/google/android/gms/internal/ads/zzuw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 4

    .line 2
    check-cast p1, Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzux;->zzbvr:Lcom/google/android/gms/internal/ads/zzuw;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzuw;->zzbvm:Lcom/google/android/gms/internal/ads/zzuu;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzuw;->zzbvo:Lcom/google/android/gms/internal/ads/zzuo;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzuw;->zzbvp:Landroid/webkit/WebView;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzuw;->zzbvq:Z

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/google/android/gms/internal/ads/zzuu;->zza(Lcom/google/android/gms/internal/ads/zzuo;Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method
