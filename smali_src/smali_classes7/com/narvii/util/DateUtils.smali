.class public Lcom/narvii/util/DateUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ONE_DAY:J = 0x5265c00L

.field public static final THIRTY_DAYS:J = 0x9a7ec800L

.field protected static dateFormatWithYear:Ljava/text/SimpleDateFormat;

.field protected static dateFormatWithoutYear:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3
    .line 4
    const-string v1, "MMMM d"

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 12
    .line 13
    sput-object v0, Lcom/narvii/util/DateUtils;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    .line 14
    .line 15
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 16
    .line 17
    .line 18
    const-string/jumbo v1, "yyyy-MM-dd"

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 26
    .line 27
    sput-object v0, Lcom/narvii/util/DateUtils;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static ageFromBirthDate(Ljava/util/Date;)I
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/util/Date;

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    .line 10
    move-result-wide v2

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    .line 27
    move-result p0

    .line 28
    .line 29
    if-nez p0, :cond_3

    .line 30
    const/4 p0, 0x1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    .line 34
    move-result v2

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    .line 38
    move-result p0

    .line 39
    sub-int/2addr v2, p0

    .line 40
    const/4 p0, 0x6

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    .line 44
    move-result v3

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    .line 48
    move-result p0

    .line 49
    sub-int/2addr v3, p0

    .line 50
    const/4 p0, 0x3

    .line 51
    .line 52
    if-gt v3, p0, :cond_1

    .line 53
    const/4 p0, 0x2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    .line 57
    move-result v3

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    .line 61
    move-result v4

    .line 62
    .line 63
    if-le v3, v4, :cond_0

    .line 64
    goto :goto_0

    .line 65
    .line 66
    .line 67
    :cond_0
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    .line 68
    move-result v3

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    .line 72
    move-result p0

    .line 73
    .line 74
    if-ne v3, p0, :cond_2

    .line 75
    const/4 p0, 0x5

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    .line 79
    move-result v1

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    .line 83
    move-result p0

    .line 84
    .line 85
    if-le v1, p0, :cond_2

    .line 86
    .line 87
    :cond_1
    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 88
    :cond_2
    return v2

    .line 89
    .line 90
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 91
    .line 92
    const-string v0, "Can\'t be born in the future"

    .line 93
    .line 94
    .line 95
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 96
    throw p0
.end method

.method public static formatDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-static {p1}, Lcom/narvii/util/DateUtils;->isToday(Ljava/util/Date;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sget p1, Lcom/narvii/lib/R$string;->today:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-static {p1}, Lcom/narvii/util/DateUtils;->isYesterday(Ljava/util/Date;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    sget p1, Lcom/narvii/lib/R$string;->yesterday:I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    .line 32
    .line 33
    :cond_2
    invoke-static {p1}, Lcom/narvii/util/DateUtils;->isSameYear(Ljava/util/Date;)Z

    .line 34
    move-result p0

    .line 35
    .line 36
    if-eqz p0, :cond_3

    .line 37
    .line 38
    sget-object p0, Lcom/narvii/util/DateUtils;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    .line 45
    :cond_3
    sget-object p0, Lcom/narvii/util/DateUtils;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method

.method public static getContainsDays(JJ)I
    .locals 5

    .line 1
    .line 2
    cmp-long v0, p0, p2

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 14
    .line 15
    const/16 p0, 0xb

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->set(II)V

    .line 19
    .line 20
    const/16 p1, 0xc

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    .line 24
    .line 25
    const/16 v2, 0xd

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 29
    .line 30
    const/16 v3, 0xe

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 37
    move-result-object v4

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, p0, v1}, Ljava/util/Calendar;->set(II)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, p1, v1}, Ljava/util/Calendar;->set(II)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 56
    move-result-object p0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 60
    move-result-wide p0

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    .line 68
    move-result-wide p2

    .line 69
    sub-long/2addr p0, p2

    .line 70
    .line 71
    .line 72
    const-wide/32 p2, 0x5265c00

    .line 73
    div-long/2addr p0, p2

    .line 74
    .line 75
    const-wide/16 p2, 0x1

    .line 76
    add-long/2addr p0, p2

    .line 77
    long-to-int p0, p0

    .line 78
    return p0
.end method

.method public static getMicroSecondsOfDays(I)J
    .locals 4

    const v0, 0x15180

    mul-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static isSameDay(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 10
    move-result-wide v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 14
    move-result-wide v3

    .line 15
    .line 16
    cmp-long v1, v1, v3

    .line 17
    const/4 v2, 0x1

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    return v2

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 31
    move-result p0

    .line 32
    const/4 v3, 0x2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    .line 36
    move-result v4

    .line 37
    const/4 v5, 0x5

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    .line 41
    move-result v6

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 48
    move-result p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    .line 52
    move-result v3

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    .line 56
    move-result v1

    .line 57
    .line 58
    if-ne p0, p1, :cond_2

    .line 59
    .line 60
    if-ne v4, v3, :cond_2

    .line 61
    .line 62
    if-ne v6, v1, :cond_2

    .line 63
    return v2

    .line 64
    :cond_2
    :goto_0
    return v0
.end method

.method public static isSameMonth(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 10
    move-result-wide v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 14
    move-result-wide v3

    .line 15
    .line 16
    cmp-long v1, v1, v3

    .line 17
    const/4 v2, 0x1

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    return v2

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 31
    move-result p0

    .line 32
    const/4 v3, 0x2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    .line 36
    move-result v4

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 43
    move-result p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    .line 47
    move-result v1

    .line 48
    .line 49
    if-ne p0, p1, :cond_2

    .line 50
    .line 51
    if-ne v4, v1, :cond_2

    .line 52
    return v2

    .line 53
    :cond_2
    :goto_0
    return v0
.end method

.method public static isSameYear(Ljava/util/Date;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 12
    const/4 p0, 0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    .line 16
    move-result v2

    .line 17
    .line 18
    new-instance v3, Ljava/util/Date;

    .line 19
    .line 20
    .line 21
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    .line 28
    move-result v1

    .line 29
    .line 30
    if-ne v2, v1, :cond_1

    .line 31
    move v0, p0

    .line 32
    :cond_1
    return v0
.end method

.method public static isToday(Ljava/util/Date;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 12
    const/4 p0, 0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x2

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    .line 21
    move-result v4

    .line 22
    const/4 v5, 0x5

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    .line 26
    move-result v6

    .line 27
    .line 28
    new-instance v7, Ljava/util/Date;

    .line 29
    .line 30
    .line 31
    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    .line 38
    move-result v7

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    .line 42
    move-result v3

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    .line 46
    move-result v1

    .line 47
    .line 48
    if-ne v2, v7, :cond_1

    .line 49
    .line 50
    if-ne v4, v3, :cond_1

    .line 51
    .line 52
    if-ne v1, v6, :cond_1

    .line 53
    move v0, p0

    .line 54
    :cond_1
    return v0
.end method

.method public static isYesterday(Ljava/util/Date;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 12
    const/4 p0, 0x1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x6

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    .line 21
    move-result v4

    .line 22
    .line 23
    new-instance v5, Ljava/util/Date;

    .line 24
    .line 25
    .line 26
    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 30
    const/4 v5, -0x1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v3, v5}, Ljava/util/Calendar;->add(II)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    .line 37
    move-result v5

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    .line 41
    move-result v1

    .line 42
    .line 43
    if-ne v2, v5, :cond_1

    .line 44
    .line 45
    if-ne v1, v4, :cond_1

    .line 46
    move v0, p0

    .line 47
    :cond_1
    return v0
.end method
