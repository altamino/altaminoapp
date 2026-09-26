.class public Lcom/narvii/util/DateTimeFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AR_ISO_8601_P:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final AR_ISO_8601_P_TZ:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static FMT_ALL:Ljava/text/DateFormat;

.field private static FMT_DATE:Ljava/text/DateFormat;

.field private static FMT_DATE_YEARLESS:Ljava/text/DateFormat;

.field private static FMT_TIME:Ljava/text/DateFormat;

.field private static FMT_WEEK:Ljava/text/DateFormat;

.field private static ISO_8601_FMT:Ljava/text/SimpleDateFormat;

.field private static TIME_START_OF_THIS_YEAR:J

.field private static TODAY:Ljava/text/SimpleDateFormat;

.field private static final TZ_0:Ljava/util/TimeZone;

.field private static instances:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Lcom/narvii/util/DateTimeFormatter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-string v0, "+0000"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->TZ_0:Ljava/util/TimeZone;

    .line 9
    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 14
    .line 15
    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->AR_ISO_8601_P:Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 21
    .line 22
    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->AR_ISO_8601_P_TZ:Ljava/util/concurrent/atomic/AtomicReference;

    .line 23
    .line 24
    new-instance v0, Ljava/util/WeakHashMap;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 28
    .line 29
    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->instances:Ljava/util/WeakHashMap;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    return-void
.end method

.method public static formatISO8601(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->ISO_8601_FMT:Ljava/text/SimpleDateFormat;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    .line 10
    .line 11
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 15
    .line 16
    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->ISO_8601_FMT:Ljava/text/SimpleDateFormat;

    .line 17
    .line 18
    sget-object v1, Lcom/narvii/util/DateTimeFormatter;->TZ_0:Ljava/util/TimeZone;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 22
    .line 23
    :cond_0
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->ISO_8601_FMT:Ljava/text/SimpleDateFormat;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->instances:Ljava/util/WeakHashMap;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/util/DateTimeFormatter;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/util/DateTimeFormatter;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/narvii/util/DateTimeFormatter;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    sget-object v1, Lcom/narvii/util/DateTimeFormatter;->instances:Ljava/util/WeakHashMap;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_0
    return-object v0
.end method

.method private static getYearlessDateFormat(Ljava/util/Locale;)Ljava/text/DateFormat;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-static {v0, p0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    .line 5
    move-result-object v0

    .line 6
    .line 7
    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-string v1, "de"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const-string v1, "[^Mm]*[Yy]+[^Mm]*"

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    const-string v1, "[^DdMm]*[Yy]+[^DdMm]*"

    .line 25
    .line 26
    :goto_0
    const-string v2, ""

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return-object v2

    .line 37
    :catch_0
    move-exception v1

    .line 38
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    const-string v3, "fail to convert "

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v3, " yearless pattern \'"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v0, "\'"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 73
    .line 74
    .line 75
    const-string/jumbo v1, "yyyy M"

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 79
    return-object v0
.end method

.method public static isThisYear(J)Z
    .locals 9

    .line 1
    .line 2
    sget-wide v0, Lcom/narvii/util/DateTimeFormatter;->TIME_START_OF_THIS_YEAR:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x1

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v8, 0x0

    .line 23
    move-object v2, v0

    .line 24
    .line 25
    .line 26
    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 30
    move-result-wide v2

    .line 31
    .line 32
    const-wide/16 v4, 0x3e8

    .line 33
    .line 34
    rem-long v4, v2, v4

    .line 35
    sub-long/2addr v2, v4

    .line 36
    .line 37
    sput-wide v2, Lcom/narvii/util/DateTimeFormatter;->TIME_START_OF_THIS_YEAR:J

    .line 38
    .line 39
    :cond_0
    sget-wide v2, Lcom/narvii/util/DateTimeFormatter;->TIME_START_OF_THIS_YEAR:J

    .line 40
    .line 41
    cmp-long p0, p0, v2

    .line 42
    .line 43
    if-ltz p0, :cond_1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v1, 0x0

    .line 46
    :goto_0
    return v1
.end method

.method public static liteMS(I)Ljava/lang/String;
    .locals 10

    .line 1
    .line 2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    .line 7
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    int-to-long v3, p0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    .line 12
    move-result-wide v5

    .line 13
    .line 14
    sget-object v7, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    .line 18
    move-result-wide v8

    .line 19
    .line 20
    .line 21
    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    .line 22
    move-result-wide v7

    .line 23
    sub-long/2addr v5, v7

    .line 24
    .line 25
    .line 26
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    move-result-object v5

    .line 28
    const/4 v6, 0x0

    .line 29
    .line 30
    aput-object v5, v1, v6

    .line 31
    int-to-double v5, p0

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    const-wide v7, 0x408f400000000000L    # 1000.0

    .line 37
    div-double/2addr v5, v7

    .line 38
    .line 39
    .line 40
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    .line 41
    move-result-wide v5

    .line 42
    .line 43
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    .line 47
    move-result-wide v2

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 51
    move-result-wide v2

    .line 52
    sub-long/2addr v5, v2

    .line 53
    .line 54
    .line 55
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    move-result-object p0

    .line 57
    const/4 v2, 0x1

    .line 58
    .line 59
    aput-object p0, v1, v2

    .line 60
    .line 61
    const-string p0, "%01d:%02d"

    .line 62
    .line 63
    .line 64
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method

.method public static parseISO8601(Ljava/lang/String;)Ljava/util/Date;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    :cond_0
    const-string v1, "Z"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    sget-object v1, Lcom/narvii/util/DateTimeFormatter;->AR_ISO_8601_P_TZ:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    check-cast v2, Ljava/text/SimpleDateFormat;

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 25
    .line 26
    .line 27
    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    .line 28
    .line 29
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 33
    .line 34
    sget-object v3, Lcom/narvii/util/DateTimeFormatter;->TZ_0:Ljava/util/TimeZone;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 41
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    .line 48
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->AR_ISO_8601_P_TZ:Ljava/util/concurrent/atomic/AtomicReference;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 52
    throw p0

    .line 53
    .line 54
    :catch_0
    sget-object p0, Lcom/narvii/util/DateTimeFormatter;->AR_ISO_8601_P_TZ:Ljava/util/concurrent/atomic/AtomicReference;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_2
    sget-object v1, Lcom/narvii/util/DateTimeFormatter;->AR_ISO_8601_P:Ljava/util/concurrent/atomic/AtomicReference;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    check-cast v2, Ljava/text/SimpleDateFormat;

    .line 67
    .line 68
    if-nez v2, :cond_3

    .line 69
    .line 70
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 71
    .line 72
    .line 73
    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    .line 74
    .line 75
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 76
    .line 77
    .line 78
    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 79
    .line 80
    .line 81
    :cond_3
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 82
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 86
    goto :goto_0

    .line 87
    :catchall_1
    move-exception p0

    .line 88
    .line 89
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->AR_ISO_8601_P:Ljava/util/concurrent/atomic/AtomicReference;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 93
    throw p0

    .line 94
    .line 95
    :catch_1
    sget-object p0, Lcom/narvii/util/DateTimeFormatter;->AR_ISO_8601_P:Ljava/util/concurrent/atomic/AtomicReference;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 99
    .line 100
    :goto_0
    if-nez v0, :cond_4

    .line 101
    .line 102
    new-instance v0, Ljava/util/Date;

    .line 103
    .line 104
    const-wide/16 v1, 0x0

    .line 105
    .line 106
    .line 107
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 108
    :cond_4
    return-object v0
.end method

.method public static today()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->TODAY:Ljava/text/SimpleDateFormat;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "yyyy-MM-dd"

    .line 10
    .line 11
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 15
    .line 16
    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->TODAY:Ljava/text/SimpleDateFormat;

    .line 17
    .line 18
    :cond_0
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->TODAY:Ljava/text/SimpleDateFormat;

    .line 19
    .line 20
    new-instance v1, Ljava/util/Date;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public static trimDate(JLjava/util/TimeZone;)J
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/util/TimeZone;->getRawOffset()I

    .line 4
    move-result p2

    .line 5
    int-to-long v0, p2

    .line 6
    add-long/2addr v0, p0

    .line 7
    .line 8
    .line 9
    const-wide/32 v2, 0x5265c00

    .line 10
    rem-long/2addr v0, v2

    .line 11
    sub-long/2addr p0, v0

    .line 12
    return-wide p0
.end method


# virtual methods
.method public daysSince(Ljava/util/Date;)Ljava/lang/String;
    .locals 18

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    if-eqz v1, :cond_c

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Ljava/util/Date;->getTime()J

    .line 10
    move-result-wide v2

    .line 11
    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    cmp-long v2, v2, v4

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto/16 :goto_5

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    move-result-wide v2

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p1 .. p1}, Ljava/util/Date;->getTime()J

    .line 26
    move-result-wide v4

    .line 27
    .line 28
    sub-long v4, v2, v4

    .line 29
    .line 30
    const-wide/16 v6, 0x18

    .line 31
    div-long/2addr v4, v6

    .line 32
    .line 33
    const-wide/16 v8, 0xe10

    .line 34
    div-long/2addr v4, v8

    .line 35
    .line 36
    const-wide/16 v10, 0x3e8

    .line 37
    div-long/2addr v4, v10

    .line 38
    long-to-int v4, v4

    .line 39
    .line 40
    const/16 v5, 0x16d

    .line 41
    const/4 v13, 0x1

    .line 42
    .line 43
    if-le v4, v5, :cond_2

    .line 44
    .line 45
    new-instance v5, Ljava/util/GregorianCalendar;

    .line 46
    .line 47
    .line 48
    invoke-direct {v5}, Ljava/util/GregorianCalendar;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v13}, Ljava/util/Calendar;->get(I)I

    .line 55
    move-result v1

    .line 56
    move v14, v13

    .line 57
    .line 58
    :goto_0
    const/16 v15, 0x1e

    .line 59
    .line 60
    if-ge v14, v15, :cond_2

    .line 61
    .line 62
    add-int v15, v1, v14

    .line 63
    .line 64
    add-int/lit8 v12, v15, 0x1

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, v13, v12}, Ljava/util/Calendar;->set(II)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 71
    move-result-wide v16

    .line 72
    .line 73
    cmp-long v12, v16, v2

    .line 74
    .line 75
    if-lez v12, :cond_1

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, v13, v15}, Ljava/util/Calendar;->set(II)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 82
    move-result-wide v4

    .line 83
    sub-long/2addr v2, v4

    .line 84
    div-long/2addr v2, v6

    .line 85
    div-long/2addr v2, v8

    .line 86
    div-long/2addr v2, v10

    .line 87
    long-to-int v4, v2

    .line 88
    goto :goto_1

    .line 89
    .line 90
    :cond_1
    add-int/lit8 v14, v14, 0x1

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    const/4 v14, 0x0

    .line 93
    .line 94
    :goto_1
    if-lez v14, :cond_6

    .line 95
    .line 96
    if-le v14, v13, :cond_4

    .line 97
    .line 98
    iget-object v1, v0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    .line 99
    .line 100
    if-nez v1, :cond_3

    .line 101
    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v2, " years"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v1

    .line 118
    goto :goto_2

    .line 119
    .line 120
    :cond_3
    sget v2, Lcom/narvii/lib/R$string;->datetime_n_years:I

    .line 121
    .line 122
    new-array v3, v13, [Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    move-result-object v5

    .line 127
    const/4 v6, 0x0

    .line 128
    .line 129
    aput-object v5, v3, v6

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    move-result-object v1

    .line 134
    goto :goto_2

    .line 135
    .line 136
    :cond_4
    iget-object v1, v0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    .line 137
    .line 138
    if-nez v1, :cond_5

    .line 139
    .line 140
    const-string v1, "1 year"

    .line 141
    goto :goto_2

    .line 142
    .line 143
    :cond_5
    sget v2, Lcom/narvii/lib/R$string;->datetime_one_year:I

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 147
    move-result-object v1

    .line 148
    goto :goto_2

    .line 149
    :cond_6
    const/4 v1, 0x0

    .line 150
    .line 151
    .line 152
    :goto_2
    invoke-static {v4, v13}, Ljava/lang/Math;->max(II)I

    .line 153
    move-result v2

    .line 154
    .line 155
    if-le v2, v13, :cond_8

    .line 156
    .line 157
    iget-object v3, v0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    .line 158
    .line 159
    if-nez v3, :cond_7

    .line 160
    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string v2, " days"

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    move-result-object v2

    .line 177
    goto :goto_3

    .line 178
    .line 179
    :cond_7
    sget v4, Lcom/narvii/lib/R$string;->datetime_n_days:I

    .line 180
    .line 181
    new-array v5, v13, [Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    move-result-object v2

    .line 186
    const/4 v6, 0x0

    .line 187
    .line 188
    aput-object v2, v5, v6

    .line 189
    .line 190
    .line 191
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 192
    move-result-object v2

    .line 193
    goto :goto_3

    .line 194
    .line 195
    :cond_8
    iget-object v2, v0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    .line 196
    .line 197
    if-nez v2, :cond_9

    .line 198
    .line 199
    const-string v2, "1 day"

    .line 200
    goto :goto_3

    .line 201
    .line 202
    :cond_9
    sget v3, Lcom/narvii/lib/R$string;->datetime_one_day:I

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 206
    move-result-object v2

    .line 207
    .line 208
    :goto_3
    if-nez v1, :cond_a

    .line 209
    goto :goto_4

    .line 210
    .line 211
    :cond_a
    iget-object v3, v0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    .line 212
    .line 213
    if-nez v3, :cond_b

    .line 214
    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    const-string v1, ", "

    .line 224
    .line 225
    .line 226
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    move-result-object v2

    .line 234
    goto :goto_4

    .line 235
    .line 236
    :cond_b
    sget v4, Lcom/narvii/lib/R$string;->datetime_years_days:I

    .line 237
    const/4 v5, 0x2

    .line 238
    .line 239
    new-array v5, v5, [Ljava/lang/Object;

    .line 240
    const/4 v6, 0x0

    .line 241
    .line 242
    aput-object v1, v5, v6

    .line 243
    .line 244
    aput-object v2, v5, v13

    .line 245
    .line 246
    .line 247
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 248
    move-result-object v2

    .line 249
    :goto_4
    return-object v2

    .line 250
    .line 251
    :cond_c
    :goto_5
    const-string v1, ""

    .line 252
    return-object v1
.end method

.method public endTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    const/4 v0, 0x2

    .line 19
    const/4 v1, 0x3

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    .line 26
    .line 27
    :cond_1
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    .line 34
    :cond_2
    :goto_0
    const-string p1, ""

    .line 35
    return-object p1
.end method

.method public format(Ljava/util/Date;)Ljava/lang/String;
    .locals 6

    .line 1
    .line 2
    if-eqz p1, :cond_12

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_6

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    move-result-wide v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 22
    move-result-wide v2

    .line 23
    sub-long/2addr v0, v2

    .line 24
    .line 25
    const-wide/16 v2, 0x3e8

    .line 26
    div-long/2addr v0, v2

    .line 27
    long-to-int v0, v0

    .line 28
    .line 29
    const/16 v1, -0x4b0

    .line 30
    const/4 v2, 0x2

    .line 31
    .line 32
    if-ge v0, v1, :cond_2

    .line 33
    .line 34
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    const/4 v0, 0x3

    .line 38
    .line 39
    .line 40
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-static {v2, v0, v1}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    .line 48
    .line 49
    :cond_1
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    return-object p1

    .line 55
    .line 56
    :cond_2
    const/16 v1, 0x12c

    .line 57
    .line 58
    if-ge v0, v1, :cond_4

    .line 59
    .line 60
    iget-object p1, p0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    .line 61
    .line 62
    if-nez p1, :cond_3

    .line 63
    .line 64
    const-string p1, "just a moment ago"

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_3
    sget v0, Lcom/narvii/lib/R$string;->datetime_a_moment_ago:I

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    :goto_0
    return-object p1

    .line 73
    .line 74
    :cond_4
    const/16 v1, 0xe10

    .line 75
    const/4 v3, 0x0

    .line 76
    const/4 v4, 0x1

    .line 77
    .line 78
    if-ge v0, v1, :cond_6

    .line 79
    .line 80
    div-int/lit8 v0, v0, 0x3c

    .line 81
    .line 82
    iget-object p1, p0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    .line 83
    .line 84
    if-nez p1, :cond_5

    .line 85
    .line 86
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 87
    .line 88
    new-array v1, v4, [Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    aput-object v0, v1, v3

    .line 95
    .line 96
    const-string v0, "%d minutes ago"

    .line 97
    .line 98
    .line 99
    invoke-static {p1, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    goto :goto_1

    .line 102
    .line 103
    :cond_5
    sget v1, Lcom/narvii/lib/R$string;->datetime_n_minutes_ago:I

    .line 104
    .line 105
    new-array v2, v4, [Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    aput-object v0, v2, v3

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    move-result-object p1

    .line 116
    :goto_1
    return-object p1

    .line 117
    .line 118
    :cond_6
    const/16 v5, 0x1518

    .line 119
    .line 120
    if-ge v0, v5, :cond_8

    .line 121
    .line 122
    iget-object p1, p0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    .line 123
    .line 124
    if-nez p1, :cond_7

    .line 125
    .line 126
    const-string p1, "about an hour ago"

    .line 127
    goto :goto_2

    .line 128
    .line 129
    :cond_7
    sget v0, Lcom/narvii/lib/R$string;->datetime_a_hour_ago:I

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 133
    move-result-object p1

    .line 134
    :goto_2
    return-object p1

    .line 135
    .line 136
    .line 137
    :cond_8
    const v5, 0x15180

    .line 138
    .line 139
    if-ge v0, v5, :cond_a

    .line 140
    .line 141
    add-int/lit16 v0, v0, 0x708

    .line 142
    div-int/2addr v0, v1

    .line 143
    .line 144
    iget-object p1, p0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    .line 145
    .line 146
    if-nez p1, :cond_9

    .line 147
    .line 148
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 149
    .line 150
    new-array v1, v4, [Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    move-result-object v0

    .line 155
    .line 156
    aput-object v0, v1, v3

    .line 157
    .line 158
    const-string v0, "%d hours ago"

    .line 159
    .line 160
    .line 161
    invoke-static {p1, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    move-result-object p1

    .line 163
    goto :goto_3

    .line 164
    .line 165
    :cond_9
    sget v1, Lcom/narvii/lib/R$string;->datetime_n_hours_ago:I

    .line 166
    .line 167
    new-array v2, v4, [Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    move-result-object v0

    .line 172
    .line 173
    aput-object v0, v2, v3

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    move-result-object p1

    .line 178
    :goto_3
    return-object p1

    .line 179
    .line 180
    .line 181
    :cond_a
    const v1, 0x2a300

    .line 182
    .line 183
    if-ge v0, v1, :cond_c

    .line 184
    .line 185
    iget-object p1, p0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    .line 186
    .line 187
    if-nez p1, :cond_b

    .line 188
    .line 189
    const-string p1, "1 day ago"

    .line 190
    goto :goto_4

    .line 191
    .line 192
    :cond_b
    sget v0, Lcom/narvii/lib/R$string;->datetime_a_day_ago:I

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 196
    move-result-object p1

    .line 197
    :goto_4
    return-object p1

    .line 198
    .line 199
    .line 200
    :cond_c
    const v1, 0x278d00

    .line 201
    .line 202
    if-ge v0, v1, :cond_e

    .line 203
    .line 204
    .line 205
    const p1, 0xa8c0

    .line 206
    add-int/2addr v0, p1

    .line 207
    div-int/2addr v0, v5

    .line 208
    .line 209
    iget-object p1, p0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    .line 210
    .line 211
    if-nez p1, :cond_d

    .line 212
    .line 213
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 214
    .line 215
    new-array v1, v4, [Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    move-result-object v0

    .line 220
    .line 221
    aput-object v0, v1, v3

    .line 222
    .line 223
    const-string v0, "%d days ago"

    .line 224
    .line 225
    .line 226
    invoke-static {p1, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 227
    move-result-object p1

    .line 228
    goto :goto_5

    .line 229
    .line 230
    :cond_d
    sget v1, Lcom/narvii/lib/R$string;->datetime_n_days_ago:I

    .line 231
    .line 232
    new-array v2, v4, [Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    move-result-object v0

    .line 237
    .line 238
    aput-object v0, v2, v3

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 242
    move-result-object p1

    .line 243
    :goto_5
    return-object p1

    .line 244
    .line 245
    .line 246
    :cond_e
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 247
    move-result-wide v0

    .line 248
    .line 249
    .line 250
    invoke-static {v0, v1}, Lcom/narvii/util/DateTimeFormatter;->isThisYear(J)Z

    .line 251
    move-result v0

    .line 252
    .line 253
    if-eqz v0, :cond_10

    .line 254
    .line 255
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_DATE_YEARLESS:Ljava/text/DateFormat;

    .line 256
    .line 257
    if-nez v0, :cond_f

    .line 258
    .line 259
    .line 260
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 261
    move-result-object v0

    .line 262
    .line 263
    .line 264
    invoke-static {v0}, Lcom/narvii/util/DateTimeFormatter;->getYearlessDateFormat(Ljava/util/Locale;)Ljava/text/DateFormat;

    .line 265
    move-result-object v0

    .line 266
    .line 267
    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_DATE_YEARLESS:Ljava/text/DateFormat;

    .line 268
    .line 269
    :cond_f
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_DATE_YEARLESS:Ljava/text/DateFormat;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 273
    move-result-object p1

    .line 274
    return-object p1

    .line 275
    .line 276
    :cond_10
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_DATE:Ljava/text/DateFormat;

    .line 277
    .line 278
    if-nez v0, :cond_11

    .line 279
    .line 280
    .line 281
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 282
    move-result-object v0

    .line 283
    .line 284
    .line 285
    invoke-static {v2, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    .line 286
    move-result-object v0

    .line 287
    .line 288
    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_DATE:Ljava/text/DateFormat;

    .line 289
    .line 290
    :cond_11
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_DATE:Ljava/text/DateFormat;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 294
    move-result-object p1

    .line 295
    return-object p1

    .line 296
    .line 297
    :cond_12
    :goto_6
    const-string p1, ""

    .line 298
    return-object p1
.end method

.method public formatChat(Ljava/util/Date;)Ljava/lang/String;
    .locals 11

    .line 1
    .line 2
    if-eqz p1, :cond_11

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    move-result-wide v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 22
    move-result-wide v2

    .line 23
    .line 24
    sub-long v2, v0, v2

    .line 25
    .line 26
    const-wide/16 v4, 0x3e8

    .line 27
    div-long/2addr v2, v4

    .line 28
    long-to-int v2, v2

    .line 29
    .line 30
    const/16 v3, -0x4b0

    .line 31
    const/4 v4, 0x2

    .line 32
    const/4 v5, 0x3

    .line 33
    .line 34
    if-ge v2, v3, :cond_2

    .line 35
    .line 36
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-static {v4, v5, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    .line 49
    .line 50
    :cond_1
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    return-object p1

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1, v2}, Lcom/narvii/util/DateTimeFormatter;->trimDate(JLjava/util/TimeZone;)J

    .line 63
    move-result-wide v0

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 67
    move-result-wide v2

    .line 68
    .line 69
    cmp-long v2, v2, v0

    .line 70
    .line 71
    if-ltz v2, :cond_4

    .line 72
    .line 73
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_TIME:Ljava/text/DateFormat;

    .line 74
    .line 75
    if-nez v0, :cond_3

    .line 76
    .line 77
    .line 78
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 79
    move-result-object v0

    .line 80
    .line 81
    .line 82
    invoke-static {v5, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    .line 83
    move-result-object v0

    .line 84
    .line 85
    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_TIME:Ljava/text/DateFormat;

    .line 86
    .line 87
    :cond_3
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_TIME:Ljava/text/DateFormat;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    return-object p1

    .line 93
    .line 94
    .line 95
    :cond_4
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 96
    move-result-wide v2

    .line 97
    .line 98
    .line 99
    const-wide/32 v6, 0x5265c00

    .line 100
    .line 101
    sub-long v6, v0, v6

    .line 102
    .line 103
    cmp-long v2, v2, v6

    .line 104
    const/4 v3, 0x0

    .line 105
    const/4 v6, 0x1

    .line 106
    .line 107
    if-ltz v2, :cond_7

    .line 108
    .line 109
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_TIME:Ljava/text/DateFormat;

    .line 110
    .line 111
    if-nez v0, :cond_5

    .line 112
    .line 113
    .line 114
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    .line 118
    invoke-static {v5, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_TIME:Ljava/text/DateFormat;

    .line 122
    .line 123
    :cond_5
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_TIME:Ljava/text/DateFormat;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    iget-object v0, p0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    .line 130
    .line 131
    if-nez v0, :cond_6

    .line 132
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    const-string v1, "Yesterday "

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object p1

    .line 149
    goto :goto_0

    .line 150
    .line 151
    :cond_6
    sget v1, Lcom/narvii/lib/R$string;->datetime_yesterday:I

    .line 152
    .line 153
    new-array v2, v6, [Ljava/lang/Object;

    .line 154
    .line 155
    aput-object p1, v2, v3

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    move-result-object p1

    .line 160
    :goto_0
    return-object p1

    .line 161
    .line 162
    .line 163
    :cond_7
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 164
    move-result-wide v7

    .line 165
    .line 166
    .line 167
    const-wide/32 v9, 0x1ee62800

    .line 168
    sub-long/2addr v0, v9

    .line 169
    .line 170
    cmp-long v0, v7, v0

    .line 171
    .line 172
    const-string v1, " "

    .line 173
    .line 174
    if-ltz v0, :cond_b

    .line 175
    .line 176
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_WEEK:Ljava/text/DateFormat;

    .line 177
    .line 178
    if-nez v0, :cond_8

    .line 179
    .line 180
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 181
    .line 182
    const-string v2, "E"

    .line 183
    .line 184
    .line 185
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 186
    move-result-object v7

    .line 187
    .line 188
    .line 189
    invoke-direct {v0, v2, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 190
    .line 191
    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_WEEK:Ljava/text/DateFormat;

    .line 192
    .line 193
    :cond_8
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_WEEK:Ljava/text/DateFormat;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 197
    move-result-object v0

    .line 198
    .line 199
    sget-object v2, Lcom/narvii/util/DateTimeFormatter;->FMT_TIME:Ljava/text/DateFormat;

    .line 200
    .line 201
    if-nez v2, :cond_9

    .line 202
    .line 203
    .line 204
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 205
    move-result-object v2

    .line 206
    .line 207
    .line 208
    invoke-static {v5, v2}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    .line 209
    move-result-object v2

    .line 210
    .line 211
    sput-object v2, Lcom/narvii/util/DateTimeFormatter;->FMT_TIME:Ljava/text/DateFormat;

    .line 212
    .line 213
    :cond_9
    sget-object v2, Lcom/narvii/util/DateTimeFormatter;->FMT_TIME:Ljava/text/DateFormat;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 217
    move-result-object p1

    .line 218
    .line 219
    iget-object v2, p0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    .line 220
    .line 221
    if-nez v2, :cond_a

    .line 222
    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    move-result-object p1

    .line 240
    goto :goto_1

    .line 241
    .line 242
    :cond_a
    sget v1, Lcom/narvii/lib/R$string;->datetime_week_time:I

    .line 243
    .line 244
    new-array v4, v4, [Ljava/lang/Object;

    .line 245
    .line 246
    aput-object v0, v4, v3

    .line 247
    .line 248
    aput-object p1, v4, v6

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 252
    move-result-object p1

    .line 253
    :goto_1
    return-object p1

    .line 254
    .line 255
    .line 256
    :cond_b
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 257
    move-result-wide v7

    .line 258
    .line 259
    .line 260
    invoke-static {v7, v8}, Lcom/narvii/util/DateTimeFormatter;->isThisYear(J)Z

    .line 261
    move-result v0

    .line 262
    .line 263
    if-eqz v0, :cond_f

    .line 264
    .line 265
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_DATE_YEARLESS:Ljava/text/DateFormat;

    .line 266
    .line 267
    if-nez v0, :cond_c

    .line 268
    .line 269
    .line 270
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 271
    move-result-object v0

    .line 272
    .line 273
    .line 274
    invoke-static {v0}, Lcom/narvii/util/DateTimeFormatter;->getYearlessDateFormat(Ljava/util/Locale;)Ljava/text/DateFormat;

    .line 275
    move-result-object v0

    .line 276
    .line 277
    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_DATE_YEARLESS:Ljava/text/DateFormat;

    .line 278
    .line 279
    :cond_c
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_DATE_YEARLESS:Ljava/text/DateFormat;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 283
    move-result-object v0

    .line 284
    .line 285
    sget-object v2, Lcom/narvii/util/DateTimeFormatter;->FMT_TIME:Ljava/text/DateFormat;

    .line 286
    .line 287
    if-nez v2, :cond_d

    .line 288
    .line 289
    .line 290
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 291
    move-result-object v2

    .line 292
    .line 293
    .line 294
    invoke-static {v5, v2}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    .line 295
    move-result-object v2

    .line 296
    .line 297
    sput-object v2, Lcom/narvii/util/DateTimeFormatter;->FMT_TIME:Ljava/text/DateFormat;

    .line 298
    .line 299
    :cond_d
    sget-object v2, Lcom/narvii/util/DateTimeFormatter;->FMT_TIME:Ljava/text/DateFormat;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 303
    move-result-object p1

    .line 304
    .line 305
    iget-object v2, p0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    .line 306
    .line 307
    if-nez v2, :cond_e

    .line 308
    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    move-result-object p1

    .line 326
    goto :goto_2

    .line 327
    .line 328
    :cond_e
    sget v1, Lcom/narvii/lib/R$string;->datetime_date_time:I

    .line 329
    .line 330
    new-array v4, v4, [Ljava/lang/Object;

    .line 331
    .line 332
    aput-object v0, v4, v3

    .line 333
    .line 334
    aput-object p1, v4, v6

    .line 335
    .line 336
    .line 337
    invoke-virtual {v2, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 338
    move-result-object p1

    .line 339
    :goto_2
    return-object p1

    .line 340
    .line 341
    :cond_f
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    .line 342
    .line 343
    if-nez v0, :cond_10

    .line 344
    .line 345
    .line 346
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 347
    move-result-object v0

    .line 348
    .line 349
    .line 350
    invoke-static {v4, v5, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    .line 351
    move-result-object v0

    .line 352
    .line 353
    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    .line 354
    .line 355
    :cond_10
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 359
    move-result-object p1

    .line 360
    return-object p1

    .line 361
    .line 362
    :cond_11
    :goto_3
    const-string p1, ""

    .line 363
    return-object p1
.end method

.method public formatChatCardTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 5

    .line 1
    .line 2
    const-string v0, ""

    .line 3
    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 8
    move-result-wide v1

    .line 9
    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    cmp-long v1, v1, v3

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    move-result-wide v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 23
    move-result-wide v3

    .line 24
    sub-long/2addr v1, v3

    .line 25
    .line 26
    const-wide/16 v3, 0x3e8

    .line 27
    div-long/2addr v1, v3

    .line 28
    long-to-int v1, v1

    .line 29
    .line 30
    const/16 v2, -0x4b0

    .line 31
    .line 32
    if-ge v1, v2, :cond_2

    .line 33
    .line 34
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    const/4 v0, 0x3

    .line 38
    .line 39
    .line 40
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x2

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v0, v1}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    .line 49
    .line 50
    :cond_1
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    return-object p1

    .line 56
    .line 57
    .line 58
    :cond_2
    const v2, 0x15180

    .line 59
    .line 60
    if-le v1, v2, :cond_3

    .line 61
    return-object v0

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-virtual {p0, p1}, Lcom/narvii/util/DateTimeFormatter;->formatHeadlineFeedTime(Ljava/util/Date;)Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    return-object p1

    .line 67
    :cond_4
    :goto_0
    return-object v0
.end method

.method public formatExpireCountDown(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7

    .line 1
    .line 2
    .line 3
    const-wide/32 v0, 0x5265c00

    .line 4
    .line 5
    cmp-long v0, p2, v0

    .line 6
    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 10
    const/4 v0, 0x3

    .line 11
    .line 12
    new-array v0, v0, [Ljava/lang/Object;

    .line 13
    .line 14
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    .line 18
    move-result-wide v2

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x0

    .line 24
    .line 25
    aput-object v2, v0, v3

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    .line 29
    move-result-wide v2

    .line 30
    .line 31
    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    .line 35
    move-result-wide v5

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    .line 39
    move-result-wide v4

    .line 40
    sub-long/2addr v2, v4

    .line 41
    .line 42
    .line 43
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    move-result-object v2

    .line 45
    const/4 v3, 0x1

    .line 46
    .line 47
    aput-object v2, v0, v3

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 51
    move-result-wide v2

    .line 52
    .line 53
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    .line 57
    move-result-wide p2

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 61
    move-result-wide p2

    .line 62
    sub-long/2addr v2, p2

    .line 63
    .line 64
    .line 65
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    move-result-object p2

    .line 67
    const/4 p3, 0x2

    .line 68
    .line 69
    aput-object p2, v0, p3

    .line 70
    .line 71
    const-string p2, "%02d:%02d:%02d"

    .line 72
    .line 73
    .line 74
    invoke-static {p1, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    return-object p1

    .line 77
    :cond_0
    const/4 v4, 0x1

    .line 78
    const/4 v5, 0x1

    .line 79
    const/4 v6, 0x0

    .line 80
    move-object v0, p0

    .line 81
    move-object v1, p1

    .line 82
    move-wide v2, p2

    .line 83
    .line 84
    .line 85
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/util/DateTimeFormatter;->formatRemainingText(Landroid/content/Context;JZZZ)Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    return-object p1
.end method

.method public formatExpireTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v4, 0x1

    .line 2
    const/4 v5, 0x1

    .line 3
    const/4 v6, 0x1

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-wide v2, p2

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/util/DateTimeFormatter;->formatRemainingText(Landroid/content/Context;JZZZ)Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public formatHeadlineFeedTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    if-eqz p1, :cond_c

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    move-result-wide v0

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 22
    move-result-wide v2

    .line 23
    sub-long/2addr v0, v2

    .line 24
    .line 25
    const-wide/16 v2, 0x3e8

    .line 26
    div-long/2addr v0, v2

    .line 27
    long-to-int v0, v0

    .line 28
    .line 29
    const/16 v1, -0x4b0

    .line 30
    const/4 v2, 0x2

    .line 31
    .line 32
    if-ge v0, v1, :cond_2

    .line 33
    .line 34
    sget-object p1, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    .line 35
    .line 36
    if-nez p1, :cond_1

    .line 37
    const/4 p1, 0x3

    .line 38
    .line 39
    .line 40
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-static {v2, p1, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    sput-object p1, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    .line 48
    .line 49
    :cond_1
    iget-object p1, p0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    .line 50
    .line 51
    sget v0, Lcom/narvii/lib/R$string;->datetime_now:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    return-object p1

    .line 57
    .line 58
    :cond_2
    const/16 v1, 0x12c

    .line 59
    .line 60
    if-ge v0, v1, :cond_3

    .line 61
    .line 62
    iget-object p1, p0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    .line 63
    .line 64
    sget v0, Lcom/narvii/lib/R$string;->datetime_now:I

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    return-object p1

    .line 70
    .line 71
    :cond_3
    const/16 v1, 0xe10

    .line 72
    .line 73
    if-ge v0, v1, :cond_4

    .line 74
    .line 75
    div-int/lit8 v0, v0, 0x3c

    .line 76
    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v0, "m"

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p1

    .line 93
    return-object p1

    .line 94
    .line 95
    :cond_4
    const/16 v3, 0x1518

    .line 96
    .line 97
    if-ge v0, v3, :cond_5

    .line 98
    .line 99
    const-string p1, "1h"

    .line 100
    return-object p1

    .line 101
    .line 102
    .line 103
    :cond_5
    const v3, 0x15180

    .line 104
    .line 105
    if-ge v0, v3, :cond_6

    .line 106
    .line 107
    add-int/lit16 v0, v0, 0x708

    .line 108
    div-int/2addr v0, v1

    .line 109
    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v0, "h"

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object p1

    .line 126
    return-object p1

    .line 127
    .line 128
    .line 129
    :cond_6
    const v1, 0x2a300

    .line 130
    .line 131
    if-ge v0, v1, :cond_7

    .line 132
    .line 133
    const-string p1, "1d"

    .line 134
    return-object p1

    .line 135
    .line 136
    .line 137
    :cond_7
    const v1, 0x278d00

    .line 138
    .line 139
    if-ge v0, v1, :cond_8

    .line 140
    .line 141
    .line 142
    const p1, 0xa8c0

    .line 143
    add-int/2addr v0, p1

    .line 144
    div-int/2addr v0, v3

    .line 145
    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string v0, "d"

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object p1

    .line 162
    return-object p1

    .line 163
    .line 164
    .line 165
    :cond_8
    const v1, 0xed4e00

    .line 166
    .line 167
    if-ge v0, v1, :cond_a

    .line 168
    .line 169
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_DATE_YEARLESS:Ljava/text/DateFormat;

    .line 170
    .line 171
    if-nez v0, :cond_9

    .line 172
    .line 173
    .line 174
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 175
    move-result-object v0

    .line 176
    .line 177
    .line 178
    invoke-static {v0}, Lcom/narvii/util/DateTimeFormatter;->getYearlessDateFormat(Ljava/util/Locale;)Ljava/text/DateFormat;

    .line 179
    move-result-object v0

    .line 180
    .line 181
    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_DATE_YEARLESS:Ljava/text/DateFormat;

    .line 182
    .line 183
    :cond_9
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_DATE_YEARLESS:Ljava/text/DateFormat;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 187
    move-result-object p1

    .line 188
    return-object p1

    .line 189
    .line 190
    :cond_a
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_DATE:Ljava/text/DateFormat;

    .line 191
    .line 192
    if-nez v0, :cond_b

    .line 193
    .line 194
    .line 195
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 196
    move-result-object v0

    .line 197
    .line 198
    .line 199
    invoke-static {v2, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    .line 200
    move-result-object v0

    .line 201
    .line 202
    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_DATE:Ljava/text/DateFormat;

    .line 203
    .line 204
    :cond_b
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_DATE:Ljava/text/DateFormat;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 208
    move-result-object p1

    .line 209
    return-object p1

    .line 210
    .line 211
    :cond_c
    :goto_0
    const-string p1, ""

    .line 212
    return-object p1
.end method

.method public formatRemainingText(Landroid/content/Context;JZZZ)Ljava/lang/String;
    .locals 7

    .line 1
    .line 2
    .line 3
    const-wide/32 v0, 0x5265c00

    .line 4
    .line 5
    div-long v0, p2, v0

    .line 6
    long-to-int v0, v0

    .line 7
    .line 8
    .line 9
    const-wide/32 v1, 0x36ee80

    .line 10
    .line 11
    div-long v1, p2, v1

    .line 12
    .line 13
    const-wide/16 v3, 0x18

    .line 14
    int-to-long v5, v0

    .line 15
    mul-long/2addr v5, v3

    .line 16
    sub-long/2addr v1, v5

    .line 17
    long-to-int v1, v1

    .line 18
    .line 19
    .line 20
    const-wide/32 v2, 0xea60

    .line 21
    div-long/2addr p2, v2

    .line 22
    int-to-long v2, v1

    .line 23
    add-long/2addr v5, v2

    .line 24
    .line 25
    const-wide/16 v2, 0x3c

    .line 26
    mul-long/2addr v5, v2

    .line 27
    sub-long/2addr p2, v5

    .line 28
    long-to-int p2, p2

    .line 29
    .line 30
    new-instance p3, Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 34
    const/4 v2, 0x0

    .line 35
    const/4 v3, 0x1

    .line 36
    .line 37
    if-eqz p4, :cond_1

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    if-eq v0, v3, :cond_0

    .line 42
    .line 43
    sget p4, Lcom/narvii/lib/R$string;->datetime_n_days:I

    .line 44
    .line 45
    new-array v4, v3, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    aput-object v0, v4, v2

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p4, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    move-result-object p4

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_0
    sget p4, Lcom/narvii/lib/R$string;->datetime_one_day:I

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 65
    move-result-object p4

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    :cond_1
    :goto_0
    if-eqz p5, :cond_3

    .line 71
    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    if-eq v1, v3, :cond_2

    .line 75
    .line 76
    sget p4, Lcom/narvii/lib/R$string;->datetime_n_hours:I

    .line 77
    .line 78
    new-array p5, v3, [Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    aput-object v0, p5, v2

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p4, p5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    move-result-object p4

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    goto :goto_1

    .line 93
    .line 94
    :cond_2
    sget p4, Lcom/narvii/lib/R$string;->datetime_one_hour:I

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 98
    move-result-object p4

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    :cond_3
    :goto_1
    if-eqz p6, :cond_5

    .line 104
    .line 105
    if-eqz p2, :cond_5

    .line 106
    .line 107
    if-eq p2, v3, :cond_4

    .line 108
    .line 109
    sget p4, Lcom/narvii/lib/R$string;->datetime_n_minutes:I

    .line 110
    .line 111
    new-array p5, v3, [Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    move-result-object p2

    .line 116
    .line 117
    aput-object p2, p5, v2

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, p4, p5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    .line 124
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    goto :goto_2

    .line 126
    .line 127
    :cond_4
    sget p2, Lcom/narvii/lib/R$string;->datetime_one_minute:I

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 131
    move-result-object p1

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    :cond_5
    :goto_2
    const-string p1, " "

    .line 137
    .line 138
    .line 139
    invoke-static {p1, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 140
    move-result-object p1

    .line 141
    return-object p1
.end method

.method public memberSinceDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    const-string v1, "Member for "

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/narvii/util/DateTimeFormatter;->daysSince(Ljava/util/Date;)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    .line 41
    :cond_1
    sget v1, Lcom/narvii/lib/R$string;->datetime_member_since:I

    .line 42
    const/4 v2, 0x1

    .line 43
    .line 44
    new-array v2, v2, [Ljava/lang/Object;

    .line 45
    const/4 v3, 0x0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/narvii/util/DateTimeFormatter;->daysSince(Ljava/util/Date;)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    aput-object p1, v2, v3

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    return-object p1

    .line 57
    .line 58
    :cond_2
    :goto_0
    const-string p1, ""

    .line 59
    return-object p1
.end method
