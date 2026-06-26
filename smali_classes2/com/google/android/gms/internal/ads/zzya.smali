.class public final Lcom/google/android/gms/internal/ads/zzya;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation


# instance fields
.field private extras:Landroid/os/Bundle;

.field private zzbqn:Z

.field private zzcgn:J

.field private zzcgo:I

.field private zzcgp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzcgq:Z

.field private zzcgr:I

.field private zzcgs:Ljava/lang/String;

.field private zzcgt:Lcom/google/android/gms/internal/ads/zzaca;

.field private zzcgu:Ljava/lang/String;

.field private zzcgv:Landroid/os/Bundle;

.field private zzcgw:Landroid/os/Bundle;

.field private zzcgx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzcgy:Ljava/lang/String;

.field private zzcgz:Ljava/lang/String;

.field private zzcha:Z

.field private zzchc:I

.field private zzchd:Ljava/lang/String;

.field private zzmw:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzya;->zzcgn:J

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzya;->extras:Landroid/os/Bundle;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzya;->zzcgo:I

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzya;->zzcgp:Ljava/util/List;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzya;->zzcgq:Z

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzya;->zzcgr:I

    .line 8
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzya;->zzbqn:Z

    const/4 v2, 0x0

    .line 9
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzya;->zzcgs:Ljava/lang/String;

    .line 10
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzya;->zzcgt:Lcom/google/android/gms/internal/ads/zzaca;

    .line 11
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzya;->zzmw:Landroid/location/Location;

    .line 12
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzya;->zzcgu:Ljava/lang/String;

    .line 13
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzya;->zzcgv:Landroid/os/Bundle;

    .line 14
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzya;->zzcgw:Landroid/os/Bundle;

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzya;->zzcgx:Ljava/util/List;

    .line 16
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzya;->zzcgy:Ljava/lang/String;

    .line 17
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzya;->zzcgz:Ljava/lang/String;

    .line 18
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzya;->zzcha:Z

    .line 19
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzya;->zzchc:I

    .line 20
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzya;->zzchd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzot()Lcom/google/android/gms/internal/ads/zzxz;
    .locals 25

    move-object/from16 v0, p0

    .line 22
    new-instance v24, Lcom/google/android/gms/internal/ads/zzxz;

    move-object/from16 v1, v24

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzya;->zzcgn:J

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzya;->extras:Landroid/os/Bundle;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzya;->zzcgo:I

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzya;->zzcgp:Ljava/util/List;

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzya;->zzcgr:I

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzya;->zzcgv:Landroid/os/Bundle;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzya;->zzcgw:Landroid/os/Bundle;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzya;->zzcgx:Ljava/util/List;

    move-object/from16 v17, v2

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzya;->zzchc:I

    move/from16 v22, v2

    const/16 v2, 0x8

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v1 .. v23}, Lcom/google/android/gms/internal/ads/zzxz;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzaca;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzxt;ILjava/lang/String;)V

    return-object v24
.end method
