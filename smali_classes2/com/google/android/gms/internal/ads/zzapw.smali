.class final Lcom/google/android/gms/internal/ads/zzapw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic zzdip:Lcom/google/android/gms/internal/ads/zzapu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzapu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapw;->zzdip:Lcom/google/android/gms/internal/ads/zzapu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzapw;->zzdip:Lcom/google/android/gms/internal/ads/zzapu;

    const-string p2, "User canceled the download."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zzdh(Ljava/lang/String;)V

    return-void
.end method
