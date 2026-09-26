.class public Lcom/narvii/list/select/SharedPhotoDatePageHelper;
.super Lcom/narvii/list/DatePageHelper;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/list/DatePageHelper;-><init>(Lcom/narvii/list/NVPagedAdapter;)V

    .line 2
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "MMM"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/narvii/list/select/SharedPhotoDatePageHelper;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    .line 3
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "MMM yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

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

    .line 4
    invoke-direct {p0, p1}, Lcom/narvii/list/DatePageHelper;-><init>(Lcom/narvii/list/NVPagedAdapter;)V

    .line 5
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "MMM"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/narvii/list/select/SharedPhotoDatePageHelper;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    .line 6
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "MMM yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/narvii/list/select/SharedPhotoDatePageHelper;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    iput-object p2, p0, Lcom/narvii/list/select/SharedPhotoDatePageHelper;->addTopCallback:Lcom/narvii/util/Callback;

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
    invoke-static {p1}, Lcom/narvii/util/DateUtils;->isSameYear(Ljava/util/Date;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/list/select/SharedPhotoDatePageHelper;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/narvii/list/select/SharedPhotoDatePageHelper;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method


# virtual methods
.method public addDateSection()V
    .locals 12

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
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 17
    move-result v2

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/list/DatePageHelper;->list:Ljava/util/ArrayList;

    .line 27
    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    iput-object v2, p0, Lcom/narvii/list/DatePageHelper;->list:Ljava/util/ArrayList;

    .line 36
    .line 37
    new-instance v2, Lcom/narvii/date/DateSection;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/narvii/list/DatePageHelper;->pagedAdapter:Lcom/narvii/list/NVPagedAdapter;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v3

    .line 44
    .line 45
    sget v4, Lcom/narvii/lib/R$string;->latest:I

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    .line 52
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 53
    move-result-object v4

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    .line 60
    invoke-direct {v2, v3}, Lcom/narvii/date/DateSection;-><init>(Ljava/lang/String;)V

    .line 61
    const/4 v3, 0x1

    .line 62
    .line 63
    iput-boolean v3, v2, Lcom/narvii/date/DateSection;->first:Z

    .line 64
    .line 65
    iget-object v4, p0, Lcom/narvii/list/DatePageHelper;->list:Ljava/util/ArrayList;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    iget-object v2, p0, Lcom/narvii/list/select/SharedPhotoDatePageHelper;->addTopCallback:Lcom/narvii/util/Callback;

    .line 71
    .line 72
    if-eqz v2, :cond_2

    .line 73
    .line 74
    iget-object v4, p0, Lcom/narvii/list/DatePageHelper;->list:Ljava/util/ArrayList;

    .line 75
    .line 76
    .line 77
    invoke-interface {v2, v4}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 78
    :cond_2
    const/4 v2, 0x0

    .line 79
    .line 80
    .line 81
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    move-result-object v4

    .line 83
    .line 84
    instance-of v5, v4, Lcom/narvii/list/DateCompare;

    .line 85
    .line 86
    if-eqz v5, :cond_3

    .line 87
    move-object v5, v4

    .line 88
    .line 89
    check-cast v5, Lcom/narvii/list/DateCompare;

    .line 90
    .line 91
    .line 92
    invoke-interface {v5}, Lcom/narvii/list/DateCompare;->getCompareDate()Ljava/util/Date;

    .line 93
    move-result-object v5

    .line 94
    goto :goto_0

    .line 95
    :cond_3
    move-object v5, v1

    .line 96
    .line 97
    :goto_0
    iget-object v6, p0, Lcom/narvii/list/DatePageHelper;->list:Ljava/util/ArrayList;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    move v4, v3

    .line 102
    .line 103
    .line 104
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 105
    move-result v6

    .line 106
    .line 107
    if-ge v4, v6, :cond_8

    .line 108
    .line 109
    .line 110
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    move-result-object v6

    .line 112
    .line 113
    instance-of v7, v6, Lcom/narvii/list/DateCompare;

    .line 114
    .line 115
    if-eqz v7, :cond_7

    .line 116
    move-object v7, v6

    .line 117
    .line 118
    check-cast v7, Lcom/narvii/list/DateCompare;

    .line 119
    .line 120
    .line 121
    invoke-interface {v7}, Lcom/narvii/list/DateCompare;->getCompareDate()Ljava/util/Date;

    .line 122
    move-result-object v7

    .line 123
    .line 124
    if-nez v2, :cond_4

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    .line 128
    move-result-wide v8

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    .line 132
    move-result-wide v10

    .line 133
    sub-long/2addr v8, v10

    .line 134
    .line 135
    .line 136
    const-wide/32 v10, 0x240c8400

    .line 137
    .line 138
    cmp-long v8, v8, v10

    .line 139
    .line 140
    if-gtz v8, :cond_4

    .line 141
    .line 142
    iget-object v1, p0, Lcom/narvii/list/DatePageHelper;->list:Ljava/util/ArrayList;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    goto :goto_2

    .line 147
    .line 148
    :cond_4
    if-nez v2, :cond_5

    .line 149
    .line 150
    iget-object v1, p0, Lcom/narvii/list/DatePageHelper;->list:Ljava/util/ArrayList;

    .line 151
    .line 152
    new-instance v2, Lcom/narvii/date/DateSection;

    .line 153
    .line 154
    .line 155
    invoke-direct {p0, v7}, Lcom/narvii/list/select/SharedPhotoDatePageHelper;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    .line 156
    move-result-object v8

    .line 157
    .line 158
    .line 159
    invoke-direct {v2, v8}, Lcom/narvii/date/DateSection;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    iget-object v1, p0, Lcom/narvii/list/DatePageHelper;->list:Ljava/util/ArrayList;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    move v2, v3

    .line 169
    goto :goto_2

    .line 170
    .line 171
    .line 172
    :cond_5
    invoke-static {v1, v7}, Lcom/narvii/util/DateUtils;->isSameMonth(Ljava/util/Date;Ljava/util/Date;)Z

    .line 173
    move-result v1

    .line 174
    .line 175
    if-nez v1, :cond_6

    .line 176
    .line 177
    iget-object v1, p0, Lcom/narvii/list/DatePageHelper;->list:Ljava/util/ArrayList;

    .line 178
    .line 179
    new-instance v8, Lcom/narvii/date/DateSection;

    .line 180
    .line 181
    .line 182
    invoke-direct {p0, v7}, Lcom/narvii/list/select/SharedPhotoDatePageHelper;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    .line 183
    move-result-object v9

    .line 184
    .line 185
    .line 186
    invoke-direct {v8, v9}, Lcom/narvii/date/DateSection;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    :cond_6
    iget-object v1, p0, Lcom/narvii/list/DatePageHelper;->list:Ljava/util/ArrayList;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    :goto_2
    move-object v1, v7

    .line 196
    .line 197
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 198
    goto :goto_1

    .line 199
    :cond_8
    :goto_3
    return-void
.end method
