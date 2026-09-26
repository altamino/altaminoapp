.class public Lcom/ss/android/tea/common/deviceregister/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lorg/json/JSONObject;

.field private static c:Ljava/lang/String;

.field private static d:I

.field private static e:Ln6/a;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Lcom/ss/android/tea/common/deviceregister/d;

.field private static p:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/ss/android/tea/common/deviceregister/e;->a:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public static a()I
    .locals 1

    sget v0, Lcom/ss/android/tea/common/deviceregister/e;->d:I

    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/e;->l:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    if-eqz p0, :cond_3

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    const/16 v1, 0x40

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 29
    .line 30
    if-eqz p0, :cond_2

    .line 31
    array-length v0, p0

    .line 32
    const/4 v1, 0x1

    .line 33
    .line 34
    if-ge v0, v1, :cond_0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    .line 38
    aget-object p0, p0, v0

    .line 39
    .line 40
    if-nez p0, :cond_1

    .line 41
    .line 42
    sget-object p0, Lcom/ss/android/tea/common/deviceregister/e;->l:Ljava/lang/String;

    .line 43
    return-object p0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    .line 47
    .line 48
    :cond_1
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 49
    move-result-object p0

    .line 50
    .line 51
    .line 52
    invoke-static {p0}, Lcom/bytedance/tea/common/utility/a;->b([B)Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    .line 55
    sput-object p0, Lcom/ss/android/tea/common/deviceregister/e;->l:Ljava/lang/String;

    .line 56
    goto :goto_2

    .line 57
    .line 58
    :cond_2
    :goto_0
    sget-object p0, Lcom/ss/android/tea/common/deviceregister/e;->l:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    return-object p0

    .line 60
    .line 61
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    const-string v1, "failed to get package sianature: "

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 77
    .line 78
    const-string v0, "RegistrationHeaderHelper"

    .line 79
    .line 80
    .line 81
    invoke-static {v0, p0}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    :cond_3
    :goto_2
    sget-object p0, Lcom/ss/android/tea/common/deviceregister/e;->l:Ljava/lang/String;

    .line 84
    return-object p0
.end method

.method public static c(Lcom/ss/android/tea/common/deviceregister/d;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    sput-object p0, Lcom/ss/android/tea/common/deviceregister/e;->o:Lcom/ss/android/tea/common/deviceregister/d;

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    const-string v1, "put header : key = "

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v1, ", val = "

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    const-string v1, "RegistrationHeaderHelper"

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v0}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    :cond_1
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/e;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    .line 53
    .line 54
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 55
    .line 56
    sput-object v0, Lcom/ss/android/tea/common/deviceregister/e;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    .line 58
    :cond_2
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/e;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_3
    :goto_0
    return-void
.end method

.method public static e(Ln6/a;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ss/android/tea/common/deviceregister/e;->e:Ln6/a;

    return-void
.end method

.method private static f(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    check-cast v1, Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public static g(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .locals 14

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    sget-object v1, Lcom/ss/android/tea/common/deviceregister/e;->b:Lorg/json/JSONObject;

    .line 8
    const/4 v2, 0x1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    sget-object v1, Lcom/ss/android/tea/common/deviceregister/e;->a:Ljava/lang/Object;

    .line 13
    monitor-enter v1

    .line 14
    .line 15
    :try_start_0
    sget-object p0, Lcom/ss/android/tea/common/deviceregister/e;->b:Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    invoke-static {p0, p1}, Lcom/ss/android/tea/common/deviceregister/e;->f(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 19
    monitor-exit v1

    .line 20
    return v2

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0

    .line 24
    .line 25
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 29
    const/4 v3, 0x0

    .line 30
    .line 31
    .line 32
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 33
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 34
    .line 35
    .line 36
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 37
    move-result-object v5

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 41
    move-result-object v6

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5, v6, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 45
    move-result-object v5

    .line 46
    .line 47
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 48
    .line 49
    sput-object v6, Lcom/ss/android/tea/common/deviceregister/e;->c:Ljava/lang/String;

    .line 50
    .line 51
    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 52
    .line 53
    sput v5, Lcom/ss/android/tea/common/deviceregister/e;->d:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception v5

    .line 56
    .line 57
    .line 58
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    :goto_0
    sget-object v5, Lcom/ss/android/tea/common/deviceregister/e;->e:Ln6/a;

    .line 61
    .line 62
    if-eqz v5, :cond_1

    .line 63
    .line 64
    const-string v6, "channel"

    .line 65
    .line 66
    .line 67
    invoke-interface {v5}, Ln6/a;->d()Ljava/lang/String;

    .line 68
    move-result-object v5

    .line 69
    .line 70
    .line 71
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    goto :goto_1

    .line 73
    :catch_1
    move-exception p0

    .line 74
    .line 75
    goto/16 :goto_1d

    .line 76
    .line 77
    :cond_1
    :goto_1
    const-string v5, "package"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 81
    move-result-object v6

    .line 82
    .line 83
    .line 84
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    const-string v5, "app_version"

    .line 87
    .line 88
    sget-object v6, Lcom/ss/android/tea/common/deviceregister/e;->c:Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 95
    move-result-object v5

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 99
    move-result-object v4

    .line 100
    .line 101
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 102
    .line 103
    if-eqz v4, :cond_2

    .line 104
    .line 105
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 106
    .line 107
    if-lez v4, :cond_2

    .line 108
    .line 109
    const-string v5, "display_name"

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 113
    move-result-object v4

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    .line 118
    :cond_2
    sget-object v4, Lcom/ss/android/tea/common/deviceregister/e;->e:Ln6/a;

    .line 119
    .line 120
    if-eqz v4, :cond_4

    .line 121
    .line 122
    sget v4, Lcom/ss/android/tea/common/deviceregister/e;->d:I

    .line 123
    .line 124
    if-lez v4, :cond_3

    .line 125
    .line 126
    .line 127
    const-string/jumbo v5, "update_version_code"

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 131
    .line 132
    :cond_3
    sget v4, Lcom/ss/android/tea/common/deviceregister/e;->d:I

    .line 133
    .line 134
    if-lez v4, :cond_4

    .line 135
    .line 136
    const-string v5, "manifest_version_code"

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 140
    .line 141
    :cond_4
    const-string v4, "channel"

    .line 142
    .line 143
    const-string v5, "package"

    .line 144
    .line 145
    const-string v6, "app_version"

    .line 146
    .line 147
    .line 148
    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    .line 149
    move-result-object v4

    .line 150
    .line 151
    :try_start_4
    const-string v5, "aid"

    .line 152
    .line 153
    sget-object v6, Lcom/ss/android/tea/common/deviceregister/e;->e:Ln6/a;

    .line 154
    .line 155
    .line 156
    invoke-interface {v6}, Ln6/a;->a()I

    .line 157
    move-result v6

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 161
    move v5, v3

    .line 162
    :goto_2
    const/4 v6, 0x3

    .line 163
    .line 164
    if-ge v5, v6, :cond_6

    .line 165
    .line 166
    aget-object v6, v4, v5

    .line 167
    .line 168
    .line 169
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    move-result-object v7

    .line 171
    .line 172
    check-cast v7, Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    invoke-static {v7}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 176
    move-result v8

    .line 177
    .line 178
    if-eqz v8, :cond_5

    .line 179
    .line 180
    const-string v0, "RegistrationHeaderHelper"

    .line 181
    .line 182
    const-string v4, "init fail empty field: channel"

    .line 183
    .line 184
    .line 185
    invoke-static {v0, v4}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return v3

    .line 187
    :catch_2
    move-exception v0

    .line 188
    goto :goto_3

    .line 189
    .line 190
    .line 191
    :cond_5
    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    .line 193
    add-int/lit8 v5, v5, 0x1

    .line 194
    goto :goto_2

    .line 195
    .line 196
    .line 197
    :cond_6
    const-string/jumbo v0, "version_code"

    .line 198
    .line 199
    sget v4, Lcom/ss/android/tea/common/deviceregister/e;->d:I

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 203
    .line 204
    const-string v0, "sdk_version"

    .line 205
    const/4 v4, 0x2

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 209
    .line 210
    const-string v0, "sdk_version_name"

    .line 211
    .line 212
    const-string v4, "2.4.3"

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    .line 217
    const-string v0, "os"

    .line 218
    .line 219
    const-string v4, "Android"

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    .line 224
    const-string v0, "os_version"

    .line 225
    .line 226
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    .line 231
    const-string v0, "os_api"

    .line 232
    .line 233
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 237
    .line 238
    const-string v0, "device_model"

    .line 239
    .line 240
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    .line 245
    const-string v0, "device_brand"

    .line 246
    .line 247
    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    .line 252
    const-string v0, "device_manufacturer"

    .line 253
    .line 254
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    .line 259
    const-string v0, "cpu_abi"

    .line 260
    .line 261
    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    .line 266
    const-string v0, "build_serial"

    .line 267
    .line 268
    sget-object v4, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    .line 273
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/e;->f:Ljava/lang/String;

    .line 274
    .line 275
    if-nez v0, :cond_7

    .line 276
    .line 277
    const-string v0, ""

    .line 278
    .line 279
    :cond_7
    const-string v4, "release_build"

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 283
    goto :goto_4

    .line 284
    .line 285
    :goto_3
    const-string v4, "RegistrationHeaderHelper"

    .line 286
    .line 287
    new-instance v5, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .line 292
    const-string v6, "init exception 2: "

    .line 293
    .line 294
    .line 295
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    move-result-object v0

    .line 303
    .line 304
    .line 305
    invoke-static {v4, v0}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    :goto_4
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 309
    move-result-object v0

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 313
    move-result-object v0

    .line 314
    .line 315
    iget v4, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 316
    .line 317
    const-string v5, "density_dpi"

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 321
    .line 322
    const/16 v5, 0x78

    .line 323
    .line 324
    if-eq v4, v5, :cond_a

    .line 325
    .line 326
    const/16 v5, 0xf0

    .line 327
    .line 328
    if-eq v4, v5, :cond_9

    .line 329
    .line 330
    const/16 v5, 0x140

    .line 331
    .line 332
    if-eq v4, v5, :cond_8

    .line 333
    .line 334
    const-string v4, "mdpi"

    .line 335
    goto :goto_5

    .line 336
    :catch_3
    move-exception v0

    .line 337
    goto :goto_6

    .line 338
    .line 339
    .line 340
    :cond_8
    const-string/jumbo v4, "xhdpi"

    .line 341
    goto :goto_5

    .line 342
    .line 343
    :cond_9
    const-string v4, "hdpi"

    .line 344
    goto :goto_5

    .line 345
    .line 346
    :cond_a
    const-string v4, "ldpi"

    .line 347
    .line 348
    :goto_5
    const-string v5, "display_density"

    .line 349
    .line 350
    .line 351
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    .line 353
    const-string v4, "resolution"

    .line 354
    .line 355
    new-instance v5, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .line 360
    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 361
    .line 362
    .line 363
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    const-string/jumbo v6, "x"

    .line 367
    .line 368
    .line 369
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 372
    .line 373
    .line 374
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    move-result-object v0

    .line 379
    .line 380
    .line 381
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 382
    goto :goto_7

    .line 383
    .line 384
    :goto_6
    const-string v4, "RegistrationHeaderHelper"

    .line 385
    .line 386
    new-instance v5, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    .line 391
    const-string v6, "init exception 3: "

    .line 392
    .line 393
    .line 394
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    move-result-object v0

    .line 402
    .line 403
    .line 404
    invoke-static {v4, v0}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    :goto_7
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 408
    move-result-object v0

    .line 409
    .line 410
    .line 411
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 412
    move-result-object v0

    .line 413
    .line 414
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 418
    move-result-object v0

    .line 419
    .line 420
    .line 421
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 422
    move-result v4

    .line 423
    .line 424
    if-nez v4, :cond_b

    .line 425
    .line 426
    const-string v4, "language"

    .line 427
    .line 428
    .line 429
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 430
    goto :goto_8

    .line 431
    :catch_4
    move-exception v0

    .line 432
    goto :goto_9

    .line 433
    .line 434
    .line 435
    :cond_b
    :goto_8
    invoke-static {p0}, Lcom/bytedance/tea/common/utility/NetworkUtils;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 436
    move-result-object v0

    .line 437
    .line 438
    .line 439
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 440
    move-result v4

    .line 441
    .line 442
    if-nez v4, :cond_c

    .line 443
    .line 444
    const-string v4, "mc"

    .line 445
    .line 446
    .line 447
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 448
    .line 449
    sput-object v0, Lcom/ss/android/tea/common/deviceregister/e;->g:Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    :cond_c
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 453
    move-result-object v0

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    .line 457
    move-result v0

    .line 458
    .line 459
    .line 460
    const v4, 0x36ee80

    .line 461
    div-int/2addr v0, v4

    .line 462
    .line 463
    const/16 v4, -0xc

    .line 464
    .line 465
    if-ge v0, v4, :cond_d

    .line 466
    move v0, v4

    .line 467
    .line 468
    :cond_d
    const/16 v4, 0xc

    .line 469
    .line 470
    if-le v0, v4, :cond_e

    .line 471
    move v0, v4

    .line 472
    .line 473
    .line 474
    :cond_e
    const-string/jumbo v4, "timezone"

    .line 475
    .line 476
    .line 477
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 478
    .line 479
    .line 480
    invoke-static {p0}, Lcom/bytedance/tea/common/utility/NetworkUtils;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 481
    move-result-object v0

    .line 482
    .line 483
    if-eqz v0, :cond_f

    .line 484
    .line 485
    const-string v4, "access"

    .line 486
    .line 487
    .line 488
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 489
    goto :goto_a

    .line 490
    .line 491
    :goto_9
    const-string v4, "RegistrationHeaderHelper"

    .line 492
    .line 493
    new-instance v5, Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 497
    .line 498
    const-string v6, "init exception 4: "

    .line 499
    .line 500
    .line 501
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 508
    move-result-object v0

    .line 509
    .line 510
    .line 511
    invoke-static {v4, v0}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    :cond_f
    :goto_a
    invoke-static {p0, v1}, Lcom/ss/android/tea/common/deviceregister/e;->j(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 515
    .line 516
    .line 517
    invoke-static {p0, v1}, Lcom/ss/android/tea/common/deviceregister/e;->i(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 518
    .line 519
    const-string v0, "applog_stats"

    .line 520
    .line 521
    .line 522
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 523
    move-result-object v0

    .line 524
    .line 525
    const-string v4, "mac_addr"

    .line 526
    const/4 v5, 0x0

    .line 527
    .line 528
    .line 529
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 530
    move-result-object v4

    .line 531
    .line 532
    const-string v6, "google_aid"

    .line 533
    .line 534
    .line 535
    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 536
    move-result-object v6

    .line 537
    .line 538
    const-string v7, "app_language"

    .line 539
    .line 540
    .line 541
    invoke-interface {v0, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 542
    move-result-object v7

    .line 543
    .line 544
    const-string v8, "app_region"

    .line 545
    .line 546
    .line 547
    invoke-interface {v0, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 548
    move-result-object v8

    .line 549
    .line 550
    .line 551
    invoke-static {v4}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 552
    move-result v9

    .line 553
    .line 554
    if-eqz v9, :cond_10

    .line 555
    .line 556
    sget-object v4, Lcom/ss/android/tea/common/deviceregister/e;->g:Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    invoke-static {v4}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 560
    move-result v4

    .line 561
    .line 562
    if-nez v4, :cond_12

    .line 563
    :goto_b
    move v4, v2

    .line 564
    goto :goto_d

    .line 565
    .line 566
    :cond_10
    sget-object v9, Lcom/ss/android/tea/common/deviceregister/e;->g:Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    invoke-static {v9}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 570
    move-result v9

    .line 571
    .line 572
    if-eqz v9, :cond_11

    .line 573
    .line 574
    sput-object v4, Lcom/ss/android/tea/common/deviceregister/e;->g:Ljava/lang/String;

    .line 575
    .line 576
    :try_start_7
    const-string v9, "mc"

    .line 577
    .line 578
    .line 579
    invoke-virtual {v1, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_5

    .line 580
    goto :goto_c

    .line 581
    :catch_5
    move-exception v4

    .line 582
    .line 583
    .line 584
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 585
    goto :goto_c

    .line 586
    .line 587
    :cond_11
    sget-object v9, Lcom/ss/android/tea/common/deviceregister/e;->g:Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 591
    move-result v4

    .line 592
    .line 593
    if-nez v4, :cond_12

    .line 594
    goto :goto_b

    .line 595
    :cond_12
    :goto_c
    move v4, v3

    .line 596
    .line 597
    .line 598
    :goto_d
    :try_start_8
    invoke-static {}, Lcom/ss/android/tea/common/deviceregister/a;->q()Z

    .line 599
    move-result v9

    .line 600
    .line 601
    if-eqz v9, :cond_13

    .line 602
    .line 603
    .line 604
    invoke-static {p0}, Lr6/a;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 605
    move-result-object v9

    .line 606
    goto :goto_e

    .line 607
    :cond_13
    move-object v9, v5

    .line 608
    .line 609
    .line 610
    :goto_e
    invoke-static {v9}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 611
    move-result v10

    .line 612
    .line 613
    if-eqz v10, :cond_14

    .line 614
    .line 615
    .line 616
    invoke-static {}, Lcom/ss/android/tea/common/deviceregister/c;->a()Ljava/lang/String;

    .line 617
    move-result-object v9

    .line 618
    .line 619
    .line 620
    :cond_14
    invoke-static {}, Lcom/ss/android/tea/common/deviceregister/c;->c()Ljava/lang/String;

    .line 621
    move-result-object v10

    .line 622
    .line 623
    .line 624
    invoke-static {}, Lcom/ss/android/tea/common/deviceregister/c;->e()Ljava/lang/String;

    .line 625
    move-result-object v11

    .line 626
    .line 627
    .line 628
    invoke-static {v9}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 629
    move-result v12

    .line 630
    .line 631
    if-nez v12, :cond_15

    .line 632
    .line 633
    .line 634
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 635
    move-result v12

    .line 636
    .line 637
    if-nez v12, :cond_15

    .line 638
    move-object v6, v9

    .line 639
    move v9, v2

    .line 640
    goto :goto_f

    .line 641
    :cond_15
    move v9, v3

    .line 642
    .line 643
    .line 644
    :goto_f
    invoke-static {v6}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 645
    move-result v12

    .line 646
    .line 647
    if-nez v12, :cond_16

    .line 648
    .line 649
    const-string v12, "google_aid"

    .line 650
    .line 651
    .line 652
    invoke-virtual {v1, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 653
    .line 654
    .line 655
    :cond_16
    invoke-static {v10}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 656
    move-result v12

    .line 657
    .line 658
    if-nez v12, :cond_17

    .line 659
    .line 660
    .line 661
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 662
    move-result v12

    .line 663
    .line 664
    if-nez v12, :cond_17

    .line 665
    move-object v7, v10

    .line 666
    move v10, v2

    .line 667
    goto :goto_10

    .line 668
    :cond_17
    move v10, v3

    .line 669
    .line 670
    .line 671
    :goto_10
    invoke-static {v7}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 672
    move-result v12

    .line 673
    .line 674
    if-nez v12, :cond_18

    .line 675
    .line 676
    const-string v12, "app_language"

    .line 677
    .line 678
    .line 679
    invoke-virtual {v1, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 680
    .line 681
    .line 682
    :cond_18
    invoke-static {v11}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 683
    move-result v12

    .line 684
    .line 685
    if-nez v12, :cond_19

    .line 686
    .line 687
    .line 688
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 689
    move-result v12

    .line 690
    .line 691
    if-nez v12, :cond_19

    .line 692
    move-object v8, v11

    .line 693
    move v11, v2

    .line 694
    goto :goto_11

    .line 695
    :cond_19
    move v11, v3

    .line 696
    .line 697
    .line 698
    :goto_11
    invoke-static {v8}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 699
    move-result v12

    .line 700
    .line 701
    if-nez v12, :cond_1a

    .line 702
    .line 703
    const-string v12, "app_region"

    .line 704
    .line 705
    .line 706
    invoke-virtual {v1, v12, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 707
    .line 708
    .line 709
    :cond_1a
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 710
    move-result-object v12

    .line 711
    .line 712
    if-eqz v9, :cond_1b

    .line 713
    .line 714
    const-string v13, "google_aid"

    .line 715
    .line 716
    .line 717
    invoke-interface {v12, v13, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 718
    .line 719
    :cond_1b
    if-eqz v10, :cond_1c

    .line 720
    .line 721
    const-string v6, "app_language"

    .line 722
    .line 723
    .line 724
    invoke-interface {v12, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 725
    .line 726
    :cond_1c
    if-eqz v11, :cond_1d

    .line 727
    .line 728
    const-string v6, "app_region"

    .line 729
    .line 730
    .line 731
    invoke-interface {v12, v6, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 732
    .line 733
    :cond_1d
    if-nez v10, :cond_1e

    .line 734
    .line 735
    if-nez v11, :cond_1e

    .line 736
    .line 737
    if-eqz v9, :cond_1f

    .line 738
    .line 739
    .line 740
    :cond_1e
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 741
    .line 742
    :catchall_1
    :cond_1f
    if-eqz v4, :cond_20

    .line 743
    .line 744
    .line 745
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 746
    move-result-object v4

    .line 747
    .line 748
    const-string v6, "mac_addr"

    .line 749
    .line 750
    sget-object v7, Lcom/ss/android/tea/common/deviceregister/e;->g:Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 754
    .line 755
    .line 756
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 757
    .line 758
    :cond_20
    const-string v4, "app_track"

    .line 759
    .line 760
    const-string v6, ""

    .line 761
    .line 762
    .line 763
    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 764
    move-result-object v0

    .line 765
    .line 766
    .line 767
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 768
    move-result v4

    .line 769
    .line 770
    if-eqz v4, :cond_21

    .line 771
    .line 772
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/e;->n:Ljava/lang/String;

    .line 773
    .line 774
    .line 775
    :cond_21
    :try_start_9
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 776
    move-result v4

    .line 777
    .line 778
    if-nez v4, :cond_22

    .line 779
    .line 780
    const-string v4, "app_track"

    .line 781
    .line 782
    new-instance v6, Lorg/json/JSONObject;

    .line 783
    .line 784
    .line 785
    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 786
    .line 787
    .line 788
    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 789
    goto :goto_12

    .line 790
    :catchall_2
    move-exception v0

    .line 791
    .line 792
    .line 793
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 794
    .line 795
    const-string v4, "RegistrationHeaderHelper"

    .line 796
    .line 797
    new-instance v6, Ljava/lang/StringBuilder;

    .line 798
    .line 799
    .line 800
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 801
    .line 802
    const-string v7, "init exception 5: "

    .line 803
    .line 804
    .line 805
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    .line 807
    .line 808
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 809
    .line 810
    .line 811
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 812
    move-result-object v0

    .line 813
    .line 814
    .line 815
    invoke-static {v4, v0}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    .line 817
    :cond_22
    :goto_12
    :try_start_a
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/e;->o:Lcom/ss/android/tea/common/deviceregister/d;

    .line 818
    .line 819
    if-eqz v0, :cond_23

    .line 820
    .line 821
    .line 822
    invoke-virtual {v0}, Lcom/ss/android/tea/common/deviceregister/d;->J()Ljava/lang/String;

    .line 823
    move-result-object v0

    .line 824
    .line 825
    sput-object v0, Lcom/ss/android/tea/common/deviceregister/e;->h:Ljava/lang/String;

    .line 826
    .line 827
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/e;->o:Lcom/ss/android/tea/common/deviceregister/d;

    .line 828
    .line 829
    .line 830
    invoke-virtual {v0}, Lcom/ss/android/tea/common/deviceregister/d;->F()Ljava/lang/String;

    .line 831
    move-result-object v0

    .line 832
    .line 833
    sput-object v0, Lcom/ss/android/tea/common/deviceregister/e;->i:Ljava/lang/String;

    .line 834
    .line 835
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/e;->o:Lcom/ss/android/tea/common/deviceregister/d;

    .line 836
    .line 837
    .line 838
    invoke-virtual {v0}, Lcom/ss/android/tea/common/deviceregister/d;->H()Ljava/lang/String;

    .line 839
    move-result-object v0

    .line 840
    .line 841
    sput-object v0, Lcom/ss/android/tea/common/deviceregister/e;->j:Ljava/lang/String;

    .line 842
    goto :goto_13

    .line 843
    :catch_6
    move-exception v0

    .line 844
    goto :goto_14

    .line 845
    .line 846
    :cond_23
    :goto_13
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/e;->h:Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 850
    move-result v0

    .line 851
    .line 852
    if-nez v0, :cond_24

    .line 853
    .line 854
    const-string v0, "install_id"

    .line 855
    .line 856
    sget-object v4, Lcom/ss/android/tea/common/deviceregister/e;->h:Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 860
    .line 861
    :cond_24
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/e;->i:Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 865
    move-result v0

    .line 866
    .line 867
    if-nez v0, :cond_25

    .line 868
    .line 869
    const-string v0, "device_id"

    .line 870
    .line 871
    sget-object v4, Lcom/ss/android/tea/common/deviceregister/e;->i:Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 875
    .line 876
    :cond_25
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/e;->j:Ljava/lang/String;

    .line 877
    .line 878
    .line 879
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 880
    move-result v0

    .line 881
    .line 882
    if-nez v0, :cond_26

    .line 883
    .line 884
    const-string v0, "ssid"

    .line 885
    .line 886
    sget-object v4, Lcom/ss/android/tea/common/deviceregister/e;->j:Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 890
    goto :goto_15

    .line 891
    .line 892
    .line 893
    :goto_14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 894
    .line 895
    const-string v4, "RegistrationHeaderHelper"

    .line 896
    .line 897
    new-instance v6, Ljava/lang/StringBuilder;

    .line 898
    .line 899
    .line 900
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 901
    .line 902
    const-string v7, "init exception 6: "

    .line 903
    .line 904
    .line 905
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    .line 907
    .line 908
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 909
    .line 910
    .line 911
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 912
    move-result-object v0

    .line 913
    .line 914
    .line 915
    invoke-static {v4, v0}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    .line 917
    .line 918
    :cond_26
    :goto_15
    :try_start_b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 919
    move-result-object v0

    .line 920
    .line 921
    .line 922
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 923
    move-result-object v0

    .line 924
    .line 925
    .line 926
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 927
    move-result v4

    .line 928
    .line 929
    if-nez v4, :cond_27

    .line 930
    .line 931
    const-string v4, "region"

    .line 932
    .line 933
    .line 934
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 935
    goto :goto_16

    .line 936
    :catchall_3
    move-exception v0

    .line 937
    goto :goto_17

    .line 938
    .line 939
    .line 940
    :cond_27
    :goto_16
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 941
    move-result-object v0

    .line 942
    .line 943
    .line 944
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    .line 945
    move-result-object v0

    .line 946
    .line 947
    .line 948
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 949
    move-result-object v0

    .line 950
    .line 951
    .line 952
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 953
    move-result v4

    .line 954
    .line 955
    if-nez v4, :cond_28

    .line 956
    .line 957
    .line 958
    const-string/jumbo v4, "tz_name"

    .line 959
    .line 960
    .line 961
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 962
    .line 963
    .line 964
    :cond_28
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 965
    move-result-object v0

    .line 966
    .line 967
    .line 968
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    .line 969
    move-result-object v0

    .line 970
    .line 971
    .line 972
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 973
    move-result-wide v6

    .line 974
    .line 975
    const-wide/16 v8, 0x3e8

    .line 976
    div-long/2addr v6, v8

    .line 977
    .line 978
    .line 979
    invoke-virtual {v0, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    .line 980
    move-result v0

    .line 981
    .line 982
    .line 983
    const-string/jumbo v4, "tz_offset"

    .line 984
    .line 985
    .line 986
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 987
    .line 988
    const-string v0, "phone"

    .line 989
    .line 990
    .line 991
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 992
    move-result-object v0

    .line 993
    .line 994
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 995
    .line 996
    .line 997
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    .line 998
    move-result-object v0

    .line 999
    .line 1000
    .line 1001
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 1002
    move-result v4

    .line 1003
    .line 1004
    if-nez v4, :cond_29

    .line 1005
    .line 1006
    const-string v4, "sim_region"

    .line 1007
    .line 1008
    .line 1009
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1010
    goto :goto_18

    .line 1011
    .line 1012
    :goto_17
    const-string v4, "RegistrationHeaderHelper"

    .line 1013
    .line 1014
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1015
    .line 1016
    .line 1017
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1018
    .line 1019
    const-string v7, "init exception 7: "

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1026
    .line 1027
    .line 1028
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1029
    move-result-object v0

    .line 1030
    .line 1031
    .line 1032
    invoke-static {v4, v0}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    .line 1034
    :cond_29
    :goto_18
    :try_start_c
    const-string v0, "header_custom"

    .line 1035
    .line 1036
    .line 1037
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1038
    move-result-object p0

    .line 1039
    .line 1040
    const-string v0, "header_custom_info"

    .line 1041
    .line 1042
    .line 1043
    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1044
    move-result-object v0

    .line 1045
    .line 1046
    if-eqz v0, :cond_2a

    .line 1047
    .line 1048
    .line 1049
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1050
    move-result v3

    .line 1051
    .line 1052
    if-lez v3, :cond_2a

    .line 1053
    .line 1054
    new-instance v3, Lorg/json/JSONObject;

    .line 1055
    .line 1056
    .line 1057
    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1058
    .line 1059
    .line 1060
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    .line 1061
    move-result v0

    .line 1062
    .line 1063
    if-lez v0, :cond_2a

    .line 1064
    .line 1065
    const-string v0, "custom"

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1069
    goto :goto_19

    .line 1070
    :catchall_4
    move-exception p0

    .line 1071
    goto :goto_1a

    .line 1072
    .line 1073
    .line 1074
    :cond_2a
    :goto_19
    const-string/jumbo v0, "user_unique_id"

    .line 1075
    .line 1076
    .line 1077
    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1078
    move-result-object p0

    .line 1079
    .line 1080
    .line 1081
    invoke-static {p0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 1082
    move-result v0

    .line 1083
    .line 1084
    if-nez v0, :cond_2b

    .line 1085
    .line 1086
    .line 1087
    const-string/jumbo v0, "user_unique_id"

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1091
    .line 1092
    .line 1093
    invoke-static {p0}, Lcom/ss/android/tea/common/deviceregister/d;->o(Ljava/lang/String;)V

    .line 1094
    goto :goto_1b

    .line 1095
    .line 1096
    .line 1097
    :cond_2b
    invoke-static {}, Lcom/ss/android/tea/common/deviceregister/a;->i()Ljava/lang/String;

    .line 1098
    move-result-object p0

    .line 1099
    .line 1100
    .line 1101
    invoke-static {p0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 1102
    move-result v0

    .line 1103
    .line 1104
    if-nez v0, :cond_2c

    .line 1105
    .line 1106
    .line 1107
    const-string/jumbo v0, "user_unique_id"

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1111
    goto :goto_1b

    .line 1112
    .line 1113
    :goto_1a
    const-string v0, "RegistrationHeaderHelper"

    .line 1114
    .line 1115
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1116
    .line 1117
    .line 1118
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1119
    .line 1120
    const-string v4, "init exception 8: "

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    .line 1125
    .line 1126
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1127
    .line 1128
    .line 1129
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1130
    move-result-object p0

    .line 1131
    .line 1132
    .line 1133
    invoke-static {v0, p0}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    .line 1135
    :cond_2c
    :goto_1b
    sget-object p0, Lcom/ss/android/tea/common/deviceregister/e;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1136
    .line 1137
    if-eqz p0, :cond_2e

    .line 1138
    .line 1139
    .line 1140
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 1141
    move-result-object p0

    .line 1142
    .line 1143
    .line 1144
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1145
    move-result-object p0

    .line 1146
    .line 1147
    .line 1148
    :cond_2d
    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 1149
    move-result v0

    .line 1150
    .line 1151
    if-eqz v0, :cond_2e

    .line 1152
    .line 1153
    .line 1154
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1155
    move-result-object v0

    .line 1156
    .line 1157
    check-cast v0, Ljava/util/Map$Entry;

    .line 1158
    .line 1159
    .line 1160
    :try_start_d
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1161
    move-result-object v3

    .line 1162
    .line 1163
    if-eqz v3, :cond_2d

    .line 1164
    .line 1165
    .line 1166
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1167
    move-result-object v3

    .line 1168
    .line 1169
    check-cast v3, Ljava/lang/String;

    .line 1170
    .line 1171
    .line 1172
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1173
    move-result-object v0

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_7

    .line 1177
    goto :goto_1c

    .line 1178
    :catch_7
    move-exception v0

    .line 1179
    .line 1180
    .line 1181
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1182
    goto :goto_1c

    .line 1183
    .line 1184
    :cond_2e
    sget-object p0, Lcom/ss/android/tea/common/deviceregister/e;->a:Ljava/lang/Object;

    .line 1185
    monitor-enter p0

    .line 1186
    .line 1187
    :try_start_e
    sput-object v1, Lcom/ss/android/tea/common/deviceregister/e;->b:Lorg/json/JSONObject;

    .line 1188
    .line 1189
    .line 1190
    invoke-static {v1, p1}, Lcom/ss/android/tea/common/deviceregister/e;->f(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 1191
    monitor-exit p0

    .line 1192
    return v2

    .line 1193
    :catchall_5
    move-exception p1

    .line 1194
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 1195
    throw p1

    .line 1196
    .line 1197
    :goto_1d
    const-string p1, "RegistrationHeaderHelper"

    .line 1198
    .line 1199
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1200
    .line 1201
    .line 1202
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1203
    .line 1204
    const-string v1, "init exception 1: "

    .line 1205
    .line 1206
    .line 1207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1208
    .line 1209
    .line 1210
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1211
    .line 1212
    .line 1213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1214
    move-result-object p0

    .line 1215
    .line 1216
    .line 1217
    invoke-static {p1, p0}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    return v3
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/ss/android/tea/common/deviceregister/e;->m:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "applog_stats"

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    .line 18
    const-string/jumbo v0, "user_agent"

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    .line 22
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    .line 25
    sput-object p0, Lcom/ss/android/tea/common/deviceregister/e;->m:Ljava/lang/String;

    .line 26
    .line 27
    :cond_0
    sget-object p0, Lcom/ss/android/tea/common/deviceregister/e;->m:Ljava/lang/String;

    .line 28
    return-object p0
.end method

.method private static i(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/ss/android/tea/common/deviceregister/e;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    :try_start_0
    const-string v0, "sig_hash"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    :cond_0
    :goto_0
    return-void
.end method

.method private static j(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    const-string v1, "phone"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 8
    .line 9
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 10
    .line 11
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 12
    .line 13
    .line 14
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    .line 15
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 16
    .line 17
    .line 18
    :try_start_2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    .line 19
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-object v2, v0

    .line 22
    goto :goto_0

    .line 23
    :catch_1
    move-object v1, v0

    .line 24
    move-object v2, v1

    .line 25
    .line 26
    :catch_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    :try_start_3
    invoke-static {}, Lt6/d;->h()Z

    .line 33
    move-result v3

    .line 34
    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    const-string v3, "MIUI-"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    goto :goto_1

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-static {}, Lt6/d;->j()Z

    .line 45
    move-result v3

    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    const-string v3, "FLYME-"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    goto :goto_1

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-static {}, Lt6/d;->d()Ljava/lang/String;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    .line 60
    invoke-static {v3}, Lt6/d;->c(Ljava/lang/String;)Z

    .line 61
    move-result v4

    .line 62
    .line 63
    if-eqz v4, :cond_2

    .line 64
    .line 65
    const-string v4, "EMUI-"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    move-result v4

    .line 73
    .line 74
    if-nez v4, :cond_3

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v3, "-"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    :cond_3
    :goto_1
    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    .line 89
    :catchall_0
    sget-object v3, Lcom/ss/android/tea/common/deviceregister/e;->o:Lcom/ss/android/tea/common/deviceregister/d;

    .line 90
    .line 91
    if-eqz v3, :cond_5

    .line 92
    .line 93
    .line 94
    :try_start_4
    invoke-virtual {v3}, Lcom/ss/android/tea/common/deviceregister/d;->u()Ljava/lang/String;

    .line 95
    move-result-object v3

    .line 96
    .line 97
    sget-object v4, Lcom/ss/android/tea/common/deviceregister/e;->o:Lcom/ss/android/tea/common/deviceregister/d;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4}, Lcom/ss/android/tea/common/deviceregister/d;->B()Ljava/lang/String;

    .line 101
    move-result-object v4

    .line 102
    .line 103
    .line 104
    invoke-static {v4}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 105
    move-result v5

    .line 106
    .line 107
    if-nez v5, :cond_4

    .line 108
    .line 109
    const-string v5, "clientudid"

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    goto :goto_2

    .line 114
    :catch_3
    move-exception v3

    .line 115
    goto :goto_3

    .line 116
    .line 117
    .line 118
    :cond_4
    :goto_2
    invoke-static {v3}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 119
    move-result v4

    .line 120
    .line 121
    if-nez v4, :cond_5

    .line 122
    .line 123
    const-string v4, "openudid"

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 127
    goto :goto_4

    .line 128
    .line 129
    .line 130
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 131
    .line 132
    .line 133
    :cond_5
    :goto_4
    :try_start_5
    invoke-static {v1}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 134
    move-result v3

    .line 135
    .line 136
    if-nez v3, :cond_6

    .line 137
    .line 138
    .line 139
    const-string/jumbo v3, "udid"

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    goto :goto_5

    .line 144
    :catch_4
    move-exception p0

    .line 145
    goto :goto_6

    .line 146
    .line 147
    .line 148
    :cond_6
    :goto_5
    invoke-static {v2}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 149
    move-result v1

    .line 150
    .line 151
    if-nez v1, :cond_7

    .line 152
    .line 153
    const-string v1, "carrier"

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    .line 158
    .line 159
    :cond_7
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 160
    move-result v1

    .line 161
    .line 162
    if-nez v1, :cond_8

    .line 163
    .line 164
    const-string v1, "mcc_mnc"

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    .line 169
    .line 170
    :cond_8
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    .line 171
    move-result v0

    .line 172
    .line 173
    if-lez v0, :cond_9

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    move-result-object p0

    .line 178
    .line 179
    sput-object p0, Lcom/ss/android/tea/common/deviceregister/e;->k:Ljava/lang/String;

    .line 180
    .line 181
    const-string v0, "rom"

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    .line 185
    goto :goto_7

    .line 186
    .line 187
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    const-string v0, "prepareUDID exception: "

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    move-result-object p0

    .line 203
    .line 204
    const-string p1, "RegistrationHeaderHelper"

    .line 205
    .line 206
    .line 207
    invoke-static {p1, p0}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_9
    :goto_7
    return-void
.end method
