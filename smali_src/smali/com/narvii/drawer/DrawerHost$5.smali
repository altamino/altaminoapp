.class Lcom/narvii/drawer/DrawerHost$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/drawer/DrawerHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/drawer/DrawerHost;


# direct methods
.method constructor <init>(Lcom/narvii/drawer/DrawerHost;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/drawer/DrawerHost$5;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
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
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    sparse-switch p1, :sswitch_data_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :sswitch_0
    const-class p1, Lcom/narvii/search/SearchKeywordTabFragment;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$5;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 18
    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/narvii/drawer/DrawerHost$5;->safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(Lcom/narvii/drawer/DrawerHost;Landroid/content/Intent;)V

    .line 21
    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$5;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 25
    .line 26
    iget-object v0, p1, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    .line 27
    .line 28
    instance-of v0, v0, Lcom/narvii/app/NVContext;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lcom/narvii/drawer/DrawerHost;->m(Lcom/narvii/drawer/DrawerHost;)V

    .line 34
    .line 35
    new-instance p1, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$5;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    .line 44
    invoke-direct {p1, v0}, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$5;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    .line 49
    .line 50
    const-string v1, "rtc"

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;->canDrawOverlays()Z

    .line 60
    move-result v1

    .line 61
    const/4 v2, 0x1

    .line 62
    .line 63
    if-nez v1, :cond_0

    .line 64
    .line 65
    iget v1, v0, Lcom/narvii/chat/rtc/RtcService;->channelShowingMode:I

    .line 66
    .line 67
    if-eq v1, v2, :cond_0

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    if-eqz v1, :cond_0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    iget v1, v1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    .line 83
    move-result-object v3

    .line 84
    .line 85
    iget-object v3, v3, Lcom/narvii/chat/signalling/SignallingChannel;->threadId:Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1, v3}, Lcom/narvii/chat/rtc/RtcService;->exitLiveChannel(ILjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;->canDrawOverlays()Z

    .line 92
    move-result p1

    .line 93
    .line 94
    if-eqz p1, :cond_2

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getShowingWindowType()I

    .line 98
    move-result p1

    .line 99
    const/4 v1, -0x1

    .line 100
    .line 101
    if-ne p1, v1, :cond_2

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getPendingFloatingThreadId()Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    if-nez p1, :cond_2

    .line 108
    .line 109
    iget-object p1, v0, Lcom/narvii/chat/rtc/RtcService;->topActivity:Ljava/lang/ref/WeakReference;

    .line 110
    .line 111
    if-nez p1, :cond_1

    .line 112
    const/4 p1, 0x0

    .line 113
    goto :goto_0

    .line 114
    .line 115
    .line 116
    :cond_1
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 117
    move-result-object p1

    .line 118
    .line 119
    check-cast p1, Landroid/app/Activity;

    .line 120
    .line 121
    :goto_0
    instance-of v0, p1, Lcom/narvii/chat/ChatActivity;

    .line 122
    .line 123
    if-eqz v0, :cond_2

    .line 124
    .line 125
    check-cast p1, Lcom/narvii/chat/ChatActivity;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->isActivityResumed()Z

    .line 129
    move-result v0

    .line 130
    .line 131
    if-eqz v0, :cond_2

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/narvii/app/FragmentWrapperActivity;->getRootFragment()Landroidx/fragment/app/Fragment;

    .line 135
    move-result-object p1

    .line 136
    .line 137
    check-cast p1, Lcom/narvii/chat/ChatFragment;

    .line 138
    .line 139
    if-eqz p1, :cond_2

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/narvii/chat/ChatFragment;->tryShowLiveChannelFloating()V

    .line 143
    .line 144
    :cond_2
    new-instance p1, Landroid/content/Intent;

    .line 145
    .line 146
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$5;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 150
    move-result-object v0

    .line 151
    .line 152
    const-class v1, Lcom/narvii/master/MasterActivity;

    .line 153
    .line 154
    .line 155
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .line 157
    const-string v0, "exitCommunity"

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    .line 162
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$5;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 163
    .line 164
    iget-object v0, v0, Lcom/narvii/drawer/DrawerHost;->activity:Landroid/app/Activity;

    .line 165
    .line 166
    check-cast v0, Lcom/narvii/app/NVContext;

    .line 167
    .line 168
    .line 169
    invoke-static {v0, p1}, Lcom/narvii/master/MasterActivity;->backToMaster(Lcom/narvii/app/NVContext;Landroid/content/Intent;)Landroid/content/Intent;

    .line 170
    move-result-object p1

    .line 171
    .line 172
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$5;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 173
    .line 174
    .line 175
    const v1, 0x7f010034

    .line 176
    .line 177
    .line 178
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    move-result-object v1

    .line 180
    .line 181
    iput-object v1, v0, Lcom/narvii/drawer/DrawerHost;->overrideEnterAnim:Ljava/lang/Integer;

    .line 182
    .line 183
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$5;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 184
    .line 185
    .line 186
    const v1, 0x7f010035

    .line 187
    .line 188
    .line 189
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    move-result-object v1

    .line 191
    .line 192
    iput-object v1, v0, Lcom/narvii/drawer/DrawerHost;->overrideExitAnim:Ljava/lang/Integer;

    .line 193
    .line 194
    iget-object v0, p0, Lcom/narvii/drawer/DrawerHost$5;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 195
    .line 196
    .line 197
    invoke-static {v0, p1}, Lcom/narvii/drawer/DrawerHost$5;->safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(Lcom/narvii/drawer/DrawerHost;Landroid/content/Intent;)V

    .line 198
    .line 199
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$5;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 200
    .line 201
    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    .line 202
    .line 203
    const-string/jumbo v0, "statistics"

    .line 204
    .line 205
    .line 206
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 207
    move-result-object p1

    .line 208
    .line 209
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 210
    .line 211
    const-string v0, "Exits A Community"

    .line 212
    .line 213
    .line 214
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 215
    move-result-object p1

    .line 216
    .line 217
    const-string v0, "Exits A Community Total"

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 221
    goto :goto_1

    .line 222
    .line 223
    :sswitch_2
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$5;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 224
    .line 225
    iget-object p1, p1, Lcom/narvii/drawer/DrawerHost;->context:Lcom/narvii/app/NVContext;

    .line 226
    .line 227
    const-string v0, "config"

    .line 228
    .line 229
    .line 230
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 231
    move-result-object p1

    .line 232
    .line 233
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 234
    .line 235
    const-class v0, Lcom/narvii/master/CommunityDetailFragment;

    .line 236
    .line 237
    .line 238
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 239
    move-result-object v0

    .line 240
    .line 241
    const-string/jumbo v1, "showJoin"

    .line 242
    const/4 v2, 0x0

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 246
    .line 247
    const-string v1, "id"

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 251
    move-result p1

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    .line 256
    const-string p1, "Source"

    .line 257
    .line 258
    const-string v1, "Left Side Panel"

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    .line 263
    iget-object p1, p0, Lcom/narvii/drawer/DrawerHost$5;->this$0:Lcom/narvii/drawer/DrawerHost;

    .line 264
    .line 265
    .line 266
    invoke-static {p1, v0}, Lcom/narvii/drawer/DrawerHost$5;->safedk_DrawerHost_startActivity_d34fb7e23d870264231efd5f89afe921(Lcom/narvii/drawer/DrawerHost;Landroid/content/Intent;)V

    .line 267
    :cond_3
    :goto_1
    return-void

    nop

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    :sswitch_data_0
    .sparse-switch
        0x7f0a0109 -> :sswitch_2
        0x7f0a03a0 -> :sswitch_1
        0x7f0a0485 -> :sswitch_2
        0x7f0a048a -> :sswitch_1
        0x7f0a0492 -> :sswitch_0
        0x7f0a049c -> :sswitch_2
    .end sparse-switch
.end method
