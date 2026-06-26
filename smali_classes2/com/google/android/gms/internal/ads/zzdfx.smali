.class public final Lcom/google/android/gms/internal/ads/zzdfx;
.super Lcom/google/android/gms/internal/ads/zzdob;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdpm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdfx$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdob<",
        "Lcom/google/android/gms/internal/ads/zzdfx;",
        "Lcom/google/android/gms/internal/ads/zzdfx$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdpm;"
    }
.end annotation


# static fields
.field private static volatile zzdv:Lcom/google/android/gms/internal/ads/zzdpv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdpv<",
            "Lcom/google/android/gms/internal/ads/zzdfx;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzgsz:Lcom/google/android/gms/internal/ads/zzdfx;


# instance fields
.field private zzgqk:I

.field private zzgsh:Lcom/google/android/gms/internal/ads/zzdmr;

.field private zzgsi:Lcom/google/android/gms/internal/ads/zzdmr;

.field private zzgsr:Lcom/google/android/gms/internal/ads/zzdft;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdfx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdfx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdfx;->zzgsz:Lcom/google/android/gms/internal/ads/zzdfx;

    .line 55
    const-class v0, Lcom/google/android/gms/internal/ads/zzdfx;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdfx;->zzgsz:Lcom/google/android/gms/internal/ads/zzdfx;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdob;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdob;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdmr;->zzhcr:Lcom/google/android/gms/internal/ads/zzdmr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfx;->zzgsh:Lcom/google/android/gms/internal/ads/zzdmr;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfx;->zzgsi:Lcom/google/android/gms/internal/ads/zzdmr;

    return-void
.end method

.method private final setVersion(I)V
    .locals 0

    .line 6
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdfx;->zzgqk:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdfx;I)V
    .locals 0

    const/4 p1, 0x0

    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdfx;->setVersion(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdfx;Lcom/google/android/gms/internal/ads/zzdft;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdfx;->zzb(Lcom/google/android/gms/internal/ads/zzdft;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdfx;Lcom/google/android/gms/internal/ads/zzdmr;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdfx;->zzau(Lcom/google/android/gms/internal/ads/zzdmr;)V

    return-void
.end method

.method public static zzaqx()Lcom/google/android/gms/internal/ads/zzdfx$zza;
    .locals 3

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdfx;->zzgsz:Lcom/google/android/gms/internal/ads/zzdfx;

    .line 25
    sget v1, Lcom/google/android/gms/internal/ads/zzdob$zze;->zzhho:I

    const/4 v2, 0x0

    .line 26
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzdfx;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 28
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdfx$zza;

    return-object v0
.end method

.method public static zzaqy()Lcom/google/android/gms/internal/ads/zzdfx;
    .locals 1

    .line 48
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdfx;->zzgsz:Lcom/google/android/gms/internal/ads/zzdfx;

    return-object v0
.end method

.method static synthetic zzaqz()Lcom/google/android/gms/internal/ads/zzdfx;
    .locals 1

    .line 49
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdfx;->zzgsz:Lcom/google/android/gms/internal/ads/zzdfx;

    return-object v0
.end method

.method private final zzau(Lcom/google/android/gms/internal/ads/zzdmr;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfx;->zzgsh:Lcom/google/android/gms/internal/ads/zzdmr;

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private final zzav(Lcom/google/android/gms/internal/ads/zzdmr;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfx;->zzgsi:Lcom/google/android/gms/internal/ads/zzdmr;

    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzdft;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfx;->zzgsr:Lcom/google/android/gms/internal/ads/zzdft;

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdfx;Lcom/google/android/gms/internal/ads/zzdmr;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdfx;->zzav(Lcom/google/android/gms/internal/ads/zzdmr;)V

    return-void
.end method

.method public static zzbc(Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzdfx;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdok;
        }
    .end annotation

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdfx;->zzgsz:Lcom/google/android/gms/internal/ads/zzdfx;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Lcom/google/android/gms/internal/ads/zzdob;Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzdob;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdfx;

    return-object p0
.end method


# virtual methods
.method public final getVersion()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdfx;->zzgqk:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 29
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdfy;->zzdi:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 47
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 45
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 36
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdfx;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_1

    .line 38
    const-class p2, Lcom/google/android/gms/internal/ads/zzdfx;

    monitor-enter p2

    .line 39
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdfx;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_0

    .line 41
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdob$zzb;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzdfx;->zzgsz:Lcom/google/android/gms/internal/ads/zzdfx;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzdob$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzdob;)V

    .line 42
    sput-object p1, Lcom/google/android/gms/internal/ads/zzdfx;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    .line 43
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

    .line 35
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdfx;->zzgsz:Lcom/google/android/gms/internal/ads/zzdfx;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v0, "zzgqk"

    aput-object v0, p1, p2

    const-string/jumbo p2, "zzgsr"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string/jumbo p3, "zzgsh"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string/jumbo p3, "zzgsi"

    aput-object p3, p1, p2

    .line 34
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdfx;->zzgsz:Lcom/google/android/gms/internal/ads/zzdfx;

    const-string p3, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n\u0004\n"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Lcom/google/android/gms/internal/ads/zzdpk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 31
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdfx$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdfx$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdfy;)V

    return-object p1

    .line 30
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdfx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdfx;-><init>()V

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

.method public final zzaqf()Lcom/google/android/gms/internal/ads/zzdmr;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfx;->zzgsh:Lcom/google/android/gms/internal/ads/zzdmr;

    return-object v0
.end method

.method public final zzaqg()Lcom/google/android/gms/internal/ads/zzdmr;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfx;->zzgsi:Lcom/google/android/gms/internal/ads/zzdmr;

    return-object v0
.end method

.method public final zzaqn()Lcom/google/android/gms/internal/ads/zzdft;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfx;->zzgsr:Lcom/google/android/gms/internal/ads/zzdft;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdft;->zzaqs()Lcom/google/android/gms/internal/ads/zzdft;

    move-result-object v0

    :cond_0
    return-object v0
.end method
