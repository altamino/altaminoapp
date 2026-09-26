.class public Lcom/narvii/feed/FeedHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/feed/FeedHelper$StartQuizListener;,
        Lcom/narvii/feed/FeedHelper$StartQuizInterceptor;
    }
.end annotation


# instance fields
.field private configService:Lcom/narvii/config/ConfigService;

.field private context:Lcom/narvii/app/NVContext;

.field public loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

.field public loggingSource:Lcom/narvii/util/logging/LoggingSource;

.field showProgressWhenLoadingQuiz:Z

.field public source:Ljava/lang/String;

.field public startQuizInterceptor:Lcom/narvii/feed/FeedHelper$StartQuizInterceptor;

.field public startQuizListener:Lcom/narvii/feed/FeedHelper$StartQuizListener;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/feed/FeedHelper;->showProgressWhenLoadingQuiz:Z

    .line 7
    .line 8
    iput-object p1, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 9
    .line 10
    const-string v0, "config"

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/narvii/feed/FeedHelper;->configService:Lcom/narvii/config/ConfigService;

    .line 19
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/feed/FeedHelper;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/feed/FeedHelper;Lcom/narvii/model/Feed;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/feed/FeedHelper;->edit(Lcom/narvii/model/Feed;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic c(Lcom/narvii/feed/FeedHelper;Lcom/narvii/model/Feed;ILcom/narvii/util/Callback;Lcom/narvii/util/Callback;Lcom/narvii/util/logging/LoggingSource;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/narvii/feed/FeedHelper;->voteFeed(Lcom/narvii/model/Feed;ILcom/narvii/util/Callback;Lcom/narvii/util/Callback;Lcom/narvii/util/logging/LoggingSource;Ljava/lang/String;)V

    return-void
.end method

.method private edit(Lcom/narvii/model/Feed;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/Feed;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Item;",
            ">;",
            "Ljava/util/List<",
            "Lcom/narvii/model/BlogCategory;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/Blog;

    .line 3
    .line 4
    const-string v1, "loggingOrigin"

    .line 5
    .line 6
    const-string v2, "loggingSource"

    .line 7
    .line 8
    const-string v3, "feed"

    .line 9
    .line 10
    const-string v4, "post"

    .line 11
    const/4 v5, 0x0

    .line 12
    .line 13
    if-eqz v0, :cond_8

    .line 14
    move-object v0, p1

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/model/Blog;

    .line 17
    .line 18
    iget-object v6, v0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 19
    .line 20
    if-nez v6, :cond_7

    .line 21
    .line 22
    new-instance v6, Lcom/narvii/blog/post/BlogPost;

    .line 23
    .line 24
    .line 25
    invoke-direct {v6, v0, p2, p3}, Lcom/narvii/blog/post/BlogPost;-><init>(Lcom/narvii/model/Blog;Ljava/util/List;Ljava/util/List;)V

    .line 26
    .line 27
    iget p2, v0, Lcom/narvii/model/Blog;->type:I

    .line 28
    .line 29
    if-nez p2, :cond_0

    .line 30
    .line 31
    new-instance p2, Landroid/content/Intent;

    .line 32
    .line 33
    iget-object p3, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 34
    .line 35
    .line 36
    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 37
    move-result-object p3

    .line 38
    .line 39
    const-class v0, Lcom/narvii/blog/post/BlogPostActivity;

    .line 40
    .line 41
    .line 42
    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p3, 0x5

    .line 45
    .line 46
    if-ne p2, p3, :cond_1

    .line 47
    .line 48
    new-instance p2, Landroid/content/Intent;

    .line 49
    .line 50
    iget-object p3, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 51
    .line 52
    .line 53
    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 54
    move-result-object p3

    .line 55
    .line 56
    const-class v0, Lcom/narvii/blog/post/LinkPostActivity;

    .line 57
    .line 58
    .line 59
    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/4 p3, 0x6

    .line 62
    .line 63
    if-ne p2, p3, :cond_2

    .line 64
    .line 65
    new-instance p2, Landroid/content/Intent;

    .line 66
    .line 67
    iget-object p3, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 68
    .line 69
    .line 70
    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 71
    move-result-object p3

    .line 72
    .line 73
    const-class v0, Lcom/narvii/blog/post/QuizPostActivity;

    .line 74
    .line 75
    .line 76
    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    const/4 p3, 0x4

    .line 79
    .line 80
    if-ne p2, p3, :cond_3

    .line 81
    .line 82
    new-instance p2, Landroid/content/Intent;

    .line 83
    .line 84
    iget-object p3, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 85
    .line 86
    .line 87
    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 88
    move-result-object p3

    .line 89
    .line 90
    const-class v0, Lcom/narvii/blog/post/PollPostActivity;

    .line 91
    .line 92
    .line 93
    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    goto :goto_0

    .line 95
    :cond_3
    const/4 p3, 0x7

    .line 96
    .line 97
    if-ne p2, p3, :cond_4

    .line 98
    .line 99
    new-instance p2, Landroid/content/Intent;

    .line 100
    .line 101
    iget-object p3, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 102
    .line 103
    .line 104
    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 105
    move-result-object p3

    .line 106
    .line 107
    const-class v0, Lcom/narvii/blog/post/ImagePostActivity;

    .line 108
    .line 109
    .line 110
    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    goto :goto_0

    .line 112
    .line 113
    :cond_4
    new-instance p2, Landroid/content/Intent;

    .line 114
    .line 115
    iget-object p3, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 116
    .line 117
    .line 118
    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 119
    move-result-object p3

    .line 120
    .line 121
    const-class v0, Lcom/narvii/blog/post/TopicPostActivity;

    .line 122
    .line 123
    .line 124
    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .line 126
    .line 127
    :goto_0
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 128
    move-result-object p3

    .line 129
    .line 130
    const-string v0, "blogId"

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    .line 135
    .line 136
    invoke-static {v6}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    move-result-object p3

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    .line 142
    .line 143
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    move-result-object p1

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    .line 149
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 150
    .line 151
    if-nez p1, :cond_5

    .line 152
    move-object p1, v5

    .line 153
    goto :goto_1

    .line 154
    .line 155
    .line 156
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 157
    move-result-object p1

    .line 158
    .line 159
    .line 160
    :goto_1
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    .line 162
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 163
    .line 164
    if-nez p1, :cond_6

    .line 165
    goto :goto_2

    .line 166
    .line 167
    .line 168
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 169
    move-result-object v5

    .line 170
    .line 171
    .line 172
    :goto_2
    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    .line 174
    .line 175
    invoke-static {p0, p2}, Lcom/narvii/feed/FeedHelper;->safedk_FeedHelper_startActivity_ca485870bc4a685db67d9e0c81995f45(Lcom/narvii/feed/FeedHelper;Landroid/content/Intent;)V

    .line 176
    goto :goto_5

    .line 177
    .line 178
    .line 179
    :cond_7
    invoke-virtual {p0, p1}, Lcom/narvii/feed/FeedHelper;->repost(Lcom/narvii/model/Feed;)V

    .line 180
    goto :goto_5

    .line 181
    .line 182
    :cond_8
    instance-of p3, p1, Lcom/narvii/model/Item;

    .line 183
    .line 184
    if-eqz p3, :cond_b

    .line 185
    .line 186
    new-instance p3, Lcom/narvii/item/post/ItemPost;

    .line 187
    .line 188
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 189
    move-object v6, p1

    .line 190
    .line 191
    check-cast v6, Lcom/narvii/model/Item;

    .line 192
    .line 193
    .line 194
    invoke-direct {p3, v0, v6, p2}, Lcom/narvii/item/post/ItemPost;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/Item;Ljava/util/List;)V

    .line 195
    .line 196
    new-instance p2, Landroid/content/Intent;

    .line 197
    .line 198
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 199
    .line 200
    .line 201
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 202
    move-result-object v0

    .line 203
    .line 204
    const-class v6, Lcom/narvii/item/post/ItemPostActivity;

    .line 205
    .line 206
    .line 207
    invoke-direct {p2, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 211
    move-result-object v0

    .line 212
    .line 213
    const-string v6, "itemId"

    .line 214
    .line 215
    .line 216
    invoke-virtual {p2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    .line 218
    .line 219
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 220
    move-result-object p3

    .line 221
    .line 222
    .line 223
    invoke-virtual {p2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    .line 225
    .line 226
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 227
    move-result-object p1

    .line 228
    .line 229
    .line 230
    invoke-virtual {p2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    .line 232
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 233
    .line 234
    if-nez p1, :cond_9

    .line 235
    move-object p1, v5

    .line 236
    goto :goto_3

    .line 237
    .line 238
    .line 239
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 240
    move-result-object p1

    .line 241
    .line 242
    .line 243
    :goto_3
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    .line 245
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 246
    .line 247
    if-nez p1, :cond_a

    .line 248
    goto :goto_4

    .line 249
    .line 250
    .line 251
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 252
    move-result-object v5

    .line 253
    .line 254
    .line 255
    :goto_4
    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    .line 257
    .line 258
    invoke-static {p0, p2}, Lcom/narvii/feed/FeedHelper;->safedk_FeedHelper_startActivity_ca485870bc4a685db67d9e0c81995f45(Lcom/narvii/feed/FeedHelper;Landroid/content/Intent;)V

    .line 259
    :cond_b
    :goto_5
    return-void
.end method

.method public static isFeedContinuousOpen(Lcom/narvii/app/NVContext;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static safedk_FeedHelper_startActivity_ca485870bc4a685db67d9e0c81995f45(Lcom/narvii/feed/FeedHelper;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/feed/FeedHelper;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/feed/FeedHelper;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/feed/FeedHelper;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVContext;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private voteFeed(Lcom/narvii/model/Feed;ILcom/narvii/util/Callback;Lcom/narvii/util/Callback;Lcom/narvii/util/logging/LoggingSource;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/Feed;",
            "I",
            "Lcom/narvii/util/Callback;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/narvii/util/logging/LoggingSource;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    .line 6
    .line 7
    invoke-interface {p3, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 8
    .line 9
    :cond_0
    new-instance p3, Lcom/narvii/story/detail/VoteHelper;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 12
    .line 13
    .line 14
    invoke-direct {p3, v0}, Lcom/narvii/story/detail/VoteHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 15
    .line 16
    iput-object p5, p3, Lcom/narvii/story/detail/VoteHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 17
    .line 18
    iput-object p6, p3, Lcom/narvii/story/detail/VoteHelper;->loggingOriginName:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    new-instance p5, Lcom/narvii/feed/FeedHelper$13;

    .line 25
    .line 26
    .line 27
    invoke-direct {p5, p0, p4}, Lcom/narvii/feed/FeedHelper$13;-><init>(Lcom/narvii/feed/FeedHelper;Lcom/narvii/util/Callback;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3, p1, p2, p5}, Lcom/narvii/story/detail/VoteHelper;->vote(Lcom/narvii/model/Feed;Ljava/lang/Integer;Lcom/narvii/story/detail/VoteHelper$OnVoteListener;)V

    .line 31
    return-void
.end method


# virtual methods
.method public addQuizListExtra(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 4

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const-string v0, "fromQuizFeedList"

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 11
    move-result v2

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const-string v2, "key_continuous_feed_api_request"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    const-string v2, "key_continuous_feed_list"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    const-string v2, "key_continuous_feed_list_timestamp"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v3

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    const-string v2, "key_continuous_feed_current_position"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 46
    move-result p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    const/4 p1, 0x1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 54
    :cond_0
    return-void
.end method

.method public bookmark(Lcom/narvii/model/Feed;Lcom/narvii/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/Feed;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
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
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    const-string v1, "account"

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    new-instance p1, Landroid/content/Intent;

    .line 22
    .line 23
    const-string p2, "ndc://login"

    .line 24
    .line 25
    .line 26
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    const-string v0, "android.intent.action.VIEW"

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 33
    .line 34
    sget-object p2, Lcom/narvii/account/LoginActivity$PromptType;->Required:Lcom/narvii/account/LoginActivity$PromptType;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    const-string v0, "promptType"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    :try_start_0
    invoke-static {p0, p1}, Lcom/narvii/feed/FeedHelper;->safedk_FeedHelper_startActivity_ca485870bc4a685db67d9e0c81995f45(Lcom/narvii/feed/FeedHelper;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :catch_0
    const-string/jumbo p1, "unable to start login activity"

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 53
    :goto_0
    return-void

    .line 54
    .line 55
    :cond_1
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 58
    .line 59
    .line 60
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 65
    .line 66
    iput-object p2, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 70
    .line 71
    new-instance p2, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 72
    .line 73
    .line 74
    invoke-direct {p2}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 75
    .line 76
    const-string v1, "/bookmark"

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 80
    move-result-object p2

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 84
    move-result-object p2

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->objectType()I

    .line 88
    move-result v1

    .line 89
    .line 90
    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    const-string v2, "objectType"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 98
    move-result-object p2

    .line 99
    .line 100
    const-string v1, "objectId"

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 104
    move-result-object v2

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 108
    move-result-object p2

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 112
    move-result-object p2

    .line 113
    .line 114
    iget-object v1, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 115
    .line 116
    const-string v2, "api"

    .line 117
    .line 118
    .line 119
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    move-result-object v1

    .line 121
    .line 122
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 123
    .line 124
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, p2, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 128
    .line 129
    iget-object p2, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 130
    .line 131
    const-string/jumbo v0, "statistics"

    .line 132
    .line 133
    .line 134
    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    move-result-object p2

    .line 136
    .line 137
    check-cast p2, Lcom/narvii/util/statistics/StatisticsService;

    .line 138
    .line 139
    const-string v0, "Bookmarks a post"

    .line 140
    .line 141
    .line 142
    invoke-interface {p2, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 143
    move-result-object p2

    .line 144
    .line 145
    const-string v0, "Bookmarked a post Total"

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 149
    move-result-object p2

    .line 150
    .line 151
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 152
    const/4 v1, 0x1

    .line 153
    .line 154
    .line 155
    invoke-static {v0, p1, v1}, Lcom/narvii/util/StatisticHelper;->getStatisticSource(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)Ljava/lang/String;

    .line 156
    move-result-object p1

    .line 157
    .line 158
    const-string v0, "Content"

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2, v0, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 162
    move-result-object p1

    .line 163
    .line 164
    iget-object p2, p0, Lcom/narvii/feed/FeedHelper;->source:Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 168
    return-void
.end method

.method public copyAndEdit(Lcom/narvii/model/Item;)V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 17
    .line 18
    const-string v2, "api"

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    const-string v4, "/item/"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/narvii/model/Item;->id()Ljava/lang/String;

    .line 42
    move-result-object v4

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    new-instance v3, Lcom/narvii/feed/FeedHelper$3;

    .line 60
    .line 61
    const-class v4, Lcom/narvii/model/api/ItemResponse;

    .line 62
    .line 63
    .line 64
    invoke-direct {v3, p0, v4, v0, p1}, Lcom/narvii/feed/FeedHelper$3;-><init>(Lcom/narvii/feed/FeedHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/Item;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 68
    return-void
.end method

.method public delete(Lcom/narvii/model/Feed;Z)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 3
    .line 4
    iget v0, v0, Lcom/narvii/model/User;->role:I

    .line 5
    .line 6
    const/16 v1, 0xfe

    .line 7
    .line 8
    const-string v2, "api"

    .line 9
    .line 10
    const-string v3, "/"

    .line 11
    .line 12
    .line 13
    const v4, 0x1040009

    .line 14
    .line 15
    .line 16
    const v5, 0x1040013

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    new-instance p2, Landroid/app/AlertDialog$Builder;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-direct {p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    const v0, 0x7f1203f5

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 38
    .line 39
    new-instance v0, Lcom/narvii/feed/FeedHelper$4;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, p0, p1}, Lcom/narvii/feed/FeedHelper$4;-><init>(Lcom/narvii/feed/FeedHelper;Lcom/narvii/model/Feed;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v5, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 46
    .line 47
    sget-object p1, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v4, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 54
    .line 55
    goto/16 :goto_0

    .line 56
    .line 57
    :cond_0
    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 60
    .line 61
    .line 62
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    .line 66
    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 67
    .line 68
    new-instance v0, Lcom/narvii/feed/FeedHelper$5;

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, p0, p1}, Lcom/narvii/feed/FeedHelper$5;-><init>(Lcom/narvii/feed/FeedHelper;Lcom/narvii/model/Feed;)V

    .line 72
    .line 73
    iput-object v0, p2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 88
    .line 89
    iget-object v1, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 90
    .line 91
    const-string v4, "account"

    .line 92
    .line 93
    .line 94
    invoke-interface {v1, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    move-result-object v1

    .line 96
    .line 97
    check-cast v1, Lcom/narvii/account/AccountService;

    .line 98
    .line 99
    .line 100
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 101
    move-result-object v4

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 105
    move-result-object v4

    .line 106
    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->apiTypeName()Ljava/lang/String;

    .line 114
    move-result-object v6

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 124
    move-result-object p1

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string p1, "/batch-delete"

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object p1

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 140
    move-result-object p1

    .line 141
    .line 142
    const-string/jumbo v3, "sourceUid"

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 146
    move-result-object v1

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 150
    move-result-object p1

    .line 151
    .line 152
    const-string v1, "itemIdList"

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 156
    move-result-object p1

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 160
    move-result-object p1

    .line 161
    .line 162
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 163
    .line 164
    .line 165
    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 166
    move-result-object v0

    .line 167
    .line 168
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 169
    .line 170
    iget-object p2, p2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 174
    goto :goto_0

    .line 175
    .line 176
    :cond_1
    if-nez p2, :cond_2

    .line 177
    .line 178
    new-instance p2, Landroid/app/AlertDialog$Builder;

    .line 179
    .line 180
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 181
    .line 182
    .line 183
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 184
    move-result-object v0

    .line 185
    .line 186
    .line 187
    invoke-direct {p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 188
    .line 189
    .line 190
    const v0, 0x7f1203f4

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 194
    .line 195
    new-instance v0, Lcom/narvii/feed/FeedHelper$6;

    .line 196
    .line 197
    .line 198
    invoke-direct {v0, p0, p1}, Lcom/narvii/feed/FeedHelper$6;-><init>(Lcom/narvii/feed/FeedHelper;Lcom/narvii/model/Feed;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p2, v5, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 202
    .line 203
    sget-object p1, Lcom/narvii/util/Utils;->DIALOG_BUTTON_EMPTY_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2, v4, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 210
    goto :goto_0

    .line 211
    .line 212
    :cond_2
    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    .line 213
    .line 214
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 215
    .line 216
    .line 217
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 218
    move-result-object v0

    .line 219
    .line 220
    .line 221
    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 222
    .line 223
    new-instance v0, Lcom/narvii/feed/FeedHelper$7;

    .line 224
    .line 225
    .line 226
    invoke-direct {v0, p0, p1}, Lcom/narvii/feed/FeedHelper$7;-><init>(Lcom/narvii/feed/FeedHelper;Lcom/narvii/model/Feed;)V

    .line 227
    .line 228
    iput-object v0, p2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 232
    .line 233
    .line 234
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 235
    move-result-object v0

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 239
    move-result-object v0

    .line 240
    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->apiTypeName()Ljava/lang/String;

    .line 248
    move-result-object v4

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 258
    move-result-object p1

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    move-result-object p1

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 269
    move-result-object p1

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 273
    move-result-object p1

    .line 274
    .line 275
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 276
    .line 277
    .line 278
    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 279
    move-result-object v0

    .line 280
    .line 281
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 282
    .line 283
    iget-object p2, p2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 287
    :goto_0
    return-void
.end method

.method public flagForReview(Lcom/narvii/model/Feed;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    .line 19
    return-void
.end method

.method public follow(Lcom/narvii/model/Feed;ZZLcom/narvii/util/Callback;Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    const-string v1, "/user-profile/"

    .line 8
    .line 9
    if-nez p2, :cond_2

    .line 10
    .line 11
    if-eqz p3, :cond_1

    .line 12
    .line 13
    new-instance p2, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 14
    .line 15
    iget-object p3, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 16
    .line 17
    .line 18
    invoke-interface {p3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 19
    move-result-object p3

    .line 20
    .line 21
    .line 22
    invoke-direct {p2, p3}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    const p3, 0x7f121250

    .line 26
    const/4 v0, 0x1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p3, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 30
    .line 31
    new-instance p3, Lcom/narvii/feed/FeedHelper$8;

    .line 32
    move-object v1, p3

    .line 33
    move-object v2, p0

    .line 34
    move-object v3, p4

    .line 35
    move-object v4, p1

    .line 36
    move-object v5, p5

    .line 37
    move-object v6, p6

    .line 38
    .line 39
    .line 40
    invoke-direct/range {v1 .. v6}, Lcom/narvii/feed/FeedHelper$8;-><init>(Lcom/narvii/feed/FeedHelper;Lcom/narvii/util/Callback;Lcom/narvii/model/Feed;Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p3}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 47
    const/4 p1, 0x0

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_1
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 51
    .line 52
    const-string p2, "account"

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 62
    move-result-object p2

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 66
    move-result-object p2

    .line 67
    .line 68
    new-instance p3, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 78
    move-result-object p4

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string p4, "/member/"

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 105
    move-result-object p1

    .line 106
    goto :goto_0

    .line 107
    .line 108
    .line 109
    :cond_2
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 110
    move-result-object p1

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 114
    move-result-object p1

    .line 115
    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    .line 126
    move-result-object p3

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string p3, "/member"

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object p2

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 142
    move-result-object p1

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 146
    move-result-object p1

    .line 147
    .line 148
    :goto_0
    if-nez p1, :cond_3

    .line 149
    return-void

    .line 150
    .line 151
    :cond_3
    iget-object p2, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 152
    .line 153
    const-string p3, "api"

    .line 154
    .line 155
    .line 156
    invoke-interface {p2, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    move-result-object p2

    .line 158
    .line 159
    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 160
    .line 161
    new-instance p3, Lcom/narvii/feed/FeedHelper$9;

    .line 162
    .line 163
    const-class p4, Lcom/narvii/model/api/ApiResponse;

    .line 164
    .line 165
    .line 166
    invoke-direct {p3, p0, p4, p5, p6}, Lcom/narvii/feed/FeedHelper$9;-><init>(Lcom/narvii/feed/FeedHelper;Ljava/lang/Class;Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p2, p1, p3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 170
    return-void
.end method

.method public followAuthor(Lcom/narvii/model/Feed;ZLcom/narvii/util/Callback;Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V
    .locals 7

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    if-eqz p2, :cond_1

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    move-object v0, p0

    .line 9
    move-object v1, p1

    .line 10
    move-object v4, p3

    .line 11
    move-object v5, p4

    .line 12
    move-object v6, p5

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/feed/FeedHelper;->follow(Lcom/narvii/model/Feed;ZZLcom/narvii/util/Callback;Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x1

    .line 19
    move-object v0, p0

    .line 20
    move-object v1, p1

    .line 21
    move-object v4, p3

    .line 22
    move-object v5, p4

    .line 23
    move-object v6, p5

    .line 24
    .line 25
    .line 26
    invoke-virtual/range {v0 .. v6}, Lcom/narvii/feed/FeedHelper;->follow(Lcom/narvii/model/Feed;ZZLcom/narvii/util/Callback;Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V

    .line 27
    :goto_0
    return-void
.end method

.method public getFeedContinuousIntent(Lcom/narvii/model/Feed;Ljava/util/List;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Landroid/content/Intent;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/Feed;",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/Feed;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p4

    .line 5
    .line 6
    move-object/from16 v2, p5

    .line 7
    .line 8
    move-object/from16 v3, p6

    .line 9
    .line 10
    move-object/from16 v4, p7

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    new-instance v5, Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    move-object/from16 v5, p2

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 24
    move-result-object v6

    .line 25
    .line 26
    .line 27
    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->indexOfId(Ljava/util/Collection;Ljava/lang/String;)I

    .line 28
    move-result v6

    .line 29
    const/4 v7, 0x0

    .line 30
    move v8, v7

    .line 31
    move v9, v8

    .line 32
    move v10, v9

    .line 33
    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    .line 37
    :goto_1
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    .line 38
    move-result v11

    .line 39
    .line 40
    if-ge v8, v11, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v10

    .line 45
    .line 46
    check-cast v10, Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 50
    move-result v10

    .line 51
    add-int/2addr v10, v9

    .line 52
    .line 53
    if-lt v6, v9, :cond_1

    .line 54
    .line 55
    if-ge v6, v10, :cond_1

    .line 56
    .line 57
    move/from16 v19, v10

    .line 58
    move v10, v9

    .line 59
    .line 60
    move/from16 v9, v19

    .line 61
    goto :goto_2

    .line 62
    .line 63
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 64
    .line 65
    move/from16 v19, v10

    .line 66
    move v10, v9

    .line 67
    .line 68
    move/from16 v9, v19

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    move v8, v7

    .line 71
    .line 72
    :cond_3
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    .line 73
    .line 74
    .line 75
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 79
    move-result v11

    .line 80
    .line 81
    if-lt v11, v9, :cond_4

    .line 82
    .line 83
    .line 84
    invoke-interface {v5, v10, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 85
    move-result-object v2

    .line 86
    :cond_4
    const/4 v5, 0x0

    .line 87
    .line 88
    if-eqz v3, :cond_5

    .line 89
    .line 90
    .line 91
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->isEmpty()Z

    .line 92
    move-result v9

    .line 93
    .line 94
    if-nez v9, :cond_5

    .line 95
    .line 96
    .line 97
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    .line 98
    move-result v9

    .line 99
    .line 100
    if-le v9, v8, :cond_5

    .line 101
    .line 102
    .line 103
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    move-result-object v3

    .line 105
    .line 106
    check-cast v3, Ljava/lang/String;

    .line 107
    .line 108
    move-object/from16 v17, v3

    .line 109
    goto :goto_3

    .line 110
    .line 111
    :cond_5
    move-object/from16 v17, v5

    .line 112
    .line 113
    :goto_3
    if-eqz v1, :cond_6

    .line 114
    .line 115
    .line 116
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    .line 117
    move-result v3

    .line 118
    .line 119
    if-nez v3, :cond_6

    .line 120
    .line 121
    .line 122
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    .line 123
    move-result v3

    .line 124
    .line 125
    if-le v3, v8, :cond_6

    .line 126
    .line 127
    .line 128
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 129
    move-result-object v1

    .line 130
    .line 131
    check-cast v1, Ljava/lang/String;

    .line 132
    move-object v14, v1

    .line 133
    goto :goto_4

    .line 134
    :cond_6
    move-object v14, v5

    .line 135
    .line 136
    :goto_4
    if-eqz v4, :cond_7

    .line 137
    .line 138
    .line 139
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->isEmpty()Z

    .line 140
    move-result v1

    .line 141
    .line 142
    if-nez v1, :cond_7

    .line 143
    .line 144
    .line 145
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    .line 146
    move-result v1

    .line 147
    .line 148
    if-le v1, v8, :cond_7

    .line 149
    .line 150
    .line 151
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 152
    move-result-object v1

    .line 153
    .line 154
    check-cast v1, Ljava/lang/String;

    .line 155
    move-object v15, v1

    .line 156
    goto :goto_5

    .line 157
    :cond_7
    move-object v15, v5

    .line 158
    .line 159
    :goto_5
    iget-object v1, v0, Lcom/narvii/feed/FeedHelper;->configService:Lcom/narvii/config/ConfigService;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getPageSize()I

    .line 163
    move-result v1

    .line 164
    .line 165
    .line 166
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 167
    move-result v3

    .line 168
    .line 169
    if-le v3, v1, :cond_8

    .line 170
    .line 171
    .line 172
    invoke-interface {v2, v7, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 173
    move-result-object v2

    .line 174
    .line 175
    move/from16 v3, p3

    .line 176
    .line 177
    .line 178
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    .line 179
    move-result v1

    .line 180
    .line 181
    move/from16 v18, v1

    .line 182
    goto :goto_6

    .line 183
    .line 184
    :cond_8
    move/from16 v3, p3

    .line 185
    .line 186
    move/from16 v18, v3

    .line 187
    .line 188
    :goto_6
    new-instance v13, Ljava/util/ArrayList;

    .line 189
    .line 190
    .line 191
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 195
    move-result-object v1

    .line 196
    .line 197
    .line 198
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    move-result v2

    .line 200
    .line 201
    if-eqz v2, :cond_a

    .line 202
    .line 203
    .line 204
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 205
    move-result-object v2

    .line 206
    .line 207
    check-cast v2, Lcom/narvii/model/Feed;

    .line 208
    .line 209
    instance-of v3, v2, Lcom/narvii/util/FeedBriefContent;

    .line 210
    .line 211
    if-eqz v3, :cond_9

    .line 212
    .line 213
    check-cast v2, Lcom/narvii/util/FeedBriefContent;

    .line 214
    .line 215
    .line 216
    invoke-interface {v2}, Lcom/narvii/util/FeedBriefContent;->getBriefContent()Lcom/narvii/model/Feed;

    .line 217
    move-result-object v2

    .line 218
    .line 219
    .line 220
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    goto :goto_7

    .line 222
    .line 223
    .line 224
    :cond_9
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    goto :goto_7

    .line 226
    .line 227
    :cond_a
    iget-object v11, v0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 228
    .line 229
    sub-int v16, v6, v10

    .line 230
    .line 231
    move-object/from16 v12, p1

    .line 232
    .line 233
    .line 234
    invoke-static/range {v11 .. v18}, Lcom/narvii/detail/FeedDetailFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/Feed;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Landroid/content/Intent;

    .line 235
    move-result-object v1

    .line 236
    .line 237
    const-string v2, "Source"

    .line 238
    .line 239
    iget-object v3, v0, Lcom/narvii/feed/FeedHelper;->source:Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    .line 244
    iget-object v2, v0, Lcom/narvii/feed/FeedHelper;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 245
    .line 246
    if-nez v2, :cond_b

    .line 247
    goto :goto_8

    .line 248
    .line 249
    .line 250
    :cond_b
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 251
    move-result-object v5

    .line 252
    .line 253
    :goto_8
    const-string v2, "loggingOrigin"

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    return-object v1
.end method

.method public getHighLightColor()I
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "config"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-interface {v1}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorHighlight()I

    .line 26
    const/4 v0, 0x3

    .line 27
    .line 28
    new-array v0, v0, [F

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 32
    const/4 v1, 0x1

    .line 33
    .line 34
    aget v2, v0, v1

    .line 35
    float-to-double v2, v2

    .line 36
    .line 37
    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    .line 38
    mul-double/2addr v2, v4

    .line 39
    double-to-float v2, v2

    .line 40
    .line 41
    aput v2, v0, v1

    .line 42
    const/4 v1, 0x2

    .line 43
    .line 44
    aget v2, v0, v1

    .line 45
    float-to-double v2, v2

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    const-wide v4, 0x3ff199999999999aL    # 1.1

    .line 51
    mul-double/2addr v2, v4

    .line 52
    double-to-float v2, v2

    .line 53
    .line 54
    aput v2, v0, v1

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    .line 58
    move-result v0

    .line 59
    return v0
.end method

.method public getQuizHintInfo(Lcom/narvii/model/Blog;)Ljava/lang/String;
    .locals 6

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
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getQuizPlayedTimes()I

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->getQuizQuestionCount()I

    .line 12
    move-result v1

    .line 13
    .line 14
    const/16 v2, 0xa

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x1

    .line 17
    .line 18
    if-ge v0, v2, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    const v2, 0x7f120f90

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_1
    iget-object v2, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 35
    .line 36
    .line 37
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    new-array v5, v4, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    aput-object v0, v5, v3

    .line 47
    .line 48
    .line 49
    const v0, 0x7f120f96

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    :goto_0
    if-nez v1, :cond_2

    .line 56
    .line 57
    iget-object p1, p1, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 63
    move-result v1

    .line 64
    .line 65
    :cond_2
    if-eqz v1, :cond_3

    .line 66
    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v0, "  \u2022  "

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 93
    .line 94
    .line 95
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    new-array v2, v4, [Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    aput-object v1, v2, v3

    .line 105
    .line 106
    .line 107
    const v1, 0x7f120f80

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v0

    .line 119
    :cond_3
    return-object v0
.end method

.method public getTextOnlyBackground()Landroid/graphics/drawable/Drawable;
    .locals 7

    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "config"

    .line 1
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 2
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/config/ConfigTheme;->colorPrimary()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getTheme()Lcom/narvii/config/ConfigTheme;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/config/ConfigTheme;->colorHighlight()I

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 4
    invoke-static {v1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v2, 0x1

    aget v3, v0, v2

    float-to-double v3, v3

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v0, v2

    const/4 v2, 0x2

    aget v3, v0, v2

    float-to-double v3, v3

    const-wide v5, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v0, v2

    .line 5
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 6
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v3, 0x10100a7

    filled-new-array {v3}, [I

    move-result-object v3

    .line 7
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 8
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method public getTextOnlyBackground(Lcom/narvii/model/Community;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/narvii/feed/FeedHelper;->getTextOnlyBackground(Lcom/narvii/model/Community;F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getTextOnlyBackground(Lcom/narvii/model/Community;F)Landroid/graphics/drawable/Drawable;
    .locals 6

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 10
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f06009e

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/Community;->themeColor()I

    move-result p1

    :goto_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 11
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x1

    aget v2, v0, v1

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x2

    aget v2, v0, v1

    float-to-double v2, v2

    const-wide v4, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v0, v1

    .line 12
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 13
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    filled-new-array {v0, v0}, [I

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 14
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 15
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    filled-new-array {p1, p1}, [I

    move-result-object p1

    invoke-direct {v0, v2, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iget-object p1, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 16
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 17
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const p2, 0x10100a7

    filled-new-array {p2}, [I

    move-result-object p2

    .line 18
    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 19
    sget-object p2, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {p1, p2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method public loadQuizQuestionList(Lcom/narvii/model/Blog;Lcom/narvii/util/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/Blog;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/Blog;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/feed/FeedHelper;->needLoadingQuizQuestions(Lcom/narvii/model/Blog;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 12
    :cond_0
    return-void

    .line 13
    .line 14
    :cond_1
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 17
    .line 18
    .line 19
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    const-class v2, Lcom/narvii/model/api/BlogResponse;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 31
    .line 32
    const-string v3, "config"

    .line 33
    .line 34
    .line 35
    invoke-interface {v1, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 42
    move-result v1

    .line 43
    .line 44
    iget-object v3, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 45
    .line 46
    const-string v4, "api"

    .line 47
    .line 48
    .line 49
    invoke-interface {v3, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    check-cast v3, Lcom/narvii/util/http/ApiService;

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 56
    move-result-object v4

    .line 57
    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    const-string v6, "/blog/"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    .line 70
    move-result-object v6

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v5

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 81
    move-result-object v4

    .line 82
    .line 83
    if-nez v1, :cond_2

    .line 84
    .line 85
    iget p1, p1, Lcom/narvii/model/Feed;->ndcId:I

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 89
    .line 90
    .line 91
    :cond_2
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    new-instance v1, Lcom/narvii/feed/FeedHelper$11;

    .line 95
    .line 96
    .line 97
    invoke-direct {v1, p0, v2, v0, p2}, Lcom/narvii/feed/FeedHelper$11;-><init>(Lcom/narvii/feed/FeedHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/util/Callback;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, p1, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 101
    return-void
.end method

.method public needLoadingQuizQuestions(Lcom/narvii/model/Blog;)Z
    .locals 0

    .line 1
    .line 2
    iget-object p1, p1, Lcom/narvii/model/Blog;->quizQuestionList:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public refreshAndEdit(Lcom/narvii/model/Feed;)V
    .locals 4

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/Blog;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/model/Blog;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-class v0, Lcom/narvii/model/api/BlogResponse;

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1, v0, v0}, Lcom/narvii/feed/FeedHelper;->edit(Lcom/narvii/model/Feed;Ljava/util/List;Ljava/util/List;)V

    .line 19
    return-void

    .line 20
    .line 21
    :cond_1
    instance-of v0, p1, Lcom/narvii/model/Item;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    const-class v0, Lcom/narvii/model/api/ItemResponse;

    .line 26
    .line 27
    :goto_0
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 30
    .line 31
    .line 32
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->apiTypeName()Ljava/lang/String;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const/16 v3, 0x2f

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    const-string v2, "action"

    .line 78
    .line 79
    const-string v3, "edit"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 83
    .line 84
    iget-object v2, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 85
    .line 86
    const-string v3, "api"

    .line 87
    .line 88
    .line 89
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    move-result-object v2

    .line 91
    .line 92
    check-cast v2, Lcom/narvii/util/http/ApiService;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    new-instance v3, Lcom/narvii/feed/FeedHelper$2;

    .line 99
    .line 100
    .line 101
    invoke-direct {v3, p0, v0, v1}, Lcom/narvii/feed/FeedHelper$2;-><init>(Lcom/narvii/feed/FeedHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, p1, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 105
    return-void

    .line 106
    .line 107
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 108
    .line 109
    .line 110
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 111
    throw p1
.end method

.method public repost(Lcom/narvii/model/Feed;)V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/repost/RepostPost;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/repost/RepostPost;-><init>()V

    .line 6
    const/4 v1, 0x2

    .line 7
    .line 8
    iput v1, v0, Lcom/narvii/repost/RepostPost;->type:I

    .line 9
    .line 10
    instance-of v1, p1, Lcom/narvii/model/Blog;

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    move-object v1, p1

    .line 15
    .line 16
    check-cast v1, Lcom/narvii/model/Blog;

    .line 17
    .line 18
    iget-object v3, v1, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    iget-object v3, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 23
    .line 24
    const-string v4, "account"

    .line 25
    .line 26
    .line 27
    invoke-interface {v3, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    .line 30
    check-cast v3, Lcom/narvii/account/AccountService;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    move-result p1

    .line 43
    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    iget-object v2, v1, Lcom/narvii/model/Blog;->blogId:Ljava/lang/String;

    .line 47
    .line 48
    iget-object p1, v1, Lcom/narvii/model/Feed;->content:Ljava/lang/String;

    .line 49
    .line 50
    iput-object p1, v0, Lcom/narvii/repost/RepostPost;->content:Ljava/lang/String;

    .line 51
    .line 52
    :cond_0
    iget-object p1, v1, Lcom/narvii/model/Blog;->refObject:Lcom/narvii/model/Feed;

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->objectType()I

    .line 56
    move-result v1

    .line 57
    .line 58
    iput v1, v0, Lcom/narvii/repost/RepostPost;->refObjectType:I

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    iput-object v1, v0, Lcom/narvii/repost/RepostPost;->refObjectId:Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->firstMedia()Lcom/narvii/model/Media;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    iput-object v1, v0, Lcom/narvii/repost/RepostPost;->previewImage:Lcom/narvii/model/Media;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->title()Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    iput-object v1, v0, Lcom/narvii/repost/RepostPost;->previewTitle:Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->content()Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    iput-object v1, v0, Lcom/narvii/repost/RepostPost;->previewContent:Ljava/lang/String;

    .line 83
    .line 84
    iget-boolean v1, p1, Lcom/narvii/model/Feed;->needHidden:Z

    .line 85
    .line 86
    iput-boolean v1, v0, Lcom/narvii/repost/RepostPost;->needHidden:Z

    .line 87
    .line 88
    new-instance v1, Landroid/content/Intent;

    .line 89
    .line 90
    iget-object v3, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 91
    .line 92
    .line 93
    invoke-interface {v3}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 94
    move-result-object v3

    .line 95
    .line 96
    const-class v4, Lcom/narvii/repost/RepostActivity;

    .line 97
    .line 98
    .line 99
    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .line 101
    const-string v3, "refObjectId"

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    .line 110
    const-string p1, "repostBlogId"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    .line 115
    const-string p1, "post"

    .line 116
    .line 117
    .line 118
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    .line 124
    const-string p1, "Source"

    .line 125
    .line 126
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->source:Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    .line 131
    .line 132
    invoke-static {p0, v1}, Lcom/narvii/feed/FeedHelper;->safedk_FeedHelper_startActivity_ca485870bc4a685db67d9e0c81995f45(Lcom/narvii/feed/FeedHelper;Landroid/content/Intent;)V

    .line 133
    return-void
.end method

.method public showExternalSourceNotAvailable()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const v1, 0x7f1204ba

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/AlertDialog;->setMessage(I)V

    .line 18
    const/4 v1, 0x4

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    const v3, 0x7f120402

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v3, v1, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 29
    return-void
.end method

.method public showShareFeedDialog(Lcom/narvii/model/Feed;Z)V
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "account"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 11
    .line 12
    new-instance v1, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 15
    .line 16
    .line 17
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v2

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    iget-object v2, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    .line 24
    .line 25
    if-nez v2, :cond_0

    .line 26
    const/4 v2, 0x0

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_0
    iget-object v2, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    move-result v2

    .line 38
    .line 39
    const/16 v3, 0x10

    .line 40
    .line 41
    new-array v3, v3, [I

    .line 42
    const/4 v4, 0x0

    .line 43
    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    .line 47
    const v5, 0x7f120ff9

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v5, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 51
    .line 52
    aput v5, v3, v4

    .line 53
    const/4 v5, 0x1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move v5, v4

    .line 56
    .line 57
    .line 58
    :goto_1
    const v6, 0x7f120349

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v6, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 62
    .line 63
    add-int/lit8 v7, v5, 0x1

    .line 64
    .line 65
    aput v6, v3, v5

    .line 66
    .line 67
    if-eqz p2, :cond_2

    .line 68
    .line 69
    .line 70
    const p2, 0x7f121204

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p2, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 74
    .line 75
    add-int/lit8 v5, v5, 0x2

    .line 76
    .line 77
    aput p2, v3, v7

    .line 78
    goto :goto_2

    .line 79
    .line 80
    .line 81
    :cond_2
    const p2, 0x7f1201bb

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, p2, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 85
    .line 86
    add-int/lit8 v5, v5, 0x2

    .line 87
    .line 88
    aput p2, v3, v7

    .line 89
    .line 90
    :goto_2
    if-eqz v2, :cond_3

    .line 91
    .line 92
    .line 93
    const p2, 0x7f120438

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, p2, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 97
    .line 98
    add-int/lit8 v6, v5, 0x1

    .line 99
    .line 100
    aput p2, v3, v5

    .line 101
    move v5, v6

    .line 102
    .line 103
    :cond_3
    if-nez v2, :cond_4

    .line 104
    .line 105
    .line 106
    const p2, 0x7f120781

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, p2, v4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 110
    .line 111
    add-int/lit8 v2, v5, 0x1

    .line 112
    .line 113
    aput p2, v3, v5

    .line 114
    move v5, v2

    .line 115
    .line 116
    .line 117
    :cond_4
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 118
    move-result-object p2

    .line 119
    .line 120
    if-eqz p2, :cond_5

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 124
    move-result-object p2

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Lcom/narvii/model/User;->isCurator()Z

    .line 128
    move-result p2

    .line 129
    .line 130
    if-eqz p2, :cond_5

    .line 131
    .line 132
    .line 133
    const p2, 0x7f0d0185

    .line 134
    .line 135
    .line 136
    const v0, 0x7f12009d

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v0, v4, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(III)V

    .line 140
    .line 141
    aput v0, v3, v5

    .line 142
    .line 143
    :cond_5
    new-instance p2, Lcom/narvii/feed/FeedHelper$1;

    .line 144
    .line 145
    .line 146
    invoke-direct {p2, p0, v3, p1}, Lcom/narvii/feed/FeedHelper$1;-><init>(Lcom/narvii/feed/FeedHelper;[ILcom/narvii/model/Feed;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 153
    return-void
.end method

.method public source(Ljava/lang/String;)Lcom/narvii/feed/FeedHelper;
    .locals 0

    iput-object p1, p0, Lcom/narvii/feed/FeedHelper;->source:Ljava/lang/String;

    return-object p0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/feed/FeedHelper;->safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Lcom/narvii/app/NVContext;Landroid/content/Intent;)V

    .line 6
    return-void
.end method

.method public startLocalQuiz(Lcom/narvii/model/Blog;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/feed/FeedHelper;->startLocalQuiz(Lcom/narvii/model/Blog;Landroid/content/Intent;Z)V

    return-void
.end method

.method public startLocalQuiz(Lcom/narvii/model/Blog;Landroid/content/Intent;Z)V
    .locals 2

    const-class v0, Lcom/narvii/quiz/QuizWelcomeFragment;

    .line 2
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hellMode"

    .line 3
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-nez p1, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    const-string v1, "quiz"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_1

    .line 5
    iget p3, p1, Lcom/narvii/model/Feed;->ndcId:I

    const/4 v1, -0x1

    if-eq p3, v1, :cond_1

    const-string v1, "__communityId"

    .line 6
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    :cond_1
    invoke-virtual {p0, p2, v0}, Lcom/narvii/feed/FeedHelper;->addQuizListExtra(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 8
    invoke-static {p0, v0}, Lcom/narvii/feed/FeedHelper;->safedk_FeedHelper_startActivity_ca485870bc4a685db67d9e0c81995f45(Lcom/narvii/feed/FeedHelper;Landroid/content/Intent;)V

    iget-object p2, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    const-string p3, "logging"

    .line 9
    invoke-interface {p2, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/util/logging/LoggingService;

    .line 10
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iget v0, p1, Lcom/narvii/model/Feed;->ndcId:I

    if-lez v0, :cond_2

    const-string v0, "ndcId"

    .line 12
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget v0, p1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v0, "objectId"

    .line 14
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {p1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/narvii/feed/FeedHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    if-eqz p1, :cond_3

    const-string p1, "eventSource"

    .line 16
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/narvii/feed/FeedHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    if-eqz p1, :cond_4

    const-string p1, "eventOrigin"

    .line 18
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/narvii/feed/FeedHelper;->loggingOrigin:Lcom/narvii/util/logging/LoggingOrigin;

    .line 19
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string p1, "PlayQuizStarting"

    .line 20
    invoke-virtual {p3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public startQuiz(Lcom/narvii/model/Blog;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/feed/FeedHelper;->startQuiz(Lcom/narvii/model/Blog;Landroid/content/Intent;Z)V

    return-void
.end method

.method public startQuiz(Lcom/narvii/model/Blog;Landroid/content/Intent;Z)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    .line 1
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 2
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    new-instance p1, Landroid/content/Intent;

    const-string p2, "ndc://login"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p1, p3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4
    sget-object p2, Lcom/narvii/account/LoginActivity$PromptType;->Required:Lcom/narvii/account/LoginActivity$PromptType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    const-string p3, "promptType"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    :try_start_0
    invoke-static {p0, p1}, Lcom/narvii/feed/FeedHelper;->safedk_FeedHelper_startActivity_ca485870bc4a685db67d9e0c81995f45(Lcom/narvii/feed/FeedHelper;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p1, "unable to start login activity"

    .line 6
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper;->startQuizListener:Lcom/narvii/feed/FeedHelper$StartQuizListener;

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Lcom/narvii/feed/FeedHelper$StartQuizListener;->onQuizStartFailed()V

    :cond_1
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 8
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f120bb7

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Lcom/narvii/feed/FeedHelper;->needLoadingQuizQuestions(Lcom/narvii/model/Blog;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    new-instance v4, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/narvii/model/api/BlogResponse;

    invoke-direct {v4, v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-boolean v0, p0, Lcom/narvii/feed/FeedHelper;->showProgressWhenLoadingQuiz:Z

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v4}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    :cond_3
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    .line 12
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 13
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/blog/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/model/Blog;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 14
    iget v2, p1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 15
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v8

    new-instance v9, Lcom/narvii/feed/FeedHelper$10;

    const-class v3, Lcom/narvii/model/api/BlogResponse;

    move-object v1, v9

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/narvii/feed/FeedHelper$10;-><init>(Lcom/narvii/feed/FeedHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/Blog;Landroid/content/Intent;Z)V

    invoke-virtual {v0, v8, v9}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/feed/FeedHelper;->startLocalQuiz(Lcom/narvii/model/Blog;Landroid/content/Intent;Z)V

    iget-object p1, p0, Lcom/narvii/feed/FeedHelper;->startQuizListener:Lcom/narvii/feed/FeedHelper$StartQuizListener;

    if-eqz p1, :cond_5

    .line 17
    invoke-interface {p1}, Lcom/narvii/feed/FeedHelper$StartQuizListener;->onQuizStarted()V

    :cond_5
    :goto_1
    return-void
.end method

.method public unBookmark(Lcom/narvii/model/Feed;Lcom/narvii/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/Feed;",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    iput-object p2, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 17
    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    const-string v1, "/bookmark/"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->id()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    new-instance p2, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 40
    .line 41
    .line 42
    invoke-direct {p2}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    iget-object p2, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 57
    .line 58
    const-string v1, "api"

    .line 59
    .line 60
    .line 61
    invoke-interface {p2, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    move-result-object p2

    .line 63
    .line 64
    check-cast p2, Lcom/narvii/util/http/ApiService;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 70
    return-void
.end method

.method public vote(Lcom/narvii/model/Feed;ILcom/narvii/util/Callback;Lcom/narvii/util/Callback;Lcom/narvii/util/logging/LoggingSource;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/Feed;",
            "I",
            "Lcom/narvii/util/Callback;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/narvii/util/logging/LoggingSource;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {p4, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 9
    :cond_0
    return-void

    .line 10
    .line 11
    :cond_1
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/narvii/model/Feed;->getVotedValue(Z)I

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    if-nez p2, :cond_2

    .line 24
    .line 25
    new-instance p2, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/feed/FeedHelper;->context:Lcom/narvii/app/NVContext;

    .line 28
    .line 29
    .line 30
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    const v0, 0x7f12120e

    .line 38
    const/4 v1, 0x1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 42
    .line 43
    .line 44
    const v0, 0x7f1202e7

    .line 45
    const/4 v1, 0x0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 49
    .line 50
    new-instance v0, Lcom/narvii/feed/FeedHelper$12;

    .line 51
    move-object v2, v0

    .line 52
    move-object v3, p0

    .line 53
    move-object v4, p1

    .line 54
    move-object v5, p3

    .line 55
    move-object v6, p4

    .line 56
    move-object v7, p5

    .line 57
    move-object v8, p6

    .line 58
    .line 59
    .line 60
    invoke-direct/range {v2 .. v8}, Lcom/narvii/feed/FeedHelper$12;-><init>(Lcom/narvii/feed/FeedHelper;Lcom/narvii/model/Feed;Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;Lcom/narvii/util/logging/LoggingSource;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 67
    return-void

    .line 68
    .line 69
    :cond_2
    if-nez p2, :cond_3

    .line 70
    const/4 p2, 0x4

    .line 71
    :cond_3
    move v2, p2

    .line 72
    move-object v0, p0

    .line 73
    move-object v1, p1

    .line 74
    move-object v3, p3

    .line 75
    move-object v4, p4

    .line 76
    move-object v5, p5

    .line 77
    move-object v6, p6

    .line 78
    .line 79
    .line 80
    invoke-direct/range {v0 .. v6}, Lcom/narvii/feed/FeedHelper;->voteFeed(Lcom/narvii/model/Feed;ILcom/narvii/util/Callback;Lcom/narvii/util/Callback;Lcom/narvii/util/logging/LoggingSource;Ljava/lang/String;)V

    .line 81
    return-void
.end method
