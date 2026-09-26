.class public final Lcom/google/android/gms/measurement/internal/zzfr;
.super Lcom/google/android/gms/measurement/internal/zzic;
.source "SourceFile"


# instance fields
.field private zza:C

.field private zzb:J

.field private zzc:Ljava/lang/String;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private final zzd:Lcom/google/android/gms/measurement/internal/zzft;

.field private final zze:Lcom/google/android/gms/measurement/internal/zzft;

.field private final zzf:Lcom/google/android/gms/measurement/internal/zzft;

.field private final zzg:Lcom/google/android/gms/measurement/internal/zzft;

.field private final zzh:Lcom/google/android/gms/measurement/internal/zzft;

.field private final zzi:Lcom/google/android/gms/measurement/internal/zzft;

.field private final zzj:Lcom/google/android/gms/measurement/internal/zzft;

.field private final zzk:Lcom/google/android/gms/measurement/internal/zzft;

.field private final zzl:Lcom/google/android/gms/measurement/internal/zzft;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhf;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzic;-><init>(Lcom/google/android/gms/measurement/internal/zzhf;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    iput-char p1, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zza:C

    .line 7
    .line 8
    const-wide/16 v0, -0x1

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzb:J

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzft;

    .line 13
    const/4 v1, 0x6

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/zzft;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;IZZ)V

    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzd:Lcom/google/android/gms/measurement/internal/zzft;

    .line 19
    .line 20
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzft;

    .line 21
    const/4 v2, 0x1

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzft;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;IZZ)V

    .line 25
    .line 26
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zze:Lcom/google/android/gms/measurement/internal/zzft;

    .line 27
    .line 28
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzft;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p0, v1, p1, v2}, Lcom/google/android/gms/measurement/internal/zzft;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;IZZ)V

    .line 32
    .line 33
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzf:Lcom/google/android/gms/measurement/internal/zzft;

    .line 34
    .line 35
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzft;

    .line 36
    const/4 v1, 0x5

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/zzft;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;IZZ)V

    .line 40
    .line 41
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzg:Lcom/google/android/gms/measurement/internal/zzft;

    .line 42
    .line 43
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzft;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzft;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;IZZ)V

    .line 47
    .line 48
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzh:Lcom/google/android/gms/measurement/internal/zzft;

    .line 49
    .line 50
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzft;

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, p0, v1, p1, v2}, Lcom/google/android/gms/measurement/internal/zzft;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;IZZ)V

    .line 54
    .line 55
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzi:Lcom/google/android/gms/measurement/internal/zzft;

    .line 56
    .line 57
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzft;

    .line 58
    const/4 v1, 0x4

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/zzft;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;IZZ)V

    .line 62
    .line 63
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzj:Lcom/google/android/gms/measurement/internal/zzft;

    .line 64
    .line 65
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzft;

    .line 66
    const/4 v1, 0x3

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/zzft;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;IZZ)V

    .line 70
    .line 71
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzk:Lcom/google/android/gms/measurement/internal/zzft;

    .line 72
    .line 73
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzft;

    .line 74
    const/4 v1, 0x2

    .line 75
    .line 76
    .line 77
    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/zzft;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;IZZ)V

    .line 78
    .line 79
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzl:Lcom/google/android/gms/measurement/internal/zzft;

    .line 80
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zzfr;)C
    .locals 0

    .line 1
    iget-char p0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zza:C

    return p0
.end method

.method protected static zza(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzfw;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static zza(ZLjava/lang/Object;)Ljava/lang/String;
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 22
    :cond_0
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 23
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 24
    :cond_1
    instance-of v1, p1, Ljava/lang/Long;

    const-string v2, "-"

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    if-nez p0, :cond_2

    .line 25
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 26
    :cond_2
    move-object p0, p1

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x64

    cmp-long v1, v4, v6

    if-gez v1, :cond_3

    .line 27
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 28
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x2d

    if-ne p1, v1, :cond_4

    move-object v0, v2

    .line 29
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-double v1, p1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    .line 31
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-double p0, p0

    invoke-static {v3, v4, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 32
    :cond_5
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 33
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 34
    :cond_6
    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_a

    .line 35
    check-cast p1, Ljava/lang/Throwable;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    if-eqz p0, :cond_7

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class p0, Lcom/google/android/gms/measurement/internal/zzhf;

    .line 38
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    array-length v1, p1

    :goto_1
    if-ge v3, v1, :cond_9

    aget-object v2, p1, v3

    .line 40
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v4

    if-nez v4, :cond_8

    .line 41
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 42
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzfr;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string p0, ": "

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 46
    :cond_9
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 47
    :cond_a
    instance-of v0, p1, Lcom/google/android/gms/measurement/internal/zzfw;

    if-eqz v0, :cond_b

    .line 48
    check-cast p1, Lcom/google/android/gms/measurement/internal/zzfw;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzfw;->zza(Lcom/google/android/gms/measurement/internal/zzfw;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    if-eqz p0, :cond_c

    return-object v2

    .line 49
    :cond_c
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static zza(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    .line 6
    :cond_0
    invoke-static {p0, p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-static {p0, p3}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 8
    invoke-static {p0, p4}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 9
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 11
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    .line 12
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v1, ", "

    if-nez p1, :cond_2

    .line 13
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    .line 15
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 16
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    move-object v1, v0

    .line 18
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 19
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_4
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zzfr;C)V
    .locals 0

    .line 2
    iput-char p1, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zza:C

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zzfr;J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzb:J

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/measurement/internal/zzfr;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzb:J

    return-wide v0
.end method

.method private static zzb(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x2e

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzoc;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzbi;->zzcb:Lcom/google/android/gms/measurement/internal/zzfi;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzfi;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    return-object p0

    :cond_2
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zzy()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzc:Ljava/lang/String;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzw()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhf;->zzw()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_0
    const-string v0, "FA"

    .line 25
    .line 26
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzc:Ljava/lang/String;

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzc:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzc:Ljava/lang/String;

    .line 34
    monitor-exit p0

    .line 35
    return-object v0

    .line 36
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw v0
.end method


# virtual methods
.method public final bridge synthetic zza()Landroid/content/Context;
    .locals 1

    .line 4
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zza()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected final zza(ILjava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 59
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzy()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected final zza(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 50
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 51
    invoke-static {v0, p4, p5, p6, p7}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(ILjava/lang/String;)V

    :cond_0
    if-nez p3, :cond_5

    const/4 p2, 0x5

    if-lt p1, p2, :cond_5

    .line 53
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzid;->zzu:Lcom/google/android/gms/measurement/internal/zzhf;

    .line 54
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzhf;->zzo()Lcom/google/android/gms/measurement/internal/zzgy;

    move-result-object p2

    const/4 p3, 0x6

    if-nez p2, :cond_1

    const-string p1, "Scheduler not set. Not logging error/warn"

    .line 55
    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(ILjava/lang/String;)V

    return-void

    .line 56
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzic;->zzae()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "Scheduler not initialized. Not logging error/warn"

    .line 57
    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(ILjava/lang/String;)V

    return-void

    :cond_2
    if-gez p1, :cond_3

    move p1, v0

    :cond_3
    const/16 p3, 0x9

    if-lt p1, p3, :cond_4

    const/16 p1, 0x8

    :cond_4
    move v2, p1

    .line 58
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfu;

    move-object v0, p1

    move-object v1, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzfu;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzgy;->zzb(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method protected final zza(I)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 60
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzy()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic zzb()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzb()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/measurement/internal/zzft;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzk:Lcom/google/android/gms/measurement/internal/zzft;

    return-object v0
.end method

.method public final bridge synthetic zzd()Lcom/google/android/gms/measurement/internal/zzae;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzd()Lcom/google/android/gms/measurement/internal/zzae;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zze()Lcom/google/android/gms/measurement/internal/zzaf;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zze()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzf()Lcom/google/android/gms/measurement/internal/zzba;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzf()Lcom/google/android/gms/measurement/internal/zzba;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/measurement/internal/zzft;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzd:Lcom/google/android/gms/measurement/internal/zzft;

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/measurement/internal/zzft;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzf:Lcom/google/android/gms/measurement/internal/zzft;

    return-object v0
.end method

.method public final bridge synthetic zzi()Lcom/google/android/gms/measurement/internal/zzfq;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzi()Lcom/google/android/gms/measurement/internal/zzfq;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzj()Lcom/google/android/gms/measurement/internal/zzfr;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzk()Lcom/google/android/gms/measurement/internal/zzgd;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/measurement/internal/zzgy;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzl()Lcom/google/android/gms/measurement/internal/zzgy;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final zzm()Lcom/google/android/gms/measurement/internal/zzft;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zze:Lcom/google/android/gms/measurement/internal/zzft;

    return-object v0
.end method

.method public final zzn()Lcom/google/android/gms/measurement/internal/zzft;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzj:Lcom/google/android/gms/measurement/internal/zzft;

    return-object v0
.end method

.method protected final zzo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzp()Lcom/google/android/gms/measurement/internal/zzft;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzl:Lcom/google/android/gms/measurement/internal/zzft;

    return-object v0
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/measurement/internal/zznd;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzq()Lcom/google/android/gms/measurement/internal/zznd;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic zzr()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzr()V

    .line 4
    return-void
.end method

.method public final bridge synthetic zzs()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzs()V

    .line 4
    return-void
.end method

.method public final bridge synthetic zzt()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzt()V

    .line 4
    return-void
.end method

.method public final zzu()Lcom/google/android/gms/measurement/internal/zzft;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzg:Lcom/google/android/gms/measurement/internal/zzft;

    return-object v0
.end method

.method public final zzv()Lcom/google/android/gms/measurement/internal/zzft;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzi:Lcom/google/android/gms/measurement/internal/zzft;

    return-object v0
.end method

.method public final zzw()Lcom/google/android/gms/measurement/internal/zzft;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfr;->zzh:Lcom/google/android/gms/measurement/internal/zzft;

    return-object v0
.end method

.method public final zzx()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgd;->zzb:Lcom/google/android/gms/measurement/internal/zzgh;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return-object v1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzid;->zzk()Lcom/google/android/gms/measurement/internal/zzgd;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgd;->zzb:Lcom/google/android/gms/measurement/internal/zzgh;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgh;->zza()Landroid/util/Pair;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzgd;->zza:Landroid/util/Pair;

    .line 25
    .line 26
    if-ne v0, v2, :cond_1

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Ljava/lang/String;

    .line 38
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v1, ":"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    return-object v0

    .line 59
    :cond_2
    :goto_0
    return-object v1
.end method
