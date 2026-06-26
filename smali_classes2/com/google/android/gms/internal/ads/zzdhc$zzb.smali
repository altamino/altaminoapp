.class public final Lcom/google/android/gms/internal/ads/zzdhc$zzb;
.super Lcom/google/android/gms/internal/ads/zzdob;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdpm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdhc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdhc$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdob<",
        "Lcom/google/android/gms/internal/ads/zzdhc$zzb;",
        "Lcom/google/android/gms/internal/ads/zzdhc$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdpm;"
    }
.end annotation


# static fields
.field private static volatile zzdv:Lcom/google/android/gms/internal/ads/zzdpv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdpv<",
            "Lcom/google/android/gms/internal/ads/zzdhc$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzgvg:Lcom/google/android/gms/internal/ads/zzdhc$zzb;


# instance fields
.field private zzgtz:Ljava/lang/String;

.field private zzguq:I

.field private zzgvb:I

.field private zzgvc:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdhc$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdhc$zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdhc$zzb;->zzgvg:Lcom/google/android/gms/internal/ads/zzdhc$zzb;

    .line 48
    const-class v0, Lcom/google/android/gms/internal/ads/zzdhc$zzb;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdhc$zzb;->zzgvg:Lcom/google/android/gms/internal/ads/zzdhc$zzb;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdob;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdob;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhc$zzb;->zzgtz:Ljava/lang/String;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzdgu;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdgu;->zzac()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdhc$zzb;->zzgvb:I

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdhc$zzb;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdhc$zzb;->zzet(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdhc$zzb;Lcom/google/android/gms/internal/ads/zzdgu;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdhc$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdgu;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdhc$zzb;Lcom/google/android/gms/internal/ads/zzdhm;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdhc$zzb;->zza(Lcom/google/android/gms/internal/ads/zzdhm;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdhc$zzb;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdhc$zzb;->zzgj(Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzdhm;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhm;->zzac()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdhc$zzb;->zzguq:I

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public static zzasu()Lcom/google/android/gms/internal/ads/zzdhc$zzb$zza;
    .locals 3

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdhc$zzb;->zzgvg:Lcom/google/android/gms/internal/ads/zzdhc$zzb;

    .line 19
    sget v1, Lcom/google/android/gms/internal/ads/zzdob$zze;->zzhho:I

    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzdhc$zzb;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdhc$zzb$zza;

    return-object v0
.end method

.method static synthetic zzasv()Lcom/google/android/gms/internal/ads/zzdhc$zzb;
    .locals 1

    .line 42
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdhc$zzb;->zzgvg:Lcom/google/android/gms/internal/ads/zzdhc$zzb;

    return-object v0
.end method

.method private final zzet(I)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdhc$zzb;->zzgvc:I

    return-void
.end method

.method private final zzgj(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhc$zzb;->zzgtz:Ljava/lang/String;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 23
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdhd;->zzdi:[I

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdhc$zzb;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_1

    .line 32
    const-class p2, Lcom/google/android/gms/internal/ads/zzdhc$zzb;

    monitor-enter p2

    .line 33
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdhc$zzb;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

    if-nez p1, :cond_0

    .line 35
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdob$zzb;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzdhc$zzb;->zzgvg:Lcom/google/android/gms/internal/ads/zzdhc$zzb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzdob$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzdob;)V

    .line 36
    sput-object p1, Lcom/google/android/gms/internal/ads/zzdhc$zzb;->zzdv:Lcom/google/android/gms/internal/ads/zzdpv;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdhc$zzb;->zzgvg:Lcom/google/android/gms/internal/ads/zzdhc$zzb;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string/jumbo v0, "zzgtz"

    aput-object v0, p1, p2

    const-string/jumbo p2, "zzgvb"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string/jumbo p3, "zzgvc"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string/jumbo p3, "zzguq"

    aput-object p3, p1, p2

    .line 28
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdhc$zzb;->zzgvg:Lcom/google/android/gms/internal/ads/zzdhc$zzb;

    const-string p3, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u000c\u0003\u000b\u0004\u000c"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdob;->zza(Lcom/google/android/gms/internal/ads/zzdpk;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 25
    :pswitch_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdhc$zzb$zza;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdhc$zzb$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdhd;)V

    return-object p1

    .line 24
    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdhc$zzb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdhc$zzb;-><init>()V

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
