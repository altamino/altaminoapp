.class public final Lcom/google/android/gms/internal/ads/zzdho;
.super Lcom/google/android/gms/internal/ads/zzdob;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdpm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdho$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdob<",
        "Lcom/google/android/gms/internal/ads/zzdho;",
        "Lcom/google/android/gms/internal/ads/zzdho$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdpm;"
    }
.end annotation


# static fields
.field private static volatile zzdv:Lcom/google/android/gms/internal/ads/zzdpv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdpv<",
            "Lcom/google/android/gms/internal/ads/zzdho;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzgvz:Lcom/google/android/gms/internal/ads/zzdho;


# instance fields
.field private zzdj:I

.field private zzgvx:Ljava/lang/String;

.field private zzgvy:Lcom/google/android/gms/internal/ads/zzdoj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdoj<",
            "Lcom/google/android/gms/internal/ads/zzdgy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdho;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdho;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdho;->zzgvz:Lcom/google/android/gms/internal/ads/zzdho;

    .line 51
    const-class v0, Lcom/google/android/gms/internal/ads/zzdho;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdho;->zzgvz:Lcom/google/android/gms/internal/ads/zzdho;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdob;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdob;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdho;->zzgvx:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdob;->zzaxs()Lcom/google/android/gms/internal/ads/zzdoj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdho;->zzgvy:Lcom/google/android/gms/internal/ads/zzdoj;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzdgy;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdho;->zzgvy:Lcom/google/android/gms/internal/ads/zzdoj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdoj;->zzavi()Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdho;->zzgvy:Lcom/google/android/gms/internal/ads/zzdoj;

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v1, v1, 0x1

    .line 19
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdoj;->zzfl(I)Lcom/google/android/gms/internal/ads/zzdoj;

    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdho;->zzgvy:Lcom/google/android/gms/internal/ads/zzdoj;

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdho;->zzgvy:Lcom/google/android/gms/internal/ads/zzdoj;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdho;Lcom/google/android/gms/internal/ads/zzdgy;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdho;->zza(Lcom/google/android/gms/internal/ads/zzdgy;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdho;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdho;->zzgr(Ljava/lang/String;)V

    return-void
.end method

.method public static zzatk()Lcom/google/android/gms/internal/ads/zzdho$zza;
    .locals 3

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdho;->zzgvz:Lcom/google/android/gms/internal/ads/zzdho;

    .line 24
    sget v1, Lcom/google/android/gms/internal/ads/zzdob$zze;->zzhho:I

    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzdho;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdho$zza;

    return-object v0
.end method

.method static synthetic zzatl()Lcom/google/android/gms/internal/ads/zzdho;
    .locals 1

    .line 47
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdho;->zzgvz:Lcom/google/android/gms/internal/ads/zzdho;

    return-object v0
.end method

.method private final zzgr(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdho;->zzgvx:Ljava/lang/String;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 28
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdhp;->zzdi:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 46
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    .line 44
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 35
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdho;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_1

    .line 37
    const-class p2, Lcom/google/android/gms/internal/ads/zzdho;

    monitor-enter p2

    .line 38
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdho;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_0

    .line 40
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdob$zzb;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzdho;->zzgvz:Lcom/google/android/gms/internal/ads/zzdho;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzdob$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzdob;)V

    .line 41
    sput-object p1, Lcom/google/android/gms/internal/ads/zzdho;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    .line 42
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

    .line 34
    :pswitch_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdho;->zzgvz:Lcom/google/android/gms/internal/ads/zzdho;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v0, "zzdj"

    aput-object v0, p1, p2

    const-string/jumbo p2, "zzgvx"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string/jumbo p3, "zzgvy"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 31
    const-class p3, Lcom/google/android/gms/internal/ads/zzdgy;

    aput-object p3, p1, p2

    .line 33
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdho;->zzgvz:Lcom/google/android/gms/internal/ads/zzdho;

    const-string p3, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u0208\u0002\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Lcom/google/android/gms/internal/ads/zzdpk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 30
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdho$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdho$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdhp;)V

    return-object p1

    .line 29
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdho;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdho;-><init>()V

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

.method public final zzatj()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzdgy;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdho;->zzgvy:Lcom/google/android/gms/internal/ads/zzdoj;

    return-object v0
.end method
