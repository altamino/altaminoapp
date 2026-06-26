.class public final Lcom/google/android/gms/internal/ads/zzbdq;
.super Lcom/google/android/gms/internal/ads/zzbco;

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation


# instance fields
.field private zzaez:Landroid/view/Surface;

.field private zzaft:F

.field private final zzeaw:Lcom/google/android/gms/internal/ads/zzbdg;

.field private final zzeax:Z

.field private zzebc:I

.field private zzebd:I

.field private zzebf:I

.field private zzebg:I

.field private zzebh:Lcom/google/android/gms/internal/ads/zzbdd;

.field private zzebi:Z

.field private zzebk:Lcom/google/android/gms/internal/ads/zzbcn;

.field private final zzebt:Lcom/google/android/gms/internal/ads/zzbdf;

.field private zzefe:Lcom/google/android/gms/internal/ads/zzge;

.field private zzeff:Lcom/google/android/gms/internal/ads/zzhd;

.field private zzefg:Lcom/google/android/gms/internal/ads/zzgn;

.field private zzefn:F

.field private final zzefo:I

.field private final zzefp:Lcom/google/android/gms/internal/ads/zzbde;

.field private zzefq:Lcom/google/android/gms/internal/ads/zzbdk;

.field private zzefr:Ljava/lang/String;

.field private zzefs:Z

.field private zzeft:I

.field private zzefu:Z

.field private zzefv:Z

.field private final zzefw:Lcom/google/android/gms/internal/ads/zzgh;

.field private final zzefx:Lcom/google/android/gms/internal/ads/zzhh;

.field private final zzefy:Lcom/google/android/gms/internal/ads/zzgq;

.field private final zzlj:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/internal/ads/zzbdf;IZZLcom/google/android/gms/internal/ads/zzbde;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbco;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzeft:I

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbee;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbee;-><init>(Lcom/google/android/gms/internal/ads/zzbdq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefw:Lcom/google/android/gms/internal/ads/zzgh;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbef;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbef;-><init>(Lcom/google/android/gms/internal/ads/zzbdq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefx:Lcom/google/android/gms/internal/ads/zzhh;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbeg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbeg;-><init>(Lcom/google/android/gms/internal/ads/zzbdq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefy:Lcom/google/android/gms/internal/ads/zzgq;

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzlj:Landroid/content/Context;

    .line 7
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzeax:Z

    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebt:Lcom/google/android/gms/internal/ads/zzbdf;

    .line 9
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefo:I

    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzeaw:Lcom/google/android/gms/internal/ads/zzbdg;

    .line 11
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebi:Z

    .line 12
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefp:Lcom/google/android/gms/internal/ads/zzbde;

    .line 13
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzeaw:Lcom/google/android/gms/internal/ads/zzbdg;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbdg;->zzb(Lcom/google/android/gms/internal/ads/zzbco;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbdq;F)F
    .locals 0

    .line 334
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzaft:F

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbdq;)I
    .locals 0

    .line 327
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzeft:I

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbdq;I)I
    .locals 0

    .line 328
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzeft:I

    return p1
.end method

.method private final zza(FZ)V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefe:Lcom/google/android/gms/internal/ads/zzge;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefg:Lcom/google/android/gms/internal/ads/zzgn;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 113
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 114
    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzge;->zzb(Lcom/google/android/gms/internal/ads/zzgf;ILjava/lang/Object;)V

    return-void

    .line 115
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzge;->zza(Lcom/google/android/gms/internal/ads/zzgf;ILjava/lang/Object;)V

    return-void

    :cond_1
    const-string p1, "Trying to set volume before player and renderers are initalized."

    .line 116
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Landroid/view/Surface;Z)V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefe:Lcom/google/android/gms/internal/ads/zzge;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzeff:Lcom/google/android/gms/internal/ads/zzhd;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 106
    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzge;->zzb(Lcom/google/android/gms/internal/ads/zzgf;ILjava/lang/Object;)V

    return-void

    .line 107
    :cond_0
    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzge;->zza(Lcom/google/android/gms/internal/ads/zzgf;ILjava/lang/Object;)V

    return-void

    :cond_1
    const-string p1, "Trying to set surface before player and renderers are initalized."

    .line 108
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbdq;IIF)V
    .locals 0

    .line 338
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbdq;->zzb(IIF)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbdq;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 331
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdq;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzbdq;I)I
    .locals 0

    .line 332
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebc:I

    return p1
.end method

.method private final zzb(IIF)V
    .locals 0

    if-nez p2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    mul-float p1, p1, p3

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 121
    :goto_0
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefn:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_1

    .line 122
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefn:F

    .line 123
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    :cond_1
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzbdq;)V
    .locals 0

    .line 329
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdq;->zzyy()V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzbdq;I)I
    .locals 0

    .line 333
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebd:I

    return p1
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzbdq;)V
    .locals 0

    .line 330
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdq;->zzyk()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzbdq;)I
    .locals 0

    .line 335
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebc:I

    return p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzbdq;)I
    .locals 0

    .line 336
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebd:I

    return p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzbdq;)F
    .locals 0

    .line 337
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzaft:F

    return p0
.end method

.method private final zzn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 142
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x13

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Error received: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefs:Z

    .line 144
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefp:Lcom/google/android/gms/internal/ads/zzbde;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbde;->zzeec:Z

    if-eqz v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdq;->zzza()V

    .line 146
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxi;->zzdvv:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbdy;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdy;-><init>(Lcom/google/android/gms/internal/ads/zzbdq;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final zzyk()V
    .locals 2

    const-string v0, "Video ended."

    .line 135
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzawz;->zzds(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefp:Lcom/google/android/gms/internal/ads/zzbde;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbde;->zzeec:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdq;->zzza()V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzeaw:Lcom/google/android/gms/internal/ads/zzbdg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdg;->zzym()V

    .line 139
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzebs:Lcom/google/android/gms/internal/ads/zzbdi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdi;->zzym()V

    .line 140
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxi;->zzdvv:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbdx;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbdx;-><init>(Lcom/google/android/gms/internal/ads/zzbdq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final zzyv()Z
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefe:Lcom/google/android/gms/internal/ads/zzge;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefs:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzyw()Z
    .locals 2

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdq;->zzyv()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzeft:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzyx()V
    .locals 14

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefe:Lcom/google/android/gms/internal/ads/zzge;

    if-eqz v0, :cond_0

    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefr:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzaez:Landroid/view/Surface;

    if-eqz v1, :cond_11

    const-string v1, "cache:"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "AdExoPlayerHelper Error"

    const-string/jumbo v2, "video/webm"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_9

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebt:Lcom/google/android/gms/internal/ads/zzbdf;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefr:Ljava/lang/String;

    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/ads/zzbdf;->zzet(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbft;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 25
    instance-of v5, v0, Lcom/google/android/gms/internal/ads/zzbgl;

    if-eqz v5, :cond_1

    .line 26
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgl;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgl;->zzzx()V

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgl;->zzzy()Lcom/google/android/gms/internal/ads/zzbdk;

    move-result-object v4

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefw:Lcom/google/android/gms/internal/ads/zzgh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefx:Lcom/google/android/gms/internal/ads/zzhh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefy:Lcom/google/android/gms/internal/ads/zzgq;

    invoke-virtual {v4, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbdk;->zza(Lcom/google/android/gms/internal/ads/zzgh;Lcom/google/android/gms/internal/ads/zzhh;Lcom/google/android/gms/internal/ads/zzgq;)V

    goto/16 :goto_9

    .line 30
    :cond_1
    instance-of v5, v0, Lcom/google/android/gms/internal/ads/zzbgg;

    if-eqz v5, :cond_7

    .line 31
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgg;

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgg;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgg;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbgg;->zzzv()Z

    move-result v0

    .line 35
    new-instance v7, Lcom/google/android/gms/internal/ads/zzbdk;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzbdk;-><init>()V

    .line 38
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/google/android/gms/internal/ads/zzjg;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzjg;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/google/android/gms/internal/ads/zziv;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zziv;-><init>()V

    :goto_0
    move-object v11, v2

    if-eqz v0, :cond_3

    .line 39
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-lez v0, :cond_3

    .line 40
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    new-array v0, v0, [B

    .line 41
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 42
    new-instance v10, Lcom/google/android/gms/internal/ads/zzjo;

    invoke-direct {v10, v0}, Lcom/google/android/gms/internal/ads/zzjo;-><init>([B)V

    .line 43
    new-instance v0, Lcom/google/android/gms/internal/ads/zzig;

    .line 44
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v12, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefp:Lcom/google/android/gms/internal/ads/zzbde;

    iget v13, v2, Lcom/google/android/gms/internal/ads/zzbde;->zzeee:I

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzig;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzjp;Lcom/google/android/gms/internal/ads/zzid;II)V

    goto :goto_3

    .line 46
    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebt:Lcom/google/android/gms/internal/ads/zzbdf;

    .line 47
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbdf;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebt:Lcom/google/android/gms/internal/ads/zzbdf;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbdf;->zzyh()Lcom/google/android/gms/internal/ads/zzbai;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzbai;->zzbsx:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/internal/ads/zzaxi;->zzq(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    new-instance v2, Lcom/google/android/gms/internal/ads/zzjt;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebt:Lcom/google/android/gms/internal/ads/zzbdf;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbdf;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Lcom/google/android/gms/internal/ads/zzjt;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacu;->zzctr:Lcom/google/android/gms/internal/ads/zzacj;

    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 52
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbeh;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzlj:Landroid/content/Context;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzbds;

    invoke-direct {v8, p0}, Lcom/google/android/gms/internal/ads/zzbds;-><init>(Lcom/google/android/gms/internal/ads/zzbdq;)V

    invoke-direct {v0, v4, v2, v8}, Lcom/google/android/gms/internal/ads/zzbeh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzjp;Lcom/google/android/gms/internal/ads/zzbei;)V

    goto :goto_1

    :cond_4
    move-object v0, v2

    .line 53
    :goto_1
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-lez v2, :cond_5

    .line 54
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v2, v2, [B

    .line 55
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 57
    new-instance v4, Lcom/google/android/gms/internal/ads/zzjo;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzjo;-><init>([B)V

    .line 58
    new-instance v5, Lcom/google/android/gms/internal/ads/zzbej;

    array-length v2, v2

    invoke-direct {v5, v4, v2, v0}, Lcom/google/android/gms/internal/ads/zzbej;-><init>(Lcom/google/android/gms/internal/ads/zzjp;ILcom/google/android/gms/internal/ads/zzjp;)V

    move-object v10, v5

    goto :goto_2

    :cond_5
    move-object v10, v0

    .line 59
    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzig;

    .line 60
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v12, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefp:Lcom/google/android/gms/internal/ads/zzbde;

    iget v13, v2, Lcom/google/android/gms/internal/ads/zzbde;->zzeee:I

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzig;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzjp;Lcom/google/android/gms/internal/ads/zzid;II)V

    .line 62
    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefw:Lcom/google/android/gms/internal/ads/zzgh;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefx:Lcom/google/android/gms/internal/ads/zzhh;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefy:Lcom/google/android/gms/internal/ads/zzgq;

    invoke-virtual {v7, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzbdk;->zza(Lcom/google/android/gms/internal/ads/zzgh;Lcom/google/android/gms/internal/ads/zzhh;Lcom/google/android/gms/internal/ads/zzgq;)V

    .line 63
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/zzbdk;->zza(Lcom/google/android/gms/internal/ads/zzhn;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "Prepare from ByteBuffer failed."

    .line 64
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzbdq;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move-object v4, v7

    goto/16 :goto_9

    :cond_7
    const-string v0, "Source is MD5 but not found in cache. Source: "

    .line 66
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefr:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 69
    :cond_9
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefo:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v0, v6, :cond_a

    .line 70
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebt:Lcom/google/android/gms/internal/ads/zzbdf;

    .line 71
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbdf;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefr:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v0, v2, v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzgl;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;I)V

    goto/16 :goto_8

    :cond_a
    if-ne v0, v5, :cond_b

    goto :goto_5

    :cond_b
    const/4 v6, 0x0

    .line 72
    :goto_5
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 73
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    move-result-object v0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebt:Lcom/google/android/gms/internal/ads/zzbdf;

    .line 74
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbdf;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebt:Lcom/google/android/gms/internal/ads/zzbdf;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzbdf;->zzyh()Lcom/google/android/gms/internal/ads/zzbai;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzbai;->zzbsx:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzaxi;->zzq(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v5, Lcom/google/android/gms/internal/ads/zzjt;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebt:Lcom/google/android/gms/internal/ads/zzbdf;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzbdf;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/google/android/gms/internal/ads/zzjt;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacu;->zzctr:Lcom/google/android/gms/internal/ads/zzacj;

    .line 77
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 79
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbeh;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzlj:Landroid/content/Context;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzbdr;

    invoke-direct {v7, p0}, Lcom/google/android/gms/internal/ads/zzbdr;-><init>(Lcom/google/android/gms/internal/ads/zzbdq;)V

    invoke-direct {v0, v6, v5, v7}, Lcom/google/android/gms/internal/ads/zzbeh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzjp;Lcom/google/android/gms/internal/ads/zzbei;)V

    move-object v10, v0

    goto :goto_6

    :cond_c
    move-object v10, v5

    .line 80
    :goto_6
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/google/android/gms/internal/ads/zzjg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzjg;-><init>()V

    goto :goto_7

    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/ads/zziv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zziv;-><init>()V

    :goto_7
    move-object v11, v0

    .line 81
    new-instance v0, Lcom/google/android/gms/internal/ads/zzig;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefr:Ljava/lang/String;

    .line 82
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const/4 v12, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefp:Lcom/google/android/gms/internal/ads/zzbde;

    iget v13, v2, Lcom/google/android/gms/internal/ads/zzbde;->zzeee:I

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzig;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzjp;Lcom/google/android/gms/internal/ads/zzid;II)V

    .line 85
    :goto_8
    new-instance v4, Lcom/google/android/gms/internal/ads/zzbdk;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzbdk;-><init>()V

    .line 87
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefw:Lcom/google/android/gms/internal/ads/zzgh;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefx:Lcom/google/android/gms/internal/ads/zzhh;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefy:Lcom/google/android/gms/internal/ads/zzgq;

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzbdk;->zza(Lcom/google/android/gms/internal/ads/zzgh;Lcom/google/android/gms/internal/ads/zzhh;Lcom/google/android/gms/internal/ads/zzgq;)V

    .line 88
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzbdk;->zza(Lcom/google/android/gms/internal/ads/zzhn;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "Prepare failed."

    .line 89
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzbdq;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_e
    :goto_9
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefq:Lcom/google/android/gms/internal/ads/zzbdk;

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefq:Lcom/google/android/gms/internal/ads/zzbdk;

    if-nez v0, :cond_10

    const-string v0, "AdExoPlayerHelper is null. Source: "

    .line 93
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefr:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_f
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_a
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V

    return-void

    .line 95
    :cond_10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdk;->zzys()Lcom/google/android/gms/internal/ads/zzge;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefe:Lcom/google/android/gms/internal/ads/zzge;

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefq:Lcom/google/android/gms/internal/ads/zzbdk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdk;->zzyt()Lcom/google/android/gms/internal/ads/zzhd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzeff:Lcom/google/android/gms/internal/ads/zzhd;

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefq:Lcom/google/android/gms/internal/ads/zzbdk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdk;->zzyu()Lcom/google/android/gms/internal/ads/zzgn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefg:Lcom/google/android/gms/internal/ads/zzgn;

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefe:Lcom/google/android/gms/internal/ads/zzge;

    if-eqz v0, :cond_11

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzaez:Landroid/view/Surface;

    invoke-direct {p0, v0, v3}, Lcom/google/android/gms/internal/ads/zzbdq;->zza(Landroid/view/Surface;Z)V

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefe:Lcom/google/android/gms/internal/ads/zzge;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzge;->getPlaybackState()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzeft:I

    .line 101
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzeft:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    .line 102
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdq;->zzyy()V

    :cond_11
    return-void
.end method

.method private final zzyy()V
    .locals 2

    .line 125
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefu:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefu:Z

    const-string v0, "Video is ready."

    .line 128
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzawz;->zzds(Ljava/lang/String;)V

    .line 129
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxi;->zzdvv:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbdw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbdw;-><init>(Lcom/google/android/gms/internal/ads/zzbdq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbdq;->zzxk()V

    .line 131
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzeaw:Lcom/google/android/gms/internal/ads/zzbdg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdg;->zzhd()V

    .line 132
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefv:Z

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbdq;->play()V

    :cond_1
    return-void
.end method

.method private final zzyz()V
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefe:Lcom/google/android/gms/internal/ads/zzge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 293
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzge;->zzc(IZ)V

    :cond_0
    return-void
.end method

.method private final zzza()V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefe:Lcom/google/android/gms/internal/ads/zzge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 296
    invoke-interface {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzge;->zzc(IZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getCurrentPosition()I
    .locals 2

    .line 204
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdq;->zzyw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefe:Lcom/google/android/gms/internal/ads/zzge;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzge;->zzdn()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getDuration()I
    .locals 2

    .line 207
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdq;->zzyw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefe:Lcom/google/android/gms/internal/ads/zzge;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzge;->getDuration()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getVideoHeight()I
    .locals 1

    .line 211
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebd:I

    return v0
.end method

.method public final getVideoWidth()I
    .locals 1

    .line 210
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebc:I

    return v0
.end method

.method protected final onMeasure(II)V
    .locals 9

    .line 212
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    .line 213
    invoke-virtual {p0}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result p1

    .line 214
    invoke-virtual {p0}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result p2

    .line 215
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefn:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebh:Lcom/google/android/gms/internal/ads/zzbdd;

    if-nez v2, :cond_1

    int-to-float v2, p1

    int-to-float v3, p2

    div-float v4, v2, v3

    div-float v4, v0, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    const v5, 0x3c23d70a    # 0.01f

    cmpl-float v5, v4, v5

    if-lez v5, :cond_0

    div-float/2addr v2, v0

    float-to-int p2, v2

    goto :goto_0

    :cond_0
    const v2, -0x43dc28f6    # -0.01f

    cmpg-float v2, v4, v2

    if-gez v2, :cond_1

    mul-float v3, v3, v0

    float-to-int p1, v3

    .line 222
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/view/TextureView;->setMeasuredDimension(II)V

    .line 223
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebh:Lcom/google/android/gms/internal/ads/zzbdd;

    if-eqz v0, :cond_2

    .line 224
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdd;->zzm(II)V

    .line 225
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_9

    .line 226
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebf:I

    if-lez v0, :cond_3

    if-ne v0, p1, :cond_4

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebg:I

    if-lez v0, :cond_8

    if-eq v0, p2, :cond_8

    .line 228
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzeax:Z

    if-eqz v0, :cond_8

    .line 229
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdq;->zzyv()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefe:Lcom/google/android/gms/internal/ads/zzge;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzge;->zzdn()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefe:Lcom/google/android/gms/internal/ads/zzge;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzge;->zzdm()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 230
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzbdq;->zza(FZ)V

    .line 231
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefe:Lcom/google/android/gms/internal/ads/zzge;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzge;->zzd(Z)V

    .line 232
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefe:Lcom/google/android/gms/internal/ads/zzge;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzge;->zzdn()J

    move-result-wide v0

    .line 233
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzln()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 234
    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdq;->zzyv()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefe:Lcom/google/android/gms/internal/ads/zzge;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzge;->zzdn()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-nez v6, :cond_6

    .line 235
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzln()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0xfa

    cmp-long v8, v4, v6

    if-lez v8, :cond_5

    .line 237
    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdq;->zzyv()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 238
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefe:Lcom/google/android/gms/internal/ads/zzge;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzge;->zzd(Z)V

    .line 239
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbdq;->zzxk()V

    .line 240
    :cond_8
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebf:I

    .line 241
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebg:I

    :cond_9
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 243
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebi:Z

    if-eqz v0, :cond_1

    .line 244
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdd;

    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbdd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebh:Lcom/google/android/gms/internal/ads/zzbdd;

    .line 245
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebh:Lcom/google/android/gms/internal/ads/zzbdd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbdd;->zza(Landroid/graphics/SurfaceTexture;II)V

    .line 246
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebh:Lcom/google/android/gms/internal/ads/zzbdd;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 247
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebh:Lcom/google/android/gms/internal/ads/zzbdd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdd;->zzxy()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebh:Lcom/google/android/gms/internal/ads/zzbdd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdd;->zzxx()V

    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebh:Lcom/google/android/gms/internal/ads/zzbdd;

    .line 253
    :cond_1
    :goto_0
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 254
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzaez:Landroid/view/Surface;

    .line 255
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefe:Lcom/google/android/gms/internal/ads/zzge;

    if-nez p1, :cond_2

    .line 256
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdq;->zzyx()V

    goto :goto_1

    .line 257
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzaez:Landroid/view/Surface;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbdq;->zza(Landroid/view/Surface;Z)V

    .line 258
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefp:Lcom/google/android/gms/internal/ads/zzbde;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzbde;->zzeec:Z

    if-nez p1, :cond_3

    .line 259
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdq;->zzyz()V

    :cond_3
    :goto_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 261
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebc:I

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebd:I

    if-eqz v1, :cond_4

    .line 264
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzaft:F

    move p2, v0

    move p3, v1

    .line 265
    :cond_4
    invoke-direct {p0, p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzbdq;->zzb(IIF)V

    .line 266
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaxi;->zzdvv:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzbeb;-><init>(Lcom/google/android/gms/internal/ads/zzbdq;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    const-string p1, "Surface destroyed"

    .line 272
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawz;->zzds(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbdq;->pause()V

    .line 274
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebh:Lcom/google/android/gms/internal/ads/zzbdd;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 275
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbdd;->zzxx()V

    .line 276
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebh:Lcom/google/android/gms/internal/ads/zzbdd;

    .line 277
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefe:Lcom/google/android/gms/internal/ads/zzge;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 278
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdq;->zzza()V

    .line 279
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzaez:Landroid/view/Surface;

    if-eqz p1, :cond_1

    .line 280
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 281
    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzaez:Landroid/view/Surface;

    .line 282
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbdq;->zza(Landroid/view/Surface;Z)V

    .line 283
    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaxi;->zzdvv:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbed;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbed;-><init>(Lcom/google/android/gms/internal/ads/zzbdq;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 268
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebh:Lcom/google/android/gms/internal/ads/zzbdd;

    if-eqz p1, :cond_0

    .line 269
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbdd;->zzm(II)V

    .line 270
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaxi;->zzdvv:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbec;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzbec;-><init>(Lcom/google/android/gms/internal/ads/zzbdq;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzeaw:Lcom/google/android/gms/internal/ads/zzbdg;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbdg;->zzc(Lcom/google/android/gms/internal/ads/zzbco;)V

    .line 286
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzebr:Lcom/google/android/gms/internal/ads/zzbcy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebk:Lcom/google/android/gms/internal/ads/zzbcn;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbcy;->zza(Landroid/graphics/SurfaceTexture;Lcom/google/android/gms/internal/ads/zzbcn;)V

    return-void
.end method

.method protected final onWindowVisibilityChanged(I)V
    .locals 2

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x39

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdExoPlayerView1 window visibility changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzawz;->zzds(Ljava/lang/String;)V

    .line 289
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxi;->zzdvv:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbdt;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzbdt;-><init>(Lcom/google/android/gms/internal/ads/zzbdq;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 290
    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public final pause()V
    .locals 2

    .line 190
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdq;->zzyw()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefp:Lcom/google/android/gms/internal/ads/zzbde;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbde;->zzeec:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdq;->zzza()V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefe:Lcom/google/android/gms/internal/ads/zzge;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzge;->zzd(Z)V

    .line 194
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzeaw:Lcom/google/android/gms/internal/ads/zzbdg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdg;->zzym()V

    .line 195
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzebs:Lcom/google/android/gms/internal/ads/zzbdi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdi;->zzym()V

    .line 196
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxi;->zzdvv:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbea;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbea;-><init>(Lcom/google/android/gms/internal/ads/zzbdq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final play()V
    .locals 2

    .line 161
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdq;->zzyw()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefp:Lcom/google/android/gms/internal/ads/zzbde;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbde;->zzeec:Z

    if-eqz v0, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdq;->zzyz()V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefe:Lcom/google/android/gms/internal/ads/zzge;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzge;->zzd(Z)V

    .line 165
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzeaw:Lcom/google/android/gms/internal/ads/zzbdg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdg;->zzyl()V

    .line 166
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzebs:Lcom/google/android/gms/internal/ads/zzbdi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdi;->zzyl()V

    .line 167
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzebr:Lcom/google/android/gms/internal/ads/zzbcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbcy;->zzxm()V

    .line 168
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxi;->zzdvv:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbdz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbdz;-><init>(Lcom/google/android/gms/internal/ads/zzbdq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 169
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefv:Z

    return-void
.end method

.method public final seekTo(I)V
    .locals 3

    .line 198
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdq;->zzyw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefe:Lcom/google/android/gms/internal/ads/zzge;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzge;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public final setVideoPath(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 157
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefr:Ljava/lang/String;

    .line 158
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdq;->zzyx()V

    return-void

    :cond_0
    const-string p1, "Path is null."

    .line 159
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V

    return-void
.end method

.method public final stop()V
    .locals 3

    .line 171
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdq;->zzyv()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefe:Lcom/google/android/gms/internal/ads/zzge;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzge;->stop()V

    .line 174
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefe:Lcom/google/android/gms/internal/ads/zzge;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 175
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzbdq;->zza(Landroid/view/Surface;Z)V

    .line 176
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefq:Lcom/google/android/gms/internal/ads/zzbdk;

    if-eqz v2, :cond_0

    .line 177
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbdk;->zzyr()V

    .line 178
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefq:Lcom/google/android/gms/internal/ads/zzbdk;

    .line 179
    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefe:Lcom/google/android/gms/internal/ads/zzge;

    .line 180
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzeff:Lcom/google/android/gms/internal/ads/zzhd;

    .line 181
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefg:Lcom/google/android/gms/internal/ads/zzgn;

    .line 182
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzeft:I

    const/4 v0, 0x0

    .line 183
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefs:Z

    .line 184
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefu:Z

    .line 185
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefv:Z

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzeaw:Lcom/google/android/gms/internal/ads/zzbdg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdg;->zzym()V

    .line 187
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzebs:Lcom/google/android/gms/internal/ads/zzbdi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdi;->zzym()V

    .line 188
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzeaw:Lcom/google/android/gms/internal/ads/zzbdg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdg;->onStop()V

    return-void
.end method

.method public final zza(FF)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebh:Lcom/google/android/gms/internal/ads/zzbdd;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdd;->zzb(FF)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbcn;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebk:Lcom/google/android/gms/internal/ads/zzbcn;

    return-void
.end method

.method final synthetic zzb(ZJ)V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebt:Lcom/google/android/gms/internal/ads/zzbdf;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbdf;->zza(ZJ)V

    return-void
.end method

.method final synthetic zzc(ZJ)V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebt:Lcom/google/android/gms/internal/ads/zzbdf;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbdf;->zza(ZJ)V

    return-void
.end method

.method final synthetic zzdd(I)V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebk:Lcom/google/android/gms/internal/ads/zzbcn;

    if-eqz v0, :cond_0

    .line 299
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcn;->onWindowVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method final synthetic zzn(II)V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebk:Lcom/google/android/gms/internal/ads/zzbcn;

    if-eqz v0, :cond_0

    .line 305
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbcn;->zzk(II)V

    :cond_0
    return-void
.end method

.method final synthetic zzo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebk:Lcom/google/android/gms/internal/ads/zzbcn;

    if-eqz v0, :cond_0

    .line 317
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbcn;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final zzxg()Ljava/lang/String;
    .locals 4

    .line 148
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzefo:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "/Framework"

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "null"

    .line 151
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "/Extractor("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "/Unknown"

    .line 153
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebi:Z

    if-eqz v1, :cond_2

    const-string v1, " spherical"

    goto :goto_1

    :cond_2
    const-string v1, ""

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ExoPlayer/1"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzxk()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzebs:Lcom/google/android/gms/internal/ads/zzbdi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdi;->getVolume()F

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbdq;->zza(FZ)V

    return-void
.end method

.method final synthetic zzzb()V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebk:Lcom/google/android/gms/internal/ads/zzbcn;

    if-eqz v0, :cond_0

    .line 302
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbcn;->zzxo()V

    :cond_0
    return-void
.end method

.method final synthetic zzzc()V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebk:Lcom/google/android/gms/internal/ads/zzbcn;

    if-eqz v0, :cond_0

    .line 308
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbcn;->zzxl()V

    :cond_0
    return-void
.end method

.method final synthetic zzzd()V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebk:Lcom/google/android/gms/internal/ads/zzbcn;

    if-eqz v0, :cond_0

    .line 311
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbcn;->onPaused()V

    :cond_0
    return-void
.end method

.method final synthetic zzze()V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebk:Lcom/google/android/gms/internal/ads/zzbcn;

    if-eqz v0, :cond_0

    .line 314
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbcn;->zzxm()V

    :cond_0
    return-void
.end method

.method final synthetic zzzf()V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebk:Lcom/google/android/gms/internal/ads/zzbcn;

    if-eqz v0, :cond_0

    .line 320
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbcn;->zzxn()V

    :cond_0
    return-void
.end method

.method final synthetic zzzg()V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdq;->zzebk:Lcom/google/android/gms/internal/ads/zzbcn;

    if-eqz v0, :cond_0

    .line 323
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbcn;->zzhd()V

    :cond_0
    return-void
.end method
