.class public Lcom/narvii/util/DateTimeFormatter;
.super Ljava/lang/Object;
.source "DateTimeFormatter.java"


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

    const-string v0, "+0000"

    .line 26
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->TZ_0:Ljava/util/TimeZone;

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->AR_ISO_8601_P:Ljava/util/concurrent/atomic/AtomicReference;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->AR_ISO_8601_P_TZ:Ljava/util/concurrent/atomic/AtomicReference;

    .line 95
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->instances:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    return-void
.end method

.method public static formatISO8601(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 32
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->ISO_8601_FMT:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->ISO_8601_FMT:Ljava/text/SimpleDateFormat;

    .line 34
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->ISO_8601_FMT:Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/narvii/util/DateTimeFormatter;->TZ_0:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 36
    :cond_0
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->ISO_8601_FMT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/narvii/util/DateTimeFormatter;
    .locals 2

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 99
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->instances:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/DateTimeFormatter;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/narvii/util/DateTimeFormatter;

    invoke-direct {v0, p0}, Lcom/narvii/util/DateTimeFormatter;-><init>(Landroid/content/Context;)V

    .line 102
    sget-object v1, Lcom/narvii/util/DateTimeFormatter;->instances:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private static getYearlessDateFormat(Ljava/util/Locale;)Ljava/text/DateFormat;
    .locals 4

    const/4 v0, 0x1

    .line 471
    invoke-static {v0, p0}, Ljava/text/SimpleDateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 472
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    const-string v1, "de"

    .line 474
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "[^Mm]*[Yy]+[^Mm]*"

    goto :goto_0

    :cond_0
    const-string v1, "[^DdMm]*[Yy]+[^DdMm]*"

    :goto_0
    const-string v2, ""

    .line 475
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 477
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to convert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " yearless pattern \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 481
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy M"

    invoke-direct {v0, v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static isThisYear(J)Z
    .locals 13

    .line 459
    sget-wide v0, Lcom/narvii/util/DateTimeFormatter;->TIME_START_OF_THIS_YEAR:J

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    .line 460
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 461
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v0

    invoke-virtual/range {v6 .. v12}, Ljava/util/Calendar;->set(IIIIII)V

    .line 462
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    .line 463
    rem-long v3, v0, v3

    sub-long/2addr v0, v3

    .line 464
    sput-wide v0, Lcom/narvii/util/DateTimeFormatter;->TIME_START_OF_THIS_YEAR:J

    .line 466
    :cond_0
    sget-wide v0, Lcom/narvii/util/DateTimeFormatter;->TIME_START_OF_THIS_YEAR:J

    cmp-long v3, p0, v0

    if-ltz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static liteMS(I)Ljava/lang/String;
    .locals 9

    .line 332
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v3, p0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v3, v4}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v1, v5

    int-to-double v5, p0

    const-wide v7, 0x408f400000000000L    # 1000.0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    .line 333
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    sub-long/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "%01d:%02d"

    .line 332
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseISO8601(Ljava/lang/String;)Ljava/util/Date;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Z"

    .line 45
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 46
    sget-object v1, Lcom/narvii/util/DateTimeFormatter;->AR_ISO_8601_P_TZ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    if-nez v1, :cond_1

    .line 48
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 49
    sget-object v2, Lcom/narvii/util/DateTimeFormatter;->TZ_0:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 52
    :cond_1
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :catch_0
    sget-object p0, Lcom/narvii/util/DateTimeFormatter;->AR_ISO_8601_P_TZ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->AR_ISO_8601_P_TZ:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 56
    throw p0

    .line 58
    :cond_2
    sget-object v1, Lcom/narvii/util/DateTimeFormatter;->AR_ISO_8601_P:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    if-nez v1, :cond_3

    .line 60
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 63
    :cond_3
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    :catch_1
    sget-object p0, Lcom/narvii/util/DateTimeFormatter;->AR_ISO_8601_P:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_1
    move-exception p0

    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->AR_ISO_8601_P:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 67
    throw p0

    :goto_0
    if-nez v0, :cond_4

    .line 69
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    :cond_4
    return-object v0
.end method

.method public static today()Ljava/lang/String;
    .locals 3

    .line 78
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->TODAY:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->TODAY:Ljava/text/SimpleDateFormat;

    .line 81
    :cond_0
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->TODAY:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trimDate(JLjava/util/TimeZone;)J
    .locals 4

    .line 455
    invoke-virtual {p2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p2

    int-to-long v0, p2

    add-long/2addr v0, p0

    const-wide/32 v2, 0x5265c00

    rem-long/2addr v0, v2

    sub-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public daysSince(Ljava/util/Date;)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_c

    .line 391
    invoke-virtual/range {p1 .. p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto/16 :goto_5

    .line 396
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 397
    invoke-virtual/range {p1 .. p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x18

    .line 398
    div-long/2addr v4, v6

    const-wide/16 v8, 0xe10

    div-long/2addr v4, v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v4, v10

    long-to-int v5, v4

    const/16 v4, 0x16d

    const/4 v13, 0x1

    if-le v5, v4, :cond_2

    .line 400
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4}, Ljava/util/GregorianCalendar;-><init>()V

    .line 401
    invoke-virtual {v4, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 402
    invoke-virtual {v4, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v14, 0x1

    :goto_0
    const/16 v15, 0x1e

    if-ge v14, v15, :cond_2

    add-int v15, v1, v14

    add-int/lit8 v12, v15, 0x1

    .line 404
    invoke-virtual {v4, v13, v12}, Ljava/util/Calendar;->set(II)V

    .line 405
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    cmp-long v12, v16, v2

    if-lez v12, :cond_1

    .line 407
    invoke-virtual {v4, v13, v15}, Ljava/util/Calendar;->set(II)V

    .line 408
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 409
    div-long/2addr v2, v6

    div-long/2addr v2, v8

    div-long/2addr v2, v10

    long-to-int v5, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    :goto_1
    const/4 v1, 0x0

    if-lez v14, :cond_6

    if-le v14, v13, :cond_4

    .line 418
    iget-object v1, v0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " years"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    sget v2, Lcom/narvii/lib/R$string;->datetime_n_years:I

    new-array v3, v13, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 420
    :cond_4
    iget-object v1, v0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    if-nez v1, :cond_5

    const-string v1, "1 year"

    goto :goto_2

    :cond_5
    sget v2, Lcom/narvii/lib/R$string;->datetime_one_year:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 424
    :cond_6
    :goto_2
    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-le v2, v13, :cond_8

    .line 426
    iget-object v3, v0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    if-nez v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " days"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_7
    sget v4, Lcom/narvii/lib/R$string;->datetime_n_days:I

    new-array v5, v13, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 428
    :cond_8
    iget-object v2, v0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    if-nez v2, :cond_9

    const-string v2, "1 day"

    goto :goto_3

    :cond_9
    sget v3, Lcom/narvii/lib/R$string;->datetime_one_day:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_3
    if-nez v1, :cond_a

    goto :goto_4

    .line 431
    :cond_a
    iget-object v3, v0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    if-nez v3, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_b
    sget v4, Lcom/narvii/lib/R$string;->datetime_years_days:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    aput-object v2, v5, v13

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    return-object v2

    :cond_c
    :goto_5
    const-string v1, ""

    return-object v1
.end method

.method public endTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_2

    .line 435
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 439
    :cond_0
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    if-nez v0, :cond_1

    const/4 v0, 0x2

    const/4 v1, 0x3

    .line 440
    invoke-static {v0, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    .line 443
    :cond_1
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public format(Ljava/util/Date;)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_12

    .line 117
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto/16 :goto_6

    .line 122
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    const/16 v0, -0x4b0

    const/4 v2, 0x2

    if-ge v1, v0, :cond_2

    .line 126
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    if-nez v0, :cond_1

    const/4 v0, 0x3

    .line 127
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v2, v0, v1}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    .line 129
    :cond_1
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v0, 0x12c

    if-ge v1, v0, :cond_4

    .line 133
    iget-object p1, p0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    if-nez p1, :cond_3

    const-string p1, "just a moment ago"

    goto :goto_0

    :cond_3
    sget v0, Lcom/narvii/lib/R$string;->datetime_a_moment_ago:I

    .line 134
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_4
    const/16 v0, 0xe10

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v0, :cond_6

    .line 138
    div-int/lit8 v1, v1, 0x3c

    .line 139
    iget-object p1, p0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    if-nez p1, :cond_5

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v4, [Ljava/lang/Object;

    .line 140
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "%d minutes ago"

    .line 139
    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    sget v0, Lcom/narvii/lib/R$string;->datetime_n_minutes_ago:I

    new-array v2, v4, [Ljava/lang/Object;

    .line 141
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    .line 140
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_6
    const/16 v5, 0x1518

    if-ge v1, v5, :cond_8

    .line 145
    iget-object p1, p0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    if-nez p1, :cond_7

    const-string p1, "about an hour ago"

    goto :goto_2

    :cond_7
    sget v0, Lcom/narvii/lib/R$string;->datetime_a_hour_ago:I

    .line 146
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    :cond_8
    const v5, 0x15180

    if-ge v1, v5, :cond_a

    add-int/lit16 v1, v1, 0x708

    .line 150
    div-int/2addr v1, v0

    .line 151
    iget-object p1, p0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    if-nez p1, :cond_9

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v4, [Ljava/lang/Object;

    .line 152
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "%d hours ago"

    .line 151
    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_9
    sget v0, Lcom/narvii/lib/R$string;->datetime_n_hours_ago:I

    new-array v2, v4, [Ljava/lang/Object;

    .line 152
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    return-object p1

    :cond_a
    const v0, 0x2a300

    if-ge v1, v0, :cond_c

    .line 156
    iget-object p1, p0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    if-nez p1, :cond_b

    const-string p1, "1 day ago"

    goto :goto_4

    :cond_b
    sget v0, Lcom/narvii/lib/R$string;->datetime_a_day_ago:I

    .line 157
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_4
    return-object p1

    :cond_c
    const v0, 0x278d00

    if-ge v1, v0, :cond_e

    const p1, 0xa8c0

    add-int/2addr v1, p1

    .line 161
    div-int/2addr v1, v5

    .line 162
    iget-object p1, p0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    if-nez p1, :cond_d

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v4, [Ljava/lang/Object;

    .line 163
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "%d days ago"

    .line 162
    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_d
    sget v0, Lcom/narvii/lib/R$string;->datetime_n_days_ago:I

    new-array v2, v4, [Ljava/lang/Object;

    .line 164
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    .line 163
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_5
    return-object p1

    .line 167
    :cond_e
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/narvii/util/DateTimeFormatter;->isThisYear(J)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 168
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_DATE_YEARLESS:Ljava/text/DateFormat;

    if-nez v0, :cond_f

    .line 169
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/DateTimeFormatter;->getYearlessDateFormat(Ljava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_DATE_YEARLESS:Ljava/text/DateFormat;

    .line 171
    :cond_f
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_DATE_YEARLESS:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 174
    :cond_10
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_DATE:Ljava/text/DateFormat;

    if-nez v0, :cond_11

    .line 175
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_DATE:Ljava/text/DateFormat;

    .line 177
    :cond_11
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_DATE:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_12
    :goto_6
    const-string p1, ""

    return-object p1
.end method

.method public formatChat(Ljava/util/Date;)Ljava/lang/String;
    .locals 11

    if-eqz p1, :cond_11

    .line 236
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto/16 :goto_3

    .line 240
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 242
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v3, v2

    const/16 v2, -0x4b0

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-ge v3, v2, :cond_2

    .line 246
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    if-nez v0, :cond_1

    .line 247
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v4, v5, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    .line 249
    :cond_1
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 252
    :cond_2
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/narvii/util/DateTimeFormatter;->trimDate(JLjava/util/TimeZone;)J

    move-result-wide v0

    .line 255
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v6, v2, v0

    if-ltz v6, :cond_4

    .line 256
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_TIME:Ljava/text/DateFormat;

    if-nez v0, :cond_3

    .line 257
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_TIME:Ljava/text/DateFormat;

    .line 259
    :cond_3
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_TIME:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 263
    :cond_4
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v6, 0x5265c00

    sub-long v6, v0, v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    cmp-long v10, v2, v6

    if-ltz v10, :cond_7

    .line 264
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_TIME:Ljava/text/DateFormat;

    if-nez v0, :cond_5

    .line 265
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_TIME:Ljava/text/DateFormat;

    .line 267
    :cond_5
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_TIME:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 268
    iget-object v0, p0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Yesterday "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    sget v1, Lcom/narvii/lib/R$string;->datetime_yesterday:I

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p1, v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    .line 272
    :cond_7
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v6, 0x1ee62800

    sub-long/2addr v0, v6

    const-string v6, " "

    cmp-long v7, v2, v0

    if-ltz v7, :cond_b

    .line 273
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_WEEK:Ljava/text/DateFormat;

    if-nez v0, :cond_8

    .line 274
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "E"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_WEEK:Ljava/text/DateFormat;

    .line 276
    :cond_8
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_WEEK:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 277
    sget-object v1, Lcom/narvii/util/DateTimeFormatter;->FMT_TIME:Ljava/text/DateFormat;

    if-nez v1, :cond_9

    .line 278
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v5, v1}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    sput-object v1, Lcom/narvii/util/DateTimeFormatter;->FMT_TIME:Ljava/text/DateFormat;

    .line 280
    :cond_9
    sget-object v1, Lcom/narvii/util/DateTimeFormatter;->FMT_TIME:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 281
    iget-object v1, p0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    if-nez v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_a
    sget v2, Lcom/narvii/lib/R$string;->datetime_week_time:I

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v8

    aput-object p1, v3, v9

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    .line 285
    :cond_b
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/narvii/util/DateTimeFormatter;->isThisYear(J)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 286
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_DATE_YEARLESS:Ljava/text/DateFormat;

    if-nez v0, :cond_c

    .line 287
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/DateTimeFormatter;->getYearlessDateFormat(Ljava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_DATE_YEARLESS:Ljava/text/DateFormat;

    .line 289
    :cond_c
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_DATE_YEARLESS:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 290
    sget-object v1, Lcom/narvii/util/DateTimeFormatter;->FMT_TIME:Ljava/text/DateFormat;

    if-nez v1, :cond_d

    .line 291
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v5, v1}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    sput-object v1, Lcom/narvii/util/DateTimeFormatter;->FMT_TIME:Ljava/text/DateFormat;

    .line 293
    :cond_d
    sget-object v1, Lcom/narvii/util/DateTimeFormatter;->FMT_TIME:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 294
    iget-object v1, p0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    if-nez v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_e
    sget v2, Lcom/narvii/lib/R$string;->datetime_date_time:I

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v8

    aput-object p1, v3, v9

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    .line 298
    :cond_f
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    if-nez v0, :cond_10

    .line 299
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v4, v5, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    .line 301
    :cond_10
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_11
    :goto_3
    const-string p1, ""

    return-object p1
.end method

.method public formatChatCardTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    if-eqz p1, :cond_4

    .line 486
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_0

    .line 491
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v2, v1

    const/16 v1, -0x4b0

    if-ge v2, v1, :cond_2

    .line 495
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    if-nez v0, :cond_1

    const/4 v0, 0x2

    const/4 v1, 0x3

    .line 496
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    .line 498
    :cond_1
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const v1, 0x15180

    if-le v2, v1, :cond_3

    return-object v0

    .line 504
    :cond_3
    invoke-virtual {p0, p1}, Lcom/narvii/util/DateTimeFormatter;->formatHeadlineFeedTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    return-object v0
.end method

.method public formatExpireCountDown(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7

    const-wide/32 v0, 0x5265c00

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    .line 322
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p2, p3}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 323
    invoke-virtual {v2, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, p2, p3}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 324
    invoke-virtual {v2, p2, p3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide p2

    invoke-virtual {v4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p2

    sub-long/2addr v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "%02d:%02d:%02d"

    .line 322
    invoke-static {p1, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 326
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/util/DateTimeFormatter;->formatRemainingText(Landroid/content/Context;JZZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatExpireTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 337
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/util/DateTimeFormatter;->formatRemainingText(Landroid/content/Context;JZZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatHeadlineFeedTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_c

    .line 180
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto/16 :goto_0

    .line 185
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    const/16 v0, -0x4b0

    const/4 v2, 0x2

    if-ge v1, v0, :cond_2

    .line 189
    sget-object p1, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    if-nez p1, :cond_1

    const/4 p1, 0x3

    .line 190
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v2, p1, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p1

    sput-object p1, Lcom/narvii/util/DateTimeFormatter;->FMT_ALL:Ljava/text/DateFormat;

    .line 192
    :cond_1
    iget-object p1, p0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    sget v0, Lcom/narvii/lib/R$string;->datetime_now:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v0, 0x12c

    if-ge v1, v0, :cond_3

    .line 196
    iget-object p1, p0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    sget v0, Lcom/narvii/lib/R$string;->datetime_now:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const/16 v0, 0xe10

    if-ge v1, v0, :cond_4

    .line 200
    div-int/lit8 v1, v1, 0x3c

    .line 201
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "m"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const/16 v3, 0x1518

    if-ge v1, v3, :cond_5

    const-string p1, "1h"

    return-object p1

    :cond_5
    const v3, 0x15180

    if-ge v1, v3, :cond_6

    add-int/lit16 v1, v1, 0x708

    .line 209
    div-int/2addr v1, v0

    .line 210
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "h"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    const v0, 0x2a300

    if-ge v1, v0, :cond_7

    const-string p1, "1d"

    return-object p1

    :cond_7
    const v0, 0x278d00

    if-ge v1, v0, :cond_8

    const p1, 0xa8c0

    add-int/2addr v1, p1

    .line 218
    div-int/2addr v1, v3

    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "d"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    const v0, 0xed4e00

    if-ge v1, v0, :cond_a

    .line 223
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_DATE_YEARLESS:Ljava/text/DateFormat;

    if-nez v0, :cond_9

    .line 224
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/DateTimeFormatter;->getYearlessDateFormat(Ljava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_DATE_YEARLESS:Ljava/text/DateFormat;

    .line 226
    :cond_9
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_DATE_YEARLESS:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 229
    :cond_a
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_DATE:Ljava/text/DateFormat;

    if-nez v0, :cond_b

    .line 230
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_DATE:Ljava/text/DateFormat;

    .line 232
    :cond_b
    sget-object v0, Lcom/narvii/util/DateTimeFormatter;->FMT_DATE:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_c
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public formatRemainingText(Landroid/content/Context;JZZZ)Ljava/lang/String;
    .locals 8

    const-wide/32 v0, 0x5265c00

    .line 341
    div-long v0, p2, v0

    long-to-int v1, v0

    const-wide/32 v2, 0x36ee80

    .line 342
    div-long v2, p2, v2

    int-to-long v4, v1

    const-wide/16 v6, 0x18

    mul-long v4, v4, v6

    sub-long/2addr v2, v4

    long-to-int v0, v2

    const-wide/32 v2, 0xea60

    .line 343
    div-long/2addr p2, v2

    int-to-long v2, v0

    add-long/2addr v4, v2

    const-wide/16 v2, 0x3c

    mul-long v4, v4, v2

    sub-long/2addr p2, v4

    long-to-int p3, p2

    .line 344
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p4, :cond_1

    if-eqz v1, :cond_1

    if-eq v1, v3, :cond_0

    .line 353
    sget p4, Lcom/narvii/lib/R$string;->datetime_n_days:I

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-virtual {p1, p4, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 350
    :cond_0
    sget p4, Lcom/narvii/lib/R$string;->datetime_one_day:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    if-eqz p5, :cond_3

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    .line 366
    sget p4, Lcom/narvii/lib/R$string;->datetime_n_hours:I

    new-array p5, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p5, v2

    invoke-virtual {p1, p4, p5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 363
    :cond_2
    sget p4, Lcom/narvii/lib/R$string;->datetime_one_hour:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    if-eqz p6, :cond_5

    if-eqz p3, :cond_5

    if-eq p3, v3, :cond_4

    .line 379
    sget p4, Lcom/narvii/lib/R$string;->datetime_n_minutes:I

    new-array p5, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p5, v2

    invoke-virtual {p1, p4, p5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 376
    :cond_4
    sget p3, Lcom/narvii/lib/R$string;->datetime_one_minute:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    const-string p1, " "

    .line 383
    invoke-static {p1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public memberSinceDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_2

    .line 308
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/narvii/util/DateTimeFormatter;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Member for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/narvii/util/DateTimeFormatter;->daysSince(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 315
    :cond_1
    sget v1, Lcom/narvii/lib/R$string;->datetime_member_since:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/narvii/util/DateTimeFormatter;->daysSince(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const-string p1, ""

    return-object p1
.end method
