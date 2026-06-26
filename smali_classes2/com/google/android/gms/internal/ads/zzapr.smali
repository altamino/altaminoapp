.class public final Lcom/google/android/gms/internal/ads/zzapr;
.super Lcom/google/android/gms/internal/ads/zzaqb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation


# static fields
.field private static final zzdhx:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private height:I

.field private final lock:Ljava/lang/Object;

.field private width:I

.field private zzdal:Lcom/google/android/gms/internal/ads/zzaqc;

.field private final zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

.field private final zzdhn:Landroid/app/Activity;

.field private zzdhy:Ljava/lang/String;

.field private zzdhz:Z

.field private zzdia:I

.field private zzdib:I

.field private zzdic:I

.field private zzdid:I

.field private zzdie:Lcom/google/android/gms/internal/ads/zzbin;

.field private zzdif:Landroid/widget/ImageView;

.field private zzdig:Landroid/widget/LinearLayout;

.field private zzdih:Landroid/widget/PopupWindow;

.field private zzdii:Landroid/widget/RelativeLayout;

.field private zzdij:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "top-left"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "top-right"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "top-center"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "center"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bottom-left"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "bottom-right"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "bottom-center"

    aput-object v2, v0, v1

    .line 217
    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzapr;->zzdhx:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbgz;Lcom/google/android/gms/internal/ads/zzaqc;)V
    .locals 2

    const-string v0, "resize"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaqb;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;Ljava/lang/String;)V

    const-string v0, "top-right"

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdhy:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdhz:Z

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdia:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdib:I

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzapr;->height:I

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdic:I

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdid:I

    .line 9
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzapr;->width:I

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzapr;->lock:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgz;->zzyd()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdhn:Landroid/app/Activity;

    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdal:Lcom/google/android/gms/internal/ads/zzaqc;

    return-void
.end method


# virtual methods
.method public final zza(IIZ)V
    .locals 0

    .line 206
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzapr;->lock:Ljava/lang/Object;

    monitor-enter p3

    .line 207
    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdia:I

    .line 208
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdib:I

    .line 209
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzg(Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 15
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzapr;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 16
    :try_start_0
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdhn:Landroid/app/Activity;

    if-nez v3, :cond_0

    const-string v0, "Not an activity context. Cannot resize."

    .line 17
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaqb;->zzdh(Ljava/lang/String;)V

    .line 18
    monitor-exit v2

    return-void

    .line 19
    :cond_0
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaag()Lcom/google/android/gms/internal/ads/zzbin;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, "Webview is not yet available, size is not set."

    .line 20
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaqb;->zzdh(Ljava/lang/String;)V

    .line 21
    monitor-exit v2

    return-void

    .line 22
    :cond_1
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaag()Lcom/google/android/gms/internal/ads/zzbin;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbin;->zzabx()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "Is interstitial. Cannot resize an interstitial."

    .line 23
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaqb;->zzdh(Ljava/lang/String;)V

    .line 24
    monitor-exit v2

    return-void

    .line 25
    :cond_2
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaan()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "Cannot resize an expanded banner."

    .line 26
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaqb;->zzdh(Ljava/lang/String;)V

    .line 27
    monitor-exit v2

    return-void

    :cond_3
    const-string/jumbo v3, "width"

    .line 29
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 30
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    const-string/jumbo v3, "width"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdy(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzapr;->width:I

    :cond_4
    const-string v3, "height"

    .line 31
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 32
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    const-string v3, "height"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdy(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzapr;->height:I

    :cond_5
    const-string v3, "offsetX"

    .line 33
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 34
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    const-string v3, "offsetX"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdy(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdic:I

    :cond_6
    const-string v3, "offsetY"

    .line 35
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 36
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    const-string v3, "offsetY"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdy(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdid:I

    :cond_7
    const-string v3, "allowOffscreen"

    .line 37
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "allowOffscreen"

    .line 38
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdhz:Z

    :cond_8
    const-string v3, "customClosePosition"

    .line 39
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 41
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdhy:Ljava/lang/String;

    .line 43
    :cond_9
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzapr;->width:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v0, :cond_a

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzapr;->height:I

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_0

    :cond_a
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_b

    const-string v0, "Invalid width and height options. Cannot resize."

    .line 45
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaqb;->zzdh(Ljava/lang/String;)V

    .line 46
    monitor-exit v2

    return-void

    .line 47
    :cond_b
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdhn:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 48
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_c

    goto/16 :goto_12

    .line 53
    :cond_c
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdhn:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Landroid/app/Activity;)[I

    move-result-object v5

    .line 54
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdhn:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzaxi;->zzf(Landroid/app/Activity;)[I

    move-result-object v6

    .line 55
    aget v7, v5, v4

    .line 56
    aget v5, v5, v3

    .line 57
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->width:I

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, -0x1

    const/4 v13, 0x2

    const/16 v14, 0x32

    if-lt v8, v14, :cond_19

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->width:I

    if-le v8, v7, :cond_d

    goto/16 :goto_7

    .line 60
    :cond_d
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->height:I

    if-lt v8, v14, :cond_18

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->height:I

    if-le v8, v5, :cond_e

    goto/16 :goto_6

    .line 63
    :cond_e
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->height:I

    if-ne v8, v5, :cond_f

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzapr;->width:I

    if-ne v5, v7, :cond_f

    const-string v5, "Cannot resize to a full-screen ad."

    .line 64
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 66
    :cond_f
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdhz:Z

    if-eqz v5, :cond_17

    .line 67
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdhy:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v8, "top-center"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v5, 0x1

    goto :goto_2

    :sswitch_1
    const-string v8, "bottom-center"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v5, 0x4

    goto :goto_2

    :sswitch_2
    const-string v8, "bottom-right"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v5, 0x5

    goto :goto_2

    :sswitch_3
    const-string v8, "bottom-left"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v5, 0x3

    goto :goto_2

    :sswitch_4
    const-string v8, "top-left"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_5
    const-string v8, "center"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v5, 0x2

    goto :goto_2

    :cond_10
    :goto_1
    const/4 v5, -0x1

    :goto_2
    if-eqz v5, :cond_16

    if-eq v5, v3, :cond_15

    if-eq v5, v13, :cond_14

    if-eq v5, v11, :cond_13

    if-eq v5, v10, :cond_12

    if-eq v5, v9, :cond_11

    .line 86
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdia:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdic:I

    add-int/2addr v5, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->width:I

    add-int/2addr v5, v8

    sub-int/2addr v5, v14

    .line 87
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdib:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdid:I

    goto :goto_4

    .line 83
    :cond_11
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdia:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdic:I

    add-int/2addr v5, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->width:I

    add-int/2addr v5, v8

    sub-int/2addr v5, v14

    .line 84
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdib:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdid:I

    add-int/2addr v8, v15

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzapr;->height:I

    goto :goto_3

    .line 80
    :cond_12
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdia:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdic:I

    add-int/2addr v5, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->width:I

    div-int/2addr v8, v13

    add-int/2addr v5, v8

    add-int/lit8 v5, v5, -0x19

    .line 81
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdib:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdid:I

    add-int/2addr v8, v15

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzapr;->height:I

    goto :goto_3

    .line 77
    :cond_13
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdia:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdic:I

    add-int/2addr v5, v8

    .line 78
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdib:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdid:I

    add-int/2addr v8, v15

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzapr;->height:I

    :goto_3
    add-int/2addr v8, v15

    sub-int/2addr v8, v14

    goto :goto_5

    .line 74
    :cond_14
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdia:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdic:I

    add-int/2addr v5, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->width:I

    div-int/2addr v8, v13

    add-int/2addr v5, v8

    add-int/lit8 v5, v5, -0x19

    .line 75
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdib:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdid:I

    add-int/2addr v8, v15

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzapr;->height:I

    div-int/2addr v15, v13

    add-int/2addr v8, v15

    add-int/lit8 v8, v8, -0x19

    goto :goto_5

    .line 71
    :cond_15
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdia:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdic:I

    add-int/2addr v5, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->width:I

    div-int/2addr v8, v13

    add-int/2addr v5, v8

    add-int/lit8 v5, v5, -0x19

    .line 72
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdib:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdid:I

    goto :goto_4

    .line 68
    :cond_16
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdia:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdic:I

    add-int/2addr v5, v8

    .line 69
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdib:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdid:I

    :goto_4
    add-int/2addr v8, v15

    :goto_5
    if-ltz v5, :cond_1a

    add-int/2addr v5, v14

    if-gt v5, v7, :cond_1a

    .line 88
    aget v5, v6, v4

    if-lt v8, v5, :cond_1a

    add-int/2addr v8, v14

    aget v5, v6, v3

    if-le v8, v5, :cond_17

    goto :goto_8

    :cond_17
    const/4 v5, 0x1

    goto :goto_9

    :cond_18
    :goto_6
    const-string v5, "Height is too small or too large."

    .line 61
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V

    goto :goto_8

    :cond_19
    :goto_7
    const-string v5, "Width is too small or too large."

    .line 58
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzbad;->zzep(Ljava/lang/String;)V

    :cond_1a
    :goto_8
    const/4 v5, 0x0

    :goto_9
    if-nez v5, :cond_1b

    const/4 v5, 0x0

    goto :goto_c

    .line 93
    :cond_1b
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdhz:Z

    if-eqz v5, :cond_1c

    new-array v5, v13, [I

    .line 94
    iget v6, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdia:I

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdic:I

    add-int/2addr v6, v7

    aput v6, v5, v4

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdib:I

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdid:I

    add-int/2addr v6, v7

    aput v6, v5, v3

    goto :goto_c

    .line 95
    :cond_1c
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdhn:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Landroid/app/Activity;)[I

    move-result-object v5

    .line 96
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdhn:Landroid/app/Activity;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzaxi;->zzf(Landroid/app/Activity;)[I

    move-result-object v6

    .line 97
    aget v5, v5, v4

    .line 98
    iget v7, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdia:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdic:I

    add-int/2addr v7, v8

    .line 99
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdib:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdid:I

    add-int/2addr v8, v15

    if-gez v7, :cond_1d

    const/4 v5, 0x0

    goto :goto_a

    .line 102
    :cond_1d
    iget v15, v1, Lcom/google/android/gms/internal/ads/zzapr;->width:I

    add-int/2addr v15, v7

    if-le v15, v5, :cond_1e

    .line 103
    iget v7, v1, Lcom/google/android/gms/internal/ads/zzapr;->width:I

    sub-int/2addr v5, v7

    goto :goto_a

    :cond_1e
    move v5, v7

    .line 104
    :goto_a
    aget v7, v6, v4

    if-ge v8, v7, :cond_1f

    .line 105
    aget v8, v6, v4

    goto :goto_b

    .line 106
    :cond_1f
    iget v7, v1, Lcom/google/android/gms/internal/ads/zzapr;->height:I

    add-int/2addr v7, v8

    aget v15, v6, v3

    if-le v7, v15, :cond_20

    .line 107
    aget v6, v6, v3

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzapr;->height:I

    sub-int v8, v6, v7

    :cond_20
    :goto_b
    new-array v6, v13, [I

    aput v5, v6, v4

    aput v8, v6, v3

    move-object v5, v6

    :goto_c
    if-nez v5, :cond_21

    const-string v0, "Resize location out of screen or close button is not visible."

    .line 111
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaqb;->zzdh(Ljava/lang/String;)V

    .line 112
    monitor-exit v2

    return-void

    .line 113
    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpa()Lcom/google/android/gms/internal/ads/zzazt;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdhn:Landroid/app/Activity;

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzapr;->width:I

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzazt;->zza(Landroid/content/Context;I)I

    move-result v6

    .line 114
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpa()Lcom/google/android/gms/internal/ads/zzazt;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdhn:Landroid/app/Activity;

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->height:I

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzazt;->zza(Landroid/content/Context;I)I

    move-result v7

    .line 115
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzbgz;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_2e

    .line 116
    instance-of v15, v8, Landroid/view/ViewGroup;

    if-eqz v15, :cond_2e

    .line 117
    move-object v15, v8

    check-cast v15, Landroid/view/ViewGroup;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzbgz;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v15, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 118
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdih:Landroid/widget/PopupWindow;

    if-nez v9, :cond_22

    .line 119
    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdij:Landroid/view/ViewGroup;

    .line 120
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzbgz;->getView()Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzaxi;->zzk(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 121
    new-instance v9, Landroid/widget/ImageView;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdhn:Landroid/app/Activity;

    invoke-direct {v9, v15}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdif:Landroid/widget/ImageView;

    .line 122
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdif:Landroid/widget/ImageView;

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 123
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzbgz;->zzaag()Lcom/google/android/gms/internal/ads/zzbin;

    move-result-object v8

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdie:Lcom/google/android/gms/internal/ads/zzbin;

    .line 124
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdij:Landroid/view/ViewGroup;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdif:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_d

    .line 126
    :cond_22
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdih:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    .line 129
    :goto_d
    new-instance v8, Landroid/widget/RelativeLayout;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdhn:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdii:Landroid/widget/RelativeLayout;

    .line 130
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdii:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 131
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdii:Landroid/widget/RelativeLayout;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdii:Landroid/widget/RelativeLayout;

    invoke-static {v8, v6, v7, v4}, Lcom/google/android/gms/internal/ads/zzaxi;->zza(Landroid/view/View;IIZ)Landroid/widget/PopupWindow;

    move-result-object v8

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdih:Landroid/widget/PopupWindow;

    .line 133
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdih:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 134
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdih:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 135
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdih:Landroid/widget/PopupWindow;

    iget-boolean v9, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdhz:Z

    if-nez v9, :cond_23

    const/4 v9, 0x1

    goto :goto_e

    :cond_23
    const/4 v9, 0x0

    :goto_e
    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 136
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdii:Landroid/widget/RelativeLayout;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

    .line 137
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzbgz;->getView()Landroid/view/View;

    move-result-object v9

    .line 138
    invoke-virtual {v8, v9, v12, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 139
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdhn:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdig:Landroid/widget/LinearLayout;

    .line 140
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 141
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpa()Lcom/google/android/gms/internal/ads/zzazt;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdhn:Landroid/app/Activity;

    invoke-static {v9, v14}, Lcom/google/android/gms/internal/ads/zzazt;->zza(Landroid/content/Context;I)I

    move-result v9

    .line 142
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpa()Lcom/google/android/gms/internal/ads/zzazt;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdhn:Landroid/app/Activity;

    invoke-static {v15, v14}, Lcom/google/android/gms/internal/ads/zzazt;->zza(Landroid/content/Context;I)I

    move-result v14

    invoke-direct {v8, v9, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 143
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdhy:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_1

    goto :goto_f

    :sswitch_6
    const-string v14, "top-center"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    const/4 v12, 0x1

    goto :goto_f

    :sswitch_7
    const-string v14, "bottom-center"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    const/4 v12, 0x4

    goto :goto_f

    :sswitch_8
    const-string v14, "bottom-right"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    const/4 v12, 0x5

    goto :goto_f

    :sswitch_9
    const-string v14, "bottom-left"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    const/4 v12, 0x3

    goto :goto_f

    :sswitch_a
    const-string v14, "top-left"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    const/4 v12, 0x0

    goto :goto_f

    :sswitch_b
    const-string v14, "center"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    const/4 v12, 0x2

    :cond_24
    :goto_f
    const/16 v9, 0x9

    const/16 v14, 0xa

    if-eqz v12, :cond_2a

    const/16 v15, 0xe

    if-eq v12, v3, :cond_29

    if-eq v12, v13, :cond_28

    const/16 v13, 0xc

    if-eq v12, v11, :cond_27

    if-eq v12, v10, :cond_26

    const/16 v9, 0xb

    const/4 v10, 0x5

    if-eq v12, v10, :cond_25

    .line 161
    invoke-virtual {v8, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 162
    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_10

    .line 158
    :cond_25
    invoke-virtual {v8, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 159
    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_10

    .line 155
    :cond_26
    invoke-virtual {v8, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 156
    invoke-virtual {v8, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_10

    .line 152
    :cond_27
    invoke-virtual {v8, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 153
    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_10

    :cond_28
    const/16 v9, 0xd

    .line 150
    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_10

    .line 147
    :cond_29
    invoke-virtual {v8, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 148
    invoke-virtual {v8, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_10

    .line 144
    :cond_2a
    invoke-virtual {v8, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 145
    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 163
    :goto_10
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdig:Landroid/widget/LinearLayout;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzaps;

    invoke-direct {v10, v1}, Lcom/google/android/gms/internal/ads/zzaps;-><init>(Lcom/google/android/gms/internal/ads/zzapr;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdig:Landroid/widget/LinearLayout;

    const-string v10, "Close button"

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdii:Landroid/widget/RelativeLayout;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdig:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :try_start_1
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdih:Landroid/widget/PopupWindow;

    .line 167
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 168
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpa()Lcom/google/android/gms/internal/ads/zzazt;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdhn:Landroid/app/Activity;

    aget v10, v5, v4

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzazt;->zza(Landroid/content/Context;I)I

    move-result v9

    .line 169
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpa()Lcom/google/android/gms/internal/ads/zzazt;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdhn:Landroid/app/Activity;

    aget v11, v5, v3

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zzazt;->zza(Landroid/content/Context;I)I

    move-result v10

    .line 170
    invoke-virtual {v8, v0, v4, v9, v10}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    :try_start_2
    aget v0, v5, v4

    aget v8, v5, v3

    .line 181
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdal:Lcom/google/android/gms/internal/ads/zzaqc;

    if-eqz v9, :cond_2b

    .line 182
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdal:Lcom/google/android/gms/internal/ads/zzaqc;

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzapr;->width:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzapr;->height:I

    invoke-interface {v9, v0, v8, v10, v11}, Lcom/google/android/gms/internal/ads/zzaqc;->zzc(IIII)V

    .line 183
    :cond_2b
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzbin;->zzr(II)Lcom/google/android/gms/internal/ads/zzbin;

    move-result-object v6

    invoke-interface {v0, v6}, Lcom/google/android/gms/internal/ads/zzbgz;->zza(Lcom/google/android/gms/internal/ads/zzbin;)V

    .line 184
    aget v0, v5, v4

    aget v3, v5, v3

    .line 185
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdhn:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzaxi;->zzf(Landroid/app/Activity;)[I

    move-result-object v5

    aget v4, v5, v4

    sub-int/2addr v3, v4

    .line 186
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzapr;->width:I

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzapr;->height:I

    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzaqb;->zza(IIII)V

    const-string v0, "resized"

    .line 187
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaqb;->zzdj(Ljava/lang/String;)V

    .line 188
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    const-string v3, "Cannot show popup window: "

    .line 173
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2c

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_2c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_11
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaqb;->zzdh(Ljava/lang/String;)V

    .line 174
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdii:Landroid/widget/RelativeLayout;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbgz;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 175
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdij:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2d

    .line 176
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdij:Landroid/view/ViewGroup;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdif:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 177
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdij:Landroid/view/ViewGroup;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbgz;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 178
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzapr;->zzdie:Lcom/google/android/gms/internal/ads/zzbin;

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzbgz;->zza(Lcom/google/android/gms/internal/ads/zzbin;)V

    .line 179
    :cond_2d
    monitor-exit v2

    return-void

    :cond_2e
    const-string v0, "Webview is detached, probably in the middle of a resize or expand."

    .line 127
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaqb;->zzdh(Ljava/lang/String;)V

    .line 128
    monitor-exit v2

    return-void

    :cond_2f
    :goto_12
    const-string v0, "Activity context is not ready, cannot get window or decor view."

    .line 49
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaqb;->zzdh(Ljava/lang/String;)V

    .line 50
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    .line 188
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x3c587281 -> :sswitch_4
        -0x27103597 -> :sswitch_3
        0x455fe3fa -> :sswitch_2
        0x4ccee637 -> :sswitch_1
        0x68a23bcd -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x514d33ab -> :sswitch_b
        -0x3c587281 -> :sswitch_a
        -0x27103597 -> :sswitch_9
        0x455fe3fa -> :sswitch_8
        0x4ccee637 -> :sswitch_7
        0x68a23bcd -> :sswitch_6
    .end sparse-switch
.end method

.method public final zzi(II)V
    .locals 0

    .line 213
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdia:I

    .line 214
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdib:I

    return-void
.end method

.method public final zztb()Z
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapr;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdih:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 212
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzw(Z)V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapr;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdih:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2

    .line 191
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdih:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 192
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdii:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbgz;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 193
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdij:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdij:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdif:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 195
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdij:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbgz;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 196
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdbs:Lcom/google/android/gms/internal/ads/zzbgz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdie:Lcom/google/android/gms/internal/ads/zzbin;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzbgz;->zza(Lcom/google/android/gms/internal/ads/zzbin;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "default"

    .line 198
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqb;->zzdj(Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdal:Lcom/google/android/gms/internal/ads/zzaqc;

    if-eqz p1, :cond_1

    .line 200
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdal:Lcom/google/android/gms/internal/ads/zzaqc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqc;->zztc()V

    :cond_1
    const/4 p1, 0x0

    .line 201
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdih:Landroid/widget/PopupWindow;

    .line 202
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdii:Landroid/widget/RelativeLayout;

    .line 203
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdij:Landroid/view/ViewGroup;

    .line 204
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapr;->zzdig:Landroid/widget/LinearLayout;

    .line 205
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
