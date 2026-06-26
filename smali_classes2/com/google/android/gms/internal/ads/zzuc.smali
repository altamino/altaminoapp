.class final Lcom/google/android/gms/internal/ads/zzuc;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private final synthetic zzbtn:Lcom/google/android/gms/internal/ads/zzua;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzua;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzbtn:Lcom/google/android/gms/internal/ads/zzua;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzuc;->zzbtn:Lcom/google/android/gms/internal/ads/zzua;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzua;->zza(Lcom/google/android/gms/internal/ads/zzua;I)V

    return-void
.end method
