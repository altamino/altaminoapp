.class public Lcom/narvii/list/DatePageHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected dateFormatWithYear:Ljava/text/SimpleDateFormat;

.field protected dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

.field protected list:Ljava/util/ArrayList;

.field protected pagedAdapter:Lcom/narvii/list/NVPagedAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/list/NVPagedAdapter;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 6
    .line 7
    const-string v1, "MMMM d"

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/list/DatePageHelper;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    .line 17
    .line 18
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 19
    .line 20
    const-string v1, "yyyy-MM-dd"

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 28
    .line 29
    iput-object v0, p0, Lcom/narvii/list/DatePageHelper;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    .line 30
    .line 31
    iput-object p1, p0, Lcom/narvii/list/DatePageHelper;->pagedAdapter:Lcom/narvii/list/NVPagedAdapter;

    .line 32
    return-void
.end method

.method private formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

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
    iget-object p1, p0, Lcom/narvii/list/DatePageHelper;->pagedAdapter:Lcom/narvii/list/NVPagedAdapter;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    sget v0, Lcom/narvii/lib/R$string;->today:I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-static {p1}, Lcom/narvii/util/DateUtils;->isYesterday(Ljava/util/Date;)Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/list/DatePageHelper;->pagedAdapter:Lcom/narvii/list/NVPagedAdapter;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    sget v0, Lcom/narvii/lib/R$string;->yesterday:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    return-object p1

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-static {p1}, Lcom/narvii/util/DateUtils;->isSameYear(Ljava/util/Date;)Z

    .line 46
    move-result v0

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    iget-object v0, p0, Lcom/narvii/list/DatePageHelper;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

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
    :cond_3
    iget-object v0, p0, Lcom/narvii/list/DatePageHelper;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    return-object p1
.end method


# virtual methods
.method public addDateSection()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/list/DatePageHelper;->pagedAdapter:Lcom/narvii/list/NVPagedAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iput-object v1, p0, Lcom/narvii/list/DatePageHelper;->list:Ljava/util/ArrayList;

    .line 12
    goto :goto_1

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 16
    move-result v2

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/list/DatePageHelper;->list:Ljava/util/ArrayList;

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    iput-object v2, p0, Lcom/narvii/list/DatePageHelper;->list:Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v2

    .line 42
    .line 43
    if-eqz v2, :cond_4

    .line 44
    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    instance-of v3, v2, Lcom/narvii/list/DateCompare;

    .line 50
    .line 51
    if-eqz v3, :cond_3

    .line 52
    move-object v3, v2

    .line 53
    .line 54
    check-cast v3, Lcom/narvii/list/DateCompare;

    .line 55
    .line 56
    .line 57
    invoke-interface {v3}, Lcom/narvii/list/DateCompare;->getCompareDate()Ljava/util/Date;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v3}, Lcom/narvii/util/DateUtils;->isSameDay(Ljava/util/Date;Ljava/util/Date;)Z

    .line 62
    move-result v1

    .line 63
    .line 64
    if-nez v1, :cond_2

    .line 65
    .line 66
    iget-object v1, p0, Lcom/narvii/list/DatePageHelper;->list:Ljava/util/ArrayList;

    .line 67
    .line 68
    new-instance v4, Lcom/narvii/date/DateSection;

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, v3}, Lcom/narvii/list/DatePageHelper;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    .line 72
    move-result-object v5

    .line 73
    .line 74
    .line 75
    invoke-direct {v4, v5}, Lcom/narvii/date/DateSection;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    :cond_2
    iget-object v1, p0, Lcom/narvii/list/DatePageHelper;->list:Ljava/util/ArrayList;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    move-object v1, v3

    .line 85
    goto :goto_0

    .line 86
    .line 87
    :cond_3
    const-string v0, "object does not implements DateCompare interface"

    .line 88
    .line 89
    .line 90
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 91
    :cond_4
    :goto_1
    return-void
.end method

.method public getList()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/narvii/list/DatePageHelper;->list:Ljava/util/ArrayList;

    return-object v0
.end method
