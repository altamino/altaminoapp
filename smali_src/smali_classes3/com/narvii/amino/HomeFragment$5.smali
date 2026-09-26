.class Lcom/narvii/amino/HomeFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/HomeFragment;


# direct methods
.method constructor <init>(Lcom/narvii/amino/HomeFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/HomeFragment$5;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method public static safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroidx/fragment/app/Fragment;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onLiveItemClicked(Landroid/view/View;Lcom/narvii/model/ChatThread;)V
    .locals 4

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$5;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/amino/HomeFragment;->A(Lcom/narvii/amino/HomeFragment;)Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    if-eqz p1, :cond_3

    .line 13
    .line 14
    iget-object v1, p1, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ipc:Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p2}, Lcom/narvii/logging/Impression/ImpressionCollector;->getImpressionObjectInfo(Ljava/lang/Object;)Lcom/narvii/logging/ObjectInfo;

    .line 20
    move-result-object v1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move-object v1, v0

    .line 23
    .line 24
    :goto_0
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$5;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 25
    .line 26
    .line 27
    invoke-static {v2}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v1}, Lcom/narvii/logging/LogEvent$Builder;->objectInfo(Lcom/narvii/logging/ObjectInfo;)Lcom/narvii/logging/LogEvent$Builder;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/narvii/logging/LogEvent$Builder;->actClick()Lcom/narvii/logging/LogEvent$Builder;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    sget-object v3, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    iget-object p1, p1, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->ipc:Lcom/narvii/logging/Impression/StandaloneRecyclerImpressionCollector;

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v2, v1}, Lcom/narvii/logging/Impression/ImpressionCollector;->completeImpressionLogBuilder(Lcom/narvii/logging/LogEvent$Builder;Lcom/narvii/logging/ObjectInfo;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-virtual {v2}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 53
    .line 54
    :cond_3
    new-instance p1, Lcom/narvii/chat/video/VVChatEntryHelper;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/narvii/amino/HomeFragment$5;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, v1}, Lcom/narvii/chat/video/VVChatEntryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/narvii/model/ChatThread;->getRTCType()I

    .line 63
    move-result v1

    .line 64
    .line 65
    const-string v2, "Speed Dial Direct"

    .line 66
    const/4 v3, 0x1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2, v1, v2, v3}, Lcom/narvii/chat/video/VVChatEntryHelper;->launchLiveChannelFromLaunchEvent(Lcom/narvii/model/ChatThread;ILjava/lang/String;Z)V

    .line 70
    .line 71
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$5;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 72
    .line 73
    .line 74
    const-string/jumbo v1, "statistics"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/narvii/model/ChatThread;->getRTCType()I

    .line 84
    move-result p2

    .line 85
    .line 86
    .line 87
    invoke-static {p2}, Lcom/narvii/chat/ChatActivity;->statChannelType(I)Ljava/lang/String;

    .line 88
    move-result-object p2

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    const-string v1, "Enters Active VV "

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string p2, " via Speed Dial Direct Total"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object p2

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 118
    return-void
.end method

.method public onNormalItemClicked(Landroid/view/View;Lcom/narvii/amino/speeddial/mode/LiveCategory;)V
    .locals 4

    .line 1
    .line 2
    const-class p1, Lcom/narvii/livelayer/LiveLayerFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/livelayer/LiveLayerActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    const-string v0, "customFinishAnimOut"

    .line 9
    .line 10
    .line 11
    const v1, 0x7f01000d

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15
    .line 16
    const-string v0, "customFinishAnimIn"

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    if-nez p2, :cond_0

    .line 24
    move-object p2, v0

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    iget-object p2, p2, Lcom/narvii/amino/speeddial/mode/LiveCategory;->topic:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-static {p2}, Lcom/narvii/amino/speeddial/mode/LiveCategory;->getLiveCategoryType(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    .line 34
    const-string/jumbo v2, "targetTopic"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    const-string v2, "Source"

    .line 40
    .line 41
    const-string v3, "Speed Dial"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$5;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    .line 53
    invoke-static {v2}, Lcom/narvii/livelayer/LiveLayerActivity;->prepare(Landroid/app/Activity;)V

    .line 54
    .line 55
    iget-object v2, p0, Lcom/narvii/amino/HomeFragment$5;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 56
    .line 57
    .line 58
    invoke-static {v2, p1}, Lcom/narvii/amino/HomeFragment$5;->safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    .line 59
    .line 60
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$5;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    const v2, 0x7f01000c

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 71
    .line 72
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$5;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 73
    .line 74
    .line 75
    invoke-static {p1}, Lcom/narvii/amino/HomeFragment;->A(Lcom/narvii/amino/HomeFragment;)Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    if-eqz p1, :cond_1

    .line 79
    .line 80
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$5;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 81
    .line 82
    .line 83
    invoke-static {p1}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->actClick()Lcom/narvii/logging/LogEvent$Builder;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    const-string v1, "SpeedDial"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v1}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 94
    move-result-object p1

    .line 95
    .line 96
    sget-object v1, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v1}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 104
    .line 105
    :cond_1
    iget-object p1, p0, Lcom/narvii/amino/HomeFragment$5;->this$0:Lcom/narvii/amino/HomeFragment;

    .line 106
    .line 107
    .line 108
    const-string/jumbo v1, "statistics"

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 115
    .line 116
    .line 117
    const-string/jumbo v1, "users-chatting-public"

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    move-result v1

    .line 122
    .line 123
    if-eqz v1, :cond_2

    .line 124
    .line 125
    .line 126
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 127
    move-result-object p1

    .line 128
    .line 129
    const-string p2, "Chatting Speed Dial Total"

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 133
    goto :goto_1

    .line 134
    .line 135
    .line 136
    :cond_2
    const-string/jumbo v1, "users-live-chatting-public"

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    move-result p2

    .line 141
    .line 142
    if-eqz p2, :cond_3

    .line 143
    .line 144
    .line 145
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 146
    move-result-object p1

    .line 147
    .line 148
    const-string p2, "Live Chatting Speed Dial Total"

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 152
    :cond_3
    :goto_1
    return-void
.end method
