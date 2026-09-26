.class public final Lcom/google/android/gms/internal/play_billing/zziv;
.super Lcom/google/android/gms/internal/play_billing/zzex;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzgd;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zziv;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/Object;

.field private zzg:Lcom/google/android/gms/internal/play_billing/zzio;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/gms/internal/play_billing/zziv;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zziv;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zziv;->zzb:Lcom/google/android/gms/internal/play_billing/zziv;

    .line 8
    .line 9
    const-class v1, Lcom/google/android/gms/internal/play_billing/zziv;

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzex;->zzp(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzex;)V

    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzex;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zziv;->zze:I

    .line 7
    return-void
.end method

.method static synthetic zzA(Lcom/google/android/gms/internal/play_billing/zziv;Lcom/google/android/gms/internal/play_billing/zzic;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zziv;->zzf:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zziv;->zze:I

    return-void
.end method

.method public static zzv()Lcom/google/android/gms/internal/play_billing/zziu;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zziv;->zzb:Lcom/google/android/gms/internal/play_billing/zziv;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzex;->zzg()Lcom/google/android/gms/internal/play_billing/zzet;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zziu;

    .line 9
    return-object v0
.end method

.method static synthetic zzw()Lcom/google/android/gms/internal/play_billing/zziv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zziv;->zzb:Lcom/google/android/gms/internal/play_billing/zziv;

    return-object v0
.end method

.method static synthetic zzx(Lcom/google/android/gms/internal/play_billing/zziv;Lcom/google/android/gms/internal/play_billing/zziz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zziv;->zzf:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zziv;->zze:I

    return-void
.end method

.method static synthetic zzy(Lcom/google/android/gms/internal/play_billing/zziv;Lcom/google/android/gms/internal/play_billing/zzio;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zziv;->zzg:Lcom/google/android/gms/internal/play_billing/zzio;

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zziv;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zziv;->zzd:I

    return-void
.end method

.method static synthetic zzz(Lcom/google/android/gms/internal/play_billing/zziv;Lcom/google/android/gms/internal/play_billing/zzhy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zziv;->zzf:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zziv;->zze:I

    return-void
.end method


# virtual methods
.method protected final zzu(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    .line 2
    add-int/lit8 p1, p1, -0x1

    .line 3
    const/4 p2, 0x1

    .line 4
    .line 5
    if-eqz p1, :cond_4

    .line 6
    const/4 p3, 0x5

    .line 7
    const/4 v0, 0x4

    .line 8
    const/4 v1, 0x3

    .line 9
    const/4 v2, 0x2

    .line 10
    .line 11
    if-eq p1, v2, :cond_3

    .line 12
    .line 13
    if-eq p1, v1, :cond_2

    .line 14
    const/4 p2, 0x0

    .line 15
    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    .line 18
    if-eq p1, p3, :cond_0

    .line 19
    return-object p2

    .line 20
    .line 21
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zziv;->zzb:Lcom/google/android/gms/internal/play_billing/zziv;

    .line 22
    return-object p1

    .line 23
    .line 24
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zziu;

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/play_billing/zziu;-><init>(Lcom/google/android/gms/internal/play_billing/zzit;)V

    .line 28
    return-object p1

    .line 29
    .line 30
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zziv;

    .line 31
    .line 32
    .line 33
    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zziv;-><init>()V

    .line 34
    return-object p1

    .line 35
    .line 36
    :cond_3
    const/16 p1, 0x8

    .line 37
    .line 38
    new-array p1, p1, [Ljava/lang/Object;

    .line 39
    const/4 v3, 0x0

    .line 40
    .line 41
    const-string v4, "zzf"

    .line 42
    .line 43
    aput-object v4, p1, v3

    .line 44
    .line 45
    const-string v3, "zze"

    .line 46
    .line 47
    aput-object v3, p1, p2

    .line 48
    .line 49
    const-string p2, "zzd"

    .line 50
    .line 51
    aput-object p2, p1, v2

    .line 52
    .line 53
    const-string p2, "zzg"

    .line 54
    .line 55
    aput-object p2, p1, v1

    .line 56
    .line 57
    const-class p2, Lcom/google/android/gms/internal/play_billing/zzhy;

    .line 58
    .line 59
    aput-object p2, p1, v0

    .line 60
    .line 61
    const-class p2, Lcom/google/android/gms/internal/play_billing/zzic;

    .line 62
    .line 63
    aput-object p2, p1, p3

    .line 64
    const/4 p2, 0x6

    .line 65
    .line 66
    const-class p3, Lcom/google/android/gms/internal/play_billing/zziz;

    .line 67
    .line 68
    aput-object p3, p1, p2

    .line 69
    const/4 p2, 0x7

    .line 70
    .line 71
    const-class p3, Lcom/google/android/gms/internal/play_billing/zzil;

    .line 72
    .line 73
    aput-object p3, p1, p2

    .line 74
    .line 75
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zziv;->zzb:Lcom/google/android/gms/internal/play_billing/zziv;

    .line 76
    .line 77
    const-string p3, "\u0001\u0005\u0001\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1009\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000"

    .line 78
    .line 79
    .line 80
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzex;->zzm(Lcom/google/android/gms/internal/play_billing/zzgc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    move-result-object p1

    .line 82
    return-object p1

    .line 83
    .line 84
    .line 85
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 86
    move-result-object p1

    .line 87
    return-object p1
.end method
