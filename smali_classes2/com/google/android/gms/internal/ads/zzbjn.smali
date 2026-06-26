.class public Lcom/google/android/gms/internal/ads/zzbjn;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzbjn$zza;
    }
.end annotation


# instance fields
.field private final zzbrc:Lcom/google/android/gms/internal/ads/zzbai;

.field private final zzeoe:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final zzlj:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbjn$zza;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbjn$zza;->zza(Lcom/google/android/gms/internal/ads/zzbjn$zza;)Lcom/google/android/gms/internal/ads/zzbai;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjn;->zzbrc:Lcom/google/android/gms/internal/ads/zzbai;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbjn$zza;->zzb(Lcom/google/android/gms/internal/ads/zzbjn$zza;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjn;->zzlj:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbjn$zza;->zzc(Lcom/google/android/gms/internal/ads/zzbjn$zza;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjn;->zzeoe:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbjn$zza;Lcom/google/android/gms/internal/ads/zzbjo;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbjn;-><init>(Lcom/google/android/gms/internal/ads/zzbjn$zza;)V

    return-void
.end method


# virtual methods
.method final zzaco()Landroid/content/Context;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjn;->zzlj:Landroid/content/Context;

    return-object v0
.end method

.method final zzacp()Landroid/content/Context;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjn;->zzeoe:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjn;->zzeoe:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjn;->zzlj:Landroid/content/Context;

    return-object v0
.end method

.method final zzacq()Lcom/google/android/gms/internal/ads/zzbai;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjn;->zzbrc:Lcom/google/android/gms/internal/ads/zzbai;

    return-object v0
.end method

.method final zzacr()Ljava/lang/String;
    .locals 3

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbjn;->zzlj:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbjn;->zzbrc:Lcom/google/android/gms/internal/ads/zzbai;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbai;->zzbsx:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaxi;->zzq(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
