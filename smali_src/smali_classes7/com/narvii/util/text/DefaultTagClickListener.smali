.class public Lcom/narvii/util/text/DefaultTagClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/text/OnTagClickListener;


# static fields
.field public static final instance:Lcom/narvii/util/text/OnTagClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/text/DefaultTagClickListener;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/text/DefaultTagClickListener;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/narvii/util/text/DefaultTagClickListener;->instance:Lcom/narvii/util/text/OnTagClickListener;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
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

.method public static safedk_DefaultTagClickListener_startActivity_126d0229878165d186706706669a12b2(Lcom/narvii/util/text/DefaultTagClickListener;Landroid/view/View;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/util/text/DefaultTagClickListener;
    .param p1, "p1"    # Landroid/view/View;
    .param p2, "p2"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/util/text/DefaultTagClickListener;->startActivity(Landroid/view/View;Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/util/text/DefaultTagClickListener;->startActivity(Landroid/view/View;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Lcom/narvii/util/text/NVText;ILjava/lang/String;)V
    .locals 2

    .line 1
    const/4 p2, 0x1

    .line 2
    .line 3
    if-ne p3, p2, :cond_2

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    const/4 p2, 0x0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    .line 14
    invoke-static {p2}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    :goto_0
    if-eqz p2, :cond_9

    .line 18
    .line 19
    const-string p3, "config"

    .line 20
    .line 21
    .line 22
    invoke-interface {p2, p3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object p3

    .line 24
    .line 25
    check-cast p3, Lcom/narvii/config/ConfigService;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 29
    move-result p3

    .line 30
    .line 31
    const-string v0, "#"

    .line 32
    .line 33
    .line 34
    const-string/jumbo v1, "title"

    .line 35
    .line 36
    if-nez p3, :cond_1

    .line 37
    .line 38
    const-class p2, Lcom/narvii/master/search/GlobalHashTagFragment;

    .line 39
    .line 40
    .line 41
    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    const-string p3, "hashTag"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    new-instance p3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p3

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    invoke-static {p0, p1, p2}, Lcom/narvii/util/text/DefaultTagClickListener;->safedk_DefaultTagClickListener_startActivity_126d0229878165d186706706669a12b2(Lcom/narvii/util/text/DefaultTagClickListener;Landroid/view/View;Landroid/content/Intent;)V

    .line 69
    .line 70
    goto/16 :goto_3

    .line 71
    .line 72
    :cond_1
    if-lez p3, :cond_9

    .line 73
    .line 74
    new-instance p3, Lcom/narvii/community/CommunityHelper;

    .line 75
    .line 76
    .line 77
    invoke-direct {p3, p2}, Lcom/narvii/community/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3}, Lcom/narvii/community/CommunityHelper;->checkCurrentCommunityJoined()Z

    .line 81
    move-result p2

    .line 82
    .line 83
    if-eqz p2, :cond_9

    .line 84
    .line 85
    const-class p2, Lcom/narvii/search/SearchPagesFragment;

    .line 86
    .line 87
    .line 88
    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 89
    move-result-object p2

    .line 90
    .line 91
    const-string p3, "q"

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    .line 96
    new-instance p3, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object p3

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    .line 114
    .line 115
    invoke-static {p0, p1, p2}, Lcom/narvii/util/text/DefaultTagClickListener;->safedk_DefaultTagClickListener_startActivity_126d0229878165d186706706669a12b2(Lcom/narvii/util/text/DefaultTagClickListener;Landroid/view/View;Landroid/content/Intent;)V

    .line 116
    .line 117
    goto/16 :goto_3

    .line 118
    :cond_2
    const/4 v0, 0x5

    .line 119
    .line 120
    if-ne p3, v0, :cond_8

    .line 121
    .line 122
    const-string p3, "[Guidelines]"

    .line 123
    .line 124
    .line 125
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    move-result p3

    .line 127
    .line 128
    if-nez p3, :cond_4

    .line 129
    .line 130
    const-string p3, "[guidelines]"

    .line 131
    .line 132
    .line 133
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    move-result p3

    .line 135
    .line 136
    if-eqz p3, :cond_3

    .line 137
    goto :goto_1

    .line 138
    .line 139
    :cond_3
    const-string p3, "[TOS]"

    .line 140
    .line 141
    .line 142
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    move-result p3

    .line 144
    .line 145
    if-eqz p3, :cond_5

    .line 146
    .line 147
    const-string p4, "ndc://tos"

    .line 148
    goto :goto_2

    .line 149
    .line 150
    :cond_4
    :goto_1
    const-string p4, "ndc://guidelines"

    .line 151
    .line 152
    .line 153
    :cond_5
    :goto_2
    :try_start_0
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 154
    move-result-object p3

    .line 155
    .line 156
    const-string v0, "ndc://fragment"

    .line 157
    .line 158
    .line 159
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 160
    move-result p3

    .line 161
    .line 162
    if-eqz p3, :cond_6

    .line 163
    return-void

    .line 164
    .line 165
    .line 166
    :cond_6
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 167
    move-result-object p3

    .line 168
    .line 169
    .line 170
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 171
    move-result-object p3

    .line 172
    .line 173
    .line 174
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 175
    move-result-object v0

    .line 176
    .line 177
    .line 178
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 179
    move-result v0

    .line 180
    .line 181
    if-eqz v0, :cond_7

    .line 182
    .line 183
    new-instance p3, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    const-string v0, "http://"

    .line 189
    .line 190
    .line 191
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    move-result-object p3

    .line 199
    .line 200
    .line 201
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 202
    move-result-object p3

    .line 203
    .line 204
    :cond_7
    new-instance v0, Landroid/content/Intent;

    .line 205
    .line 206
    const-string v1, "android.intent.action.VIEW"

    .line 207
    .line 208
    .line 209
    invoke-direct {v0, v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 210
    .line 211
    const-string p3, "fromLink"

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 215
    .line 216
    const-string p2, "Source"

    .line 217
    .line 218
    const-string p3, "Link"

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    .line 223
    .line 224
    invoke-static {p0, p1, v0}, Lcom/narvii/util/text/DefaultTagClickListener;->safedk_DefaultTagClickListener_startActivity_126d0229878165d186706706669a12b2(Lcom/narvii/util/text/DefaultTagClickListener;Landroid/view/View;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    goto :goto_3

    .line 226
    .line 227
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    const-string p2, "fail to start activity for url: "

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    move-result-object p1

    .line 243
    .line 244
    .line 245
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 246
    goto :goto_3

    .line 247
    .line 248
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .line 253
    .line 254
    const-string/jumbo p2, "unknown tag type "

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    const-string p2, ", "

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    move-result-object p1

    .line 273
    .line 274
    .line 275
    invoke-static {p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 276
    :cond_9
    :goto_3
    return-void
.end method

.method protected startActivity(Landroid/view/View;Landroid/content/Intent;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/narvii/util/text/DefaultTagClickListener;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 8
    return-void
.end method
