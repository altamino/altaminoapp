.class Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/amino/page/PageItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPageItemClickListener"
.end annotation


# instance fields
.field level:I

.field final synthetic this$0:Lcom/narvii/drawer/DrawerHost;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost;I)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->level:I

    .line 8
    return-void
.end method

.method public static safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(Lcom/narvii/drawer/DrawerHost;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/drawer/DrawerHost;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/drawer/DrawerHost;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onItemClicked(ILcom/narvii/modulization/page/Page;)V
    .locals 9

    .line 1
    .line 2
    const-string/jumbo p1, "title"

    .line 3
    .line 4
    const-string v0, "Source"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/narvii/modulization/page/Page;->needSession()Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    const v3, 0xfa0001

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/narvii/drawer/DrawerHost;->account:Lcom/narvii/account/AccountService;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    new-instance p1, Landroid/content/Intent;

    .line 27
    .line 28
    iget-object p2, p0, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    const-class v0, Lcom/narvii/account/LoginActivity;

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .line 39
    sget-object p2, Lcom/narvii/account/LoginActivity$PromptType;->Required:Lcom/narvii/account/LoginActivity$PromptType;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 43
    move-result-object p2

    .line 44
    .line 45
    const-string v0, "promptType"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    iget-object p2, p0, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 51
    .line 52
    .line 53
    invoke-static {p2, p1}, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(Lcom/narvii/drawer/DrawerHost;Landroid/content/Intent;)V

    .line 54
    .line 55
    goto/16 :goto_2

    .line 56
    .line 57
    :cond_0
    const-string v1, "ndc://default"

    .line 58
    .line 59
    iget-object v4, p2, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v1

    .line 64
    .line 65
    const-string v4, "Left Side Panel"

    .line 66
    const/4 v5, 0x1

    .line 67
    .line 68
    if-eqz v1, :cond_1

    .line 69
    .line 70
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 71
    .line 72
    .line 73
    const p2, 0x10001

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Lcom/narvii/drawer/DrawerHost;->goHome(I)V

    .line 77
    .line 78
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v5}, Lcom/narvii/drawer/DrawerHost;->smoothScrollToTop(Z)V

    .line 82
    .line 83
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 84
    .line 85
    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    .line 86
    .line 87
    const-string/jumbo p2, "statistics"

    .line 88
    .line 89
    .line 90
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 94
    .line 95
    const-string p2, "Newsfeed Page Opened"

    .line 96
    .line 97
    .line 98
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v4}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 103
    move-result-object p1

    .line 104
    .line 105
    const-string p2, "Left Side Panel Newsfeed Icon Tapped Total"

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 109
    .line 110
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v3, v2}, Lcom/narvii/drawer/DrawerHost;->sendEvent(ILjava/lang/Object;)Z

    .line 114
    .line 115
    goto/16 :goto_2

    .line 116
    :cond_1
    const/4 v1, 0x0

    .line 117
    .line 118
    :try_start_0
    new-instance v6, Landroid/content/Intent;

    .line 119
    .line 120
    const-string v7, "android.intent.action.VIEW"

    .line 121
    .line 122
    iget-object v8, p2, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 126
    move-result-object v8

    .line 127
    .line 128
    .line 129
    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 133
    move-result v7

    .line 134
    .line 135
    if-nez v7, :cond_3

    .line 136
    .line 137
    iget v7, p0, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->level:I

    .line 138
    const/4 v8, 0x2

    .line 139
    .line 140
    if-ne v7, v8, :cond_2

    .line 141
    .line 142
    const-string v4, "Left Side Panel 2"

    .line 143
    goto :goto_0

    .line 144
    :catch_0
    move-exception p1

    .line 145
    .line 146
    goto/16 :goto_1

    .line 147
    .line 148
    .line 149
    :cond_2
    :goto_0
    invoke-virtual {v6, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    .line 151
    .line 152
    :cond_3
    invoke-virtual {v6, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 153
    move-result v0

    .line 154
    .line 155
    if-nez v0, :cond_4

    .line 156
    .line 157
    iget-object v0, p2, Lcom/narvii/modulization/page/Page;->alias:Ljava/lang/String;

    .line 158
    .line 159
    if-eqz v0, :cond_4

    .line 160
    .line 161
    .line 162
    invoke-virtual {v6, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    .line 164
    :cond_4
    const-string p1, "ndc://catalog"

    .line 165
    .line 166
    iget-object v0, p2, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    move-result p1

    .line 171
    .line 172
    if-eqz p1, :cond_5

    .line 173
    .line 174
    .line 175
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 176
    move-result-object p1

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 180
    move-result-object p1

    .line 181
    .line 182
    const-class v0, Lcom/narvii/catalog/CatalogWrapperActivity;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 186
    move-result-object v0

    .line 187
    .line 188
    .line 189
    invoke-virtual {v6, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    .line 191
    const-string p1, "isAllEntry"

    .line 192
    .line 193
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 194
    .line 195
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Lcom/narvii/modulization/CommunityConfigHelper;->isCatalogCutaionEnable()Z

    .line 199
    move-result v0

    .line 200
    xor-int/2addr v0, v5

    .line 201
    .line 202
    .line 203
    invoke-virtual {v6, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 204
    .line 205
    const-string p1, "fragment"

    .line 206
    .line 207
    const-class v0, Lcom/narvii/catalog/CatalogFragment;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 211
    move-result-object v0

    .line 212
    .line 213
    .line 214
    invoke-virtual {v6, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    .line 216
    :cond_5
    const-string p1, "ndc://stories"

    .line 217
    .line 218
    iget-object v0, p2, Lcom/narvii/modulization/page/Page;->url:Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    move-result p1

    .line 223
    .line 224
    if-eqz p1, :cond_6

    .line 225
    .line 226
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 227
    .line 228
    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    .line 229
    .line 230
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    .line 231
    .line 232
    if-eqz v0, :cond_6

    .line 233
    .line 234
    check-cast p1, Lcom/narvii/app/NVContext;

    .line 235
    .line 236
    sget-object v0, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    .line 237
    .line 238
    .line 239
    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    .line 240
    move-result-object p1

    .line 241
    .line 242
    const-string v0, "SideMenu"

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->page(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 246
    move-result-object p1

    .line 247
    .line 248
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 249
    .line 250
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->fakePVId:Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->pvId(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 254
    move-result-object p1

    .line 255
    .line 256
    const-string v0, "Stories"

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 260
    move-result-object p1

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 264
    .line 265
    :cond_6
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 266
    .line 267
    .line 268
    invoke-static {p1, v6}, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(Lcom/narvii/drawer/DrawerHost;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    goto :goto_2

    .line 270
    .line 271
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .line 276
    const-string v4, "fail to open page "

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    move-result-object p2

    .line 287
    .line 288
    .line 289
    invoke-static {p2, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    .line 291
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 295
    move-result-object p1

    .line 296
    .line 297
    .line 298
    const p2, 0x7f120815

    .line 299
    .line 300
    .line 301
    invoke-static {p1, p2, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 302
    move-result-object p1

    .line 303
    .line 304
    .line 305
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 306
    .line 307
    :goto_2
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$MyPageItemClickListener;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 308
    .line 309
    .line 310
    invoke-virtual {p1, v3, v2}, Lcom/narvii/drawer/DrawerHost;->sendEvent(ILjava/lang/Object;)Z

    .line 311
    return-void
.end method
