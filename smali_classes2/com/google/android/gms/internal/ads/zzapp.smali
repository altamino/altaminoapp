.class final Lcom/google/android/gms/internal/ads/zzapp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic zzdhw:Lcom/google/android/gms/internal/ads/zzapo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzapo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapp;->zzdhw:Lcom/google/android/gms/internal/ads/zzapo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzapp;->zzdhw:Lcom/google/android/gms/internal/ads/zzapo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzapo;->createIntent()Landroid/content/Intent;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzapp;->zzdhw:Lcom/google/android/gms/internal/ads/zzapo;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzapo;->zza(Lcom/google/android/gms/internal/ads/zzapo;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zza(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
