.class Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;
.super Lcom/narvii/community/CommunityLaunchHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/app/ForwardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCommunityLaunchHelper"
.end annotation


# instance fields
.field cid:I

.field directOpen:Z

.field pendingIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/narvii/app/ForwardActivity;


# direct methods
.method public constructor <init>(Lcom/narvii/app/ForwardActivity;IZLandroid/content/Intent;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->cid:I

    .line 8
    .line 9
    iput-boolean p3, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->directOpen:Z

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->pendingIntent:Landroid/content/Intent;

    .line 12
    return-void
.end method

.method public static safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/app/NVActivity;
    .param p1, "p1"    # Landroid/content/Intent;
    .param p2, "p2"    # I

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/NVActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected onFail(ILjava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p1, v0, :cond_6

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->directOpen:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->updatedCommunity:Lcom/narvii/model/Community;

    .line 10
    .line 11
    iget p1, p1, Lcom/narvii/model/Community;->joinType:I

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->pendingIntent:Landroid/content/Intent;

    .line 16
    .line 17
    const-string p2, "__visitorMode"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 21
    .line 22
    const-string p2, "__forward"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 26
    .line 27
    iget-object p2, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p1}, Lcom/narvii/app/ForwardActivity;->startForward(Landroid/content/Intent;)V

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    .line 33
    .line 34
    const-string p2, "visitorMode"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVActivity;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    check-cast p1, Lcom/narvii/community/VisitorModeService;

    .line 41
    .line 42
    if-eqz p1, :cond_5

    .line 43
    .line 44
    iget p2, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->cid:I

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Lcom/narvii/community/VisitorModeService;->addVisitor(I)V

    .line 48
    .line 49
    iget-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper;->updatedCommunity:Lcom/narvii/model/Community;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lcom/narvii/community/VisitorModeService;->preloadThemePack(Lcom/narvii/model/Community;)V

    .line 53
    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :cond_0
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper;->updatedCommunity:Lcom/narvii/model/Community;

    .line 57
    .line 58
    iget p1, p1, Lcom/narvii/model/Community;->joinType:I

    .line 59
    const/4 p2, 0x2

    .line 60
    .line 61
    const-string v1, "__forwardInitTaskActivity"

    .line 62
    .line 63
    const-string v2, "_pushIntent"

    .line 64
    .line 65
    if-nez p1, :cond_3

    .line 66
    .line 67
    iget-object p1, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    .line 77
    const-string v3, "http"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result p1

    .line 82
    .line 83
    if-nez p1, :cond_1

    .line 84
    .line 85
    iget-object p1, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    const-string v3, "https"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    move-result p1

    .line 100
    .line 101
    if-eqz p1, :cond_3

    .line 102
    .line 103
    :cond_1
    const-class p1, Lcom/narvii/community/PreviewWebViewFragment;

    .line 104
    .line 105
    .line 106
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 107
    move-result-object p1

    .line 108
    .line 109
    iget-object v3, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 113
    move-result-object v3

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 117
    move-result-object v3

    .line 118
    .line 119
    const-string v4, "url"

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    .line 124
    iget-object v3, p0, Lcom/narvii/community/CommunityLaunchHelper;->updatedCommunity:Lcom/narvii/model/Community;

    .line 125
    .line 126
    iget v3, v3, Lcom/narvii/model/Community;->id:I

    .line 127
    .line 128
    const-string v4, "communityId"

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    .line 133
    iget-object v3, p0, Lcom/narvii/community/CommunityLaunchHelper;->updatedCommunity:Lcom/narvii/model/Community;

    .line 134
    .line 135
    iget v3, v3, Lcom/narvii/model/Community;->joinType:I

    .line 136
    .line 137
    const-string v4, "joinType"

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    .line 142
    iget-object v3, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v2}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    .line 146
    move-result v3

    .line 147
    .line 148
    if-eqz v3, :cond_2

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    .line 153
    .line 154
    :cond_2
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 155
    .line 156
    iget-object v0, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    .line 157
    .line 158
    .line 159
    invoke-static {v0, p1, p2}, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 160
    .line 161
    iget-object p1, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    .line 162
    .line 163
    iget-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper;->updatedCommunity:Lcom/narvii/model/Community;

    .line 164
    .line 165
    iget p2, p2, Lcom/narvii/model/Community;->id:I

    .line 166
    .line 167
    iput p2, p1, Lcom/narvii/app/ForwardActivity;->waitingForJoinCommunityId:I

    .line 168
    .line 169
    iget-object p2, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->pendingIntent:Landroid/content/Intent;

    .line 170
    .line 171
    iput-object p2, p1, Lcom/narvii/app/ForwardActivity;->waitingForJoinIntent:Landroid/content/Intent;

    .line 172
    goto :goto_0

    .line 173
    .line 174
    :cond_3
    const-class p1, Lcom/narvii/master/CommunityDetailFragment;

    .line 175
    .line 176
    .line 177
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 178
    move-result-object p1

    .line 179
    .line 180
    iget-object v3, p0, Lcom/narvii/community/CommunityLaunchHelper;->updatedCommunity:Lcom/narvii/model/Community;

    .line 181
    .line 182
    iget v3, v3, Lcom/narvii/model/Community;->id:I

    .line 183
    .line 184
    const-string v4, "id"

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 188
    .line 189
    iget-object v3, p0, Lcom/narvii/community/CommunityLaunchHelper;->updatedCommunity:Lcom/narvii/model/Community;

    .line 190
    .line 191
    .line 192
    invoke-static {v3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 193
    move-result-object v3

    .line 194
    .line 195
    const-string v4, "prefetch"

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    .line 200
    const-string v3, "joinOnly"

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 204
    .line 205
    iget-object v3, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3, v2}, Lcom/narvii/app/NVActivity;->getBooleanParam(Ljava/lang/String;)Z

    .line 209
    move-result v3

    .line 210
    .line 211
    if-eqz v3, :cond_4

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 215
    .line 216
    .line 217
    :cond_4
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 218
    .line 219
    iget-object v1, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    .line 220
    .line 221
    .line 222
    invoke-static {v1, p1, p2}, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->safedk_NVActivity_startActivityForResult_3bd852b2ea6021d0a4ba255e76a86115(Lcom/narvii/app/NVActivity;Landroid/content/Intent;I)V

    .line 223
    .line 224
    iget-object p1, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getContext()Landroid/content/Context;

    .line 228
    move-result-object p1

    .line 229
    .line 230
    .line 231
    const p2, 0x7f120d84

    .line 232
    .line 233
    .line 234
    invoke-static {p1, p2, v0}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 235
    move-result-object p1

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 239
    .line 240
    iget-object p1, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    .line 241
    .line 242
    iget-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper;->updatedCommunity:Lcom/narvii/model/Community;

    .line 243
    .line 244
    iget p2, p2, Lcom/narvii/model/Community;->id:I

    .line 245
    .line 246
    iput p2, p1, Lcom/narvii/app/ForwardActivity;->waitingForJoinCommunityId:I

    .line 247
    .line 248
    iget-object p2, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->pendingIntent:Landroid/content/Intent;

    .line 249
    .line 250
    iput-object p2, p1, Lcom/narvii/app/ForwardActivity;->waitingForJoinIntent:Landroid/content/Intent;

    .line 251
    .line 252
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    .line 253
    .line 254
    .line 255
    const p2, 0x7f010037

    .line 256
    .line 257
    .line 258
    const v0, 0x7f010038

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 262
    goto :goto_1

    .line 263
    .line 264
    :cond_6
    iget-object v0, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    .line 265
    .line 266
    .line 267
    const v1, 0x7f0d029e

    .line 268
    .line 269
    iput v1, v0, Lcom/narvii/app/ForwardActivity;->layoutId:I

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v1}, Lcom/narvii/app/ForwardActivity;->setContentView(I)V

    .line 273
    .line 274
    .line 275
    invoke-super {p0, p1, p2}, Lcom/narvii/community/CommunityLaunchHelper;->onFail(ILjava/lang/String;)V

    .line 276
    :goto_1
    return-void
.end method

.method protected onFinish()V
    .locals 5

    .line 1
    .line 2
    const-string v0, "Source"

    .line 3
    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->pendingIntent:Landroid/content/Intent;

    .line 5
    .line 6
    const-string v2, "__forward"

    .line 7
    const/4 v3, 0x1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v1}, Lcom/narvii/app/ForwardActivity;->startForward(Landroid/content/Intent;)V

    .line 16
    .line 17
    iget-object v2, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    .line 18
    .line 19
    .line 20
    const v3, 0x7f010037

    .line 21
    .line 22
    .line 23
    const v4, 0x7f010038

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    const-class v2, Lcom/narvii/amino/MainActivity;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 42
    move-result-object v3

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v2

    .line 51
    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    sget-object v0, Lcom/narvii/services/EnterCommunityHelper;->SOURCE:Lcom/narvii/util/statistics/TmpValue;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    .line 57
    .line 58
    const-string v2, "source"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVActivity;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_0
    const-string v2, "Link"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object v3

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    move-result v2

    .line 77
    .line 78
    if-eqz v2, :cond_1

    .line 79
    .line 80
    sget-object v2, Lcom/narvii/services/EnterCommunityHelper;->SOURCE:Lcom/narvii/util/statistics/TmpValue;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v0}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_0

    .line 89
    .line 90
    :catch_0
    iget-object v0, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    .line 91
    .line 92
    .line 93
    const v1, 0x7f0d029e

    .line 94
    .line 95
    iput v1, v0, Lcom/narvii/app/ForwardActivity;->layoutId:I

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lcom/narvii/app/ForwardActivity;->setContentView(I)V

    .line 99
    :cond_1
    :goto_0
    return-void
.end method

.method protected onProgress(IF)V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->this$0:Lcom/narvii/app/ForwardActivity;

    .line 6
    .line 7
    .line 8
    const v0, 0x7f0a0e51

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    instance-of v0, p1, Landroid/widget/TextView;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    move-object v0, p1

    .line 18
    .line 19
    check-cast v0, Landroid/widget/TextView;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    const/high16 v2, 0x42c80000    # 100.0f

    .line 27
    mul-float/2addr p2, v2

    .line 28
    float-to-int p2, p2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string p2, "%"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p2

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const/4 p2, 0x0

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 48
    :cond_0
    return-void
.end method

.method protected updateCommunityWhenNotJoined()Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/app/ForwardActivity$MyCommunityLaunchHelper;->directOpen:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper;->updatedCommunity:Lcom/narvii/model/Community;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v0, v0, Lcom/narvii/model/Community;->joinType:I

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method
