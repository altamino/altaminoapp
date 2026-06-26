.class Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;
.super Lcom/narvii/flag/report/FlagRequestDialog;
.source "ChannelFlagHelper.java"


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

    .line 212
    iput-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 213
    const-class v0, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {p0, p2, v0}, Lcom/narvii/flag/report/FlagRequestDialog;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 284
    new-instance p2, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$1;

    invoke-direct {p2, p0}, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$1;-><init>(Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;)V

    iput-object p2, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->screenShotCheckRunnable:Ljava/lang/Runnable;

    .line 333
    new-instance p2, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3;

    invoke-direct {p2, p0}, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3;-><init>(Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;)V

    iput-object p2, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->callback:Lcom/narvii/video/pro/VideoPreProcessing$ProgressCallback;

    .line 214
    iget-object p2, p0, Lcom/narvii/flag/report/FlagRequestDialog;->edtRequest:Landroid/widget/EditText;

    const/high16 v0, -0x1000000

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 215
    iput-boolean p3, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->needSnapshot:Z

    .line 216
    iget-object p2, p0, Lcom/narvii/flag/report/FlagRequestDialog;->blockCheck:Landroid/widget/CheckBox;

    invoke-static {p1}, Lcom/narvii/chat/ChannelFlagHelper;->access$300(Lcom/narvii/chat/ChannelFlagHelper;)Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 217
    iget-object p2, p0, Lcom/narvii/flag/report/FlagRequestDialog;->blockLayout:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lcom/narvii/chat/ChannelFlagHelper;->access$300(Lcom/narvii/chat/ChannelFlagHelper;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;)V
    .locals 0

    .line 209
    invoke-direct {p0}, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->flagWithScreenShoot()V

    return-void
.end method

.method static synthetic access$2000(Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 209
    invoke-direct {p0, p1}, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->uploadCurFlagScreenShoot(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method private flagWithScreenShoot()V
    .locals 1

    .line 372
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 373
    new-instance v0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$4;

    invoke-direct {v0, p0}, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$4;-><init>(Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;)V

    invoke-static {v0}, Lcom/narvii/video/ui/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private uploadCurFlagScreenShoot(Lcom/narvii/util/Callback;)V
    .locals 4

    .line 297
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    invoke-static {v0}, Lcom/narvii/chat/ChannelFlagHelper;->access$800(Lcom/narvii/chat/ChannelFlagHelper;)Lcom/narvii/app/NVContext;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    invoke-static {v0}, Lcom/narvii/chat/ChannelFlagHelper;->access$800(Lcom/narvii/chat/ChannelFlagHelper;)Lcom/narvii/app/NVContext;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    goto :goto_0

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    invoke-static {v0}, Lcom/narvii/chat/ChannelFlagHelper;->access$800(Lcom/narvii/chat/ChannelFlagHelper;)Lcom/narvii/app/NVContext;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    invoke-static {v0}, Lcom/narvii/chat/ChannelFlagHelper;->access$800(Lcom/narvii/chat/ChannelFlagHelper;)Lcom/narvii/app/NVContext;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVActivity;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 304
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 308
    :cond_3
    invoke-static {v0}, Lcom/narvii/util/image/Screenshot;->takeScreenshot(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 309
    iget-object v2, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    invoke-static {v2}, Lcom/narvii/chat/ChannelFlagHelper;->access$800(Lcom/narvii/chat/ChannelFlagHelper;)Lcom/narvii/app/NVContext;

    move-result-object v2

    const-string v3, "photo"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/photos/PhotoManager;

    .line 310
    new-instance v3, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$2;

    invoke-direct {v3, p0, p1}, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$2;-><init>(Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;Lcom/narvii/util/Callback;)V

    const-string p1, "flag-image"

    invoke-virtual {v2, v1, v0, p1, v3}, Lcom/narvii/photos/PhotoManager;->upload(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/narvii/photos/PhotoUploadListener;)V

    return-void
.end method


# virtual methods
.method public createApiRequestBuilder(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;
    .locals 5

    .line 222
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    invoke-static {v0}, Lcom/narvii/chat/ChannelFlagHelper;->access$000(Lcom/narvii/chat/ChannelFlagHelper;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    const/16 v1, 0xc9

    invoke-static {v0, v1}, Lcom/narvii/chat/ChannelFlagHelper;->access$002(Lcom/narvii/chat/ChannelFlagHelper;I)I

    .line 225
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    invoke-static {v1}, Lcom/narvii/chat/ChannelFlagHelper;->access$500(Lcom/narvii/chat/ChannelFlagHelper;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/flag"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 226
    invoke-static {v1}, Lcom/narvii/chat/ChannelFlagHelper;->access$400(Lcom/narvii/chat/ChannelFlagHelper;)Lcom/narvii/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "objectId"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 227
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "objectType"

    invoke-virtual {v0, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 228
    invoke-static {v1}, Lcom/narvii/chat/ChannelFlagHelper;->access$000(Lcom/narvii/chat/ChannelFlagHelper;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "flagType"

    invoke-virtual {v0, v4, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 229
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    .line 230
    iget-object v4, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    invoke-static {v4}, Lcom/narvii/chat/ChannelFlagHelper;->access$600(Lcom/narvii/chat/ChannelFlagHelper;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/16 v2, 0xc

    .line 231
    invoke-virtual {v1, v3, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 232
    iget-object v2, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    invoke-static {v2}, Lcom/narvii/chat/ChannelFlagHelper;->access$700(Lcom/narvii/chat/ChannelFlagHelper;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 233
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 234
    new-instance v3, Lcom/narvii/model/Media;

    invoke-direct {v3}, Lcom/narvii/model/Media;-><init>()V

    const/16 v4, 0x64

    .line 235
    iput v4, v3, Lcom/narvii/model/Media;->type:I

    .line 236
    iget-object v4, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    invoke-static {v4}, Lcom/narvii/chat/ChannelFlagHelper;->access$700(Lcom/narvii/chat/ChannelFlagHelper;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    const/4 v4, 0x0

    .line 237
    iput-object v4, v3, Lcom/narvii/model/Media;->caption:Ljava/lang/String;

    .line 238
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/JacksonUtils;->createArrayNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v2

    const-string v3, "mediaList"

    .line 240
    invoke-virtual {v1, v3, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    :cond_1
    const-string v2, "refObject"

    .line 242
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v1, "message"

    .line 243
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    return-object v0
.end method

.method public execPreBlockRequest()V
    .locals 4

    .line 277
    invoke-super {p0}, Lcom/narvii/flag/report/FlagRequestDialog;->execPreBlockRequest()V

    .line 278
    sget-object v0, Lcom/narvii/video/ui/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->screenShotCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 279
    invoke-static {}, Lcom/narvii/chat/ChannelFlagHelper;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "begin capture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    invoke-static {v0}, Lcom/narvii/chat/ChannelFlagHelper;->access$1300(Lcom/narvii/chat/ChannelFlagHelper;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    invoke-static {v1}, Lcom/narvii/chat/ChannelFlagHelper;->access$1200(Lcom/narvii/chat/ChannelFlagHelper;)I

    move-result v1

    iget-object v2, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->callback:Lcom/narvii/video/pro/VideoPreProcessing$ProgressCallback;

    invoke-virtual {v0, v1, v2}, Lcom/narvii/chat/rtc/RtcService;->captureVideoFrame(ILcom/narvii/video/pro/VideoPreProcessing$ProgressCallback;)V

    .line 281
    sget-object v0, Lcom/narvii/video/ui/Utils;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->screenShotCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public hasPreBlockRequest()Z
    .locals 1

    .line 263
    iget-boolean v0, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->needSnapshot:Z

    return v0
.end method

.method protected onBlockUser()V
    .locals 2

    .line 268
    invoke-super {p0}, Lcom/narvii/flag/report/FlagRequestDialog;->onBlockUser()V

    .line 269
    iget-object v0, p0, Lcom/narvii/flag/report/FlagRequestDialog;->blockCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    invoke-static {v0}, Lcom/narvii/chat/ChannelFlagHelper;->access$1000(Lcom/narvii/chat/ChannelFlagHelper;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    invoke-static {v0}, Lcom/narvii/chat/ChannelFlagHelper;->access$800(Lcom/narvii/chat/ChannelFlagHelper;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "rtc"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 271
    iget-object v1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    invoke-static {v1}, Lcom/narvii/chat/ChannelFlagHelper;->access$400(Lcom/narvii/chat/ChannelFlagHelper;)Lcom/narvii/model/User;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    invoke-static {v1}, Lcom/narvii/chat/ChannelFlagHelper;->access$400(Lcom/narvii/chat/ChannelFlagHelper;)Lcom/narvii/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/chat/rtc/RtcService;->addMutedUser(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onSendRequest()V
    .locals 3

    .line 249
    invoke-super {p0}, Lcom/narvii/flag/report/FlagRequestDialog;->onSendRequest()V

    return-void
.end method

.method public showBlockUser()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
