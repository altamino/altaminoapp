.class Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$16;
.super Lcom/narvii/util/http/ApiJsonResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->sendUnlockRequest(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiJsonResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

.field final synthetic val$ctx:Lcom/narvii/app/NVContext;

.field final synthetic val$missionName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;Ljava/lang/Class;Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$16;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$16;->val$ctx:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$16;->val$missionName:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiJsonResponseListener;-><init>(Ljava/lang/Class;)V

    .line 10
    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$16;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 15
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiJsonResponseListener;->json()Lcom/fasterxml/jackson/databind/JsonNode;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-string p2, "missionSet"

    .line 7
    .line 8
    .line 9
    filled-new-array {p2}, [Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$16;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->prefs:Landroid/content/SharedPreferences;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$16;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->F(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;)V

    .line 41
    .line 42
    :cond_0
    iget-object p1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$16;->val$ctx:Lcom/narvii/app/NVContext;

    .line 43
    .line 44
    const-string v0, "statistics"

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 51
    .line 52
    const-string v0, "Unlock Moods"

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    const-string v0, "Mission"

    .line 59
    .line 60
    iget-object v1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$16;->val$missionName:Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$16;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->source:Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    const-string v0, "followInstagram"

    .line 75
    .line 76
    iget-object v1, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$16;->val$missionName:Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result v0

    .line 81
    const/4 v1, 0x1

    .line 82
    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    const-string v0, "Unlocked via Instagram"

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userProp(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 89
    goto :goto_0

    .line 90
    .line 91
    :cond_1
    const-string v0, "downloadAminoMaster"

    .line 92
    .line 93
    iget-object v2, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$16;->val$missionName:Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result v0

    .line 98
    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    const-string v0, "Unlocked via Master"

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userProp(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 105
    goto :goto_0

    .line 106
    .line 107
    :cond_2
    const-string v0, "invitedOneFriend"

    .line 108
    .line 109
    iget-object v2, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$16;->val$missionName:Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    move-result v0

    .line 114
    .line 115
    if-eqz v0, :cond_3

    .line 116
    .line 117
    const-string v0, "Unlocked via Invite"

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userProp(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 121
    goto :goto_0

    .line 122
    .line 123
    :cond_3
    const-string v0, "reviewUs"

    .line 124
    .line 125
    iget-object v2, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$16;->val$missionName:Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    move-result v0

    .line 130
    .line 131
    if-eqz v0, :cond_4

    .line 132
    .line 133
    const-string v0, "Unlocked via Review"

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userProp(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 137
    goto :goto_0

    .line 138
    .line 139
    :cond_4
    const-string v0, "checkInTwoWeeks"

    .line 140
    .line 141
    iget-object v2, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$16;->val$missionName:Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    move-result v0

    .line 146
    .line 147
    if-eqz v0, :cond_5

    .line 148
    .line 149
    const-string v0, "Unlocked via Streak"

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userProp(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 153
    .line 154
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$16;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 155
    .line 156
    iget-object v0, v0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->prefs:Landroid/content/SharedPreferences;

    .line 157
    const/4 v2, 0x0

    .line 158
    .line 159
    .line 160
    invoke-interface {v0, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    move-result-object p2

    .line 162
    .line 163
    .line 164
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 165
    move-result-object p2

    .line 166
    .line 167
    .line 168
    invoke-static {}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->H()Ljava/util/List;

    .line 169
    move-result-object v0

    .line 170
    .line 171
    .line 172
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 173
    move-result-object v0

    .line 174
    .line 175
    .line 176
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    move-result v2

    .line 178
    .line 179
    if-eqz v2, :cond_7

    .line 180
    .line 181
    .line 182
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    move-result-object v2

    .line 184
    .line 185
    check-cast v2, Ljava/lang/String;

    .line 186
    .line 187
    iget-object v3, p0, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment$16;->this$0:Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;

    .line 188
    .line 189
    .line 190
    invoke-static {v3, p2, v2}, Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;->w(Lcom/narvii/monetization/sticker/mood/MoodBaseListFragment;Lcom/fasterxml/jackson/databind/node/ObjectNode;Ljava/lang/String;)Z

    .line 191
    move-result v2

    .line 192
    .line 193
    if-eqz v2, :cond_6

    .line 194
    goto :goto_1

    .line 195
    .line 196
    :cond_7
    const-string p2, "Unlocked All"

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, p2, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userProp(Ljava/lang/String;Z)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 200
    :goto_1
    return-void
.end method

.method public parseResponse(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;[B)Lcom/narvii/model/api/ApiResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;[B)",
            "Lcom/narvii/model/api/ApiResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/util/http/ApiJsonResponseListener;->parseResponse(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;[B)Lcom/narvii/model/api/ApiResponse;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    const-wide/16 p2, 0x1f4

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    return-object p1
.end method
