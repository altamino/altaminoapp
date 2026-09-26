.class public Lcom/ss/android/tea/common/applog/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/tea/common/applog/y$a;,
        Lcom/ss/android/tea/common/applog/y$b;
    }
.end annotation


# static fields
.field public static a:Lcom/ss/android/tea/common/applog/y$b;

.field public static b:Lcom/ss/android/tea/common/applog/y$a;

.field private static volatile c:Z

.field private static volatile d:Z

.field private static volatile e:I

.field private static f:Ljava/lang/Object;

.field private static g:Lcom/ss/android/tea/common/applog/o;


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
    sput-object v0, Lcom/ss/android/tea/common/applog/y;->f:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 4

    .line 1
    .line 2
    sget-boolean v0, Lcom/ss/android/tea/common/applog/y;->c:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    sget-object v0, Lcom/ss/android/tea/common/applog/y;->f:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 9
    .line 10
    :try_start_0
    const-string v1, "app_log_encrypt_switch_count"

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    const-string v1, "app_log_encrypt_faild_count"

    .line 18
    .line 19
    .line 20
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 21
    move-result v1

    .line 22
    .line 23
    sput v1, Lcom/ss/android/tea/common/applog/y;->e:I

    .line 24
    .line 25
    .line 26
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 27
    move-result-object p0

    .line 28
    .line 29
    const-string v1, "app_log_encrypt_faild_count"

    .line 30
    .line 31
    sget v2, Lcom/ss/android/tea/common/applog/y;->e:I

    .line 32
    const/4 v3, 0x1

    .line 33
    add-int/2addr v2, v3

    .line 34
    .line 35
    .line 36
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 37
    .line 38
    .line 39
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 40
    .line 41
    sput-boolean v3, Lcom/ss/android/tea/common/applog/y;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :catchall_0
    :try_start_1
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :catchall_1
    move-exception p0

    .line 45
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    throw p0
.end method

.method public static b(Ljava/lang/StringBuilder;Z)V
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lcom/ss/android/tea/common/applog/y;->b:Lcom/ss/android/tea/common/applog/y$a;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    goto :goto_2

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const/16 v1, 0x3f

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 17
    move-result v0

    .line 18
    .line 19
    if-gez v0, :cond_1

    .line 20
    .line 21
    const-string v0, "?"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_1
    const-string v0, "&"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    :goto_0
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, p1}, Lcom/ss/android/tea/common/applog/y;->f(Ljava/util/Map;Z)V

    .line 39
    .line 40
    new-instance p1, Ljava/util/ArrayList;

    .line 41
    .line 42
    .line 43
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    move-result v1

    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    move-result-object v1

    .line 62
    .line 63
    check-cast v1, Ljava/util/Map$Entry;

    .line 64
    .line 65
    new-instance v2, Landroid/util/Pair;

    .line 66
    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 69
    move-result-object v3

    .line 70
    .line 71
    .line 72
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    .line 76
    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    goto :goto_1

    .line 81
    .line 82
    :cond_2
    const-string v0, "UTF-8"

    .line 83
    .line 84
    .line 85
    invoke-static {p1, v0}, Lcom/bytedance/tea/common/utility/NetworkUtils;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_3
    :goto_2
    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .locals 4

    .line 1
    .line 2
    sget-boolean v0, Lcom/ss/android/tea/common/applog/y;->d:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    sget-object v0, Lcom/ss/android/tea/common/applog/y;->f:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 9
    .line 10
    :try_start_0
    const-string v1, "app_log_encrypt_switch_count"

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    .line 18
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 19
    move-result-object p0

    .line 20
    .line 21
    sget v1, Lcom/ss/android/tea/common/applog/y;->e:I

    .line 22
    const/4 v3, 0x2

    .line 23
    .line 24
    if-le v1, v3, :cond_1

    .line 25
    .line 26
    sget v1, Lcom/ss/android/tea/common/applog/y;->e:I

    .line 27
    sub-int/2addr v1, v3

    .line 28
    .line 29
    sput v1, Lcom/ss/android/tea/common/applog/y;->e:I

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_1
    sput v2, Lcom/ss/android/tea/common/applog/y;->e:I

    .line 33
    .line 34
    :goto_0
    const-string v1, "app_log_encrypt_faild_count"

    .line 35
    .line 36
    sget v2, Lcom/ss/android/tea/common/applog/y;->e:I

    .line 37
    .line 38
    .line 39
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 40
    .line 41
    .line 42
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 43
    const/4 p0, 0x1

    .line 44
    .line 45
    sput-boolean p0, Lcom/ss/android/tea/common/applog/y;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :catchall_0
    :try_start_1
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :catchall_1
    move-exception p0

    .line 49
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    throw p0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_0
    const-string/jumbo v0, "unknown"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    return v1

    .line 19
    .line 20
    :cond_1
    const-string v0, "Null"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    return v1

    .line 28
    :cond_2
    const/4 v0, 0x0

    .line 29
    move v2, v0

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 33
    move-result v3

    .line 34
    .line 35
    if-ge v2, v3, :cond_4

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 39
    move-result v3

    .line 40
    .line 41
    const/16 v4, 0x30

    .line 42
    .line 43
    if-eq v3, v4, :cond_3

    .line 44
    move v1, v0

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_4
    :goto_1
    return v1
.end method

.method public static f(Ljava/util/Map;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/ss/android/tea/common/applog/y;->b:Lcom/ss/android/tea/common/applog/y$a;

    .line 3
    .line 4
    if-eqz p0, :cond_e

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto/16 :goto_1

    .line 9
    .line 10
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-interface {v0}, Lcom/ss/android/tea/common/applog/y$a;->e()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lt6/d;->b(Landroid/content/Context;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    const-string v0, "PushService"

    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    const-string v3, "idmap = "

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/util/Map;)Ljava/lang/String;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v2}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-static {v1}, Lcom/ss/android/tea/common/deviceregister/a;->e(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 61
    .line 62
    .line 63
    :catch_0
    invoke-static {v1}, Lcom/ss/android/tea/common/deviceregister/a;->e(Ljava/util/Map;)V

    .line 64
    .line 65
    :cond_2
    :goto_0
    const-string v0, "install_id"

    .line 66
    .line 67
    .line 68
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    check-cast v0, Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 75
    move-result v2

    .line 76
    .line 77
    if-nez v2, :cond_3

    .line 78
    .line 79
    const-string v2, "iid"

    .line 80
    .line 81
    .line 82
    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    :cond_3
    const-string v0, "device_id"

    .line 85
    .line 86
    .line 87
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    move-result-object v2

    .line 89
    .line 90
    check-cast v2, Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    invoke-static {v2}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 94
    move-result v3

    .line 95
    .line 96
    if-nez v3, :cond_4

    .line 97
    .line 98
    .line 99
    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    :cond_4
    sget-object v0, Lcom/ss/android/tea/common/applog/y;->b:Lcom/ss/android/tea/common/applog/y$a;

    .line 102
    .line 103
    .line 104
    invoke-interface {v0}, Lcom/ss/android/tea/common/applog/y$a;->e()Landroid/content/Context;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    if-eqz v0, :cond_5

    .line 108
    .line 109
    .line 110
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/NetworkUtils;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    .line 114
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 115
    move-result v2

    .line 116
    .line 117
    if-nez v2, :cond_5

    .line 118
    .line 119
    const-string v2, "ac"

    .line 120
    .line 121
    .line 122
    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    :cond_5
    sget-object v0, Lcom/ss/android/tea/common/applog/y;->b:Lcom/ss/android/tea/common/applog/y$a;

    .line 125
    .line 126
    .line 127
    invoke-interface {v0}, Lcom/ss/android/tea/common/applog/y$a;->c()Ljava/lang/String;

    .line 128
    move-result-object v0

    .line 129
    .line 130
    if-eqz v0, :cond_6

    .line 131
    .line 132
    const-string v2, "channel"

    .line 133
    .line 134
    .line 135
    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    :cond_6
    sget-object v0, Lcom/ss/android/tea/common/applog/y;->b:Lcom/ss/android/tea/common/applog/y$a;

    .line 138
    .line 139
    .line 140
    invoke-interface {v0}, Lcom/ss/android/tea/common/applog/y$a;->b()I

    .line 141
    move-result v0

    .line 142
    .line 143
    .line 144
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 145
    move-result-object v0

    .line 146
    .line 147
    const-string v2, "aid"

    .line 148
    .line 149
    .line 150
    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    sget-object v0, Lcom/ss/android/tea/common/applog/y;->b:Lcom/ss/android/tea/common/applog/y$a;

    .line 153
    .line 154
    .line 155
    invoke-interface {v0}, Lcom/ss/android/tea/common/applog/y$a;->d()Ljava/lang/String;

    .line 156
    move-result-object v0

    .line 157
    .line 158
    if-eqz v0, :cond_7

    .line 159
    .line 160
    const-string v2, "app_name"

    .line 161
    .line 162
    .line 163
    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    :cond_7
    invoke-static {}, Lcom/ss/android/tea/common/applog/b;->i()I

    .line 167
    move-result v0

    .line 168
    .line 169
    .line 170
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 171
    move-result-object v0

    .line 172
    .line 173
    .line 174
    const-string/jumbo v2, "version_code"

    .line 175
    .line 176
    .line 177
    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    const-string/jumbo v0, "version_name"

    .line 181
    .line 182
    .line 183
    invoke-static {}, Lcom/ss/android/tea/common/applog/b;->j()Ljava/lang/String;

    .line 184
    move-result-object v2

    .line 185
    .line 186
    .line 187
    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    const-string v0, "device_platform"

    .line 190
    .line 191
    const-string v2, "android"

    .line 192
    .line 193
    .line 194
    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    if-eqz p1, :cond_8

    .line 197
    .line 198
    const-string p1, "ssmix"

    .line 199
    .line 200
    const-string v0, "a"

    .line 201
    .line 202
    .line 203
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    :cond_8
    const-string p1, "device_type"

    .line 206
    .line 207
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    const-string p1, "device_brand"

    .line 213
    .line 214
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 221
    move-result-object p1

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 225
    move-result-object p1

    .line 226
    .line 227
    const-string v0, "language"

    .line 228
    .line 229
    .line 230
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 233
    .line 234
    .line 235
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 236
    move-result-object p1

    .line 237
    .line 238
    const-string v0, "os_api"

    .line 239
    .line 240
    .line 241
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    :try_start_1
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 244
    .line 245
    if-eqz p1, :cond_9

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 249
    move-result v0

    .line 250
    .line 251
    const/16 v2, 0xa

    .line 252
    .line 253
    if-le v0, v2, :cond_9

    .line 254
    const/4 v0, 0x0

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 258
    move-result-object p1

    .line 259
    .line 260
    :cond_9
    const-string v0, "os_version"

    .line 261
    .line 262
    .line 263
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 264
    .line 265
    :catch_1
    sget-object p1, Lcom/ss/android/tea/common/applog/y;->b:Lcom/ss/android/tea/common/applog/y$a;

    .line 266
    .line 267
    .line 268
    invoke-interface {p1}, Lcom/ss/android/tea/common/applog/y$a;->a()Ljava/lang/String;

    .line 269
    move-result-object p1

    .line 270
    .line 271
    .line 272
    invoke-static {p1}, Lcom/ss/android/tea/common/applog/y;->e(Ljava/lang/String;)Z

    .line 273
    move-result v0

    .line 274
    .line 275
    if-nez v0, :cond_a

    .line 276
    .line 277
    .line 278
    const-string/jumbo v0, "uuid"

    .line 279
    .line 280
    .line 281
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    :cond_a
    const-string p1, "openudid"

    .line 284
    .line 285
    .line 286
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    move-result-object v0

    .line 288
    .line 289
    check-cast v0, Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 293
    move-result v1

    .line 294
    .line 295
    if-nez v1, :cond_b

    .line 296
    .line 297
    .line 298
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    :cond_b
    invoke-static {}, Lcom/ss/android/tea/common/applog/b;->i()I

    .line 302
    move-result p1

    .line 303
    .line 304
    .line 305
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 306
    move-result-object p1

    .line 307
    .line 308
    const-string v0, "manifest_version_code"

    .line 309
    .line 310
    .line 311
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    sget-object p1, Lcom/ss/android/tea/common/applog/y;->b:Lcom/ss/android/tea/common/applog/y$a;

    .line 314
    .line 315
    .line 316
    invoke-interface {p1}, Lcom/ss/android/tea/common/applog/y$a;->e()Landroid/content/Context;

    .line 317
    move-result-object p1

    .line 318
    .line 319
    .line 320
    invoke-static {p1}, Lcom/bytedance/tea/common/utility/e;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 321
    move-result-object p1

    .line 322
    .line 323
    .line 324
    invoke-static {p1}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 325
    move-result v0

    .line 326
    .line 327
    if-nez v0, :cond_c

    .line 328
    .line 329
    const-string v0, "resolution"

    .line 330
    .line 331
    .line 332
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    :cond_c
    sget-object p1, Lcom/ss/android/tea/common/applog/y;->b:Lcom/ss/android/tea/common/applog/y$a;

    .line 335
    .line 336
    .line 337
    invoke-interface {p1}, Lcom/ss/android/tea/common/applog/y$a;->e()Landroid/content/Context;

    .line 338
    move-result-object p1

    .line 339
    .line 340
    .line 341
    invoke-static {p1}, Lcom/bytedance/tea/common/utility/e;->d(Landroid/content/Context;)I

    .line 342
    move-result p1

    .line 343
    .line 344
    if-lez p1, :cond_d

    .line 345
    .line 346
    const-string v0, "dpi"

    .line 347
    .line 348
    .line 349
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 350
    move-result-object p1

    .line 351
    .line 352
    .line 353
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    :cond_d
    invoke-static {}, Lcom/ss/android/tea/common/applog/b;->i()I

    .line 357
    move-result p1

    .line 358
    .line 359
    .line 360
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 361
    move-result-object p1

    .line 362
    .line 363
    .line 364
    const-string/jumbo v0, "update_version_code"

    .line 365
    .line 366
    .line 367
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 371
    move-result-wide v0

    .line 372
    .line 373
    .line 374
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 375
    move-result-object p1

    .line 376
    .line 377
    const-string v0, "_rticket"

    .line 378
    .line 379
    .line 380
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    :cond_e
    :goto_1
    return-void
.end method

.method public static g(Ljava/lang/String;[BLandroid/content/Context;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    .line 4
    move-result p3

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    if-nez p3, :cond_4

    .line 8
    .line 9
    if-eqz p1, :cond_4

    .line 10
    array-length p3, p1

    .line 11
    .line 12
    if-gtz p3, :cond_0

    .line 13
    .line 14
    goto/16 :goto_2

    .line 15
    .line 16
    :cond_0
    new-instance p3, Ljava/io/ByteArrayOutputStream;

    .line 17
    .line 18
    const/16 v1, 0x2000

    .line 19
    .line 20
    .line 21
    invoke-direct {p3, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 22
    .line 23
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, p3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-static {p2}, Lcom/ss/android/tea/common/applog/y;->a(Landroid/content/Context;)V

    .line 40
    .line 41
    sget p3, Lcom/ss/android/tea/common/applog/y;->e:I

    .line 42
    const/4 v1, 0x3

    .line 43
    .line 44
    if-ge p3, v1, :cond_1

    .line 45
    array-length p3, p1

    .line 46
    .line 47
    .line 48
    invoke-static {p1, p3}, Lcom/bytedance/tea/frameworks/core/encrypt/TTEncryptUtils;->a([BI)[B

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-static {p2}, Lcom/ss/android/tea/common/applog/y;->c(Landroid/content/Context;)V

    .line 53
    const/4 p2, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 p2, 0x0

    .line 56
    .line 57
    :goto_0
    if-eqz p1, :cond_3

    .line 58
    .line 59
    if-eqz p2, :cond_3

    .line 60
    .line 61
    const/16 p2, 0x3f

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(I)I

    .line 65
    move-result p2

    .line 66
    .line 67
    if-gez p2, :cond_2

    .line 68
    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string p0, "?tt_data=a"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 85
    goto :goto_1

    .line 86
    .line 87
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string p0, "&tt_data=a"

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object p0

    .line 103
    .line 104
    :goto_1
    new-instance p2, Ljava/util/HashMap;

    .line 105
    .line 106
    .line 107
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 108
    .line 109
    const-string p3, "Content-Type"

    .line 110
    .line 111
    const-string v1, "application/octet-stream;tt-data=a"

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    invoke-static {}, Lcom/bytedance/tea/common/utility/NetworkClient;->getDefault()Lcom/bytedance/tea/common/utility/NetworkClient;

    .line 118
    move-result-object p3

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3, p0, p1, p2, v0}, Lcom/bytedance/tea/common/utility/NetworkClient;->post(Ljava/lang/String;[BLjava/util/Map;Lcom/bytedance/tea/common/utility/NetworkClient$a;)Ljava/lang/String;

    .line 122
    move-result-object p0

    .line 123
    return-object p0

    .line 124
    .line 125
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    .line 126
    .line 127
    const-string p1, "encrypt failed"

    .line 128
    .line 129
    .line 130
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 131
    throw p0

    .line 132
    :catchall_0
    move-exception p0

    .line 133
    .line 134
    :try_start_1
    const-string p1, "AppLog"

    .line 135
    .line 136
    new-instance p2, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    const-string p3, "compress with gzip exception: "

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object p0

    .line 152
    .line 153
    .line 154
    invoke-static {p1, p0}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 158
    return-object v0

    .line 159
    :catchall_1
    move-exception p0

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 163
    throw p0

    .line 164
    :cond_4
    :goto_2
    return-object v0
.end method

.method public static h(Lcom/ss/android/tea/common/applog/y$a;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ss/android/tea/common/applog/y;->b:Lcom/ss/android/tea/common/applog/y$a;

    return-void
.end method
