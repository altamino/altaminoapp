.class public Lcom/narvii/util/statistics/StatisticsServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/statistics/StatisticsService;


# instance fields
.field account:Lcom/narvii/account/AccountService;

.field appType:Ljava/lang/String;

.field config:Lcom/narvii/config/ConfigService;

.field context:Lcom/narvii/app/NVContext;

.field emailActivated:Ljava/lang/Boolean;

.field prefs:Landroid/content/SharedPreferences;

.field queue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/narvii/util/statistics/StatisticsEventBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final sendEvents:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/LinkedList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/util/statistics/StatisticsServiceImpl;->queue:Ljava/util/LinkedList;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/util/statistics/StatisticsServiceImpl$1;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/util/statistics/StatisticsServiceImpl$1;-><init>(Lcom/narvii/util/statistics/StatisticsServiceImpl;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/util/statistics/StatisticsServiceImpl;->sendEvents:Ljava/lang/Runnable;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/util/statistics/StatisticsServiceImpl;->context:Lcom/narvii/app/NVContext;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/narvii/util/statistics/StatisticsServiceImpl;->appType:Ljava/lang/String;

    .line 22
    .line 23
    const-string p2, "config"

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    check-cast p2, Lcom/narvii/config/ConfigService;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/narvii/util/statistics/StatisticsServiceImpl;->config:Lcom/narvii/config/ConfigService;

    .line 32
    .line 33
    const-string p2, "account"

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    check-cast p2, Lcom/narvii/account/AccountService;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/narvii/util/statistics/StatisticsServiceImpl;->account:Lcom/narvii/account/AccountService;

    .line 42
    .line 43
    const-string p2, "prefs"

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    check-cast p1, Landroid/content/SharedPreferences;

    .line 50
    .line 51
    iput-object p1, p0, Lcom/narvii/util/statistics/StatisticsServiceImpl;->prefs:Landroid/content/SharedPreferences;

    .line 52
    return-void
.end method


# virtual methods
.method public event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/util/statistics/StatisticsServiceImpl;->queue:Ljava/util/LinkedList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 24
    .line 25
    iget-object v2, v2, Lcom/narvii/util/statistics/StatisticsEventBuilder;->eventName:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-static {v2, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v2

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    iget-object p1, p0, Lcom/narvii/util/statistics/StatisticsServiceImpl;->queue:Ljava/util/LinkedList;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/narvii/util/statistics/StatisticsServiceImpl;->sendEvents:Ljava/lang/Runnable;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 48
    .line 49
    iget-object p1, p0, Lcom/narvii/util/statistics/StatisticsServiceImpl;->sendEvents:Ljava/lang/Runnable;

    .line 50
    .line 51
    const-wide/16 v1, 0x64

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 55
    .line 56
    iget-object p1, p0, Lcom/narvii/util/statistics/StatisticsServiceImpl;->appType:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    move-result p1

    .line 61
    .line 62
    if-nez p1, :cond_2

    .line 63
    .line 64
    const-string p1, "App Type"

    .line 65
    .line 66
    iget-object v1, p0, Lcom/narvii/util/statistics/StatisticsServiceImpl;->appType:Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 70
    :cond_2
    return-object v0
.end method

.method protected logEvent(Lcom/narvii/util/statistics/StatisticsEventBuilder;)V
    .locals 0

    return-void
.end method

.method public revenue(Ljava/lang/String;D)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "revenue "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p1, " $"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    new-instance p1, Ljava/text/DecimalFormat;

    .line 21
    .line 22
    const-string v1, "0.00"

    .line 23
    .line 24
    .line 25
    invoke-direct {p1, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2, p3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    const-string p2, "statistics"

    .line 39
    .line 40
    .line 41
    invoke-static {p2, p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public setDeviceProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/statistics/StatisticsServiceImpl;->prefs:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    const-string v1, "statistics_device_props"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 13
    move-result-object v3

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    :cond_0
    if-nez p2, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_1
    instance-of v4, p2, Ljava/lang/Number;

    .line 28
    .line 29
    if-eqz v4, :cond_2

    .line 30
    .line 31
    check-cast p2, Ljava/lang/Number;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 35
    move-result p2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_2
    instance-of v4, p2, Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v4, :cond_3

    .line 44
    .line 45
    check-cast p2, Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_3
    instance-of v4, p2, Ljava/lang/Boolean;

    .line 52
    .line 53
    if-eqz v4, :cond_7

    .line 54
    .line 55
    check-cast p2, Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 59
    move-result p2

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, p1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 63
    .line 64
    .line 65
    :goto_0
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->size()I

    .line 66
    move-result p1

    .line 67
    .line 68
    if-nez p1, :cond_4

    .line 69
    goto :goto_1

    .line 70
    .line 71
    .line 72
    :cond_4
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    .line 76
    :goto_1
    invoke-static {v2, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 77
    move-result p1

    .line 78
    .line 79
    if-nez p1, :cond_6

    .line 80
    .line 81
    if-nez v2, :cond_5

    .line 82
    .line 83
    iget-object p1, p0, Lcom/narvii/util/statistics/StatisticsServiceImpl;->prefs:Landroid/content/SharedPreferences;

    .line 84
    .line 85
    .line 86
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    .line 90
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    .line 94
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 95
    goto :goto_2

    .line 96
    .line 97
    :cond_5
    iget-object p1, p0, Lcom/narvii/util/statistics/StatisticsServiceImpl;->prefs:Landroid/content/SharedPreferences;

    .line 98
    .line 99
    .line 100
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    .line 104
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    .line 108
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 109
    :cond_6
    :goto_2
    return-void

    .line 110
    .line 111
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 112
    .line 113
    .line 114
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 115
    throw p1
.end method
