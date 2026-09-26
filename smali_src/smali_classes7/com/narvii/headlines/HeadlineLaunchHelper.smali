.class public Lcom/narvii/headlines/HeadlineLaunchHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final communityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field context:Lcom/narvii/app/NVContext;

.field loggingHelper:Lcom/narvii/headlines/HeadlineLoggingHelper;

.field loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

.field loggingSource:Lcom/narvii/util/logging/LoggingSource;

.field source:Ljava/lang/String;

.field final timeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/util/logging/LoggingSource;->FeedList:Lcom/narvii/util/logging/LoggingSource;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 8
    .line 9
    sget-object v0, Lcom/narvii/util/logging/LoggingOrigin;->Headlines:Lcom/narvii/util/logging/LoggingOrigin;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 12
    .line 13
    new-instance v0, Ljava/util/HashMap;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    iput-object v0, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->communityMap:Ljava/util/HashMap;

    .line 19
    .line 20
    new-instance v0, Ljava/util/HashMap;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->timeMap:Ljava/util/HashMap;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->context:Lcom/narvii/app/NVContext;

    .line 28
    .line 29
    iput-object p2, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->source:Ljava/lang/String;

    .line 30
    .line 31
    new-instance p2, Lcom/narvii/headlines/HeadlineLoggingHelper;

    .line 32
    .line 33
    .line 34
    invoke-direct {p2, p1}, Lcom/narvii/headlines/HeadlineLoggingHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 35
    .line 36
    iput-object p2, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->loggingHelper:Lcom/narvii/headlines/HeadlineLoggingHelper;

    .line 37
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public launchFeed(ILcom/narvii/model/Feed;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move-object v7, p2

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/headlines/HeadlineLaunchHelper;->communityMap:Ljava/util/HashMap;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    move-object v8, v1

    .line 14
    .line 15
    check-cast v8, Lcom/narvii/model/Community;

    .line 16
    .line 17
    sget-object v1, Lcom/narvii/services/incubator/IncubatorCommunityLoggingServiceProvider;->HEADLINE_ENTER:Lcom/narvii/util/statistics/TmpValue;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 25
    .line 26
    instance-of v1, v7, Lcom/narvii/model/Blog;

    .line 27
    const/4 v9, 0x0

    .line 28
    const/4 v10, 0x1

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    move-object v1, v7

    .line 32
    .line 33
    check-cast v1, Lcom/narvii/model/Blog;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->shouldShowWebPreview()Z

    .line 37
    move-result v2

    .line 38
    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/narvii/model/LinkSummary;->getLink()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    if-eqz v1, :cond_0

    .line 56
    move v11, v10

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move v11, v9

    .line 59
    .line 60
    :goto_0
    iget-object v1, v0, Lcom/narvii/headlines/HeadlineLaunchHelper;->loggingHelper:Lcom/narvii/headlines/HeadlineLoggingHelper;

    .line 61
    move-object v2, p2

    .line 62
    .line 63
    move/from16 v3, p4

    .line 64
    move-object v4, p3

    .line 65
    move v5, p1

    .line 66
    .line 67
    move-object/from16 v6, p5

    .line 68
    .line 69
    .line 70
    invoke-virtual/range {v1 .. v6}, Lcom/narvii/headlines/HeadlineLoggingHelper;->logPostDetailViewEntered(Lcom/narvii/model/Feed;ILjava/lang/String;ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lcom/narvii/util/EnterCommunityUtils;->fastEnter(I)V

    .line 74
    .line 75
    iget-object v1, v0, Lcom/narvii/headlines/HeadlineLaunchHelper;->context:Lcom/narvii/app/NVContext;

    .line 76
    .line 77
    const-string v2, "community"

    .line 78
    .line 79
    .line 80
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    check-cast v1, Lcom/narvii/community/CommunityService;

    .line 84
    move v2, p1

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, p1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 88
    move-result-object v2

    .line 89
    .line 90
    if-nez v2, :cond_1

    .line 91
    .line 92
    const-wide/16 v2, 0x0

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v8, v9, v2, v3}, Lcom/narvii/community/CommunityService;->updateCommunity(Lcom/narvii/model/Community;ZJ)V

    .line 96
    .line 97
    :cond_1
    if-eqz v11, :cond_5

    .line 98
    .line 99
    const-class v1, Lcom/narvii/headlines/ExternalPostPreviewFragment;

    .line 100
    .line 101
    .line 102
    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    iget v2, v7, Lcom/narvii/model/Feed;->ndcId:I

    .line 106
    .line 107
    const-string v3, "__communityId"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    .line 112
    const-string v2, "__community"

    .line 113
    .line 114
    .line 115
    invoke-static {v8}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    move-result-object v3

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    move-object v2, v7

    .line 121
    .line 122
    check-cast v2, Lcom/narvii/model/Blog;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2}, Lcom/narvii/model/Blog;->getLinkSummary()Lcom/narvii/model/LinkSummary;

    .line 126
    move-result-object v3

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3}, Lcom/narvii/model/LinkSummary;->getLink()Ljava/lang/String;

    .line 130
    move-result-object v3

    .line 131
    .line 132
    const-string v4, "url"

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    .line 137
    const-string v3, "prefetch"

    .line 138
    .line 139
    .line 140
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    move-result-object v4

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    .line 146
    const-string v3, "External Content"

    .line 147
    .line 148
    const-string v4, "Source"

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    .line 153
    const-string v3, "loggingObjectType"

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2}, Lcom/narvii/model/Blog;->objectType()I

    .line 157
    move-result v5

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    .line 162
    const-string v3, "loggingObjectId"

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    .line 166
    move-result-object v5

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    .line 171
    const-string v3, "loggingBlogType"

    .line 172
    .line 173
    iget v2, v2, Lcom/narvii/model/Blog;->type:I

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    .line 178
    const-string v2, "id"

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 182
    move-result-object v3

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    .line 187
    iget-object v2, v0, Lcom/narvii/headlines/HeadlineLaunchHelper;->source:Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    .line 192
    iget-object v2, v0, Lcom/narvii/headlines/HeadlineLaunchHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 193
    const/4 v3, 0x0

    .line 194
    .line 195
    if-nez v2, :cond_2

    .line 196
    move-object v2, v3

    .line 197
    goto :goto_1

    .line 198
    .line 199
    .line 200
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 201
    move-result-object v2

    .line 202
    .line 203
    :goto_1
    const-string v4, "loggingSource"

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    .line 208
    iget-object v2, v0, Lcom/narvii/headlines/HeadlineLaunchHelper;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 209
    .line 210
    if-nez v2, :cond_3

    .line 211
    goto :goto_2

    .line 212
    .line 213
    .line 214
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 215
    move-result-object v3

    .line 216
    .line 217
    :goto_2
    const-string v2, "loggingOrigin"

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    .line 222
    if-nez p6, :cond_4

    .line 223
    .line 224
    const-string v2, "__hideDrawer"

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 228
    .line 229
    const-string v2, "fromHeadline"

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 233
    .line 234
    :cond_4
    const-string v2, "__interactionScope"

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 238
    .line 239
    iget-object v2, v0, Lcom/narvii/headlines/HeadlineLaunchHelper;->context:Lcom/narvii/app/NVContext;

    .line 240
    .line 241
    .line 242
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 243
    move-result-object v2

    .line 244
    .line 245
    .line 246
    invoke-static {v2, v1}, Lcom/narvii/headlines/HeadlineLaunchHelper;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 247
    :cond_5
    return-void
.end method

.method public onPageResponse(Lcom/narvii/headlines/HeadlineListResponse;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/headlines/HeadlineListResponse;->communityInfoMapping:Ljava/util/Map;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v1, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->communityMap:Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 11
    .line 12
    iget-object v0, p1, Lcom/narvii/headlines/HeadlineListResponse;->communityInfoMapping:Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    check-cast v1, Ljava/lang/Integer;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->timeMap:Ljava/util/HashMap;

    .line 35
    .line 36
    iget-object v3, p1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method public prepareEnterCommunity(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->communityMap:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/model/Community;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->context:Lcom/narvii/app/NVContext;

    .line 17
    .line 18
    const-string v2, "community"

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Lcom/narvii/community/CommunityService;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->timeMap:Ljava/util/HashMap;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    check-cast v2, Ljava/lang/String;

    .line 37
    const/4 v3, 0x0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0, v3, v2}, Lcom/narvii/community/CommunityService;->updateCommunity(Lcom/narvii/model/Community;ZLjava/lang/String;)V

    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->source:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-static {p1, v0}, Lcom/narvii/util/EnterCommunityUtils;->fastEnter(ILjava/lang/String;)V

    .line 46
    .line 47
    new-instance v0, Lcom/narvii/headlines/HeadlineLaunchHelper$1;

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, p0, p1}, Lcom/narvii/headlines/HeadlineLaunchHelper$1;-><init>(Lcom/narvii/headlines/HeadlineLaunchHelper;I)V

    .line 51
    .line 52
    const-wide/16 v1, 0xc8

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 56
    return-void
.end method

.method public setCommunityMap(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/narvii/model/Community;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->communityMap:Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->timeMap:Ljava/util/HashMap;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->communityMap:Ljava/util/HashMap;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v0

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Ljava/lang/Integer;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/narvii/headlines/HeadlineLaunchHelper;->timeMap:Ljava/util/HashMap;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-void
.end method
