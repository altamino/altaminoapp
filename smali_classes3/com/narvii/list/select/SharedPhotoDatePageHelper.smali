.class public Lcom/narvii/list/select/SharedPhotoDatePageHelper;
.super Lcom/narvii/list/DatePageHelper;
.source "SharedPhotoDatePageHelper.java"


# instance fields
.field addTopCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation
.end field

.field protected dateFormatWithYear:Ljava/text/SimpleDateFormat;

.field protected dateFormatWithoutYear:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Lcom/narvii/list/NVPagedAdapter;)V
    .locals 2

    .line 29
    invoke-direct {p0, p1}, Lcom/narvii/list/DatePageHelper;-><init>(Lcom/narvii/list/NVPagedAdapter;)V

    .line 23
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "MMM"

    invoke-direct {p1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/narvii/list/select/SharedPhotoDatePageHelper;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    .line 24
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "MMM yyyy"

    invoke-direct {p1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/narvii/list/select/SharedPhotoDatePageHelper;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/list/NVPagedAdapter;Lcom/narvii/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/list/NVPagedAdapter;",
            "Lcom/narvii/util/Callback<",
            "Ljava/util/ArrayList;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lcom/narvii/list/DatePageHelper;-><init>(Lcom/narvii/list/NVPagedAdapter;)V

    .line 23
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "MMM"

    invoke-direct {p1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/narvii/list/select/SharedPhotoDatePageHelper;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    .line 24
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "MMM yyyy"

    invoke-direct {p1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/narvii/list/select/SharedPhotoDatePageHelper;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    .line 34
    iput-object p2, p0, Lcom/narvii/list/select/SharedPhotoDatePageHelper;->addTopCallback:Lcom/narvii/util/Callback;

    return-void
.end method

.method private formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 91
    :cond_0
    invoke-static {p1}, Lcom/narvii/util/DateUtils;->isSameYear(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/narvii/list/select/SharedPhotoDatePageHelper;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/narvii/list/select/SharedPhotoDatePageHelper;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addDateSection()V
    .locals 13

    .line 39
    iget-object v0, p0, Lcom/narvii/list/DatePageHelper;->pagedAdapter:Lcom/narvii/list/NVPagedAdapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 41
    iput-object v1, p0, Lcom/narvii/list/DatePageHelper;->list:Ljava/util/ArrayList;

    goto/16 :goto_3

    .line 42
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/list/DatePageHelper;->list:Ljava/util/ArrayList;

    goto/16 :goto_3

    .line 45
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/narvii/list/DatePageHelper;->list:Ljava/util/ArrayList;

    .line 48
    new-instance v2, Lcom/narvii/date/DateSection;

    iget-object v3, p0, Lcom/narvii/list/DatePageHelper;->pagedAdapter:Lcom/narvii/list/NVPagedAdapter;

    invoke-virtual {v3}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/narvii/lib/R$string;->latest:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/narvii/date/DateSection;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 49
    iput-boolean v3, v2, Lcom/narvii/date/DateSection;->first:Z

    .line 50
    iget-object v4, p0, Lcom/narvii/list/DatePageHelper;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v2, p0, Lcom/narvii/list/select/SharedPhotoDatePageHelper;->addTopCallback:Lcom/narvii/util/Callback;

    if-eqz v2, :cond_2

    .line 52
    iget-object v4, p0, Lcom/narvii/list/DatePageHelper;->list:Ljava/util/ArrayList;

    invoke-interface {v2, v4}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_2
    const/4 v2, 0x0

    .line 54
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 56
    instance-of v5, v4, Lcom/narvii/list/DateCompare;

    if-eqz v5, :cond_3

    .line 57
    move-object v5, v4

    check-cast v5, Lcom/narvii/list/DateCompare;

    invoke-interface {v5}, Lcom/narvii/list/DateCompare;->getCompareDate()Ljava/util/Date;

    move-result-object v5

    goto :goto_0

    :cond_3
    move-object v5, v1

    .line 59
    :goto_0
    iget-object v6, p0, Lcom/narvii/list/DatePageHelper;->list:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v1

    const/4 v1, 0x1

    .line 63
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_8

    .line 64
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 65
    instance-of v7, v6, Lcom/narvii/list/DateCompare;

    if-eqz v7, :cond_7

    .line 66
    move-object v7, v6

    check-cast v7, Lcom/narvii/list/DateCompare;

    invoke-interface {v7}, Lcom/narvii/list/DateCompare;->getCompareDate()Ljava/util/Date;

    move-result-object v7

    if-nez v2, :cond_4

    .line 67
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x240c8400

    cmp-long v12, v8, v10

    if-gtz v12, :cond_4

    .line 68
    iget-object v4, p0, Lcom/narvii/list/DatePageHelper;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    if-nez v2, :cond_5

    .line 72
    iget-object v2, p0, Lcom/narvii/list/DatePageHelper;->list:Ljava/util/ArrayList;

    new-instance v4, Lcom/narvii/date/DateSection;

    invoke-direct {p0, v7}, Lcom/narvii/list/select/SharedPhotoDatePageHelper;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/narvii/date/DateSection;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v2, p0, Lcom/narvii/list/DatePageHelper;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_2

    .line 75
    :cond_5
    invoke-static {v4, v7}, Lcom/narvii/util/DateUtils;->isSameMonth(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 76
    iget-object v4, p0, Lcom/narvii/list/DatePageHelper;->list:Ljava/util/ArrayList;

    new-instance v8, Lcom/narvii/date/DateSection;

    invoke-direct {p0, v7}, Lcom/narvii/list/select/SharedPhotoDatePageHelper;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/narvii/date/DateSection;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_6
    iget-object v4, p0, Lcom/narvii/list/DatePageHelper;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object v4, v7

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    :goto_3
    return-void
.end method
