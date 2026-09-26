.class public final Lcom/narvii/util/mixpanel/PageViewTracker;
.super Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/mixpanel/PageViewTracker$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPageViewTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PageViewTracker.kt\ncom/narvii/util/mixpanel/PageViewTracker\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,262:1\n533#2,6:263\n1855#2,2:269\n1855#2,2:273\n215#3,2:271\n32#4:275\n33#4:277\n1#5:276\n*S KotlinDebug\n*F\n+ 1 PageViewTracker.kt\ncom/narvii/util/mixpanel/PageViewTracker\n*L\n72#1:263,6\n84#1:269,2\n137#1:273,2\n104#1:271,2\n206#1:275\n206#1:277\n*E\n"
.end annotation


# static fields
.field private static final ARG_PREFIX:Ljava/lang/String; = "arg_"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CAMEL_CASE_REGEX:Lkotlin/text/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CHAT:Ljava/lang/String; = "chat"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CHAT_ID_KEY:Ljava/lang/String; = "chatId"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final COMMUNITY:Ljava/lang/String; = "community"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final COMMUNITY_ID_KEY:Ljava/lang/String; = "communityId"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/narvii/util/mixpanel/PageViewTracker$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FRAGMENT_SUFFIX_REGEX:Lkotlin/text/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final INTENT_PREFIX:Ljava/lang/String; = "intent_"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final INVALID_COMMUNITY_ID:I = 0x0

.field private static final NAME_KEY:Ljava/lang/String; = "name"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final NDC_ID_KEY:Ljava/lang/String; = "ndcId"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final STARTING_CURLY_BRACE:Ljava/lang/String; = "{"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final STARTING_SQUARE_BRACE:Ljava/lang/String; = "["
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final TOPIC:Ljava/lang/String; = "topic"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TOPIC_ID_KEY:Ljava/lang/String; = "topicId"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final blackListedFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final whiteListedFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final analyticsManager:Lcom/narvii/util/mixpanel/MixpanelAnalytics;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lastTrackedScreen:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/mixpanel/PageViewTracker$Companion;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/narvii/util/mixpanel/PageViewTracker$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lcom/narvii/util/mixpanel/PageViewTracker;->Companion:Lcom/narvii/util/mixpanel/PageViewTracker$Companion;

    .line 9
    .line 10
    const-class v0, Lcom/narvii/util/mixpanel/PageViewTracker;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sput-object v0, Lcom/narvii/util/mixpanel/PageViewTracker;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lkotlin/text/g;

    .line 19
    .line 20
    const-string v1, "Fragment$"

    .line 21
    .line 22
    sget-object v2, Lkotlin/text/i;->IGNORE_CASE:Lkotlin/text/i;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Lkotlin/text/g;-><init>(Ljava/lang/String;Lkotlin/text/i;)V

    .line 26
    .line 27
    sput-object v0, Lcom/narvii/util/mixpanel/PageViewTracker;->FRAGMENT_SUFFIX_REGEX:Lkotlin/text/g;

    .line 28
    .line 29
    new-instance v0, Lkotlin/text/g;

    .line 30
    .line 31
    const-string v1, "([a-z])([A-Z])"

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Lkotlin/text/g;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    sput-object v0, Lcom/narvii/util/mixpanel/PageViewTracker;->CAMEL_CASE_REGEX:Lkotlin/text/g;

    .line 37
    .line 38
    const-string v0, "GlobalProfileFragment"

    .line 39
    .line 40
    const-string v1, "GlobalChatsFragment"

    .line 41
    .line 42
    .line 43
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/collections/t;->p([Ljava/lang/Object;)Ljava/util/List;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    sput-object v0, Lcom/narvii/util/mixpanel/PageViewTracker;->whiteListedFragments:Ljava/util/List;

    .line 51
    .line 52
    const-string v0, "VoiceChatFragment"

    .line 53
    .line 54
    const-string v1, "MiniVVContentFragment"

    .line 55
    .line 56
    const-string v2, "MasterThemeFragment"

    .line 57
    .line 58
    const-string v3, "StickerPickerTabFragment"

    .line 59
    .line 60
    .line 61
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lkotlin/collections/t;->p([Ljava/lang/Object;)Ljava/util/List;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    sput-object v0, Lcom/narvii/util/mixpanel/PageViewTracker;->blackListedFragments:Ljava/util/List;

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/narvii/util/mixpanel/MixpanelAnalytics;)V
    .locals 1
    .param p1    # Lcom/narvii/util/mixpanel/MixpanelAnalytics;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "analyticsManager"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/util/mixpanel/PageViewTracker;->analyticsManager:Lcom/narvii/util/mixpanel/MixpanelAnalytics;

    .line 11
    return-void
.end method

.method public static synthetic a(Lcom/narvii/util/mixpanel/PageViewTracker;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/util/mixpanel/PageViewTracker;->onFragmentViewCreated$lambda$0(Lcom/narvii/util/mixpanel/PageViewTracker;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private final assignUnifiedId(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "id"

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result v1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    const-string v1, "name"

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    const-string/jumbo v3, "toLowerCase(...)"

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v1, v2

    .line 39
    .line 40
    .line 41
    :goto_0
    const-string/jumbo v3, "topicId"

    .line 42
    .line 43
    const-string v4, "community"

    .line 44
    .line 45
    .line 46
    const-string/jumbo v5, "topic"

    .line 47
    .line 48
    const-string v6, "ndcId"

    .line 49
    .line 50
    const-string v7, "communityId"

    .line 51
    const/4 v8, 0x1

    .line 52
    const/4 v9, 0x2

    .line 53
    const/4 v10, 0x0

    .line 54
    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v5, v10, v9, v2}, Lkotlin/text/k;->P(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 59
    move-result v11

    .line 60
    .line 61
    if-ne v11, v8, :cond_4

    .line 62
    .line 63
    .line 64
    invoke-static {v1, v4, v10, v9, v2}, Lkotlin/text/k;->P(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 65
    move-result v11

    .line 66
    .line 67
    if-eqz v11, :cond_4

    .line 68
    .line 69
    .line 70
    invoke-static {p2, v7}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    move-result v1

    .line 72
    .line 73
    if-nez v1, :cond_2

    .line 74
    .line 75
    .line 76
    invoke-static {p2, v6}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    move-result v1

    .line 78
    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    .line 86
    invoke-static {v1}, Lkotlin/text/k;->m(Ljava/lang/String;)Ljava/lang/Integer;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    if-eqz v1, :cond_3

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 93
    move-result v1

    .line 94
    .line 95
    if-lez v1, :cond_3

    .line 96
    .line 97
    .line 98
    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    goto/16 :goto_1

    .line 101
    .line 102
    .line 103
    :cond_3
    invoke-static {p2, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    move-result p2

    .line 105
    .line 106
    if-eqz p2, :cond_c

    .line 107
    .line 108
    .line 109
    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    goto/16 :goto_1

    .line 112
    .line 113
    :cond_4
    if-eqz v1, :cond_5

    .line 114
    .line 115
    .line 116
    invoke-static {v1, v5, v10, v9, v2}, Lkotlin/text/k;->P(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 117
    move-result v5

    .line 118
    .line 119
    if-ne v5, v8, :cond_5

    .line 120
    .line 121
    .line 122
    invoke-static {p2, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    move-result v3

    .line 124
    .line 125
    if-eqz v3, :cond_5

    .line 126
    .line 127
    .line 128
    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    goto/16 :goto_1

    .line 131
    .line 132
    :cond_5
    if-eqz v1, :cond_7

    .line 133
    .line 134
    .line 135
    invoke-static {v1, v4, v10, v9, v2}, Lkotlin/text/k;->P(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 136
    move-result v3

    .line 137
    .line 138
    if-ne v3, v8, :cond_7

    .line 139
    .line 140
    .line 141
    invoke-static {p2, v7}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 142
    move-result v3

    .line 143
    .line 144
    if-nez v3, :cond_6

    .line 145
    .line 146
    .line 147
    invoke-static {p2, v6}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    move-result v3

    .line 149
    .line 150
    if-eqz v3, :cond_7

    .line 151
    .line 152
    .line 153
    :cond_6
    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    goto :goto_1

    .line 155
    .line 156
    :cond_7
    const-string v3, "chat"

    .line 157
    .line 158
    if-eqz v1, :cond_8

    .line 159
    .line 160
    .line 161
    invoke-static {v1, v3, v10, v9, v2}, Lkotlin/text/k;->P(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 162
    move-result v4

    .line 163
    .line 164
    if-ne v4, v8, :cond_8

    .line 165
    .line 166
    const-string v4, "chatId"

    .line 167
    .line 168
    .line 169
    invoke-static {p2, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 170
    move-result v4

    .line 171
    .line 172
    if-eqz v4, :cond_8

    .line 173
    .line 174
    .line 175
    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    goto :goto_1

    .line 177
    .line 178
    :cond_8
    if-eqz v1, :cond_a

    .line 179
    .line 180
    .line 181
    invoke-static {v1, v3, v10, v9, v2}, Lkotlin/text/k;->P(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 182
    move-result v1

    .line 183
    .line 184
    if-ne v1, v8, :cond_a

    .line 185
    .line 186
    .line 187
    invoke-static {p2, v7}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 188
    move-result v1

    .line 189
    .line 190
    if-nez v1, :cond_9

    .line 191
    .line 192
    .line 193
    invoke-static {p2, v6}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 194
    move-result v1

    .line 195
    .line 196
    if-eqz v1, :cond_a

    .line 197
    .line 198
    .line 199
    :cond_9
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 200
    move-result-object v1

    .line 201
    .line 202
    .line 203
    invoke-static {v1}, Lkotlin/text/k;->m(Ljava/lang/String;)Ljava/lang/Integer;

    .line 204
    move-result-object v1

    .line 205
    .line 206
    if-eqz v1, :cond_a

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 210
    move-result v1

    .line 211
    .line 212
    if-lez v1, :cond_a

    .line 213
    .line 214
    .line 215
    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    goto :goto_1

    .line 217
    .line 218
    .line 219
    :cond_a
    invoke-static {p2, v6}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 220
    move-result v1

    .line 221
    .line 222
    if-nez v1, :cond_b

    .line 223
    .line 224
    .line 225
    invoke-static {p2, v7}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 226
    move-result p2

    .line 227
    .line 228
    if-eqz p2, :cond_c

    .line 229
    .line 230
    .line 231
    :cond_b
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 232
    move-result-object p2

    .line 233
    .line 234
    .line 235
    invoke-static {p2}, Lkotlin/text/k;->m(Ljava/lang/String;)Ljava/lang/Integer;

    .line 236
    move-result-object p2

    .line 237
    .line 238
    if-eqz p2, :cond_c

    .line 239
    .line 240
    .line 241
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 242
    move-result p2

    .line 243
    .line 244
    if-lez p2, :cond_c

    .line 245
    .line 246
    .line 247
    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_c
    :goto_1
    return-void
.end method

.method private final cleanJson(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/text/k;->b1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    const-string/jumbo v1, "{"

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x2

    .line 14
    const/4 v4, 0x0

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v0}, Lcom/narvii/util/mixpanel/PageViewTracker;->cleanJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 29
    move-result-object p1

    .line 30
    goto :goto_0

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-static {p1}, Lkotlin/text/k;->b1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    const-string v1, "["

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    new-instance v0, Lorg/json/JSONArray;

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v0}, Lcom/narvii/util/mixpanel/PageViewTracker;->cleanJsonArray(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 55
    move-result-object p1

    .line 56
    :cond_1
    :goto_0
    return-object p1
.end method

.method private final cleanJsonArray(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lorg/json/JSONArray;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    :goto_0
    if-ge v2, v1, :cond_4

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    instance-of v4, v3, Lorg/json/JSONObject;

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 24
    .line 25
    check-cast v3, Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v3}, Lcom/narvii/util/mixpanel/PageViewTracker;->cleanJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 33
    goto :goto_1

    .line 34
    .line 35
    :cond_0
    instance-of v4, v3, Lorg/json/JSONArray;

    .line 36
    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    .line 40
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 41
    .line 42
    check-cast v3, Lorg/json/JSONArray;

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, v3}, Lcom/narvii/util/mixpanel/PageViewTracker;->cleanJsonArray(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 50
    goto :goto_1

    .line 51
    .line 52
    :cond_1
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    move-result v4

    .line 57
    .line 58
    if-eqz v4, :cond_2

    .line 59
    goto :goto_1

    .line 60
    .line 61
    :cond_2
    if-nez v3, :cond_3

    .line 62
    goto :goto_1

    .line 63
    .line 64
    .line 65
    :cond_3
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 66
    .line 67
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_4
    return-object v0
.end method

.method private final cleanJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    .line 1
    .line 2
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    const-string v2, "keys(...)"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v2

    .line 19
    .line 20
    if-eqz v2, :cond_5

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    check-cast v2, Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result v4

    .line 39
    .line 40
    if-eqz v4, :cond_1

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_1
    instance-of v4, v3, Lorg/json/JSONObject;

    .line 44
    .line 45
    if-eqz v4, :cond_3

    .line 46
    .line 47
    check-cast v3, Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v3}, Lcom/narvii/util/mixpanel/PageViewTracker;->cleanJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    .line 55
    move-result v4

    .line 56
    .line 57
    if-lez v4, :cond_2

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    const/4 v3, 0x0

    .line 60
    .line 61
    :goto_1
    if-eqz v3, :cond_0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    goto :goto_0

    .line 66
    .line 67
    :cond_3
    instance-of v4, v3, Lorg/json/JSONArray;

    .line 68
    .line 69
    if-eqz v4, :cond_4

    .line 70
    .line 71
    check-cast v3, Lorg/json/JSONArray;

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, v3}, Lcom/narvii/util/mixpanel/PageViewTracker;->cleanJsonArray(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 75
    move-result-object v3

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    goto :goto_0

    .line 80
    .line 81
    .line 82
    :cond_4
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    goto :goto_0

    .line 84
    :cond_5
    return-object v0
.end method

.method private final collectArgsOrExtras(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-eqz v1, :cond_3

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1, v1}, Lcom/narvii/util/mixpanel/PageViewTracker;->getSafe(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_1
    instance-of v3, v2, Ljava/lang/String;

    .line 37
    .line 38
    if-eqz v3, :cond_2

    .line 39
    move-object v3, v2

    .line 40
    .line 41
    check-cast v3, Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v3}, Lcom/narvii/util/mixpanel/PageViewTracker;->isJsonString(Ljava/lang/String;)Z

    .line 45
    move-result v4

    .line 46
    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    :try_start_0
    check-cast v2, Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, v2}, Lcom/narvii/util/mixpanel/PageViewTracker;->cleanJson(Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    move-result-object v2

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    :catch_0
    invoke-interface {p3, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    goto :goto_0

    .line 77
    .line 78
    .line 79
    :cond_2
    invoke-direct {p0, v2}, Lcom/narvii/util/mixpanel/PageViewTracker;->isSerializableType(Ljava/lang/Object;)Z

    .line 80
    move-result v3

    .line 81
    .line 82
    if-eqz v3, :cond_0

    .line 83
    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    .line 100
    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    goto :goto_0

    .line 102
    :cond_3
    return-void
.end method

.method private final enrichProperties(Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Ljava/util/Map$Entry;

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    check-cast v1, Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    instance-of v2, v0, Ljava/lang/String;

    .line 33
    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v1, v0, p2}, Lcom/narvii/util/mixpanel/PageViewTracker;->matchTopLevelKeys(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 41
    move-object v3, v0

    .line 42
    .line 43
    check-cast v3, Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v2, p2}, Lcom/narvii/util/mixpanel/PageViewTracker;->matchJsonKeys(Lorg/json/JSONObject;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 51
    .line 52
    .line 53
    :catch_0
    invoke-direct {p0, v1, v0, p2}, Lcom/narvii/util/mixpanel/PageViewTracker;->matchTopLevelKeys(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    return-void
.end method

.method private final getSafe(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private final isFragmentCurrentlyVisibleToUser(Landroidx/fragment/app/Fragment;)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    sget-object v1, Lcom/narvii/util/mixpanel/PageViewTracker;->whiteListedFragments:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    return v2

    .line 19
    .line 20
    :cond_0
    sget-object v1, Lcom/narvii/util/mixpanel/PageViewTracker;->blackListedFragments:Ljava/util/List;

    .line 21
    .line 22
    .line 23
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    return v1

    .line 29
    .line 30
    .line 31
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    return v1

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    const-string v3, "getParentFragmentManager(...)"

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->O0()Z

    .line 48
    move-result v3

    .line 49
    .line 50
    if-eqz v3, :cond_3

    .line 51
    return v1

    .line 52
    .line 53
    .line 54
    :cond_3
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->B0()Ljava/util/List;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    const-string v3, "getFragments(...)"

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 64
    move-result v3

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    .line 71
    :cond_4
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 72
    move-result v3

    .line 73
    .line 74
    if-eqz v3, :cond_5

    .line 75
    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 78
    move-result-object v3

    .line 79
    move-object v4, v3

    .line 80
    .line 81
    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 85
    move-result v4

    .line 86
    .line 87
    if-eqz v4, :cond_4

    .line 88
    goto :goto_0

    .line 89
    :cond_5
    const/4 v3, 0x0

    .line 90
    .line 91
    :goto_0
    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 92
    .line 93
    .line 94
    invoke-static {p1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    move-result v0

    .line 96
    .line 97
    if-eqz v0, :cond_6

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 101
    move-result v0

    .line 102
    .line 103
    if-eqz v0, :cond_6

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    if-eqz p1, :cond_7

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    .line 113
    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    if-nez p1, :cond_7

    .line 116
    :cond_6
    move v2, v1

    .line 117
    :cond_7
    move v1, v2

    .line 118
    :catch_0
    return v1
.end method

.method private final isJsonString(Ljava/lang/String;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/text/k;->b1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    const-string/jumbo v0, "{"

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x2

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const-string v0, "["

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    :cond_0
    const/4 v1, 0x1

    .line 30
    :cond_1
    return v1
.end method

.method private final isSerializableType(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_1
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_2
    instance-of v0, p1, Ljava/lang/Double;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_3
    instance-of v0, p1, Ljava/lang/Float;

    .line 23
    .line 24
    if-eqz v0, :cond_4

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_4
    instance-of v0, p1, Ljava/lang/Long;

    .line 28
    .line 29
    if-eqz v0, :cond_5

    .line 30
    :goto_0
    const/4 p1, 0x1

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_5
    instance-of p1, p1, Ljava/lang/Short;

    .line 34
    :goto_1
    return p1
.end method

.method private final matchJsonKeys(Lorg/json/JSONObject;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "name"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 13
    move-result v1

    .line 14
    .line 15
    if-lez v1, :cond_0

    .line 16
    .line 17
    .line 18
    const-string/jumbo v1, "title"

    .line 19
    .line 20
    .line 21
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_0
    const-string/jumbo v0, "topicId"

    .line 31
    .line 32
    const-string v1, "chatId"

    .line 33
    .line 34
    const-string v2, "ndcId"

    .line 35
    .line 36
    const-string v3, "communityId"

    .line 37
    .line 38
    .line 39
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lkotlin/collections/t;->p([Ljava/lang/Object;)Ljava/util/List;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    check-cast v0, Ljava/lang/Iterable;

    .line 47
    .line 48
    .line 49
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v0

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v1

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    check-cast v1, Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    if-eqz v2, :cond_1

    .line 69
    .line 70
    .line 71
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, p2, v1, v2}, Lcom/narvii/util/mixpanel/PageViewTracker;->assignUnifiedId(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    return-void
.end method

.method private final matchTopLevelKeys(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    sparse-switch v0, :sswitch_data_0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :sswitch_0
    const-string v0, "ndcId"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :sswitch_1
    const-string v0, "name"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result p1

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_0
    const-string/jumbo p1, "title"

    .line 30
    .line 31
    .line 32
    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :sswitch_2
    const-string v0, "communityId"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-nez v0, :cond_1

    .line 48
    goto :goto_0

    .line 49
    .line 50
    .line 51
    :sswitch_3
    const-string/jumbo v0, "topicId"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v0

    .line 56
    .line 57
    if-nez v0, :cond_1

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :sswitch_4
    const-string v0, "chatId"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v0

    .line 65
    .line 66
    if-nez v0, :cond_1

    .line 67
    goto :goto_0

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-direct {p0, p3, p1, p2}, Lcom/narvii/util/mixpanel/PageViewTracker;->assignUnifiedId(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    :cond_2
    :goto_0
    return-void

    .line 72
    nop

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    :sswitch_data_0
    .sparse-switch
        -0x5128d96d -> :sswitch_4
        -0x43e7b956 -> :sswitch_3
        -0x34c71d1c -> :sswitch_2
        0x337a8b -> :sswitch_1
        0x63d0b68 -> :sswitch_0
    .end sparse-switch
.end method

.method private static final onFragmentViewCreated$lambda$0(Lcom/narvii/util/mixpanel/PageViewTracker;Landroidx/fragment/app/Fragment;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    const-string v0, "$f"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/narvii/util/mixpanel/PageViewTracker;->isFragmentCurrentlyVisibleToUser(Landroidx/fragment/app/Fragment;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    sget-object p0, Lcom/narvii/util/mixpanel/PageViewTracker;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    const-string v1, "Skipping "

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    iget-object v1, p0, Lcom/narvii/util/mixpanel/PageViewTracker;->lastTrackedScreen:Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    move-result v1

    .line 63
    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    sget-object p0, Lcom/narvii/util/mixpanel/PageViewTracker;->TAG:Ljava/lang/String;

    .line 67
    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    const-string v1, "Screen "

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v0, " is same as lastTrackedScreen"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    .line 91
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void

    .line 93
    .line 94
    :cond_1
    instance-of v1, p1, Lcom/narvii/app/NVFragment;

    .line 95
    const/4 v2, 0x0

    .line 96
    .line 97
    if-eqz v1, :cond_2

    .line 98
    move-object v1, p1

    .line 99
    .line 100
    check-cast v1, Lcom/narvii/app/NVFragment;

    .line 101
    goto :goto_0

    .line 102
    :cond_2
    move-object v1, v2

    .line 103
    :goto_0
    const/4 v3, 0x1

    .line 104
    .line 105
    new-array v3, v3, [Lw7/u;

    .line 106
    .line 107
    if-eqz v1, :cond_3

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getPageName()Ljava/lang/String;

    .line 111
    move-result-object v1

    .line 112
    .line 113
    if-nez v1, :cond_4

    .line 114
    .line 115
    .line 116
    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-direct {p0, v0}, Lcom/narvii/util/mixpanel/PageViewTracker;->toPageName(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    move-result-object v1

    .line 121
    .line 122
    :cond_4
    const-string v4, "name"

    .line 123
    .line 124
    .line 125
    invoke-static {v4, v1}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 126
    move-result-object v1

    .line 127
    const/4 v4, 0x0

    .line 128
    .line 129
    aput-object v1, v3, v4

    .line 130
    .line 131
    .line 132
    invoke-static {v3}, Lkotlin/collections/p0;->n([Lw7/u;)Ljava/util/Map;

    .line 133
    move-result-object v1

    .line 134
    .line 135
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 136
    .line 137
    .line 138
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 142
    move-result-object v4

    .line 143
    .line 144
    const-string v5, "arg_"

    .line 145
    .line 146
    .line 147
    invoke-direct {p0, v4, v5, v3}, Lcom/narvii/util/mixpanel/PageViewTracker;->collectArgsOrExtras(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Map;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 151
    move-result-object p1

    .line 152
    .line 153
    if-eqz p1, :cond_5

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 157
    move-result-object p1

    .line 158
    .line 159
    if-eqz p1, :cond_5

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 163
    move-result-object v2

    .line 164
    .line 165
    :cond_5
    const-string p1, "intent_"

    .line 166
    .line 167
    .line 168
    invoke-direct {p0, v2, p1, v3}, Lcom/narvii/util/mixpanel/PageViewTracker;->collectArgsOrExtras(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Map;)V

    .line 169
    .line 170
    .line 171
    invoke-static {v1}, Lkotlin/collections/p0;->A(Ljava/util/Map;)Ljava/util/Map;

    .line 172
    move-result-object p1

    .line 173
    .line 174
    .line 175
    invoke-direct {p0, v3, p1}, Lcom/narvii/util/mixpanel/PageViewTracker;->enrichProperties(Ljava/util/Map;Ljava/util/Map;)V

    .line 176
    .line 177
    sget-object v1, Lcom/narvii/util/mixpanel/PageViewTracker;->TAG:Ljava/lang/String;

    .line 178
    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    const-string v3, "screenName: "

    .line 185
    .line 186
    .line 187
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string v3, " -- props: "

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    move-result-object v2

    .line 203
    .line 204
    .line 205
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    iget-object v1, p0, Lcom/narvii/util/mixpanel/PageViewTracker;->analyticsManager:Lcom/narvii/util/mixpanel/MixpanelAnalytics;

    .line 208
    .line 209
    const-string v2, "page_view"

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v2, p1}, Lcom/narvii/util/mixpanel/MixpanelAnalytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 213
    .line 214
    iput-object v0, p0, Lcom/narvii/util/mixpanel/PageViewTracker;->lastTrackedScreen:Ljava/lang/String;

    .line 215
    return-void
.end method

.method private final toPageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/mixpanel/PageViewTracker;->FRAGMENT_SUFFIX_REGEX:Lkotlin/text/g;

    .line 3
    .line 4
    const-string v1, ""

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, v1}, Lkotlin/text/g;->c(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    sget-object v0, Lcom/narvii/util/mixpanel/PageViewTracker;->CAMEL_CASE_REGEX:Lkotlin/text/g;

    .line 11
    .line 12
    const-string v1, "$1_$2"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1, v1}, Lkotlin/text/g;->c(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    const-string/jumbo v0, "toLowerCase(...)"

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    return-object p1
.end method


# virtual methods
.method public onFragmentViewCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p4, "fm"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "f"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo p1, "v"

    .line 14
    .line 15
    .line 16
    invoke-static {p3, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    new-instance p3, Lz5/a;

    .line 25
    .line 26
    .line 27
    invoke-direct {p3, p0, p2}, Lz5/a;-><init>(Lcom/narvii/util/mixpanel/PageViewTracker;Landroidx/fragment/app/Fragment;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 31
    :cond_0
    return-void
.end method
