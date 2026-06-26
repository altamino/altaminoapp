.class final Lcom/google/android/gms/internal/ads/zzapq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic zzdhw:Lcom/google/android/gms/internal/ads/zzapo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzapo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapq;->zzdhw:Lcom/google/android/gms/internal/ads/zzapo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzapq;->zzdhw:Lcom/google/android/gms/internal/ads/zzapo;

    const-string p2, "Operation denied by user."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaqb;->zzdh(Ljava/lang/String;)V

    return-void
.end method
