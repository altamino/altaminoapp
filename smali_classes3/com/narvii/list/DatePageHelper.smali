.class public Lcom/narvii/list/DatePageHelper;
.super Ljava/lang/Object;
.source "DatePageHelper.java"


# instance fields
.field protected dateFormatWithYear:Ljava/text/SimpleDateFormat;

.field protected dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

.field protected list:Ljava/util/ArrayList;

.field protected pagedAdapter:Lcom/narvii/list/NVPagedAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/list/NVPagedAdapter;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "MMMM d"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/narvii/list/DatePageHelper;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/narvii/list/DatePageHelper;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    .line 26
    iput-object p1, p0, Lcom/narvii/list/DatePageHelper;->pagedAdapter:Lcom/narvii/list/NVPagedAdapter;

    return-void
.end method

.method private formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 62
    :cond_0
    invoke-static {p1}, Lcom/narvii/util/DateUtils;->isToday(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object p1, p0, Lcom/narvii/list/DatePageHelper;->pagedAdapter:Lcom/narvii/list/NVPagedAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$string;->today:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 64
    :cond_1
    invoke-static {p1}, Lcom/narvii/util/DateUtils;->isYesterday(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    iget-object p1, p0, Lcom/narvii/list/DatePageHelper;->pagedAdapter:Lcom/narvii/list/NVPagedAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$string;->yesterday:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 66
    :cond_2
    invoke-static {p1}, Lcom/narvii/util/DateUtils;->isSameYear(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    iget-object v0, p0, Lcom/narvii/list/DatePageHelper;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/narvii/list/DatePageHelper;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addDateSection()V
    .locals 6

    .line 30
    iget-object v0, p0, Lcom/narvii/list/DatePageHelper;->pagedAdapter:Lcom/narvii/list/NVPagedAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 32
    iput-object v1, p0, Lcom/narvii/list/DatePageHelper;->list:Ljava/util/ArrayList;

    goto :goto_1

    .line 33
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/list/DatePageHelper;->list:Ljava/util/ArrayList;

    goto :goto_1

    .line 36
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/narvii/list/DatePageHelper;->list:Ljava/util/ArrayList;

    .line 38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 39
    instance-of v3, v2, Lcom/narvii/list/DateCompare;

    if-eqz v3, :cond_3

    .line 40
    move-object v3, v2

    check-cast v3, Lcom/narvii/list/DateCompare;

    invoke-interface {v3}, Lcom/narvii/list/DateCompare;->getCompareDate()Ljava/util/Date;

    move-result-object v3

    .line 41
    invoke-static {v1, v3}, Lcom/narvii/util/DateUtils;->isSameDay(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 42
    iget-object v1, p0, Lcom/narvii/list/DatePageHelper;->list:Ljava/util/ArrayList;

    new-instance v4, Lcom/narvii/date/DateSection;

    invoke-direct {p0, v3}, Lcom/narvii/list/DatePageHelper;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/narvii/date/DateSection;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_2
    iget-object v1, p0, Lcom/narvii/list/DatePageHelper;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v3

    goto :goto_0

    :cond_3
    const-string v0, "object does not implements DateCompare interface"

    .line 47
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public getList()Ljava/util/ArrayList;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/narvii/list/DatePageHelper;->list:Ljava/util/ArrayList;

    return-object v0
.end method
