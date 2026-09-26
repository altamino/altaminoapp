.class public final Lcom/narvii/chat/video/utils/VVChatLogHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ss:Lcom/narvii/util/statistics/StatisticsService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/chat/video/utils/VVChatLogHelper;->ctx:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    const-string v0, "statistics"

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    const-string v0, "getService(...)"

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/narvii/chat/video/utils/VVChatLogHelper;->ss:Lcom/narvii/util/statistics/StatisticsService;

    .line 26
    return-void
.end method


# virtual methods
.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatLogHelper;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method public final getSs()Lcom/narvii/util/statistics/StatisticsService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatLogHelper;->ss:Lcom/narvii/util/statistics/StatisticsService;

    return-object v0
.end method

.method public final logJoinsActiveLiveChannel(ILjava/lang/String;Lcom/narvii/model/ChatThread;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/utils/VVChatLogHelper;->statChannelType(I)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatLogHelper;->ss:Lcom/narvii/util/statistics/StatisticsService;

    .line 7
    .line 8
    const-string v1, "Joins Active VV Chat"

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "Type"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    .line 22
    invoke-static {p3, v1}, Lcom/narvii/util/StatisticHelper;->getChatThreadType(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p3

    .line 24
    .line 25
    const-string v1, "Chat Type"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, p3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 29
    move-result-object p3

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 33
    move-result-object p2

    .line 34
    .line 35
    const-string p3, "Joins a VV Chat Total"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    new-instance p3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    const-string v0, "Joins a VV "

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string p1, " Chat Total"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 66
    :cond_0
    return-void
.end method

.method public final logLeaveLiveChannel(ILjava/lang/String;Lcom/narvii/model/ChatThread;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatLogHelper;->ss:Lcom/narvii/util/statistics/StatisticsService;

    .line 3
    .line 4
    const-string v1, "Leave VV Chat"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "Type"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/utils/VVChatLogHelper;->statChannelType(I)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 18
    move-result-object p1

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    .line 22
    invoke-static {p3, v0}, Lcom/narvii/util/StatisticHelper;->getChatThreadType(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p3

    .line 24
    .line 25
    const-string v0, "Chat Type"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0, p3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    const-string p3, "Leave VV Chat Total"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 39
    return-void
.end method

.method public final logMinimizeLiveChannel(ILjava/lang/String;Lcom/narvii/model/ChatThread;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatLogHelper;->ss:Lcom/narvii/util/statistics/StatisticsService;

    .line 3
    .line 4
    const-string v1, "Minimize VV Chat"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "Type"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/utils/VVChatLogHelper;->statChannelType(I)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 18
    move-result-object p1

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    .line 22
    invoke-static {p3, v0}, Lcom/narvii/util/StatisticHelper;->getChatThreadType(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p3

    .line 24
    .line 25
    const-string v0, "Chat Type"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0, p3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    const-string p3, "Minimize VV Chat Total"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 39
    return-void
.end method

.method public final logStartLiveChannel(IZLjava/lang/String;Lcom/narvii/model/ChatThread;)V
    .locals 5
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/utils/VVChatLogHelper;->statChannelType(I)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    goto :goto_4

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatLogHelper;->ss:Lcom/narvii/util/statistics/StatisticsService;

    .line 16
    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    const-string v1, "Starts A VV Chat"

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_1
    const-string v1, "Enters Active VV Chat"

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    const-string v1, "event(...)"

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    const-string v1, "Starts A VV Chat Total"

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :cond_2
    const-string v1, "Enters Active VV Chat Total"

    .line 39
    .line 40
    .line 41
    :goto_1
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/chat/video/utils/VVChatLogHelper;->ss:Lcom/narvii/util/statistics/StatisticsService;

    .line 44
    const/4 v2, 0x0

    .line 45
    .line 46
    .line 47
    invoke-interface {v1, v2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    const-string v3, " Chat Total"

    .line 51
    .line 52
    if-eqz p2, :cond_3

    .line 53
    .line 54
    new-instance p2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    const-string v4, "Starts A VV "

    .line 60
    .line 61
    .line 62
    :goto_2
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p2

    .line 73
    goto :goto_3

    .line 74
    .line 75
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    const-string v4, "Enters Active VV "

    .line 81
    goto :goto_2

    .line 82
    .line 83
    .line 84
    :goto_3
    invoke-virtual {v1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 85
    .line 86
    const-string p2, "Type"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p2, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 90
    .line 91
    const-string p1, "Chat Type"

    .line 92
    .line 93
    .line 94
    invoke-static {p4, v2}, Lcom/narvii/util/StatisticHelper;->getChatThreadType(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    move-result-object p2

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 102
    :cond_4
    :goto_4
    return-void
.end method

.method public final logStopPresentingLiveChannel(ILjava/lang/String;Lcom/narvii/model/ChatThread;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/narvii/model/ChatThread;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/utils/VVChatLogHelper;->statChannelType(I)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/video/utils/VVChatLogHelper;->ss:Lcom/narvii/util/statistics/StatisticsService;

    .line 7
    .line 8
    const-string v1, "Stop Presenting VV Chat"

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "Type"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 18
    move-result-object p1

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    .line 22
    invoke-static {p3, v0}, Lcom/narvii/util/StatisticHelper;->getChatThreadType(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p3

    .line 24
    .line 25
    const-string v0, "Chat Type"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0, p3}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    const-string p2, "Stop Presenting VV Chat Total"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 39
    return-void
.end method

.method public final statChannelType(I)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "Screening Room"

    return-object p1

    :cond_1
    const-string p1, "Video"

    return-object p1

    :cond_2
    const-string p1, "Avatar"

    return-object p1

    :cond_3
    const-string p1, "Voice"

    return-object p1
.end method
