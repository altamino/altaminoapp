.class final synthetic Lcom/google/android/gms/internal/ads/zzaye;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final zzdbk:Ljava/lang/String;

.field private final zzdwi:Lcom/google/android/gms/internal/ads/zzayb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzayb;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaye;->zzdwi:Lcom/google/android/gms/internal/ads/zzayb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaye;->zzdbk:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaye;->zzdwi:Lcom/google/android/gms/internal/ads/zzayb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaye;->zzdbk:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzayb;->zza(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
