.class public final Lcom/google/android/gms/internal/ads/zzdhi;
.super Lcom/google/android/gms/internal/ads/zzdob;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdpm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdhi$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdob<",
        "Lcom/google/android/gms/internal/ads/zzdhi;",
        "Lcom/google/android/gms/internal/ads/zzdhi$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdpm;"
    }
.end annotation


# static fields
.field private static volatile zzdv:Lcom/google/android/gms/internal/ads/zzdpv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdpv<",
            "Lcom/google/android/gms/internal/ads/zzdhi;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzgvm:Lcom/google/android/gms/internal/ads/zzdhi;


# instance fields
.field private zzgqk:I

.field private zzgvl:Lcom/google/android/gms/internal/ads/zzdhk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdhi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdhi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdhi;->zzgvm:Lcom/google/android/gms/internal/ads/zzdhi;

    .line 40
    const-class v0, Lcom/google/android/gms/internal/ads/zzdhi;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdhi;->zzgvm:Lcom/google/android/gms/internal/ads/zzdhi;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdob;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdob;-><init>()V

    return-void
.end method

.method private final setVersion(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdhi;->zzgqk:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdhi;I)V
    .locals 0

    const/4 p1, 0x0

    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdhi;->setVersion(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdhi;Lcom/google/android/gms/internal/ads/zzdhk;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdhi;->zza(Lcom/google/android/gms/internal/ads/zzdhk;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzdhk;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhi;->zzgvl:Lcom/google/android/gms/internal/ads/zzdhk;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public static zzatd()Lcom/google/android/gms/internal/ads/zzdhi$zza;
    .locals 3

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdhi;->zzgvm:Lcom/google/android/gms/internal/ads/zzdhi;

    .line 13
    sget v1, Lcom/google/android/gms/internal/ads/zzdob$zze;->zzhho:I

    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzdhi;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 16
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdhi$zza;

    return-object v0
.end method

.method static synthetic zzate()Lcom/google/android/gms/internal/ads/zzdhi;
    .locals 1

    .line 36
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdhi;->zzgvm:Lcom/google/android/gms/internal/ads/zzdhi;

    return-object v0
.end method

.method public static zzbr(Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzdhi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdok;
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdhi;->zzgvm:Lcom/google/android/gms/internal/ads/zzdhi;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Lcom/google/android/gms/internal/ads/zzdob;Lcom/google/android/gms/internal/ads/zzdmr;)Lcom/google/android/gms/internal/ads/zzdob;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdhi;

    return-object p0
.end method


# virtual methods
.method public final getVersion()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdhi;->zzgqk:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 17
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdhj;->zzdi:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 35
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 33
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 24
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdhi;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_1

    .line 26
    const-class p2, Lcom/google/android/gms/internal/ads/zzdhi;

    monitor-enter p2

    .line 27
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdhi;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_0

    .line 29
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdob$zzb;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzdhi;->zzgvm:Lcom/google/android/gms/internal/ads/zzdhi;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzdob$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzdob;)V

    .line 30
    sput-object p1, Lcom/google/android/gms/internal/ads/zzdhi;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    .line 31
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

    .line 23
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdhi;->zzgvm:Lcom/google/android/gms/internal/ads/zzdhi;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v0, "zzgqk"

    aput-object v0, p1, p2

    const-string/jumbo p2, "zzgvl"

    aput-object p2, p1, p3

    .line 22
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdhi;->zzgvm:Lcom/google/android/gms/internal/ads/zzdhi;

    const-string p3, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Lcom/google/android/gms/internal/ads/zzdpk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdhi$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdhi$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdhj;)V

    return-object p1

    .line 18
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdhi;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdhi;-><init>()V

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

.method public final zzatc()Lcom/google/android/gms/internal/ads/zzdhk;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhi;->zzgvl:Lcom/google/android/gms/internal/ads/zzdhk;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdhk;->zzath()Lcom/google/android/gms/internal/ads/zzdhk;

    move-result-object v0

    :cond_0
    return-object v0
.end method
