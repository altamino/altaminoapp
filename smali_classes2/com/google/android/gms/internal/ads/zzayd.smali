.class final synthetic Lcom/google/android/gms/internal/ads/zzayd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final zzdwi:Lcom/google/android/gms/internal/ads/zzayb;

.field private final zzdwj:I

.field private final zzdwk:I

.field private final zzdwl:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzayb;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayd;->zzdwi:Lcom/google/android/gms/internal/ads/zzayb;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzayd;->zzdwj:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzayd;->zzdwk:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzayd;->zzdwl:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayd;->zzdwi:Lcom/google/android/gms/internal/ads/zzayb;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzayd;->zzdwj:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzayd;->zzdwk:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzayd;->zzdwl:I

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzayb;->zza(IIILandroid/content/DialogInterface;I)V

    return-void
.end method
