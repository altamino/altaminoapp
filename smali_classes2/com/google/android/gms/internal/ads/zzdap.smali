.class public final Lcom/google/android/gms/internal/ads/zzdap;
.super Lcom/google/android/gms/internal/ads/zzdob;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdpm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdap$zzb;,
        Lcom/google/android/gms/internal/ads/zzdap$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdob<",
        "Lcom/google/android/gms/internal/ads/zzdap;",
        "Lcom/google/android/gms/internal/ads/zzdap$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdpm;"
    }
.end annotation


# static fields
.field private static volatile zzdv:Lcom/google/android/gms/internal/ads/zzdpv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdpv<",
            "Lcom/google/android/gms/internal/ads/zzdap;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzgof:Lcom/google/android/gms/internal/ads/zzdoi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdoi<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/ads/zzdap$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzgoj:Lcom/google/android/gms/internal/ads/zzdap;


# instance fields
.field private zzdj:I

.field private zzgoe:Lcom/google/android/gms/internal/ads/zzdoh;

.field private zzgog:Ljava/lang/String;

.field private zzgoh:Ljava/lang/String;

.field private zzgoi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdaq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdaq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdap;->zzgof:Lcom/google/android/gms/internal/ads/zzdoi;

    .line 54
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdap;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdap;->zzgoj:Lcom/google/android/gms/internal/ads/zzdap;

    .line 55
    const-class v0, Lcom/google/android/gms/internal/ads/zzdap;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdap;->zzgoj:Lcom/google/android/gms/internal/ads/zzdap;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdob;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdob;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdob;->zzaxr()Lcom/google/android/gms/internal/ads/zzdoh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdap;->zzgoe:Lcom/google/android/gms/internal/ads/zzdoh;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdap;->zzgog:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdap;->zzgoh:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdap;->zzgoi:Ljava/lang/String;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzdap$zza;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdap;->zzgoe:Lcom/google/android/gms/internal/ads/zzdoh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdoj;->zzavi()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdap;->zzgoe:Lcom/google/android/gms/internal/ads/zzdoh;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v1, v1, 0x1

    .line 16
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdoh;->zzgo(I)Lcom/google/android/gms/internal/ads/zzdoh;

    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdap;->zzgoe:Lcom/google/android/gms/internal/ads/zzdoh;

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdap;->zzgoe:Lcom/google/android/gms/internal/ads/zzdoh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdap$zza;->zzac()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdoh;->zzgp(I)V

    return-void

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdap;Lcom/google/android/gms/internal/ads/zzdap$zza;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdap;->zza(Lcom/google/android/gms/internal/ads/zzdap$zza;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdap;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdap;->zzgc(Ljava/lang/String;)V

    return-void
.end method

.method public static zzani()Lcom/google/android/gms/internal/ads/zzdap$zzb;
    .locals 3

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdap;->zzgoj:Lcom/google/android/gms/internal/ads/zzdap;

    .line 26
    sget v1, Lcom/google/android/gms/internal/ads/zzdob$zze;->zzhho:I

    const/4 v2, 0x0

    .line 27
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzdap;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdap$zzb;

    return-object v0
.end method

.method static synthetic zzanj()Lcom/google/android/gms/internal/ads/zzdap;
    .locals 1

    .line 50
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdap;->zzgoj:Lcom/google/android/gms/internal/ads/zzdap;

    return-object v0
.end method

.method private final zzgc(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 22
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdap;->zzdj:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdap;->zzdj:I

    .line 23
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdap;->zzgog:Ljava/lang/String;

    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 30
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdar;->zzdi:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 49
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 47
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 38
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdap;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_1

    .line 40
    const-class p2, Lcom/google/android/gms/internal/ads/zzdap;

    monitor-enter p2

    .line 41
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdap;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_0

    .line 43
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdob$zzb;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzdap;->zzgoj:Lcom/google/android/gms/internal/ads/zzdap;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzdob$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzdob;)V

    .line 44
    sput-object p1, Lcom/google/android/gms/internal/ads/zzdap;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    .line 45
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 37
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdap;->zzgoj:Lcom/google/android/gms/internal/ads/zzdap;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v0, "zzdj"

    aput-object v0, p1, p2

    const-string/jumbo p2, "zzgoe"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdap$zza;->zzad()Lcom/google/android/gms/internal/ads/zzdog;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string/jumbo p3, "zzgog"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string/jumbo p3, "zzgoh"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string/jumbo p3, "zzgoi"

    aput-object p3, p1, p2

    .line 36
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdap;->zzgoj:Lcom/google/android/gms/internal/ads/zzdap;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001e\u0002\u0008\u0000\u0003\u0008\u0001\u0004\u0008\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Lcom/google/android/gms/internal/ads/zzdpk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 32
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdap$zzb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdap$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzdaq;)V

    return-object p1

    .line 31
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdap;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdap;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
