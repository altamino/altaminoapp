.class public Lcom/narvii/util/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final ONE_DAY:J = 0x5265c00L

.field public static final THIRTY_DAYS:J = 0x9a7ec800L

.field protected static dateFormatWithYear:Ljava/text/SimpleDateFormat;

.field protected static dateFormatWithoutYear:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "MMMM d"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/narvii/util/DateUtils;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/narvii/util/DateUtils;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 139
    :cond_0
    invoke-static {p1}, Lcom/narvii/util/DateUtils;->isToday(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    sget p1, Lcom/narvii/lib/R$string;->today:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 141
    :cond_1
    invoke-static {p1}, Lcom/narvii/util/DateUtils;->isYesterday(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    sget p1, Lcom/narvii/lib/R$string;->yesterday:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 143
    :cond_2
    invoke-static {p1}, Lcom/narvii/util/DateUtils;->isSameYear(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 144
    sget-object p0, Lcom/narvii/util/DateUtils;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 146
    :cond_3
    sget-object p0, Lcom/narvii/util/DateUtils;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getContainsDays(JJ)I
    .locals 5

    const/4 v0, 0x0

    cmp-long v1, p0, p2

    if-lez v1, :cond_0

    return v0

    .line 119
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 120
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p0, 0xb

    .line 121
    invoke-virtual {v1, p0, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 122
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 123
    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    .line 124
    invoke-virtual {v1, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 126
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 127
    invoke-virtual {v4, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 128
    invoke-virtual {v4, p0, v0}, Ljava/util/Calendar;->set(II)V

    .line 129
    invoke-virtual {v4, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 130
    invoke-virtual {v4, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 131
    invoke-virtual {v4, v3, v0}, Ljava/util/Calendar;->set(II)V

    const-wide/16 p0, 0x1

    .line 132
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr p2, v0

    const-wide/32 v0, 0x5265c00

    div-long/2addr p2, v0

    add-long/2addr p2, p0

    long-to-int p0, p2

    return p0
.end method

.method public static getMicroSecondsOfDays(I)J
    .locals 4

    mul-int/lit8 p0, p0, 0x18

    mul-int/lit16 p0, p0, 0xe10

    int-to-long v0, p0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public static isSameDay(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const/4 v5, 0x1

    cmp-long v6, v1, v3

    if-nez v6, :cond_1

    return v5

    .line 31
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 32
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 33
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/4 v2, 0x2

    .line 34
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    .line 35
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 36
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 37
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 38
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 39
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne p0, p1, :cond_2

    if-ne v3, v2, :cond_2

    if-ne v6, v1, :cond_2

    return v5

    :cond_2
    :goto_0
    return v0
.end method

.method public static isSameMonth(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const/4 v5, 0x1

    cmp-long v6, v1, v3

    if-nez v6, :cond_1

    return v5

    .line 68
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 69
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 70
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/4 v2, 0x2

    .line 71
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 72
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 73
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 74
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne p0, p1, :cond_2

    if-ne v3, v1, :cond_2

    return v5

    :cond_2
    :goto_0
    return v0
.end method

.method public static isSameYear(Ljava/util/Date;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 51
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 52
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x1

    .line 53
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 54
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 55
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isToday(Ljava/util/Date;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 86
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 87
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x1

    .line 88
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    .line 89
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    .line 90
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 91
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 92
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 93
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 94
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v2, v7, :cond_1

    if-ne v4, v3, :cond_1

    if-ne v1, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isYesterday(Ljava/util/Date;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 103
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 104
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x1

    .line 105
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x6

    .line 106
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 108
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v5, -0x1

    .line 109
    invoke-virtual {v1, v3, v5}, Ljava/util/Calendar;->add(II)V

    .line 110
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 111
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v2, v5, :cond_1

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
