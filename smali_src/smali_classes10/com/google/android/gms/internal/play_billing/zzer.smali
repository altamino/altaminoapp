.class abstract Lcom/google/android/gms/internal/play_billing/zzer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/util/logging/Logger;

.field private static final zzb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/google/android/gms/internal/play_billing/zzee;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzer;->zza:Ljava/util/logging/Logger;

    .line 13
    .line 14
    const-string v0, "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader"

    .line 15
    .line 16
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzer;->zzb:Ljava/lang/String;

    .line 17
    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/zzej;
    .locals 11

    .line 1
    .line 2
    const-class v0, Lcom/google/android/gms/internal/play_billing/zzer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    const-class v2, Lcom/google/android/gms/internal/play_billing/zzej;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x1

    .line 14
    const/4 v4, 0x0

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzer;->zzb:Ljava/lang/String;

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 27
    move-result-object v5

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v2

    .line 32
    .line 33
    if-eqz v2, :cond_4

    .line 34
    const/4 v2, 0x2

    .line 35
    .line 36
    new-array v2, v2, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 40
    move-result-object v5

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 44
    move-result-object v5

    .line 45
    .line 46
    aput-object v5, v2, v4

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 50
    move-result-object v5

    .line 51
    .line 52
    aput-object v5, v2, v3

    .line 53
    .line 54
    const-string v5, "%s.BlazeGenerated%sLoader"

    .line 55
    .line 56
    .line 57
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    .line 61
    :goto_0
    :try_start_0
    invoke-static {v2, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 62
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 63
    .line 64
    :try_start_1
    new-array v5, v4, [Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 68
    move-result-object v2

    .line 69
    .line 70
    new-array v5, v4, [Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-result-object v2

    .line 75
    .line 76
    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzer;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    .line 77
    .line 78
    .line 79
    :try_start_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/zzer;->zza()Lcom/google/android/gms/internal/play_billing/zzej;

    .line 80
    move-result-object v2

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    move-result-object v2

    .line 85
    .line 86
    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzej;

    .line 87
    return-object v2

    .line 88
    :catch_0
    move-exception v2

    .line 89
    goto :goto_1

    .line 90
    :catch_1
    move-exception v2

    .line 91
    goto :goto_2

    .line 92
    :catch_2
    move-exception v2

    .line 93
    goto :goto_3

    .line 94
    :catch_3
    move-exception v2

    .line 95
    goto :goto_4

    .line 96
    .line 97
    :goto_1
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 98
    .line 99
    .line 100
    invoke-direct {v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 101
    throw v5

    .line 102
    .line 103
    :goto_2
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 104
    .line 105
    .line 106
    invoke-direct {v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 107
    throw v5

    .line 108
    .line 109
    :goto_3
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 110
    .line 111
    .line 112
    invoke-direct {v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 113
    throw v5

    .line 114
    .line 115
    :goto_4
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 116
    .line 117
    .line 118
    invoke-direct {v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 119
    throw v5
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    .line 120
    .line 121
    .line 122
    :catch_4
    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    .line 123
    move-result-object v0

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    new-instance v1, Ljava/util/ArrayList;

    .line 130
    .line 131
    .line 132
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .line 134
    .line 135
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    move-result v2

    .line 137
    .line 138
    if-eqz v2, :cond_1

    .line 139
    .line 140
    .line 141
    :try_start_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    move-result-object v2

    .line 143
    .line 144
    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzer;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/zzer;->zza()Lcom/google/android/gms/internal/play_billing/zzej;

    .line 148
    move-result-object v2

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    move-result-object v2

    .line 153
    .line 154
    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzej;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/util/ServiceConfigurationError; {:try_start_3 .. :try_end_3} :catch_5

    .line 158
    goto :goto_5

    .line 159
    :catch_5
    move-exception v2

    .line 160
    move-object v10, v2

    .line 161
    .line 162
    sget-object v5, Lcom/google/android/gms/internal/play_billing/zzer;->zza:Ljava/util/logging/Logger;

    .line 163
    .line 164
    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 168
    move-result-object v2

    .line 169
    .line 170
    const-string v7, "com.google.protobuf.GeneratedExtensionRegistryLoader"

    .line 171
    .line 172
    const-string v8, "load"

    .line 173
    .line 174
    const-string v9, "Unable to load "

    .line 175
    .line 176
    .line 177
    invoke-virtual {v9, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    move-result-object v9

    .line 179
    .line 180
    .line 181
    invoke-virtual/range {v5 .. v10}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    goto :goto_5

    .line 183
    .line 184
    .line 185
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 186
    move-result v0

    .line 187
    .line 188
    if-ne v0, v3, :cond_2

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 192
    move-result-object p0

    .line 193
    .line 194
    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzej;

    .line 195
    return-object p0

    .line 196
    .line 197
    .line 198
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 199
    move-result v0

    .line 200
    const/4 v2, 0x0

    .line 201
    .line 202
    if-nez v0, :cond_3

    .line 203
    return-object v2

    .line 204
    .line 205
    :cond_3
    :try_start_4
    const-string v0, "combine"

    .line 206
    .line 207
    new-array v5, v3, [Ljava/lang/Class;

    .line 208
    .line 209
    const-class v6, Ljava/util/Collection;

    .line 210
    .line 211
    aput-object v6, v5, v4

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 215
    move-result-object p0

    .line 216
    .line 217
    new-array v0, v3, [Ljava/lang/Object;

    .line 218
    .line 219
    aput-object v1, v0, v4

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    move-result-object p0

    .line 224
    .line 225
    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzej;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_6

    .line 226
    return-object p0

    .line 227
    :catch_6
    move-exception p0

    .line 228
    goto :goto_6

    .line 229
    :catch_7
    move-exception p0

    .line 230
    goto :goto_7

    .line 231
    :catch_8
    move-exception p0

    .line 232
    goto :goto_8

    .line 233
    .line 234
    :goto_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 235
    .line 236
    .line 237
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 238
    throw v0

    .line 239
    .line 240
    :goto_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 241
    .line 242
    .line 243
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 244
    throw v0

    .line 245
    .line 246
    :goto_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 247
    .line 248
    .line 249
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 250
    throw v0

    .line 251
    .line 252
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 256
    move-result-object p0

    .line 257
    .line 258
    .line 259
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 260
    throw v0
.end method


# virtual methods
.method protected abstract zza()Lcom/google/android/gms/internal/play_billing/zzej;
.end method
