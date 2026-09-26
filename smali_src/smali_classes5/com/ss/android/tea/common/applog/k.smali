.class public Lcom/ss/android/tea/common/applog/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashSet;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/ss/android/tea/common/applog/k;->a:Ljava/util/Set;

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashSet;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/ss/android/tea/common/applog/k;->b:Ljava/util/Set;

    .line 15
    .line 16
    sget-object v0, Lcom/ss/android/tea/common/applog/k;->a:Ljava/util/Set;

    .line 17
    .line 18
    const-string v1, "ThreadPlus"

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    sget-object v0, Lcom/ss/android/tea/common/applog/k;->a:Ljava/util/Set;

    .line 24
    .line 25
    const-string v1, "ApiDispatcher"

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    sget-object v0, Lcom/ss/android/tea/common/applog/k;->a:Ljava/util/Set;

    .line 31
    .line 32
    const-string v1, "ApiLocalDispatcher"

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    sget-object v0, Lcom/ss/android/tea/common/applog/k;->a:Ljava/util/Set;

    .line 38
    .line 39
    const-string v1, "AsyncLoader"

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    sget-object v0, Lcom/ss/android/tea/common/applog/k;->a:Ljava/util/Set;

    .line 45
    .line 46
    const-string v1, "AsyncTask"

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    sget-object v0, Lcom/ss/android/tea/common/applog/k;->a:Ljava/util/Set;

    .line 52
    .line 53
    const-string v1, "Binder"

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    sget-object v0, Lcom/ss/android/tea/common/applog/k;->a:Ljava/util/Set;

    .line 59
    .line 60
    const-string v1, "PackageProcessor"

    .line 61
    .line 62
    .line 63
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    sget-object v0, Lcom/ss/android/tea/common/applog/k;->a:Ljava/util/Set;

    .line 66
    .line 67
    const-string v1, "SettingsObserver"

    .line 68
    .line 69
    .line 70
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    sget-object v0, Lcom/ss/android/tea/common/applog/k;->a:Ljava/util/Set;

    .line 73
    .line 74
    const-string v1, "WifiManager"

    .line 75
    .line 76
    .line 77
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    sget-object v0, Lcom/ss/android/tea/common/applog/k;->a:Ljava/util/Set;

    .line 80
    .line 81
    const-string v1, "JavaBridge"

    .line 82
    .line 83
    .line 84
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    sget-object v0, Lcom/ss/android/tea/common/applog/k;->a:Ljava/util/Set;

    .line 87
    .line 88
    const-string v1, "Compiler"

    .line 89
    .line 90
    .line 91
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    sget-object v0, Lcom/ss/android/tea/common/applog/k;->a:Ljava/util/Set;

    .line 94
    .line 95
    const-string v1, "Signal Catcher"

    .line 96
    .line 97
    .line 98
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    sget-object v0, Lcom/ss/android/tea/common/applog/k;->a:Ljava/util/Set;

    .line 101
    .line 102
    const-string v1, "GC"

    .line 103
    .line 104
    .line 105
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    sget-object v0, Lcom/ss/android/tea/common/applog/k;->a:Ljava/util/Set;

    .line 108
    .line 109
    const-string v1, "ReferenceQueueDaemon"

    .line 110
    .line 111
    .line 112
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    sget-object v0, Lcom/ss/android/tea/common/applog/k;->a:Ljava/util/Set;

    .line 115
    .line 116
    const-string v1, "FinalizerDaemon"

    .line 117
    .line 118
    .line 119
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    sget-object v0, Lcom/ss/android/tea/common/applog/k;->a:Ljava/util/Set;

    .line 122
    .line 123
    const-string v1, "FinalizerWatchdogDaemon"

    .line 124
    .line 125
    .line 126
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    sget-object v0, Lcom/ss/android/tea/common/applog/k;->a:Ljava/util/Set;

    .line 129
    .line 130
    const-string v1, "CookieSyncManager"

    .line 131
    .line 132
    .line 133
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    sget-object v0, Lcom/ss/android/tea/common/applog/k;->a:Ljava/util/Set;

    .line 136
    .line 137
    const-string v1, "RefQueueWorker"

    .line 138
    .line 139
    .line 140
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    sget-object v0, Lcom/ss/android/tea/common/applog/k;->a:Ljava/util/Set;

    .line 143
    .line 144
    const-string v1, "CleanupReference"

    .line 145
    .line 146
    .line 147
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    sget-object v0, Lcom/ss/android/tea/common/applog/k;->a:Ljava/util/Set;

    .line 150
    .line 151
    const-string v1, "VideoManager"

    .line 152
    .line 153
    .line 154
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    sget-object v0, Lcom/ss/android/tea/common/applog/k;->a:Ljava/util/Set;

    .line 157
    .line 158
    const-string v1, "DBHelper-AsyncOp"

    .line 159
    .line 160
    .line 161
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    sget-object v0, Lcom/ss/android/tea/common/applog/k;->a:Ljava/util/Set;

    .line 164
    .line 165
    const-string v1, "InstalledAppTracker2"

    .line 166
    .line 167
    .line 168
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    sget-object v0, Lcom/ss/android/tea/common/applog/k;->a:Ljava/util/Set;

    .line 171
    .line 172
    const-string v1, "AppData-AsyncOp"

    .line 173
    .line 174
    .line 175
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    sget-object v0, Lcom/ss/android/tea/common/applog/k;->a:Ljava/util/Set;

    .line 178
    .line 179
    const-string v1, "IdleConnectionMonitor"

    .line 180
    .line 181
    .line 182
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    sget-object v0, Lcom/ss/android/tea/common/applog/k;->a:Ljava/util/Set;

    .line 185
    .line 186
    const-string v1, "LogReaper"

    .line 187
    .line 188
    .line 189
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    sget-object v0, Lcom/ss/android/tea/common/applog/k;->a:Ljava/util/Set;

    .line 192
    .line 193
    const-string v1, "ActionReaper"

    .line 194
    .line 195
    .line 196
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    sget-object v0, Lcom/ss/android/tea/common/applog/k;->a:Ljava/util/Set;

    .line 199
    .line 200
    const-string v1, "Okio Watchdog"

    .line 201
    .line 202
    .line 203
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    sget-object v0, Lcom/ss/android/tea/common/applog/k;->a:Ljava/util/Set;

    .line 206
    .line 207
    const-string v1, "CheckWaitingQueue"

    .line 208
    .line 209
    .line 210
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    sget-object v0, Lcom/ss/android/tea/common/applog/k;->b:Ljava/util/Set;

    .line 213
    .line 214
    const-string v1, "com.facebook.imagepipeline.core.PriorityThreadFactory"

    .line 215
    .line 216
    .line 217
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    sget-object v0, Lcom/ss/android/tea/common/applog/k;->b:Ljava/util/Set;

    .line 220
    .line 221
    const-string v1, "com.ss.android.common.util.SimpleThreadFactory"

    .line 222
    .line 223
    .line 224
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 225
    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 15

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    const-string/jumbo v2, "tr_all_count"

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 18
    move-result v3

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    .line 23
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    .line 24
    .line 25
    .line 26
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v3

    .line 39
    .line 40
    if-eqz v3, :cond_d

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    check-cast v3, Ljava/util/Map$Entry;

    .line 47
    .line 48
    if-eqz v3, :cond_c

    .line 49
    .line 50
    new-instance v4, Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 57
    move-result-object v5

    .line 58
    .line 59
    check-cast v5, Ljava/lang/Thread;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 63
    move-result-object v6

    .line 64
    .line 65
    sget-object v7, Lcom/ss/android/tea/common/applog/k;->a:Ljava/util/Set;

    .line 66
    .line 67
    .line 68
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 69
    move-result v7

    .line 70
    const/4 v8, 0x0

    .line 71
    const/4 v9, 0x1

    .line 72
    .line 73
    if-eqz v7, :cond_1

    .line 74
    :goto_1
    move v6, v9

    .line 75
    goto :goto_2

    .line 76
    .line 77
    :cond_1
    sget-object v7, Lcom/ss/android/tea/common/applog/k;->a:Ljava/util/Set;

    .line 78
    .line 79
    .line 80
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 81
    move-result-object v7

    .line 82
    .line 83
    .line 84
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    move-result v10

    .line 86
    .line 87
    if-eqz v10, :cond_3

    .line 88
    .line 89
    .line 90
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    move-result-object v10

    .line 92
    .line 93
    check-cast v10, Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    invoke-static {v6}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 97
    move-result v11

    .line 98
    .line 99
    if-nez v11, :cond_2

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 103
    move-result v10

    .line 104
    .line 105
    if-eqz v10, :cond_2

    .line 106
    goto :goto_1

    .line 107
    :cond_3
    move v6, v8

    .line 108
    .line 109
    :goto_2
    if-eqz v6, :cond_4

    .line 110
    goto :goto_0

    .line 111
    .line 112
    .line 113
    :cond_4
    const-string/jumbo v7, "tr_n"

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 117
    move-result-object v5

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    .line 122
    .line 123
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 124
    move-result-object v3

    .line 125
    .line 126
    check-cast v3, [Ljava/lang/StackTraceElement;

    .line 127
    .line 128
    if-eqz v3, :cond_a

    .line 129
    .line 130
    new-instance v5, Lorg/json/JSONArray;

    .line 131
    .line 132
    .line 133
    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 134
    array-length v7, v3

    .line 135
    .line 136
    :goto_3
    if-ge v8, v7, :cond_8

    .line 137
    .line 138
    aget-object v10, v3, v8

    .line 139
    .line 140
    .line 141
    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 142
    move-result-object v11

    .line 143
    .line 144
    sget-object v12, Lcom/ss/android/tea/common/applog/k;->b:Ljava/util/Set;

    .line 145
    .line 146
    .line 147
    invoke-interface {v12, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 148
    move-result v12

    .line 149
    .line 150
    if-eqz v12, :cond_5

    .line 151
    goto :goto_4

    .line 152
    .line 153
    :cond_5
    sget-object v12, Lcom/ss/android/tea/common/applog/k;->b:Ljava/util/Set;

    .line 154
    .line 155
    .line 156
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 157
    move-result-object v12

    .line 158
    .line 159
    .line 160
    :cond_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    move-result v13

    .line 162
    .line 163
    if-eqz v13, :cond_7

    .line 164
    .line 165
    .line 166
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    move-result-object v13

    .line 168
    .line 169
    check-cast v13, Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    invoke-static {v11}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 173
    move-result v14

    .line 174
    .line 175
    if-nez v14, :cond_6

    .line 176
    .line 177
    .line 178
    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 179
    move-result v13

    .line 180
    .line 181
    if-eqz v13, :cond_6

    .line 182
    move v6, v9

    .line 183
    .line 184
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    const-string v11, "."

    .line 190
    .line 191
    .line 192
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 196
    move-result-object v11

    .line 197
    .line 198
    .line 199
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string v11, "("

    .line 202
    .line 203
    .line 204
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 208
    move-result v10

    .line 209
    .line 210
    .line 211
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    const-string v10, ")"

    .line 214
    .line 215
    .line 216
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    move-result-object v10

    .line 221
    .line 222
    .line 223
    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 224
    .line 225
    add-int/lit8 v8, v8, 0x1

    .line 226
    goto :goto_3

    .line 227
    :cond_8
    move v9, v6

    .line 228
    .line 229
    :goto_4
    if-eqz v9, :cond_9

    .line 230
    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    .line 234
    :cond_9
    const-string/jumbo v3, "tr_st"

    .line 235
    .line 236
    .line 237
    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    move v6, v9

    .line 239
    .line 240
    :cond_a
    if-eqz v6, :cond_b

    .line 241
    .line 242
    goto/16 :goto_0

    .line 243
    .line 244
    .line 245
    :cond_b
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 246
    .line 247
    .line 248
    :cond_c
    const-string/jumbo v3, "tr_stacks"

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    .line 256
    :cond_d
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 257
    move-result-object v0

    .line 258
    .line 259
    .line 260
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    .line 261
    move-result v1

    .line 262
    .line 263
    if-eqz v1, :cond_e

    .line 264
    .line 265
    const-string v1, "OOM_Exception"

    .line 266
    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .line 272
    const-string v3, "size : "

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 279
    move-result v3

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    const-string v3, " "

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    move-result-object v2

    .line 295
    .line 296
    .line 297
    invoke-static {v1, v2}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    :cond_e
    return-object v0

    .line 299
    .line 300
    :catchall_0
    const-string v0, ""

    .line 301
    return-object v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, ""

    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    return-object v0

    .line 6
    .line 7
    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lcom/ss/android/tea/common/applog/k;->c(Ljava/io/File;)Lorg/json/JSONArray;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 17
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    return-object p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    return-object v0
.end method

.method private static c(Ljava/io/File;)Lorg/json/JSONArray;
    .locals 6

    .line 1
    .line 2
    new-instance v0, Lorg/json/JSONArray;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 6
    .line 7
    if-eqz p0, :cond_5

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    goto :goto_2

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 28
    return-object v0

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 32
    move-result-object p0

    .line 33
    .line 34
    if-nez p0, :cond_2

    .line 35
    return-object v0

    .line 36
    :cond_2
    array-length v1, p0

    .line 37
    const/4 v2, 0x0

    .line 38
    .line 39
    :goto_0
    if-ge v2, v1, :cond_5

    .line 40
    .line 41
    aget-object v3, p0, v2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    .line 45
    move-result v4

    .line 46
    .line 47
    if-eqz v4, :cond_3

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 55
    goto :goto_1

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 59
    move-result v4

    .line 60
    .line 61
    if-eqz v4, :cond_4

    .line 62
    .line 63
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 70
    move-result-object v5

    .line 71
    .line 72
    .line 73
    invoke-static {v3}, Lcom/ss/android/tea/common/applog/k;->c(Ljava/io/File;)Lorg/json/JSONArray;

    .line 74
    move-result-object v3

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    goto :goto_1

    .line 82
    :catch_0
    move-exception v3

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    .line 87
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 88
    goto :goto_0

    .line 89
    :cond_5
    :goto_2
    return-object v0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p0, :cond_3

    .line 4
    .line 5
    const-string v1, ":ad"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 9
    move-result p0

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    move p0, v0

    .line 14
    .line 15
    :goto_0
    if-eqz p1, :cond_3

    .line 16
    .line 17
    :try_start_0
    instance-of v1, p1, Ljava/lang/NullPointerException;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    .line 23
    :cond_1
    const/16 v1, 0x14

    .line 24
    .line 25
    if-le p0, v1, :cond_2

    .line 26
    return v0

    .line 27
    .line 28
    :cond_2
    add-int/lit8 p0, p0, 0x1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 32
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    :cond_3
    :goto_1
    return v0
.end method

.method private static e(Ljava/lang/Throwable;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    move v1, v0

    .line 6
    .line 7
    :goto_0
    if-eqz p0, :cond_3

    .line 8
    .line 9
    :try_start_0
    instance-of v2, p0, Ljava/lang/OutOfMemoryError;

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    .line 15
    :cond_1
    const/16 v2, 0x14

    .line 16
    .line 17
    if-le v1, v2, :cond_2

    .line 18
    return v0

    .line 19
    .line 20
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 24
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    :cond_3
    return v0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/Thread;Ljava/lang/Throwable;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    .line 6
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    .line 7
    .line 8
    .line 9
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    move-result-object p0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/StringWriter;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 25
    .line 26
    new-instance v1, Ljava/io/PrintWriter;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 58
    .line 59
    if-nez v0, :cond_3

    .line 60
    return-object p1

    .line 61
    .line 62
    :cond_3
    const-string v1, "data"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    .line 67
    const-string v0, "crash_time"

    .line 68
    .line 69
    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 71
    move-result-wide v1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 75
    .line 76
    const-string v0, ""

    .line 77
    .line 78
    if-eqz p0, :cond_4

    .line 79
    .line 80
    .line 81
    invoke-static {p0}, Lt6/d;->g(Landroid/content/Context;)Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    const-string v1, "process_name"

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    .line 89
    .line 90
    invoke-static {p0}, Lt6/d;->f(Landroid/content/Context;)Z

    .line 91
    move-result v1

    .line 92
    .line 93
    if-nez v1, :cond_4

    .line 94
    .line 95
    const-string v1, "remote_process"

    .line 96
    const/4 v2, 0x1

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    .line 101
    :cond_4
    const-string v1, "app_count"

    .line 102
    .line 103
    sget v2, Lcom/ss/android/tea/common/applog/b;->q:I

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 107
    .line 108
    if-eqz p0, :cond_5

    .line 109
    .line 110
    .line 111
    invoke-static {p0, p1}, Lcom/ss/android/tea/common/applog/k;->g(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 112
    .line 113
    .line 114
    :cond_5
    invoke-static {p2}, Lcom/ss/android/tea/common/applog/k;->e(Ljava/lang/Throwable;)Z

    .line 115
    move-result v1

    .line 116
    .line 117
    if-nez v1, :cond_6

    .line 118
    .line 119
    .line 120
    invoke-static {v0, p2}, Lcom/ss/android/tea/common/applog/k;->d(Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 121
    move-result v1

    .line 122
    .line 123
    if-eqz v1, :cond_a

    .line 124
    .line 125
    .line 126
    :cond_6
    invoke-static {p0}, Lt6/d;->f(Landroid/content/Context;)Z

    .line 127
    move-result v1

    .line 128
    .line 129
    if-eqz v1, :cond_8

    .line 130
    .line 131
    .line 132
    invoke-static {}, Lp6/a;->b()Ljava/lang/String;

    .line 133
    move-result-object p0

    .line 134
    .line 135
    .line 136
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    .line 137
    move-result v0

    .line 138
    .line 139
    if-eqz v0, :cond_7

    .line 140
    .line 141
    const-string v0, "OOM_Exception"

    .line 142
    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    const-string v2, "finishedActivities = "

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string v2, " ExMsg = "

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 163
    move-result-object p2

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object p2

    .line 171
    .line 172
    .line 173
    invoke-static {v0, p2}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    :cond_7
    const-string p2, "finished_activities"

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    goto :goto_1

    .line 180
    .line 181
    :cond_8
    if-eqz v0, :cond_9

    .line 182
    .line 183
    const-string p2, ":ad"

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 187
    move-result p2

    .line 188
    .line 189
    if-eqz p2, :cond_9

    .line 190
    .line 191
    const-string p2, "data_files"

    .line 192
    .line 193
    .line 194
    invoke-static {p0}, Lcom/ss/android/tea/common/applog/k;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 195
    move-result-object p0

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    .line 200
    :cond_9
    :goto_1
    const-string p0, "all_thread_stacks"

    .line 201
    .line 202
    .line 203
    invoke-static {}, Lcom/ss/android/tea/common/applog/k;->a()Ljava/lang/String;

    .line 204
    move-result-object p2

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    goto :goto_3

    .line 209
    .line 210
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    const-string v0, "handle crash exception: "

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    move-result-object p0

    .line 226
    .line 227
    const-string p2, "CrashUtil"

    .line 228
    .line 229
    .line 230
    invoke-static {p2, p0}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_a
    :goto_3
    return-object p1
.end method

.method public static g(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    if-eqz p0, :cond_1

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    move-result-object p0

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_1
    :goto_0
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 22
    .line 23
    new-instance v1, Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 27
    .line 28
    const-string v2, "dalvikPrivateDirty"

    .line 29
    .line 30
    iget v3, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 34
    .line 35
    const-string v2, "dalvikPss"

    .line 36
    .line 37
    iget v3, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 41
    .line 42
    const-string v2, "dalvikSharedDirty"

    .line 43
    .line 44
    iget v3, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 48
    .line 49
    const-string v2, "nativePrivateDirty"

    .line 50
    .line 51
    iget v3, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    .line 56
    const-string v2, "nativePss"

    .line 57
    .line 58
    iget v3, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 62
    .line 63
    const-string v2, "nativeSharedDirty"

    .line 64
    .line 65
    iget v3, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 69
    .line 70
    const-string v2, "otherPrivateDirty"

    .line 71
    .line 72
    iget v3, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    .line 77
    const-string v2, "otherPss"

    .line 78
    .line 79
    iget v3, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 83
    .line 84
    const-string v2, "otherSharedDirty"

    .line 85
    .line 86
    iget v3, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 90
    .line 91
    .line 92
    const-string/jumbo v2, "totalPrivateClean"

    .line 93
    .line 94
    .line 95
    invoke-static {v0}, Lcom/ss/android/tea/common/applog/n;->a(Landroid/os/Debug$MemoryInfo;)I

    .line 96
    move-result v3

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    .line 101
    .line 102
    const-string/jumbo v2, "totalPrivateDirty"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    .line 106
    move-result v3

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 110
    .line 111
    .line 112
    const-string/jumbo v2, "totalPss"

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    .line 116
    move-result v3

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 120
    .line 121
    .line 122
    const-string/jumbo v2, "totalSharedClean"

    .line 123
    .line 124
    .line 125
    invoke-static {v0}, Lcom/ss/android/tea/common/applog/n;->b(Landroid/os/Debug$MemoryInfo;)I

    .line 126
    move-result v3

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 130
    .line 131
    .line 132
    const-string/jumbo v2, "totalSharedDirty"

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    .line 136
    move-result v3

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 140
    .line 141
    .line 142
    const-string/jumbo v2, "totalSwappablePss"

    .line 143
    .line 144
    .line 145
    invoke-static {v0}, Lcom/ss/android/tea/common/applog/n;->c(Landroid/os/Debug$MemoryInfo;)I

    .line 146
    move-result v0

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 150
    .line 151
    const-string v0, "memory_info"

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    .line 156
    if-eqz p0, :cond_2

    .line 157
    .line 158
    new-instance v0, Lorg/json/JSONObject;

    .line 159
    .line 160
    .line 161
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 162
    .line 163
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    .line 164
    .line 165
    .line 166
    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 167
    .line 168
    const-string v2, "activity"

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 172
    move-result-object p0

    .line 173
    .line 174
    check-cast p0, Landroid/app/ActivityManager;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 178
    .line 179
    const-string v2, "availMem"

    .line 180
    .line 181
    iget-wide v3, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 185
    .line 186
    const-string v2, "lowMemory"

    .line 187
    .line 188
    iget-boolean v3, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 192
    .line 193
    .line 194
    const-string/jumbo v2, "threshold"

    .line 195
    .line 196
    iget-wide v3, v1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 200
    .line 201
    .line 202
    const-string/jumbo v2, "totalMem"

    .line 203
    .line 204
    .line 205
    invoke-static {v1}, Lcom/bytedance/tea/common/a/b;->a(Landroid/app/ActivityManager$MemoryInfo;)J

    .line 206
    move-result-wide v3

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 210
    .line 211
    .line 212
    const-string/jumbo v1, "sys_memory_info"

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    goto :goto_1

    .line 217
    :cond_2
    const/4 p0, 0x0

    .line 218
    .line 219
    :goto_1
    new-instance v0, Lorg/json/JSONObject;

    .line 220
    .line 221
    .line 222
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 223
    .line 224
    const-string v1, "native_heap_size"

    .line 225
    .line 226
    .line 227
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    .line 228
    move-result-wide v2

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 232
    .line 233
    const-string v1, "native_heap_alloc_size"

    .line 234
    .line 235
    .line 236
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    .line 237
    move-result-wide v2

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 241
    .line 242
    const-string v1, "native_heap_free_size"

    .line 243
    .line 244
    .line 245
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    .line 246
    move-result-wide v2

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 250
    .line 251
    .line 252
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 253
    move-result-object v1

    .line 254
    .line 255
    const-string v2, "max_memory"

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    .line 259
    move-result-wide v3

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 263
    .line 264
    const-string v2, "free_memory"

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    .line 268
    move-result-wide v3

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 272
    .line 273
    .line 274
    const-string/jumbo v2, "total_memory"

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    .line 278
    move-result-wide v3

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 282
    .line 283
    if-eqz p0, :cond_3

    .line 284
    .line 285
    const-string v1, "memory_class"

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    .line 289
    move-result v2

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 293
    .line 294
    const-string v1, "large_memory_class"

    .line 295
    .line 296
    .line 297
    invoke-static {p0}, Lcom/bytedance/tea/common/a/a;->a(Landroid/app/ActivityManager;)I

    .line 298
    move-result p0

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 302
    .line 303
    :cond_3
    const-string p0, "app_memory_info"

    .line 304
    .line 305
    .line 306
    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    goto :goto_3

    .line 308
    .line 309
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .line 314
    const-string v0, "get memory info exception: "

    .line 315
    .line 316
    .line 317
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    move-result-object p0

    .line 325
    .line 326
    const-string p1, "CrashUtil"

    .line 327
    .line 328
    .line 329
    invoke-static {p1, p0}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :goto_3
    return-void
.end method
