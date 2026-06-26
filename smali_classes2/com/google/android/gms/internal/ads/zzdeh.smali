.class public final Lcom/google/android/gms/internal/ads/zzdeh;
.super Lcom/google/android/gms/internal/ads/zzdob;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdpm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdeh$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdob<",
        "Lcom/google/android/gms/internal/ads/zzdeh;",
        "Lcom/google/android/gms/internal/ads/zzdeh$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdpm;"
    }
.end annotation


# static fields
.field private static volatile zzdv:Lcom/google/android/gms/internal/ads/zzdpv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdpv<",
            "Lcom/google/android/gms/internal/ads/zzdeh;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzgrh:Lcom/google/android/gms/internal/ads/zzdeh;


# instance fields
.field private zzgqk:I

.field private zzgqs:Lcom/google/android/gms/internal/ads/zzdmr;

.field private zzgrg:Lcom/google/android/gms/internal/ads/zzdel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdeh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdeh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdeh;->zzgrh:Lcom/google/android/gms/internal/ads/zzdeh;

    .line 47
    const-class v0, Lcom/google/android/gms/internal/ads/zzdeh;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdeh;->zzgrh:Lcom/google/android/gms/internal/ads/zzdeh;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdob;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdob;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdmr;->zzhcr:Lcom/google/android/gms/internal/ads/zzdmr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdeh;->zzgqs:Lcom/google/android/gms/internal/ads/zzdmr;

    return-void
.end method

.method private final setVersion(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdeh;->zzgqk:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdeh;I)V
    .locals 0

    const/4 p1, 0x0

    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdeh;->setVersion(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdeh;Lcom/google/android/gms/internal/ads/zzdel;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdeh;->zza(Lcom/google/android/gms/internal/ads/zzdel;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdeh;Lcom/google/android/gms/internal/ads/zzdmr;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdeh;->zzw(Lcom/google/android/gms/internal/ads/zzdmr;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzdel;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdeh;->zzgrg:Lcom/google/android/gms/internal/ads/zzdel;

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public static zzad(Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzdeh;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdok;
        }
    .end annotation

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdeh;->zzgrh:Lcom/google/android/gms/internal/ads/zzdeh;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Lcom/google/android/gms/internal/ads/zzdob;Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzdob;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdeh;

    return-object p0
.end method

.method public static zzapc()Lcom/google/android/gms/internal/ads/zzdeh$zza;
    .locals 3

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdeh;->zzgrh:Lcom/google/android/gms/internal/ads/zzdeh;

    .line 19
    sget v1, Lcom/google/android/gms/internal/ads/zzdob$zze;->zzhho:I

    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzdeh;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdeh$zza;

    return-object v0
.end method

.method static synthetic zzapd()Lcom/google/android/gms/internal/ads/zzdeh;
    .locals 1

    .line 42
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdeh;->zzgrh:Lcom/google/android/gms/internal/ads/zzdeh;

    return-object v0
.end method

.method private final zzw(Lcom/google/android/gms/internal/ads/zzdmr;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdeh;->zzgqs:Lcom/google/android/gms/internal/ads/zzdmr;

    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final getVersion()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdeh;->zzgqk:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 23
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdei;->zzdi:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 41
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 39
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 30
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdeh;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_1

    .line 32
    const-class p2, Lcom/google/android/gms/internal/ads/zzdeh;

    monitor-enter p2

    .line 33
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdeh;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_0

    .line 35
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdob$zzb;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzdeh;->zzgrh:Lcom/google/android/gms/internal/ads/zzdeh;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzdob$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzdob;)V

    .line 36
    sput-object p1, Lcom/google/android/gms/internal/ads/zzdeh;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    .line 37
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

    .line 29
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdeh;->zzgrh:Lcom/google/android/gms/internal/ads/zzdeh;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v0, "zzgqk"

    aput-object v0, p1, p2

    const-string/jumbo p2, "zzgrg"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string/jumbo p3, "zzgqs"

    aput-object p3, p1, p2

    .line 28
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdeh;->zzgrh:Lcom/google/android/gms/internal/ads/zzdeh;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Lcom/google/android/gms/internal/ads/zzdpk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdeh$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdeh$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdei;)V

    return-object p1

    .line 24
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdeh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdeh;-><init>()V

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

.method public final zzaoi()Lcom/google/android/gms/internal/ads/zzdmr;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdeh;->zzgqs:Lcom/google/android/gms/internal/ads/zzdmr;

    return-object v0
.end method

.method public final zzapb()Lcom/google/android/gms/internal/ads/zzdel;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdeh;->zzgrg:Lcom/google/android/gms/internal/ads/zzdel;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdel;->zzapf()Lcom/google/android/gms/internal/ads/zzdel;

    move-result-object v0

    :cond_0
    return-object v0
.end method
