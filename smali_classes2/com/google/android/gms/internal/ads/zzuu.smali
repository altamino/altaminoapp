.class public final Lcom/google/android/gms/internal/ads/zzuu;
.super Ljava/lang/Thread;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private started:Z

.field private final zzbtz:I

.field private final zzbub:I

.field private final zzbuc:Z

.field private zzbuz:Z

.field private zzbva:Z

.field private final zzbvb:Lcom/google/android/gms/internal/ads/zzup;

.field private final zzbvc:I

.field private final zzbvd:I

.field private final zzbve:I

.field private final zzbvf:I

.field private final zzbvg:I

.field private final zzbvh:I

.field private final zzbvi:Ljava/lang/String;

.field private final zzbvj:Z

.field private final zzbvk:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzup;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzup;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzuu;-><init>(Lcom/google/android/gms/internal/ads/zzup;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzup;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->started:Z

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbuz:Z

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbva:Z

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbvb:Lcom/google/android/gms/internal/ads/zzup;

    .line 8
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->lock:Ljava/lang/Object;

    .line 9
    sget-object p1, Lcom/google/android/gms/internal/ads/zzacu;->zzcnb:Lcom/google/android/gms/internal/ads/zzacj;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbtz:I

    .line 12
    sget-object p1, Lcom/google/android/gms/internal/ads/zzacu;->zzcnc:Lcom/google/android/gms/internal/ads/zzacj;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbvd:I

    .line 15
    sget-object p1, Lcom/google/android/gms/internal/ads/zzacu;->zzcnd:Lcom/google/android/gms/internal/ads/zzacj;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbub:I

    .line 18
    sget-object p1, Lcom/google/android/gms/internal/ads/zzacu;->zzcne:Lcom/google/android/gms/internal/ads/zzacj;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbve:I

    .line 21
    sget-object p1, Lcom/google/android/gms/internal/ads/zzacu;->zzcng:Lcom/google/android/gms/internal/ads/zzacj;

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object p1

    .line 23
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbvf:I

    .line 24
    sget-object p1, Lcom/google/android/gms/internal/ads/zzacu;->zzcnh:Lcom/google/android/gms/internal/ads/zzacj;

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbvg:I

    .line 27
    sget-object p1, Lcom/google/android/gms/internal/ads/zzacu;->zzcni:Lcom/google/android/gms/internal/ads/zzacj;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object p1

    .line 29
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbvh:I

    .line 30
    sget-object p1, Lcom/google/android/gms/internal/ads/zzacu;->zzcnf:Lcom/google/android/gms/internal/ads/zzacj;

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object p1

    .line 32
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbvc:I

    .line 33
    sget-object p1, Lcom/google/android/gms/internal/ads/zzacu;->zzcnk:Lcom/google/android/gms/internal/ads/zzacj;

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object p1

    .line 35
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbvi:Ljava/lang/String;

    .line 36
    sget-object p1, Lcom/google/android/gms/internal/ads/zzacu;->zzcnl:Lcom/google/android/gms/internal/ads/zzacj;

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object p1

    .line 38
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbvj:Z

    .line 39
    sget-object p1, Lcom/google/android/gms/internal/ads/zzacu;->zzcnp:Lcom/google/android/gms/internal/ads/zzacj;

    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object p1

    .line 41
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbuc:Z

    .line 42
    sget-object p1, Lcom/google/android/gms/internal/ads/zzacu;->zzcnq:Lcom/google/android/gms/internal/ads/zzacj;

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object p1

    .line 44
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbvk:Z

    const-string p1, "ContentFetchTask"

    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzuo;)Lcom/google/android/gms/internal/ads/zzuy;
    .locals 10
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 149
    new-instance p1, Lcom/google/android/gms/internal/ads/zzuy;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/ads/zzuy;-><init>(Lcom/google/android/gms/internal/ads/zzuu;II)V

    return-object p1

    .line 150
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 151
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    .line 152
    instance-of v1, p1, Landroid/widget/TextView;

    const/4 v9, 0x1

    if-eqz v1, :cond_2

    instance-of v1, p1, Landroid/widget/EditText;

    if-nez v1, :cond_2

    .line 153
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    .line 154
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 155
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 156
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float v8, p1

    move-object v2, p2

    .line 159
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzuo;->zzb(Ljava/lang/String;ZFFFF)V

    .line 160
    new-instance p1, Lcom/google/android/gms/internal/ads/zzuy;

    invoke-direct {p1, p0, v9, v0}, Lcom/google/android/gms/internal/ads/zzuy;-><init>(Lcom/google/android/gms/internal/ads/zzuu;II)V

    return-object p1

    .line 161
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzuy;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/ads/zzuy;-><init>(Lcom/google/android/gms/internal/ads/zzuu;II)V

    return-object p1

    .line 162
    :cond_2
    instance-of v1, p1, Landroid/webkit/WebView;

    if-eqz v1, :cond_5

    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzbgz;

    if-nez v1, :cond_5

    .line 163
    check-cast p1, Landroid/webkit/WebView;

    .line 164
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKat()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    .line 166
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzuo;->zzmr()V

    .line 167
    new-instance v1, Lcom/google/android/gms/internal/ads/zzuw;

    invoke-direct {v1, p0, p2, p1, v4}, Lcom/google/android/gms/internal/ads/zzuw;-><init>(Lcom/google/android/gms/internal/ads/zzuu;Lcom/google/android/gms/internal/ads/zzuo;Landroid/webkit/WebView;Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_4

    .line 170
    new-instance p1, Lcom/google/android/gms/internal/ads/zzuy;

    invoke-direct {p1, p0, v0, v9}, Lcom/google/android/gms/internal/ads/zzuy;-><init>(Lcom/google/android/gms/internal/ads/zzuu;II)V

    return-object p1

    .line 171
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzuy;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/ads/zzuy;-><init>(Lcom/google/android/gms/internal/ads/zzuu;II)V

    return-object p1

    .line 172
    :cond_5
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    .line 173
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 176
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 177
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/google/android/gms/internal/ads/zzuu;->zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzuo;)Lcom/google/android/gms/internal/ads/zzuy;

    move-result-object v3

    .line 178
    iget v4, v3, Lcom/google/android/gms/internal/ads/zzuy;->zzbvs:I

    add-int/2addr v1, v4

    .line 179
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzuy;->zzbvt:I

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 181
    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzuy;

    invoke-direct {p1, p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzuy;-><init>(Lcom/google/android/gms/internal/ads/zzuu;II)V

    return-object p1

    .line 182
    :cond_7
    new-instance p1, Lcom/google/android/gms/internal/ads/zzuy;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/ads/zzuy;-><init>(Lcom/google/android/gms/internal/ads/zzuu;II)V

    return-object p1
.end method

.method private static zzmw()Z
    .locals 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 118
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlj()Lcom/google/android/gms/internal/ads/zzuq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzuq;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-string v2, "activity"

    .line 122
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    const-string v3, "keyguard"

    .line 124
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    if-eqz v2, :cond_5

    if-nez v3, :cond_1

    goto :goto_1

    .line 128
    :cond_1
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    return v0

    .line 131
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 132
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v6, :cond_3

    .line 134
    iget v2, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v2, v4, :cond_5

    .line 136
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "power"

    .line 137
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    .line 140
    :cond_4
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    :goto_1
    return v0

    :catchall_0
    move-exception v1

    .line 146
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlk()Lcom/google/android/gms/internal/ads/zzawm;

    move-result-object v2

    const-string v3, "ContentFetchTask.isInForeground"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzawm;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v0
.end method

.method private final zzmy()V
    .locals 4

    .line 217
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 218
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbuz:Z

    .line 219
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbuz:Z

    const/16 v2, 0x2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ContentFetchThread: paused, mPause = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbad;->zzdp(Ljava/lang/String;)V

    .line 220
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 55
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuu;->zzmw()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlj()Lcom/google/android/gms/internal/ads/zzuq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzuq;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ContentFetchThread: no activity. Sleeping."

    .line 58
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzdp(Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzmy()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :cond_0
    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 63
    :try_start_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 64
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 67
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlk()Lcom/google/android/gms/internal/ads/zzawm;

    move-result-object v2

    const-string v3, "ContentFetchTask.extractContent"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzawm;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "Failed getting root view of activity. Content not extracted."

    .line 68
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzdp(Ljava/lang/String;)V

    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    if-eqz v1, :cond_3

    .line 72
    new-instance v0, Lcom/google/android/gms/internal/ads/zzuv;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzuv;-><init>(Lcom/google/android/gms/internal/ads/zzuu;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_2
    const-string v0, "ContentFetchTask: sleeping"

    .line 74
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzdp(Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzuu;->zzmy()V

    .line 76
    :cond_3
    :goto_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbvc:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v1, "Error in ContentFetchTask"

    .line 82
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlk()Lcom/google/android/gms/internal/ads/zzawm;

    move-result-object v1

    const-string v2, "ContentFetchTask.run"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzawm;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v1, "Error in ContentFetchTask"

    .line 79
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :catch_3
    :goto_4
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbuz:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_4

    :try_start_4
    const-string v1, "ContentFetchTask: waiting"

    .line 86
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbad;->zzdp(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzuu;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 91
    :cond_4
    :try_start_5
    monitor-exit v0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method

.method public final wakeup()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 213
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbuz:Z

    .line 214
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzuu;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    const-string v1, "ContentFetchThread: wakeup"

    .line 215
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbad;->zzdp(Ljava/lang/String;)V

    .line 216
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzuo;Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 10
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 183
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzuo;->zzmq()V

    .line 184
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "text"

    .line 186
    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbvj:Z

    if-nez p3, :cond_0

    invoke-virtual {p2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 189
    invoke-virtual {p2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 190
    invoke-virtual {p2}, Landroid/webkit/WebView;->getX()F

    move-result v6

    .line 191
    invoke-virtual {p2}, Landroid/webkit/WebView;->getY()F

    move-result v7

    .line 192
    invoke-virtual {p2}, Landroid/webkit/WebView;->getWidth()I

    move-result p3

    int-to-float v8, p3

    .line 193
    invoke-virtual {p2}, Landroid/webkit/WebView;->getHeight()I

    move-result p2

    int-to-float v9, p2

    move-object v3, p1

    move v5, p4

    .line 194
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzuo;->zza(Ljava/lang/String;ZFFFF)V

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {p2}, Landroid/webkit/WebView;->getX()F

    move-result v4

    .line 197
    invoke-virtual {p2}, Landroid/webkit/WebView;->getY()F

    move-result v5

    .line 198
    invoke-virtual {p2}, Landroid/webkit/WebView;->getWidth()I

    move-result p3

    int-to-float v6, p3

    .line 199
    invoke-virtual {p2}, Landroid/webkit/WebView;->getHeight()I

    move-result p2

    int-to-float v7, p2

    move-object v1, p1

    move v3, p4

    .line 200
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzuo;->zza(Ljava/lang/String;ZFFFF)V

    .line 201
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzuo;->zzml()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 202
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbvb:Lcom/google/android/gms/internal/ads/zzup;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzup;->zzb(Lcom/google/android/gms/internal/ads/zzuo;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    const-string p2, "Failed to get webview content."

    .line 208
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlk()Lcom/google/android/gms/internal/ads/zzawm;

    move-result-object p2

    const-string p3, "ContentFetchTask.processWebViewContent"

    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzawm;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :catch_0
    const-string p1, "Json string may be malformed."

    .line 205
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzdp(Ljava/lang/String;)V

    return-void
.end method

.method final zzi(Landroid/view/View;)V
    .locals 10
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 92
    :try_start_0
    new-instance v9, Lcom/google/android/gms/internal/ads/zzuo;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbtz:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbvd:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbub:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbve:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbvf:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbvg:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbvh:I

    iget-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbuc:Z

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzuo;-><init>(IIIIIIIZ)V

    .line 93
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlj()Lcom/google/android/gms/internal/ads/zzuq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzuq;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbvi:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzacu;->zzcnj:Lcom/google/android/gms/internal/ads/zzacj;

    .line 99
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v2

    .line 100
    check-cast v2, Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbvi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-direct {p0, p1, v9}, Lcom/google/android/gms/internal/ads/zzuu;->zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzuo;)Lcom/google/android/gms/internal/ads/zzuy;

    move-result-object p1

    .line 105
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzuo;->zzmt()V

    .line 106
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzuy;->zzbvs:I

    if-nez v0, :cond_1

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzuy;->zzbvt:I

    if-nez v0, :cond_1

    return-void

    .line 108
    :cond_1
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzuy;->zzbvt:I

    if-nez v0, :cond_2

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzuo;->zzmu()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 110
    :cond_2
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzuy;->zzbvt:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbvb:Lcom/google/android/gms/internal/ads/zzup;

    invoke-virtual {p1, v9}, Lcom/google/android/gms/internal/ads/zzup;->zza(Lcom/google/android/gms/internal/ads/zzuo;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 112
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbvb:Lcom/google/android/gms/internal/ads/zzup;

    invoke-virtual {p1, v9}, Lcom/google/android/gms/internal/ads/zzup;->zzc(Lcom/google/android/gms/internal/ads/zzuo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Exception in fetchContentOnUIThread"

    .line 115
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlk()Lcom/google/android/gms/internal/ads/zzawm;

    move-result-object v0

    const-string v1, "ContentFetchTask.fetchContent"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzawm;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final zzmv()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzuu;->started:Z

    if-eqz v1, :cond_0

    const-string v1, "Content hash thread already started, quiting..."

    .line 49
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbad;->zzdp(Ljava/lang/String;)V

    .line 50
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 51
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzuu;->started:Z

    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_0
    move-exception v1

    .line 52
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final zzmx()Lcom/google/android/gms/internal/ads/zzuo;
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbvb:Lcom/google/android/gms/internal/ads/zzup;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbvk:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzup;->zzo(Z)Lcom/google/android/gms/internal/ads/zzuo;

    move-result-object v0

    return-object v0
.end method

.method public final zzmz()Z
    .locals 1

    .line 221
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzbuz:Z

    return v0
.end method
