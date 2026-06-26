.class public final Lcom/google/android/gms/internal/ads/zzbp$zzg;
.super Lcom/google/android/gms/internal/ads/zzdob;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdpm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzbp$zzg$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdob<",
        "Lcom/google/android/gms/internal/ads/zzbp$zzg;",
        "Lcom/google/android/gms/internal/ads/zzbp$zzg$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdpm;"
    }
.end annotation


# static fields
.field private static volatile zzdv:Lcom/google/android/gms/internal/ads/zzdpv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdpv<",
            "Lcom/google/android/gms/internal/ads/zzbp$zzg;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzle:Lcom/google/android/gms/internal/ads/zzbp$zzg;


# instance fields
.field private zzdj:I

.field private zzgw:I

.field private zzgx:I

.field private zzkg:Lcom/google/android/gms/internal/ads/zzdmr;

.field private zzld:Lcom/google/android/gms/internal/ads/zzdoj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdoj<",
            "Lcom/google/android/gms/internal/ads/zzdmr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbp$zzg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbp$zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbp$zzg;->zzle:Lcom/google/android/gms/internal/ads/zzbp$zzg;

    .line 61
    const-class v0, Lcom/google/android/gms/internal/ads/zzbp$zzg;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbp$zzg;->zzle:Lcom/google/android/gms/internal/ads/zzbp$zzg;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdob;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdob;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdob;->zzaxs()Lcom/google/android/gms/internal/ads/zzdoj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbp$zzg;->zzld:Lcom/google/android/gms/internal/ads/zzdoj;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdmr;->zzhcr:Lcom/google/android/gms/internal/ads/zzdmr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbp$zzg;->zzkg:Lcom/google/android/gms/internal/ads/zzdmr;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbp$zzg;->zzgx:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbp$zzg;->zzgw:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbp$zzg;Lcom/google/android/gms/internal/ads/zzbw;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbp$zzg;->zza(Lcom/google/android/gms/internal/ads/zzbw;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbp$zzg;Lcom/google/android/gms/internal/ads/zzdmr;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbp$zzg;->zzm(Lcom/google/android/gms/internal/ads/zzdmr;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzbw;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 27
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbp$zzg;->zzdj:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbp$zzg;->zzdj:I

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbw;->zzac()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbp$zzg;->zzgw:I

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzbp$zzg;Lcom/google/android/gms/internal/ads/zzdmr;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbp$zzg;->zzf(Lcom/google/android/gms/internal/ads/zzdmr;)V

    return-void
.end method

.method public static zzbk()Lcom/google/android/gms/internal/ads/zzbp$zzg$zza;
    .locals 3

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbp$zzg;->zzle:Lcom/google/android/gms/internal/ads/zzbp$zzg;

    .line 31
    sget v1, Lcom/google/android/gms/internal/ads/zzdob$zze;->zzhho:I

    const/4 v2, 0x0

    .line 32
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzbp$zzg;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbp$zzg$zza;

    return-object v0
.end method

.method static synthetic zzbl()Lcom/google/android/gms/internal/ads/zzbp$zzg;
    .locals 1

    .line 56
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbp$zzg;->zzle:Lcom/google/android/gms/internal/ads/zzbp$zzg;

    return-object v0
.end method

.method private final zzf(Lcom/google/android/gms/internal/ads/zzdmr;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 22
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbp$zzg;->zzdj:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbp$zzg;->zzdj:I

    .line 23
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbp$zzg;->zzkg:Lcom/google/android/gms/internal/ads/zzdmr;

    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private final zzm(Lcom/google/android/gms/internal/ads/zzdmr;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbp$zzg;->zzld:Lcom/google/android/gms/internal/ads/zzdoj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdoj;->zzavi()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbp$zzg;->zzld:Lcom/google/android/gms/internal/ads/zzdoj;

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
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdoj;->zzfl(I)Lcom/google/android/gms/internal/ads/zzdoj;

    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbp$zzg;->zzld:Lcom/google/android/gms/internal/ads/zzdoj;

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbp$zzg;->zzld:Lcom/google/android/gms/internal/ads/zzdoj;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 35
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbq;->zzdi:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 55
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 53
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 44
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbp$zzg;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_1

    .line 46
    const-class p2, Lcom/google/android/gms/internal/ads/zzbp$zzg;

    monitor-enter p2

    .line 47
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbp$zzg;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_0

    .line 49
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdob$zzb;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbp$zzg;->zzle:Lcom/google/android/gms/internal/ads/zzbp$zzg;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzdob$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzdob;)V

    .line 50
    sput-object p1, Lcom/google/android/gms/internal/ads/zzbp$zzg;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    .line 51
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

    .line 43
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbp$zzg;->zzle:Lcom/google/android/gms/internal/ads/zzbp$zzg;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v0, "zzdj"

    aput-object v0, p1, p2

    const-string/jumbo p2, "zzld"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string/jumbo p3, "zzkg"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string/jumbo p3, "zzgx"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcc;->zzad()Lcom/google/android/gms/internal/ads/zzdog;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string/jumbo p3, "zzgw"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbw;->zzad()Lcom/google/android/gms/internal/ads/zzdog;

    move-result-object p3

    aput-object p3, p1, p2

    .line 42
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbp$zzg;->zzle:Lcom/google/android/gms/internal/ads/zzbp$zzg;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002\n\u0000\u0003\u000c\u0001\u0004\u000c\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Lcom/google/android/gms/internal/ads/zzdpk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 37
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbp$zzg$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbp$zzg$zza;-><init>(Lcom/google/android/gms/internal/ads/zzbq;)V

    return-object p1

    .line 36
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbp$zzg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbp$zzg;-><init>()V

    return-object p1

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
