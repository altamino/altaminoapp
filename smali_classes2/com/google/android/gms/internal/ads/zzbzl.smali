.class public final Lcom/google/android/gms/internal/ads/zzbzl;
.super Ljava/lang/Object;


# instance fields
.field private final zzdgs:Lcom/google/android/gms/internal/ads/zzady;

.field private final zzduk:Lcom/google/android/gms/internal/ads/zzaxb;

.field private final zzffi:Ljava/util/concurrent/Executor;

.field private final zzffv:Ljava/util/concurrent/Executor;

.field private final zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

.field private final zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

.field private final zzfnq:Lcom/google/android/gms/internal/ads/zzbyx;

.field private final zzfps:Lcom/google/android/gms/internal/ads/zzbzt;

.field private final zzlj:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaxb;Lcom/google/android/gms/internal/ads/zzcxv;Lcom/google/android/gms/internal/ads/zzbyx;Lcom/google/android/gms/internal/ads/zzbyt;Lcom/google/android/gms/internal/ads/zzbzt;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzlj:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzduk:Lcom/google/android/gms/internal/ads/zzaxb;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    .line 5
    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzcxv;->zzdgs:Lcom/google/android/gms/internal/ads/zzady;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzdgs:Lcom/google/android/gms/internal/ads/zzady;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzfnq:Lcom/google/android/gms/internal/ads/zzbyx;

    .line 7
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    .line 8
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzfps:Lcom/google/android/gms/internal/ads/zzbzt;

    .line 9
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzffv:Ljava/util/concurrent/Executor;

    .line 10
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzffi:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private static zza(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 5

    const/16 v0, 0x9

    const/16 v1, 0xa

    if-eqz p1, :cond_2

    const/4 v2, 0x2

    const/16 v3, 0xc

    const/16 v4, 0xb

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    .line 24
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 25
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void

    .line 18
    :cond_0
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void

    .line 21
    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 22
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void

    .line 15
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbzl;Lcom/google/android/gms/internal/ads/zzcab;[Ljava/lang/String;)Z
    .locals 0

    .line 169
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbzl;->zza(Lcom/google/android/gms/internal/ads/zzcab;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzcab;[Ljava/lang/String;)Z
    .locals 4

    .line 35
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcab;->zzaiu()Ljava/util/Map;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 38
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 39
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public final zza(Landroid/view/ViewGroup;)Z
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyt;->zzahy()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 49
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzacu;->zzcsk:Lcom/google/android/gms/internal/ads/zzacj;

    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v1

    .line 51
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/16 v2, 0x11

    if-eqz v1, :cond_2

    .line 52
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto :goto_0

    .line 53
    :cond_2
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 54
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    return p1
.end method

.method final synthetic zzb(Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 57
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbyt;->zzahy()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    .line 58
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbyt;->zzahv()I

    move-result v2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    .line 59
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbyt;->zzahv()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x6

    .line 63
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbyt;->zzahv()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzduk:Lcom/google/android/gms/internal/ads/zzaxb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcxv;->zzglb:Ljava/lang/String;

    const-string v2, "2"

    .line 66
    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzaxb;->zzc(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzduk:Lcom/google/android/gms/internal/ads/zzaxb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcxv;->zzglb:Ljava/lang/String;

    const-string v2, "1"

    .line 69
    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzaxb;->zzc(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 60
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzduk:Lcom/google/android/gms/internal/ads/zzaxb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzfjp:Lcom/google/android/gms/internal/ads/zzcxv;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcxv;->zzglb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    .line 61
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbyt;->zzahv()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzaxb;->zzc(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzcab;)V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzffv:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbzm;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzbzm;-><init>(Lcom/google/android/gms/internal/ads/zzbzl;Lcom/google/android/gms/internal/ads/zzcab;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzcab;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzfps:Lcom/google/android/gms/internal/ads/zzbzt;

    if-eqz v0, :cond_1

    .line 28
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcab;->zzair()Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcab;->zzair()Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzfps:Lcom/google/android/gms/internal/ads/zzbzt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzt;->zzajb()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbhj; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string/jumbo v0, "web view can not be obtained"

    .line 33
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzawz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method final synthetic zze(Lcom/google/android/gms/internal/ads/zzcab;)V
    .locals 9

    .line 74
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzfnq:Lcom/google/android/gms/internal/ads/zzbyx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyx;->zzaig()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzfnq:Lcom/google/android/gms/internal/ads/zzbyx;

    .line 75
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyx;->zzaif()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v3, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string v5, "1098"

    aput-object v5, v4, v1

    const-string v5, "3011"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_3

    .line 79
    aget-object v6, v4, v5

    .line 80
    invoke-interface {p1, v6}, Lcom/google/android/gms/internal/ads/zzcab;->zzfp(Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 81
    instance-of v7, v6, Landroid/view/ViewGroup;

    if-eqz v7, :cond_2

    .line 82
    check-cast v6, Landroid/view/ViewGroup;

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    move-object v6, v3

    :goto_3
    if-eqz v6, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    .line 88
    :goto_4
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 89
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbyt;->zzahw()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 90
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbyt;->zzahw()Landroid/view/View;

    move-result-object v5

    .line 91
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzdgs:Lcom/google/android/gms/internal/ads/zzady;

    if-nez v7, :cond_5

    goto :goto_5

    :cond_5
    if-nez v0, :cond_9

    .line 94
    iget v7, v7, Lcom/google/android/gms/internal/ads/zzady;->zzbqf:I

    invoke-static {v4, v7}, Lcom/google/android/gms/internal/ads/zzbzl;->zza(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 95
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 97
    :cond_6
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbyt;->zzrj()Lcom/google/android/gms/internal/ads/zzaea;

    move-result-object v5

    instance-of v5, v5, Lcom/google/android/gms/internal/ads/zzadt;

    if-nez v5, :cond_7

    move-object v5, v3

    goto :goto_5

    .line 99
    :cond_7
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbyt;->zzrj()Lcom/google/android/gms/internal/ads/zzaea;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzadt;

    if-nez v0, :cond_8

    .line 101
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzadt;->zzrd()I

    move-result v7

    invoke-static {v4, v7}, Lcom/google/android/gms/internal/ads/zzbzl;->zza(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 102
    :cond_8
    new-instance v7, Lcom/google/android/gms/internal/ads/zzadu;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzlj:Landroid/content/Context;

    invoke-direct {v7, v8, v5, v4}, Lcom/google/android/gms/internal/ads/zzadu;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzadt;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 103
    sget-object v4, Lcom/google/android/gms/internal/ads/zzacu;->zzcsh:Lcom/google/android/gms/internal/ads/zzacj;

    .line 104
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v4

    .line 105
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v7, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object v5, v7

    :cond_9
    :goto_5
    const/4 v4, -0x1

    if-eqz v5, :cond_d

    .line 109
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_a

    .line 110
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_a
    if-eqz v0, :cond_b

    .line 112
    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 113
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 114
    :cond_b
    new-instance v0, Lcom/google/android/gms/ads/formats/AdChoicesView;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcab;->zzafi()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/google/android/gms/ads/formats/AdChoicesView;-><init>(Landroid/content/Context;)V

    .line 115
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 117
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcab;->zzair()Landroid/widget/FrameLayout;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 119
    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 120
    :cond_c
    :goto_6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcab;->zzaiw()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v5, v2}, Lcom/google/android/gms/internal/ads/zzcab;->zza(Ljava/lang/String;Landroid/view/View;Z)V

    .line 121
    :cond_d
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacu;->zzcwq:Lcom/google/android/gms/internal/ads/zzacj;

    .line 122
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v0

    .line 123
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_e

    .line 124
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbzl;->zzd(Lcom/google/android/gms/internal/ads/zzcab;)V

    .line 127
    :cond_e
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzj;->zzfpm:[Ljava/lang/String;

    array-length v2, v0

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v2, :cond_10

    aget-object v6, v0, v5

    .line 128
    invoke-interface {p1, v6}, Lcom/google/android/gms/internal/ads/zzcab;->zzfp(Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    .line 129
    instance-of v7, v6, Landroid/view/ViewGroup;

    if-eqz v7, :cond_f

    .line 130
    move-object v0, v6

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_8

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_10
    move-object v0, v3

    .line 134
    :goto_8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzffi:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbzn;

    invoke-direct {v5, p0, v0}, Lcom/google/android/gms/internal/ads/zzbzn;-><init>(Lcom/google/android/gms/internal/ads/zzbzl;Landroid/view/ViewGroup;)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    if-eqz v0, :cond_15

    .line 136
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbzl;->zza(Landroid/view/ViewGroup;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 138
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbyt;->zzahz()Lcom/google/android/gms/internal/ads/zzbgz;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 139
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    .line 140
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbyt;->zzahz()Lcom/google/android/gms/internal/ads/zzbgz;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbzo;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbzo;-><init>(Lcom/google/android/gms/internal/ads/zzbzl;Lcom/google/android/gms/internal/ads/zzcab;Landroid/view/ViewGroup;)V

    .line 141
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzbgz;->zza(Lcom/google/android/gms/internal/ads/zzadx;)V

    return-void

    .line 142
    :cond_11
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 143
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcab;->zzafi()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_9

    :cond_12
    move-object p1, v3

    :goto_9
    if-eqz p1, :cond_15

    .line 147
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbyt;->getImages()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbyt;->getImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_a

    .line 149
    :cond_13
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbzl;->zzfmq:Lcom/google/android/gms/internal/ads/zzbyt;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbyt;->getImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 150
    instance-of v2, v1, Landroid/os/IBinder;

    if-eqz v2, :cond_14

    .line 151
    check-cast v1, Landroid/os/IBinder;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaej;->zzk(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzaei;

    move-result-object v3

    :cond_14
    if-eqz v3, :cond_15

    .line 155
    :try_start_0
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzaei;->zzrf()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_15

    .line 161
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_15

    .line 163
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 164
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 166
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_a

    :catch_0
    const-string p1, "Could not get drawable from image"

    .line 158
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V

    :cond_15
    :goto_a
    return-void
.end method
