.class public final Lcom/google/android/gms/internal/ads/zzcre;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcva;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcva<",
        "Lcom/google/android/gms/internal/ads/zzcrd;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

.field private final zzgfz:Lcom/google/android/gms/internal/ads/zzbbl;

.field private final zzgga:Landroid/view/View;

.field private final zzlj:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbbl;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcxv;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcre;->zzgfz:Lcom/google/android/gms/internal/ads/zzbbl;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcre;->zzlj:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcre;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcre;->zzgga:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final zzalm()Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzbbh<",
            "Lcom/google/android/gms/internal/ads/zzcrd;",
            ">;"
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacu;->zzcnr:Lcom/google/android/gms/internal/ads/zzacj;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Ad Key signal disabled."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbar;->zzd(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbbf;

    move-result-object v0

    return-object v0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcre;->zzgfz:Lcom/google/android/gms/internal/ads/zzbbl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcrf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcrf;-><init>(Lcom/google/android/gms/internal/ads/zzcre;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbl;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzaln()Lcom/google/android/gms/internal/ads/zzcrd;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcrd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcre;->zzlj:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcre;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzcxv;->zzdll:Lcom/google/android/gms/internal/ads/zzyd;

    .line 13
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcre;->zzgga:Landroid/view/View;

    :goto_0
    if-eqz v4, :cond_1

    .line 16
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v6, -0x1

    .line 19
    instance-of v7, v5, Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    .line 20
    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 21
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 22
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "type"

    invoke-virtual {v4, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "index_of_child"

    .line 23
    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 24
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    instance-of v4, v5, Landroid/view/View;

    if-eqz v4, :cond_1

    .line 26
    move-object v4, v5

    check-cast v4, Landroid/view/View;

    goto :goto_0

    .line 29
    :cond_1
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcrd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzyd;Ljava/util/List;)V

    return-object v0
.end method
