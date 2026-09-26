.class Lcom/narvii/util/debug/DebugInfoFragment$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/debug/DebugInfoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/util/debug/DebugInfoFragment;

.field final synthetic val$clipboard:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/util/debug/DebugInfoFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/debug/DebugInfoFragment$1;->this$0:Lcom/narvii/util/debug/DebugInfoFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/util/debug/DebugInfoFragment$1;->val$clipboard:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/narvii/util/debug/DebugInfoFragment$1;->this$0:Lcom/narvii/util/debug/DebugInfoFragment;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    invoke-static {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    const-string v3, "advertisingId: "

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    .line 33
    move-result v2

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    const-string v2, "[disabled!]"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    :catch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    .line 49
    iget-object v3, p0, Lcom/narvii/util/debug/DebugInfoFragment$1;->this$0:Lcom/narvii/util/debug/DebugInfoFragment;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 53
    move-result-object v3

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    const-string v4, "android_id"

    .line 60
    .line 61
    .line 62
    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object v3

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lcom/ss/android/tea/common/applog/d;->d()Ljava/lang/String;

    .line 67
    move-result-object v4

    .line 68
    .line 69
    new-instance v5, Ljava/util/HashMap;

    .line 70
    .line 71
    .line 72
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-static {v5}, Lcom/ss/android/tea/common/applog/d;->c(Ljava/util/Map;)V

    .line 76
    const/4 v6, 0x0

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 80
    .line 81
    iget-object v6, p0, Lcom/narvii/util/debug/DebugInfoFragment$1;->this$0:Lcom/narvii/util/debug/DebugInfoFragment;

    .line 82
    .line 83
    .line 84
    invoke-static {v6}, Lcom/narvii/util/crashlytics/DevLogger;->summary(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    .line 85
    move-result-object v6

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v2, "androidId: "

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v2, "clipboard: "

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    iget-object v2, p0, Lcom/narvii/util/debug/DebugInfoFragment$1;->val$clipboard:Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string/jumbo v2, "tea_ssid: "

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 131
    move-result-object v2

    .line 132
    .line 133
    .line 134
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 135
    move-result-object v2

    .line 136
    .line 137
    .line 138
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    move-result v3

    .line 140
    .line 141
    if-eqz v3, :cond_1

    .line 142
    .line 143
    .line 144
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    move-result-object v3

    .line 146
    .line 147
    check-cast v3, Ljava/util/Map$Entry;

    .line 148
    .line 149
    .line 150
    const-string/jumbo v4, "tea_"

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 157
    move-result-object v4

    .line 158
    .line 159
    check-cast v4, Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v4, ": "

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 171
    move-result-object v3

    .line 172
    .line 173
    check-cast v3, Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    goto :goto_0

    .line 181
    .line 182
    .line 183
    :cond_1
    const-string/jumbo v1, "tea_ab_configs: "

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-static {}, Lcom/ss/android/tea/common/applog/d;->b()Lorg/json/JSONObject;

    .line 190
    move-result-object v1

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    move-result-object v1

    .line 198
    .line 199
    .line 200
    invoke-static {v1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    .line 201
    .line 202
    iget-object v1, p0, Lcom/narvii/util/debug/DebugInfoFragment$1;->this$0:Lcom/narvii/util/debug/DebugInfoFragment;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    move-result-object v2

    .line 207
    .line 208
    iput-object v2, v1, Lcom/narvii/util/debug/DebugInfoFragment;->simpleInfo:Ljava/lang/String;

    .line 209
    .line 210
    const-string v1, "\n\n\n"

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    iget-object v2, p0, Lcom/narvii/util/debug/DebugInfoFragment$1;->this$0:Lcom/narvii/util/debug/DebugInfoFragment;

    .line 216
    .line 217
    .line 218
    invoke-static {v2}, Lcom/narvii/util/crashlytics/DevLogger;->prefs(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    .line 219
    move-result-object v2

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    sget-object v1, Lcom/narvii/util/crashlytics/CrashlyticsUtils;->devLogger:Lcom/narvii/util/crashlytics/DevLogger;

    .line 228
    .line 229
    if-eqz v1, :cond_2

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, v0}, Lcom/narvii/util/crashlytics/DevLogger;->appendTo(Ljava/lang/StringBuilder;)V

    .line 233
    .line 234
    :cond_2
    iget-object v1, p0, Lcom/narvii/util/debug/DebugInfoFragment$1;->this$0:Lcom/narvii/util/debug/DebugInfoFragment;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    move-result-object v0

    .line 239
    .line 240
    iput-object v0, v1, Lcom/narvii/util/debug/DebugInfoFragment;->info:Ljava/lang/String;

    .line 241
    .line 242
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 243
    .line 244
    new-instance v1, Lcom/narvii/util/debug/DebugInfoFragment$1$1;

    .line 245
    .line 246
    .line 247
    invoke-direct {v1, p0}, Lcom/narvii/util/debug/DebugInfoFragment$1$1;-><init>(Lcom/narvii/util/debug/DebugInfoFragment$1;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 251
    return-void
.end method
