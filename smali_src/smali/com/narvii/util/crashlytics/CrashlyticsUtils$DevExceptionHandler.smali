.class Lcom/narvii/util/crashlytics/CrashlyticsUtils$DevExceptionHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/util/crashlytics/CrashlyticsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DevExceptionHandler"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private parent:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/util/crashlytics/CrashlyticsUtils$DevExceptionHandler;->parent:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/narvii/util/crashlytics/CrashlyticsUtils$DevExceptionHandler;->context:Landroid/content/Context;

    .line 12
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/narvii/logging/LogUtils;->getValidResumingPage()Lcom/narvii/app/NVContext;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-static {v1}, Lcom/narvii/logging/LogEvent;->builder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->appEvent()Lcom/narvii/logging/LogEvent$Builder;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/narvii/logging/LogEvent$Builder;->onlyInternalLogging()Lcom/narvii/logging/LogEvent$Builder;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    sget-object v2, Lcom/narvii/logging/ActType;->auto:Lcom/narvii/logging/ActType;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->actType(Lcom/narvii/logging/ActType;)Lcom/narvii/logging/LogEvent$Builder;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    sget-object v2, Lcom/narvii/logging/ActSemantic;->crash:Lcom/narvii/logging/ActSemantic;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->actSemantic(Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    const-string v2, "crashType"

    .line 46
    const/4 v3, 0x0

    .line 47
    .line 48
    .line 49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    const-string v2, "foreground"

    .line 57
    .line 58
    sget-boolean v3, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->foreground:Z

    .line 59
    .line 60
    .line 61
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v3

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2, v3}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    const-string v2, "crashId"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2, v0}, Lcom/narvii/logging/LogEvent$Builder;->extraParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/logging/LogEvent$Builder;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 76
    .line 77
    iget-object v0, p0, Lcom/narvii/util/crashlytics/CrashlyticsUtils$DevExceptionHandler;->context:Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    invoke-static {v0}, Lcom/narvii/util/Utils;->getAvailableFileDir(Landroid/content/Context;)Ljava/io/File;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    new-instance v1, Ljava/io/File;

    .line 84
    .line 85
    const-string v2, "CrashReport"

    .line 86
    .line 87
    .line 88
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 92
    .line 93
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 94
    .line 95
    .line 96
    const-string/jumbo v2, "yyyyMMdd-HHmmss"

    .line 97
    .line 98
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 99
    .line 100
    .line 101
    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 102
    .line 103
    new-instance v2, Ljava/util/Date;

    .line 104
    .line 105
    .line 106
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    new-instance v2, Ljava/io/File;

    .line 113
    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v4, ".log"

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v3

    .line 130
    .line 131
    .line 132
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 133
    .line 134
    new-instance v3, Ljava/io/PrintStream;

    .line 135
    .line 136
    .line 137
    invoke-direct {v3, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/File;)V

    .line 138
    .line 139
    new-instance v2, Ljava/util/Date;

    .line 140
    .line 141
    .line 142
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    .line 149
    .line 150
    .line 151
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 152
    move-result-object v2

    .line 153
    .line 154
    .line 155
    invoke-static {v2}, Lcom/narvii/util/crashlytics/DevLogger;->summary(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    .line 156
    move-result-object v2

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 160
    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    const-string v4, "foreground: "

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    sget-boolean v4, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->foreground:Z

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    move-result-object v2

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 182
    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    const-string v4, "oom: "

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    sget v4, Lcom/narvii/util/crashlytics/OomHelper;->oomCount:I

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    move-result-object v2

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    .line 216
    .line 217
    sget-object v2, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->devLogger:Lcom/narvii/util/crashlytics/DevLogger;

    .line 218
    .line 219
    if-eqz v2, :cond_1

    .line 220
    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    sget-object v4, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->devLogger:Lcom/narvii/util/crashlytics/DevLogger;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4, v2}, Lcom/narvii/util/crashlytics/DevLogger;->appendTo(Ljava/lang/StringBuilder;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    move-result-object v2

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    :cond_1
    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V

    .line 240
    .line 241
    .line 242
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 243
    move-result-object v2

    .line 244
    .line 245
    const-string v3, "_debug"

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2, v3}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 249
    move-result-object v2

    .line 250
    .line 251
    check-cast v2, Lcom/narvii/util/debug/DebugService;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2}, Lcom/narvii/util/debug/DebugService;->takeScreenshot()Landroid/graphics/Bitmap;

    .line 255
    move-result-object v2

    .line 256
    .line 257
    if-eqz v2, :cond_2

    .line 258
    .line 259
    new-instance v3, Ljava/io/File;

    .line 260
    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    const-string v0, ".jpg"

    .line 270
    .line 271
    .line 272
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    move-result-object v0

    .line 277
    .line 278
    .line 279
    invoke-direct {v3, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 280
    .line 281
    new-instance v0, Ljava/io/FileOutputStream;

    .line 282
    .line 283
    .line 284
    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 285
    .line 286
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 287
    .line 288
    const/16 v3, 0x50

    .line 289
    .line 290
    .line 291
    invoke-virtual {v2, v1, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    .line 296
    :catchall_0
    :cond_2
    iget-object v0, p0, Lcom/narvii/util/crashlytics/CrashlyticsUtils$DevExceptionHandler;->parent:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 297
    .line 298
    .line 299
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 300
    return-void
.end method
