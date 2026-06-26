.class public final Lcom/google/android/gms/internal/ads/zzauq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzavb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzard;
.end annotation


# static fields
.field private static zzdqz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private static zzdra:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final zzdoc:Lcom/google/android/gms/internal/ads/zzauy;

.field private final zzdrb:Lcom/google/android/gms/internal/ads/zzdsj;

.field private final zzdrc:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzdsp;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdrd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdre:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdrf:Lcom/google/android/gms/internal/ads/zzavd;

.field private zzdrg:Z

.field private final zzdrh:Lcom/google/android/gms/internal/ads/zzave;

.field private zzdri:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzdrj:Z

.field private zzdrk:Z

.field private zzdrl:Z

.field private final zzlj:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzauq;->zzdqz:Ljava/util/List;

    .line 178
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzauq;->zzdra:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbai;Lcom/google/android/gms/internal/ads/zzauy;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzavd;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrd:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdre:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->lock:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdri:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrj:Z

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrk:Z

    .line 8
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrl:Z

    const-string v0, "SafeBrowsing config is not present."

    .line 9
    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzlj:Landroid/content/Context;

    .line 12
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrc:Ljava/util/LinkedHashMap;

    .line 13
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrf:Lcom/google/android/gms/internal/ads/zzavd;

    .line 14
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdoc:Lcom/google/android/gms/internal/ads/zzauy;

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdoc:Lcom/google/android/gms/internal/ads/zzauy;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzauy;->zzdrv:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 16
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdri:Ljava/util/HashSet;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdri:Ljava/util/HashSet;

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string p5, "cookie"

    invoke-virtual {p5, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 20
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdsj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdsj;-><init>()V

    const/16 p3, 0x8

    .line 21
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p1, Lcom/google/android/gms/internal/ads/zzdsj;->zzhrv:Ljava/lang/Integer;

    .line 22
    iput-object p4, p1, Lcom/google/android/gms/internal/ads/zzdsj;->url:Ljava/lang/String;

    .line 23
    iput-object p4, p1, Lcom/google/android/gms/internal/ads/zzdsj;->zzhrx:Ljava/lang/String;

    .line 24
    new-instance p3, Lcom/google/android/gms/internal/ads/zzdsk;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/zzdsk;-><init>()V

    iput-object p3, p1, Lcom/google/android/gms/internal/ads/zzdsj;->zzhrz:Lcom/google/android/gms/internal/ads/zzdsk;

    .line 25
    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzdsj;->zzhrz:Lcom/google/android/gms/internal/ads/zzdsk;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdoc:Lcom/google/android/gms/internal/ads/zzauy;

    iget-object p4, p4, Lcom/google/android/gms/internal/ads/zzauy;->zzdrr:Ljava/lang/String;

    iput-object p4, p3, Lcom/google/android/gms/internal/ads/zzdsk;->zzdrr:Ljava/lang/String;

    .line 26
    new-instance p3, Lcom/google/android/gms/internal/ads/zzdsq;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/zzdsq;-><init>()V

    .line 27
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzbai;->zzbsx:Ljava/lang/String;

    iput-object p2, p3, Lcom/google/android/gms/internal/ads/zzdsq;->zzhte:Ljava/lang/String;

    .line 28
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzlj:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p3, Lcom/google/android/gms/internal/ads/zzdsq;->zzhtg:Ljava/lang/Boolean;

    .line 29
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object p2

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzlj:Landroid/content/Context;

    invoke-virtual {p2, p4}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result p2

    int-to-long p4, p2

    const-wide/16 v0, 0x0

    cmp-long p2, p4, v0

    if-lez p2, :cond_2

    .line 31
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p3, Lcom/google/android/gms/internal/ads/zzdsq;->zzhtf:Ljava/lang/Long;

    .line 32
    :cond_2
    iput-object p3, p1, Lcom/google/android/gms/internal/ads/zzdsj;->zzhsj:Lcom/google/android/gms/internal/ads/zzdsq;

    .line 34
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrb:Lcom/google/android/gms/internal/ads/zzdsj;

    .line 35
    new-instance p1, Lcom/google/android/gms/internal/ads/zzave;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzlj:Landroid/content/Context;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdoc:Lcom/google/android/gms/internal/ads/zzauy;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzauy;->zzdry:Ljava/util/List;

    invoke-direct {p1, p2, p3, p0}, Lcom/google/android/gms/internal/ads/zzave;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzauq;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrh:Lcom/google/android/gms/internal/ads/zzave;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzauq;)Ljava/lang/Object;
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzauq;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzauq;)Lcom/google/android/gms/internal/ads/zzdsj;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrb:Lcom/google/android/gms/internal/ads/zzdsj;

    return-object p0
.end method

.method private final zzdn(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsp;
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrc:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdsp;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 97
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static final synthetic zzdo(Ljava/lang/String;)Ljava/lang/Void;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private final zzug()Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzbbh<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 111
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrg:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdoc:Lcom/google/android/gms/internal/ads/zzauy;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzauy;->zzdrx:Z

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrl:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdoc:Lcom/google/android/gms/internal/ads/zzauy;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzauy;->zzdrw:Z

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrg:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdoc:Lcom/google/android/gms/internal/ads/zzauy;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzauy;->zzdru:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 113
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbar;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbbg;

    move-result-object v0

    return-object v0

    .line 114
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrb:Lcom/google/android/gms/internal/ads/zzdsj;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrc:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    new-array v5, v5, [Lcom/google/android/gms/internal/ads/zzdsp;

    iput-object v5, v4, Lcom/google/android/gms/internal/ads/zzdsj;->zzhsa:[Lcom/google/android/gms/internal/ads/zzdsp;

    .line 116
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrc:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrb:Lcom/google/android/gms/internal/ads/zzdsj;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzdsj;->zzhsa:[Lcom/google/android/gms/internal/ads/zzdsp;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 117
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrb:Lcom/google/android/gms/internal/ads/zzdsj;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrd:Ljava/util/List;

    new-array v6, v2, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, v4, Lcom/google/android/gms/internal/ads/zzdsj;->zzhsk:[Ljava/lang/String;

    .line 118
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrb:Lcom/google/android/gms/internal/ads/zzdsj;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdre:Ljava/util/List;

    new-array v6, v2, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, v4, Lcom/google/android/gms/internal/ads/zzdsj;->zzhsl:[Ljava/lang/String;

    .line 119
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzava;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrb:Lcom/google/android/gms/internal/ads/zzdsj;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzdsj;->url:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrb:Lcom/google/android/gms/internal/ads/zzdsj;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzdsj;->zzhsb:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x35

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Sending SB report\n  url: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n  clickUrl: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n  resources: \n"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrb:Lcom/google/android/gms/internal/ads/zzdsj;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzdsj;->zzhsa:[Lcom/google/android/gms/internal/ads/zzdsp;

    array-length v6, v5

    :goto_1
    if-ge v2, v6, :cond_5

    aget-object v7, v5, v2

    const-string v8, "    ["

    .line 122
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzdsp;->zzhtd:[Ljava/lang/String;

    array-length v8, v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] "

    .line 124
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzdsp;->url:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 127
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzava;->zzdp(Ljava/lang/String;)V

    .line 128
    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrb:Lcom/google/android/gms/internal/ads/zzdsj;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdrw;->zza(Lcom/google/android/gms/internal/ads/zzdrw;)[B

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdoc:Lcom/google/android/gms/internal/ads/zzauy;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzauy;->zzdrs:Ljava/lang/String;

    .line 129
    new-instance v5, Lcom/google/android/gms/internal/ads/zzayu;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzlj:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ads/zzayu;-><init>(Landroid/content/Context;)V

    .line 131
    invoke-virtual {v5, v1, v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzayu;->zza(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object v1

    .line 132
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzava;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 133
    new-instance v2, Lcom/google/android/gms/internal/ads/zzauv;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzauv;-><init>(Lcom/google/android/gms/internal/ads/zzauq;)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzaxg;->zzdvp:Lcom/google/android/gms/internal/ads/zzbbl;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbbh;->zza(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 134
    :cond_7
    sget-object v2, Lcom/google/android/gms/internal/ads/zzaus;->zzdrn:Lcom/google/android/gms/internal/ads/zzbam;

    .line 135
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbbm;->zzeaf:Ljava/util/concurrent/Executor;

    .line 136
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbar;->zza(Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzbam;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object v1

    .line 137
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 138
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method static synthetic zzuh()Ljava/util/List;
    .locals 1

    .line 175
    sget-object v0, Lcom/google/android/gms/internal/ads/zzauq;->zzdqz:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Ljava/util/Map;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    if-ne p3, v1, :cond_0

    const/4 v2, 0x1

    .line 55
    :try_start_0
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrl:Z

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrc:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne p3, v1, :cond_1

    .line 58
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrc:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdsp;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzdsp;->zzhtc:Ljava/lang/Integer;

    .line 59
    :cond_1
    monitor-exit v0

    return-void

    .line 60
    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdsp;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdsp;-><init>()V

    .line 61
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, v1, Lcom/google/android/gms/internal/ads/zzdsp;->zzhtc:Ljava/lang/Integer;

    .line 62
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrc:Ljava/util/LinkedHashMap;

    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, v1, Lcom/google/android/gms/internal/ads/zzdsp;->zzhsw:Ljava/lang/Integer;

    .line 63
    iput-object p1, v1, Lcom/google/android/gms/internal/ads/zzdsp;->url:Ljava/lang/String;

    .line 64
    new-instance p3, Lcom/google/android/gms/internal/ads/zzdsm;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/zzdsm;-><init>()V

    iput-object p3, v1, Lcom/google/android/gms/internal/ads/zzdsp;->zzhsx:Lcom/google/android/gms/internal/ads/zzdsm;

    .line 65
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdri:Ljava/util/HashSet;

    invoke-virtual {p3}, Ljava/util/HashSet;->size()I

    move-result p3

    if-lez p3, :cond_7

    if-eqz p2, :cond_7

    .line 66
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :try_start_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v3, ""

    .line 69
    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v2, ""

    .line 70
    :goto_2
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 71
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdri:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    .line 73
    :cond_5
    new-instance v4, Lcom/google/android/gms/internal/ads/zzdsl;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzdsl;-><init>()V

    const-string v5, "UTF-8"

    .line 74
    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, v4, Lcom/google/android/gms/internal/ads/zzdsl;->zzhsn:[B

    const-string v3, "UTF-8"

    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v4, Lcom/google/android/gms/internal/ads/zzdsl;->zzhso:[B

    .line 76
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v2, "Cannot convert string to bytes, skip header."

    .line 79
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzava;->zzdp(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_6
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Lcom/google/android/gms/internal/ads/zzdsl;

    .line 82
    invoke-interface {p3, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 83
    iget-object p3, v1, Lcom/google/android/gms/internal/ads/zzdsp;->zzhsx:Lcom/google/android/gms/internal/ads/zzdsm;

    iput-object p2, p3, Lcom/google/android/gms/internal/ads/zzdsm;->zzhsq:[Lcom/google/android/gms/internal/ads/zzdsl;

    .line 84
    :cond_7
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrc:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final zza([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrh:Lcom/google/android/gms/internal/ads/zzave;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzave;->zzb([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public final zzdk(Ljava/lang/String;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrb:Lcom/google/android/gms/internal/ads/zzdsj;

    iput-object p1, v1, Lcom/google/android/gms/internal/ads/zzdsj;->zzhsb:Ljava/lang/String;

    .line 40
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final zzdl(Ljava/lang/String;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrd:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final zzdm(Ljava/lang/String;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdre:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final synthetic zzh(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzbbh;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 143
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 144
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 145
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "matches"

    .line 146
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 148
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzauq;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 150
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzauq;->zzdn(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsp;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v2, "Cannot find the corresponding resource object for "

    .line 152
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzava;->zzdp(Ljava/lang/String;)V

    .line 153
    monitor-exit v3

    goto :goto_0

    .line 154
    :cond_2
    new-array v1, v4, [Ljava/lang/String;

    iput-object v1, v5, Lcom/google/android/gms/internal/ads/zzdsp;->zzhtd:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_3

    .line 156
    iget-object v7, v5, Lcom/google/android/gms/internal/ads/zzdsp;->zzhtd:[Ljava/lang/String;

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "threat_type"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 158
    :cond_3
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrg:Z

    if-lez v4, :cond_4

    const/4 v1, 0x1

    :cond_4
    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrg:Z

    .line 159
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 160
    :cond_5
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrg:Z

    if-eqz p1, :cond_6

    .line 161
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzauq;->lock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 162
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrb:Lcom/google/android/gms/internal/ads/zzdsj;

    const/16 v1, 0x9

    .line 163
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdsj;->zzhrv:Ljava/lang/Integer;

    .line 164
    monitor-exit p1

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    .line 165
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzauq;->zzug()Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object p1
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 168
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacu;->zzctj:Lcom/google/android/gms/internal/ads/zzacj;

    .line 169
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyt;->zzpe()Lcom/google/android/gms/internal/ads/zzacr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzacr;->zzd(Lcom/google/android/gms/internal/ads/zzacj;)Ljava/lang/Object;

    move-result-object v0

    .line 170
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Failed to get SafeBrowsing metadata"

    .line 171
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    :cond_7
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Safebrowsing report transmission failed."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbar;->zzd(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbbf;

    move-result-object p1

    return-object p1
.end method

.method public final zzj(Landroid/view/View;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdoc:Lcom/google/android/gms/internal/ads/zzauy;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzauy;->zzdrt:Z

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrk:Z

    if-eqz v0, :cond_1

    return-void

    .line 46
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzk;->zzlg()Lcom/google/android/gms/internal/ads/zzaxi;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzl(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "Failed to capture the webview bitmap."

    .line 48
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzava;->zzdp(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrk:Z

    .line 51
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaut;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzaut;-><init>(Lcom/google/android/gms/internal/ads/zzauq;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzuc()Lcom/google/android/gms/internal/ads/zzauy;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdoc:Lcom/google/android/gms/internal/ads/zzauy;

    return-object v0
.end method

.method public final zzud()Z
    .locals 1

    .line 41
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdoc:Lcom/google/android/gms/internal/ads/zzauy;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzauy;->zzdrt:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrk:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzue()V
    .locals 1

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrj:Z

    return-void
.end method

.method public final zzuf()V
    .locals 6

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrf:Lcom/google/android/gms/internal/ads/zzavd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzlj:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzdrc:Ljava/util/LinkedHashMap;

    .line 100
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzavd;->zza(Landroid/content/Context;Ljava/util/Set;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object v1

    .line 101
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaur;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzaur;-><init>(Lcom/google/android/gms/internal/ads/zzauq;)V

    .line 102
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbbm;->zzeaf:Ljava/util/concurrent/Executor;

    .line 103
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbar;->zza(Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzbal;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object v1

    const-wide/16 v2, 0xa

    .line 104
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzauq;->zzdra:Ljava/util/concurrent/ScheduledExecutorService;

    .line 105
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzbar;->zza(Lcom/google/android/gms/internal/ads/zzbbh;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzbbh;

    move-result-object v2

    .line 106
    new-instance v3, Lcom/google/android/gms/internal/ads/zzauu;

    invoke-direct {v3, p0, v2}, Lcom/google/android/gms/internal/ads/zzauu;-><init>(Lcom/google/android/gms/internal/ads/zzauq;Lcom/google/android/gms/internal/ads/zzbbh;)V

    .line 107
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbbm;->zzeaf:Ljava/util/concurrent/Executor;

    .line 108
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzbar;->zza(Lcom/google/android/gms/internal/ads/zzbbh;Lcom/google/android/gms/internal/ads/zzban;Ljava/util/concurrent/Executor;)V

    .line 109
    sget-object v1, Lcom/google/android/gms/internal/ads/zzauq;->zzdqz:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
