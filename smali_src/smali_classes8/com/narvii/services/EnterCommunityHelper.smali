.class public Lcom/narvii/services/EnterCommunityHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/services/AutostartServiceProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/services/AutostartServiceProvider<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final SKIP_ENTER_COMMUNITY:Lcom/narvii/util/statistics/TmpValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/statistics/TmpValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOURCE:Lcom/narvii/util/statistics/TmpValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/statistics/TmpValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final lastEnterTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/services/EnterCommunityHelper;->SOURCE:Lcom/narvii/util/statistics/TmpValue;

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/util/statistics/TmpValue;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lcom/narvii/util/statistics/TmpValue;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/narvii/services/EnterCommunityHelper;->SKIP_ENTER_COMMUNITY:Lcom/narvii/util/statistics/TmpValue;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/services/EnterCommunityHelper;->lastEnterTime:Ljava/util/HashMap;

    .line 11
    return-void
.end method

.method public static synthetic a(Lcom/narvii/theme/ThemePackService;ILcom/narvii/model/Community;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/narvii/services/EnterCommunityHelper;->lambda$start$0(Lcom/narvii/theme/ThemePackService;ILcom/narvii/model/Community;)V

    return-void
.end method

.method private static synthetic lambda$start$0(Lcom/narvii/theme/ThemePackService;ILcom/narvii/model/Community;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/narvii/model/Community;->themePackRevision()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/narvii/model/Community;->themePackUrl()Ljava/lang/String;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, v0, p2}, Lcom/narvii/theme/ThemePackService;->require(IILjava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public create(Lcom/narvii/app/NVContext;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public destroy(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public logEnterCommunity(Lcom/narvii/app/NVContext;J)V
    .locals 6

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/services/EnterCommunityHelper;->SKIP_ENTER_COMMUNITY:Lcom/narvii/util/statistics/TmpValue;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/util/statistics/TmpValue;->getAndRemove()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    const-string v0, "config"

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_7

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 29
    move-result-wide v1

    .line 30
    .line 31
    iget-object v3, p0, Lcom/narvii/services/EnterCommunityHelper;->lastEnterTime:Ljava/util/HashMap;

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v4

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 40
    .line 41
    check-cast v3, Ljava/lang/Long;

    .line 42
    .line 43
    const-wide/16 v4, 0x0

    .line 44
    .line 45
    cmp-long v4, p2, v4

    .line 46
    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 53
    move-result-wide v3

    .line 54
    add-long/2addr v3, p2

    .line 55
    .line 56
    cmp-long p2, v1, v3

    .line 57
    .line 58
    if-lez p2, :cond_7

    .line 59
    .line 60
    :cond_1
    iget-object p2, p0, Lcom/narvii/services/EnterCommunityHelper;->lastEnterTime:Ljava/util/HashMap;

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object p3

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    sget-object p2, Lcom/narvii/services/EnterCommunityHelper;->SOURCE:Lcom/narvii/util/statistics/TmpValue;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Lcom/narvii/util/statistics/TmpValue;->getAndRemove()Ljava/lang/Object;

    .line 77
    move-result-object p2

    .line 78
    .line 79
    check-cast p2, Ljava/lang/String;

    .line 80
    .line 81
    const-string p3, "statistics"

    .line 82
    .line 83
    .line 84
    invoke-interface {p1, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    move-result-object p3

    .line 86
    .line 87
    check-cast p3, Lcom/narvii/util/statistics/StatisticsService;

    .line 88
    .line 89
    const-string v1, "Enters A Community"

    .line 90
    .line 91
    .line 92
    invoke-interface {p3, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 93
    move-result-object p3

    .line 94
    const/4 v1, 0x5

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->priority(I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 98
    move-result-object p3

    .line 99
    .line 100
    const-string v1, "Community Entered Total"

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 104
    move-result-object p3

    .line 105
    .line 106
    const-string v1, "Community ID"

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3, v1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;I)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 110
    move-result-object p3

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 114
    move-result-object p2

    .line 115
    .line 116
    const-string p3, "account"

    .line 117
    .line 118
    .line 119
    invoke-interface {p1, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 126
    move-result-object p1

    .line 127
    .line 128
    const-string p3, "User Role"

    .line 129
    .line 130
    if-eqz p1, :cond_3

    .line 131
    .line 132
    iget v0, p1, Lcom/narvii/model/User;->role:I

    .line 133
    .line 134
    const/16 v1, 0x64

    .line 135
    .line 136
    if-eq v0, v1, :cond_2

    .line 137
    .line 138
    const/16 v1, 0x66

    .line 139
    .line 140
    if-ne v0, v1, :cond_3

    .line 141
    .line 142
    :cond_2
    const-string v0, "Leader"

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, p3, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 146
    .line 147
    const-string p3, "Leader Entered Total"

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, p3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 151
    goto :goto_0

    .line 152
    .line 153
    :cond_3
    if-eqz p1, :cond_4

    .line 154
    .line 155
    iget v0, p1, Lcom/narvii/model/User;->role:I

    .line 156
    .line 157
    const/16 v1, 0x65

    .line 158
    .line 159
    if-ne v0, v1, :cond_4

    .line 160
    .line 161
    const-string v0, "Curator"

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2, p3, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 165
    .line 166
    const-string p3, "Curator Entered Total"

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2, p3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 170
    goto :goto_0

    .line 171
    .line 172
    :cond_4
    if-eqz p1, :cond_5

    .line 173
    .line 174
    const-string v0, "Member"

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2, p3, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 178
    .line 179
    :cond_5
    :goto_0
    if-nez p1, :cond_6

    .line 180
    const/4 p1, 0x0

    .line 181
    goto :goto_1

    .line 182
    .line 183
    :cond_6
    iget-object p1, p1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 184
    .line 185
    const-string p3, "customTitles"

    .line 186
    .line 187
    .line 188
    filled-new-array {p3}, [Ljava/lang/String;

    .line 189
    move-result-object p3

    .line 190
    .line 191
    .line 192
    invoke-static {p1, p3}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 193
    move-result-object p1

    .line 194
    .line 195
    :goto_1
    if-eqz p1, :cond_7

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    .line 199
    move-result p1

    .line 200
    .line 201
    if-lez p1, :cond_7

    .line 202
    .line 203
    const-string p1, "Has A Custom Title"

    .line 204
    const/4 p3, 0x1

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2, p1, p3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userProp(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 208
    :cond_7
    return-void
.end method

.method public pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public resume(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    const-wide/32 v0, 0x493e0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/services/EnterCommunityHelper;->logEnterCommunity(Lcom/narvii/app/NVContext;J)V

    .line 7
    return-void
.end method

.method public start(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 4

    .line 1
    .line 2
    const-string p2, "config"

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    check-cast p2, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 12
    move-result p2

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    const-string v0, "community"

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Lcom/narvii/community/CommunityService;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    const-string/jumbo v1, "themePack"

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    check-cast v1, Lcom/narvii/theme/ThemePackService;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p2}, Lcom/narvii/theme/ThemePackService;->touchThemePack(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p2}, Lcom/narvii/theme/ThemePackService;->getThemeInfo(I)Lcom/narvii/theme/ThemeInfo;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    const-string v3, "affiliations"

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    check-cast p1, Lcom/narvii/community/AffiliationsService;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    .line 54
    move-result p1

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/narvii/model/Community;->themePackUrl()Ljava/lang/String;

    .line 60
    move-result-object v3

    .line 61
    .line 62
    .line 63
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    move-result v3

    .line 65
    .line 66
    if-nez v3, :cond_1

    .line 67
    .line 68
    if-eqz p1, :cond_1

    .line 69
    .line 70
    if-eqz v2, :cond_0

    .line 71
    .line 72
    iget p1, v2, Lcom/narvii/theme/ThemeInfo;->revision:I

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/narvii/model/Community;->themePackRevision()I

    .line 76
    move-result v2

    .line 77
    .line 78
    if-eq p1, v2, :cond_1

    .line 79
    .line 80
    .line 81
    :cond_0
    invoke-virtual {v1, p2}, Lcom/narvii/theme/ThemePackService;->addToDownLoadList(I)V

    .line 82
    .line 83
    new-instance p1, Lcom/narvii/services/a;

    .line 84
    .line 85
    .line 86
    invoke-direct {p1, v1, p2, v0}, Lcom/narvii/services/a;-><init>(Lcom/narvii/theme/ThemePackService;ILcom/narvii/model/Community;)V

    .line 87
    .line 88
    .line 89
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 90
    :cond_1
    return-void
.end method

.method public stop(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    const-string p2, "config"

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p2, p0, Lcom/narvii/services/EnterCommunityHelper;->lastEnterTime:Ljava/util/HashMap;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_0
    return-void
.end method
