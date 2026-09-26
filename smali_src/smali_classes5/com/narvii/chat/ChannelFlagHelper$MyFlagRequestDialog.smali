.class Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;
.super Lcom/narvii/flag/report/FlagRequestDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/ChannelFlagHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyFlagRequestDialog"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/flag/report/FlagRequestDialog<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field callback:Lcom/narvii/video/pro/VideoPreProcessing$ProgressCallback;

.field private needSnapshot:Z

.field private screenShotCheckRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/narvii/chat/ChannelFlagHelper;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/ChannelFlagHelper;Landroid/content/Context;Z)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 3
    .line 4
    const-class v0, Lcom/narvii/model/api/ApiResponse;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2, v0}, Lcom/narvii/flag/report/FlagRequestDialog;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    .line 9
    new-instance p2, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$1;

    .line 10
    .line 11
    .line 12
    invoke-direct {p2, p0}, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$1;-><init>(Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;)V

    .line 13
    .line 14
    iput-object p2, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->screenShotCheckRunnable:Ljava/lang/Runnable;

    .line 15
    .line 16
    new-instance p2, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3;

    .line 17
    .line 18
    .line 19
    invoke-direct {p2, p0}, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3;-><init>(Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;)V

    .line 20
    .line 21
    iput-object p2, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->callback:Lcom/narvii/video/pro/VideoPreProcessing$ProgressCallback;

    .line 22
    .line 23
    iget-object p2, p0, Lcom/narvii/flag/report/FlagRequestDialog;->edtRequest:Landroid/widget/EditText;

    .line 24
    .line 25
    const/high16 v0, -0x1000000

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    .line 30
    iput-boolean p3, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->needSnapshot:Z

    .line 31
    .line 32
    iget-object p2, p0, Lcom/narvii/flag/report/FlagRequestDialog;->blockCheck:Landroid/widget/CheckBox;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/narvii/chat/ChannelFlagHelper;->j(Lcom/narvii/chat/ChannelFlagHelper;)Z

    .line 36
    move-result p3

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 40
    .line 41
    iget-object p2, p0, Lcom/narvii/flag/report/FlagRequestDialog;->blockLayout:Landroid/widget/RelativeLayout;

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Lcom/narvii/chat/ChannelFlagHelper;->j(Lcom/narvii/chat/ChannelFlagHelper;)Z

    .line 45
    move-result p1

    .line 46
    .line 47
    if-eqz p1, :cond_0

    .line 48
    const/4 p1, 0x0

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_0
    const/16 p1, 0x8

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->flagWithScreenShoot()V

    return-void
.end method

.method static bridge synthetic c(Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->uploadCurFlagScreenShoot(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private flagWithScreenShoot()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 8
    .line 9
    new-instance v0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$4;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$4;-><init>(Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    .line 16
    return-void
.end method

.method private uploadCurFlagScreenShoot(Lcom/narvii/util/Callback;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/ChannelFlagHelper;->d(Lcom/narvii/chat/ChannelFlagHelper;)Lcom/narvii/app/NVContext;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    instance-of v0, v0, Lcom/narvii/app/NVFragment;

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/narvii/chat/ChannelFlagHelper;->d(Lcom/narvii/chat/ChannelFlagHelper;)Lcom/narvii/app/NVContext;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/narvii/chat/ChannelFlagHelper;->d(Lcom/narvii/chat/ChannelFlagHelper;)Lcom/narvii/app/NVContext;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/narvii/chat/ChannelFlagHelper;->d(Lcom/narvii/chat/ChannelFlagHelper;)Lcom/narvii/app/NVContext;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move-object v0, v1

    .line 45
    .line 46
    :goto_0
    if-nez v0, :cond_3

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 54
    :cond_2
    return-void

    .line 55
    .line 56
    .line 57
    :cond_3
    invoke-static {v0}, Lcom/narvii/util/image/Screenshot;->takeScreenshot(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    iget-object v2, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 61
    .line 62
    .line 63
    invoke-static {v2}, Lcom/narvii/chat/ChannelFlagHelper;->d(Lcom/narvii/chat/ChannelFlagHelper;)Lcom/narvii/app/NVContext;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    const-string v3, "photo"

    .line 67
    .line 68
    .line 69
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    move-result-object v2

    .line 71
    .line 72
    check-cast v2, Lcom/narvii/photos/PhotoManager;

    .line 73
    .line 74
    new-instance v3, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$2;

    .line 75
    .line 76
    .line 77
    invoke-direct {v3, p0, p1}, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$2;-><init>(Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;Lcom/narvii/util/Callback;)V

    .line 78
    .line 79
    const-string p1, "flag-image"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/narvii/photos/PhotoManager;->upload(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/narvii/photos/PhotoUploadListener;)V

    .line 83
    return-void
.end method


# virtual methods
.method public createApiRequestBuilder(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/ChannelFlagHelper;->e(Lcom/narvii/chat/ChannelFlagHelper;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    const/16 v1, 0xc8

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 13
    .line 14
    const/16 v1, 0xc9

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/narvii/chat/ChannelFlagHelper;->n(Lcom/narvii/chat/ChannelFlagHelper;I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Lcom/narvii/chat/ChannelFlagHelper;->c(Lcom/narvii/chat/ChannelFlagHelper;)I

    .line 31
    move-result v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    const-string v1, "/flag"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Lcom/narvii/chat/ChannelFlagHelper;->m(Lcom/narvii/chat/ChannelFlagHelper;)Lcom/narvii/model/User;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    const-string v2, "objectId"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 57
    move-result-object v0

    .line 58
    const/4 v1, 0x0

    .line 59
    .line 60
    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    const-string v3, "objectType"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    iget-object v1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 71
    .line 72
    .line 73
    invoke-static {v1}, Lcom/narvii/chat/ChannelFlagHelper;->e(Lcom/narvii/chat/ChannelFlagHelper;)I

    .line 74
    move-result v1

    .line 75
    .line 76
    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    const-string v4, "flagType"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v4, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    new-instance v1, Landroid/os/Bundle;

    .line 87
    .line 88
    .line 89
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 90
    .line 91
    iget-object v4, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 92
    .line 93
    .line 94
    invoke-static {v4}, Lcom/narvii/chat/ChannelFlagHelper;->k(Lcom/narvii/chat/ChannelFlagHelper;)Ljava/lang/String;

    .line 95
    move-result-object v4

    .line 96
    .line 97
    const-string v5, "chat_id"

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    const-string v4, ""

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    const-string v4, "type"

    .line 108
    .line 109
    const-string v5, "message"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    iget-object v4, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 115
    .line 116
    .line 117
    invoke-static {v4}, Lcom/narvii/chat/ChannelFlagHelper;->e(Lcom/narvii/chat/ChannelFlagHelper;)I

    .line 118
    move-result v4

    .line 119
    .line 120
    .line 121
    invoke-static {v4}, Lcom/narvii/flag/model/Flag;->getFlagTypeString(I)Ljava/lang/String;

    .line 122
    move-result-object v4

    .line 123
    .line 124
    const-string v6, "reason"

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 131
    move-result-object v4

    .line 132
    .line 133
    .line 134
    invoke-static {v4}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 135
    move-result-object v4

    .line 136
    .line 137
    const-string v6, "add_flag"

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v6, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 141
    .line 142
    .line 143
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 144
    move-result-object v1

    .line 145
    .line 146
    iget-object v4, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 147
    .line 148
    .line 149
    invoke-static {v4}, Lcom/narvii/chat/ChannelFlagHelper;->k(Lcom/narvii/chat/ChannelFlagHelper;)Ljava/lang/String;

    .line 150
    move-result-object v4

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, v2, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 154
    .line 155
    const/16 v2, 0xc

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v3, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 159
    .line 160
    iget-object v2, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 161
    .line 162
    .line 163
    invoke-static {v2}, Lcom/narvii/chat/ChannelFlagHelper;->h(Lcom/narvii/chat/ChannelFlagHelper;)Ljava/lang/String;

    .line 164
    move-result-object v2

    .line 165
    .line 166
    if-eqz v2, :cond_1

    .line 167
    .line 168
    new-instance v2, Ljava/util/ArrayList;

    .line 169
    .line 170
    .line 171
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .line 173
    new-instance v3, Lcom/narvii/model/Media;

    .line 174
    .line 175
    .line 176
    invoke-direct {v3}, Lcom/narvii/model/Media;-><init>()V

    .line 177
    .line 178
    const/16 v4, 0x64

    .line 179
    .line 180
    iput v4, v3, Lcom/narvii/model/Media;->type:I

    .line 181
    .line 182
    iget-object v4, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 183
    .line 184
    .line 185
    invoke-static {v4}, Lcom/narvii/chat/ChannelFlagHelper;->h(Lcom/narvii/chat/ChannelFlagHelper;)Ljava/lang/String;

    .line 186
    move-result-object v4

    .line 187
    .line 188
    iput-object v4, v3, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 189
    const/4 v4, 0x0

    .line 190
    .line 191
    iput-object v4, v3, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 198
    move-result-object v2

    .line 199
    .line 200
    .line 201
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->createArrayNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 202
    move-result-object v2

    .line 203
    .line 204
    const-string v3, "mediaList"

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v3, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 208
    .line 209
    :cond_1
    const-string v2, "refObject"

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v5, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 216
    return-object v0
.end method

.method public execPreBlockRequest()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/flag/report/FlagRequestDialog;->execPreBlockRequest()V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/video/ui/Utils;->handler:Landroid/os/Handler;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->screenShotCheckRunnable:Ljava/lang/Runnable;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/narvii/chat/ChannelFlagHelper;->w()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    const-string v2, "begin capture"

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lcom/narvii/chat/ChannelFlagHelper;->i(Lcom/narvii/chat/ChannelFlagHelper;)Lcom/narvii/chat/rtc/RtcService;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    iget-object v2, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 28
    .line 29
    .line 30
    invoke-static {v2}, Lcom/narvii/chat/ChannelFlagHelper;->l(Lcom/narvii/chat/ChannelFlagHelper;)I

    .line 31
    move-result v2

    .line 32
    .line 33
    iget-object v3, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->callback:Lcom/narvii/video/pro/VideoPreProcessing$ProgressCallback;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2, v3}, Lcom/narvii/chat/rtc/RtcService;->captureVideoFrame(ILcom/narvii/video/pro/VideoPreProcessing$ProgressCallback;)V

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->screenShotCheckRunnable:Ljava/lang/Runnable;

    .line 39
    .line 40
    const-wide/16 v2, 0x4e20

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    return-void
.end method

.method public hasPreBlockRequest()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->needSnapshot:Z

    return v0
.end method

.method protected onBlockUser()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/flag/report/FlagRequestDialog;->onBlockUser()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/flag/report/FlagRequestDialog;->blockCheck:Landroid/widget/CheckBox;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/narvii/chat/ChannelFlagHelper;->a(Lcom/narvii/chat/ChannelFlagHelper;)Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/narvii/chat/ChannelFlagHelper;->d(Lcom/narvii/chat/ChannelFlagHelper;)Lcom/narvii/app/NVContext;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    const-string v1, "rtc"

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lcom/narvii/chat/ChannelFlagHelper;->m(Lcom/narvii/chat/ChannelFlagHelper;)Lcom/narvii/model/User;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    if-nez v1, :cond_0

    .line 42
    const/4 v1, 0x0

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lcom/narvii/chat/ChannelFlagHelper;->m(Lcom/narvii/chat/ChannelFlagHelper;)Lcom/narvii/model/User;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->addMutedUser(Ljava/lang/String;)V

    .line 57
    :cond_1
    return-void
.end method

.method public onSendRequest()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/flag/report/FlagRequestDialog;->onSendRequest()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/chat/ChannelFlagHelper;->d(Lcom/narvii/chat/ChannelFlagHelper;)Lcom/narvii/app/NVContext;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "statistics"

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 18
    .line 19
    const-string v1, "User Flags Post"

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    const-string v1, "Flagged Posts Total"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Lcom/narvii/chat/ChannelFlagHelper;->b(Lcom/narvii/chat/ChannelFlagHelper;)I

    .line 35
    move-result v1

    .line 36
    const/4 v2, 0x5

    .line 37
    .line 38
    if-ne v1, v2, :cond_0

    .line 39
    .line 40
    const-string v1, "Screening Room"

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_0
    const-string v1, "VV Chat"

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 47
    return-void
.end method

.method public showBlockUser()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
