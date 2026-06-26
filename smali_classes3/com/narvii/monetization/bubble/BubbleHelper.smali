.class public Lcom/narvii/monetization/bubble/BubbleHelper;
.super Ljava/lang/Object;
.source "BubbleHelper.java"


# instance fields
.field activeBubbleRequest:Lcom/narvii/util/http/ApiRequest;

.field bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

.field context:Lcom/narvii/app/NVContext;

.field private deleteBubbleRequest:Lcom/narvii/util/http/ApiRequest;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "bubble"

    .line 63
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/bubble/BubbleService;

    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/monetization/bubble/BubbleHelper;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->deleteBubbleRequest:Lcom/narvii/util/http/ApiRequest;

    return-object p0
.end method

.method static synthetic access$002(Lcom/narvii/monetization/bubble/BubbleHelper;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->deleteBubbleRequest:Lcom/narvii/util/http/ApiRequest;

    return-object p1
.end method

.method public static getChatMessageBubbleId(ZLcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatBubble;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    .line 494
    iget-object p0, p1, Lcom/narvii/model/ChatMessage;->chatBubbleId:Ljava/lang/String;

    return-object p0

    :cond_1
    if-eqz p2, :cond_3

    .line 498
    invoke-virtual {p2}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 499
    invoke-virtual {p2}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object p0

    const-string p1, "default"

    invoke-static {p0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    .line 502
    :cond_2
    invoke-virtual {p2}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 504
    :cond_3
    iget-object p0, p1, Lcom/narvii/model/ChatMessage;->chatBubbleId:Ljava/lang/String;

    return-object p0
.end method

.method public static getChatMessageBubbleVersion(ZLcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatBubble;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p0, :cond_1

    .line 513
    iget p0, p1, Lcom/narvii/model/ChatMessage;->chatBubbleVersion:I

    return p0

    :cond_1
    if-eqz p2, :cond_2

    .line 518
    invoke-virtual {p2}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object p0

    const-string v0, "default"

    invoke-static {p0, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 519
    invoke-virtual {p2}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 520
    invoke-virtual {p2}, Lcom/narvii/model/ChatBubble;->version()I

    move-result p0

    return p0

    .line 522
    :cond_2
    iget p0, p1, Lcom/narvii/model/ChatMessage;->chatBubbleVersion:I

    return p0
.end method


# virtual methods
.method protected changeBubbleActiveStatus(Lcom/narvii/model/ChatBubble;ZLcom/narvii/util/Callback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/ChatBubble;",
            "Z",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 211
    new-instance v6, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 212
    invoke-virtual {v6}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 213
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleHelper$7;

    invoke-direct {v0, p0}, Lcom/narvii/monetization/bubble/BubbleHelper$7;-><init>(Lcom/narvii/monetization/bubble/BubbleHelper;)V

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 223
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/narvii/util/http/ApiService;

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chat/chat-bubble/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v1, "/activate"

    goto :goto_0

    :cond_0
    const-string v1, "/deactivate"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->activeBubbleRequest:Lcom/narvii/util/http/ApiRequest;

    .line 226
    iget-object v8, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->activeBubbleRequest:Lcom/narvii/util/http/ApiRequest;

    new-instance v9, Lcom/narvii/monetization/bubble/BubbleHelper$8;

    const-class v2, Lcom/narvii/model/api/ApiResponse;

    move-object v0, v9

    move-object v1, p0

    move-object v3, p3

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/narvii/monetization/bubble/BubbleHelper$8;-><init>(Lcom/narvii/monetization/bubble/BubbleHelper;Ljava/lang/Class;Lcom/narvii/util/Callback;Lcom/narvii/model/ChatBubble;ZLcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v7, v8, v9}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public deleteBubble(Ljava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 321
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 322
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 323
    new-instance v1, Lcom/narvii/monetization/bubble/BubbleHelper$10;

    invoke-direct {v1, p0}, Lcom/narvii/monetization/bubble/BubbleHelper$10;-><init>(Lcom/narvii/monetization/bubble/BubbleHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 333
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chat/chat-bubble/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 335
    new-instance v2, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v2}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->deleteBubbleRequest:Lcom/narvii/util/http/ApiRequest;

    .line 336
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->deleteBubbleRequest:Lcom/narvii/util/http/ApiRequest;

    new-instance v2, Lcom/narvii/monetization/bubble/BubbleHelper$11;

    const-class v3, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v2, p0, v3, p2, v0}, Lcom/narvii/monetization/bubble/BubbleHelper$11;-><init>(Lcom/narvii/monetization/bubble/BubbleHelper;Ljava/lang/Class;Lcom/narvii/util/Callback;Lcom/narvii/util/dialog/ProgressDialog;)V

    invoke-virtual {v1, p1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public editChatBubble(Lcom/narvii/model/ChatBubble;)V
    .locals 2

    .line 253
    const-class v0, Lcom/narvii/monetization/bubble/BubbleEditFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 254
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "key_chat_bubble"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public getSlotLayParams(IIIIIIIIIIZ)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 15

    move/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    .line 369
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v7, 0x1

    const/4 v8, 0x6

    const/16 v9, 0x12

    const/16 v10, 0x13

    const/4 v11, 0x5

    const/4 v12, 0x7

    const/16 v13, 0x11

    const/4 v14, 0x0

    if-eq v1, v7, :cond_18

    const/4 v7, 0x2

    if-eq v1, v7, :cond_10

    const/4 v3, 0x3

    const/16 v7, 0x8

    if-eq v1, v3, :cond_8

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto/16 :goto_16

    .line 418
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v13, :cond_2

    if-eqz p11, :cond_1

    const/16 v9, 0x13

    .line 419
    :cond_1
    invoke-virtual {v6, v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    :cond_2
    if-eqz p11, :cond_3

    const/4 v11, 0x7

    .line 421
    :cond_3
    invoke-virtual {v6, v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 423
    :goto_0
    invoke-virtual {v6, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-eqz p11, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    neg-int v0, v4

    sub-int v0, v0, p9

    :goto_1
    if-eqz p11, :cond_5

    neg-int v1, v4

    sub-int v1, v1, p9

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 426
    :goto_2
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v1

    goto :goto_3

    :cond_6
    move v2, v0

    :goto_3
    iput v2, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 427
    iput v14, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 428
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    move v0, v1

    :goto_4
    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    neg-int v0, v5

    add-int v0, v0, p10

    .line 429
    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_16

    .line 403
    :cond_8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v13, :cond_a

    if-eqz p11, :cond_9

    goto :goto_5

    :cond_9
    const/16 v9, 0x13

    .line 404
    :goto_5
    invoke-virtual {v6, v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_7

    :cond_a
    if-eqz p11, :cond_b

    goto :goto_6

    :cond_b
    const/4 v11, 0x7

    .line 406
    :goto_6
    invoke-virtual {v6, v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 408
    :goto_7
    invoke-virtual {v6, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-eqz p11, :cond_c

    neg-int v0, v2

    add-int v0, v0, p9

    goto :goto_8

    :cond_c
    const/4 v0, 0x0

    :goto_8
    if-eqz p11, :cond_d

    const/4 v1, 0x0

    goto :goto_9

    :cond_d
    neg-int v1, v2

    add-int v1, v1, p9

    .line 411
    :goto_9
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_e

    move v2, v1

    goto :goto_a

    :cond_e
    move v2, v0

    :goto_a
    iput v2, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 412
    iput v14, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 413
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_b

    :cond_f
    move v0, v1

    :goto_b
    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    neg-int v0, v5

    add-int v0, v0, p10

    .line 414
    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_16

    .line 388
    :cond_10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v13, :cond_12

    if-eqz p11, :cond_11

    const/16 v9, 0x13

    .line 389
    :cond_11
    invoke-virtual {v6, v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_c

    :cond_12
    if-eqz p11, :cond_13

    const/4 v11, 0x7

    .line 391
    :cond_13
    invoke-virtual {v6, v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 393
    :goto_c
    invoke-virtual {v6, v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-eqz p11, :cond_14

    neg-int v0, v4

    sub-int v0, v0, p9

    goto :goto_d

    :cond_14
    const/4 v0, 0x0

    :goto_d
    if-eqz p11, :cond_15

    const/4 v1, 0x0

    goto :goto_e

    :cond_15
    neg-int v1, v4

    sub-int v1, v1, p9

    .line 396
    :goto_e
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_16

    move v2, v0

    goto :goto_f

    :cond_16
    move v2, v1

    :goto_f
    iput v2, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    neg-int v2, v3

    sub-int v2, v2, p10

    .line 397
    iput v2, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 398
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_17

    move v0, v1

    :cond_17
    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 399
    iput v14, v6, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_16

    .line 372
    :cond_18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v13, :cond_1a

    if-eqz p11, :cond_19

    goto :goto_10

    :cond_19
    const/16 v9, 0x13

    .line 373
    :goto_10
    invoke-virtual {v6, v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_12

    :cond_1a
    if-eqz p11, :cond_1b

    goto :goto_11

    :cond_1b
    const/4 v11, 0x7

    .line 375
    :goto_11
    invoke-virtual {v6, v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 377
    :goto_12
    invoke-virtual {v6, v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-eqz p11, :cond_1c

    const/4 v0, 0x0

    goto :goto_13

    :cond_1c
    neg-int v0, v2

    add-int v0, v0, p9

    :goto_13
    if-eqz p11, :cond_1d

    neg-int v1, v2

    add-int v1, v1, p9

    goto :goto_14

    :cond_1d
    const/4 v1, 0x0

    :goto_14
    neg-int v2, v3

    sub-int v2, v2, p10

    .line 381
    iput v2, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 382
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_1e

    move v2, v0

    goto :goto_15

    :cond_1e
    move v2, v1

    :goto_15
    iput v2, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 383
    iput v14, v6, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 384
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_1f

    move v0, v1

    :cond_1f
    iput v0, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    :goto_16
    return-object v6
.end method

.method public getSlotLayParams(IIIIIIZ)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 12

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p4

    move/from16 v7, p4

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    .line 361
    invoke-virtual/range {v0 .. v11}, Lcom/narvii/monetization/bubble/BubbleHelper;->getSlotLayParams(IIIIIIIIIIZ)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getSlotPadding(IILcom/narvii/model/BubbleInfo;)I
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 437
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/monetization/bubble/BubbleHelper;->getSlotPadding(IILcom/narvii/model/BubbleInfo;F)I

    move-result p1

    return p1
.end method

.method public getSlotPadding(IILcom/narvii/model/BubbleInfo;F)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p3, :cond_d

    .line 441
    iget-object v1, p3, Lcom/narvii/model/BubbleInfo;->slots:Ljava/util/List;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 444
    :cond_0
    iget-object p3, p3, Lcom/narvii/model/BubbleInfo;->slots:Ljava/util/List;

    int-to-float p2, p2

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float p2, p2, v1

    float-to-int p2, p2

    .line 446
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    iget v1, v1, Lcom/narvii/monetization/bubble/BubbleService;->scaleXY:F

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 449
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/BubbleSlot;

    .line 450
    iget v3, p3, Lcom/narvii/model/BubbleSlot;->align:I

    if-eq v3, v1, :cond_2

    if-ne v3, v2, :cond_1

    :cond_2
    neg-int v3, p2

    int-to-float v3, v3

    .line 451
    iget p3, p3, Lcom/narvii/model/BubbleSlot;->y:I

    int-to-float p3, p3

    iget-object v4, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    iget v4, v4, Lcom/narvii/monetization/bubble/BubbleService;->scaleXY:F

    mul-float p3, p3, v4

    mul-float p3, p3, p4

    sub-float/2addr v3, p3

    float-to-int p3, v3

    if-ge p3, v0, :cond_1

    move v0, p3

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    if-ne p1, v1, :cond_6

    .line 458
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/BubbleSlot;

    .line 459
    iget v1, p3, Lcom/narvii/model/BubbleSlot;->align:I

    if-eq v1, v2, :cond_5

    if-ne v1, v3, :cond_4

    :cond_5
    neg-int v1, p2

    int-to-float v1, v1

    .line 460
    iget p3, p3, Lcom/narvii/model/BubbleSlot;->x:I

    int-to-float p3, p3

    iget-object v4, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    iget v4, v4, Lcom/narvii/monetization/bubble/BubbleService;->scaleXY:F

    mul-float p3, p3, v4

    mul-float p3, p3, p4

    add-float/2addr v1, p3

    float-to-int p3, v1

    if-ge p3, v0, :cond_4

    move v0, p3

    goto :goto_1

    :cond_6
    const/4 v2, 0x4

    if-ne p1, v2, :cond_9

    .line 467
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/BubbleSlot;

    .line 468
    iget v1, p3, Lcom/narvii/model/BubbleSlot;->align:I

    if-eq v1, v3, :cond_8

    if-ne v1, v2, :cond_7

    :cond_8
    neg-int v1, p2

    int-to-float v1, v1

    .line 469
    iget p3, p3, Lcom/narvii/model/BubbleSlot;->y:I

    int-to-float p3, p3

    iget-object v4, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    iget v4, v4, Lcom/narvii/monetization/bubble/BubbleService;->scaleXY:F

    mul-float p3, p3, v4

    mul-float p3, p3, p4

    add-float/2addr v1, p3

    float-to-int p3, v1

    if-ge p3, v0, :cond_7

    move v0, p3

    goto :goto_2

    :cond_9
    if-ne p1, v3, :cond_c

    .line 476
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/model/BubbleSlot;

    .line 477
    iget v3, p3, Lcom/narvii/model/BubbleSlot;->align:I

    if-eq v3, v2, :cond_b

    if-ne v3, v1, :cond_a

    :cond_b
    neg-int v3, p2

    int-to-float v3, v3

    .line 478
    iget p3, p3, Lcom/narvii/model/BubbleSlot;->x:I

    int-to-float p3, p3

    iget-object v4, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    iget v4, v4, Lcom/narvii/monetization/bubble/BubbleService;->scaleXY:F

    mul-float p3, p3, v4

    mul-float p3, p3, p4

    sub-float/2addr v3, p3

    float-to-int p3, v3

    if-ge p3, v0, :cond_a

    move v0, p3

    goto :goto_3

    .line 485
    :cond_c
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    return p1

    :cond_d
    :goto_4
    return v0
.end method

.method public handleBubbleWrapNotification(Lcom/narvii/notification/Notification;Lcom/narvii/list/NVPagedAdapter;)V
    .locals 3

    .line 87
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;

    if-eqz v1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    check-cast v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;

    .line 92
    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "update"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iget v1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->action:I

    if-ne p1, v1, :cond_2

    .line 94
    new-instance p1, Lcom/narvii/notification/Notification;

    invoke-direct {p1}, Lcom/narvii/notification/Notification;-><init>()V

    .line 95
    iget-object v1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->chatBubble:Lcom/narvii/model/ChatBubble;

    iput-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 96
    invoke-virtual {v0}, Lcom/narvii/model/ChatBubbleNotificationWrapper;->id()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    .line 98
    iget-object v0, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->chatBubble:Lcom/narvii/model/ChatBubble;

    iget-boolean v0, v0, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "delete"

    .line 99
    iput-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 100
    invoke-virtual {p2, p1, v1}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {p2}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "new"

    .line 102
    iput-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 103
    invoke-virtual {p2, p1, v1}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClickEditBubbleButton(Lcom/narvii/model/ChatBubble;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 173
    :cond_0
    iget v0, p1, Lcom/narvii/model/ChatBubble;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    return-void

    .line 177
    :cond_1
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleHelper$5;

    invoke-direct {v0, p0, p1}, Lcom/narvii/monetization/bubble/BubbleHelper$5;-><init>(Lcom/narvii/monetization/bubble/BubbleHelper;Lcom/narvii/model/ChatBubble;)V

    new-instance v1, Lcom/narvii/monetization/bubble/BubbleHelper$6;

    invoke-direct {v1, p0, p1}, Lcom/narvii/monetization/bubble/BubbleHelper$6;-><init>(Lcom/narvii/monetization/bubble/BubbleHelper;Lcom/narvii/model/ChatBubble;)V

    invoke-virtual {p0, v0, v1}, Lcom/narvii/monetization/bubble/BubbleHelper;->showBubbleEditActionDialog(Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public sendApplyBubbleRequest(Lcom/narvii/model/ChatBubble;ZLjava/lang/String;Lcom/narvii/util/Callback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/model/ChatBubble;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_2

    const-string p1, "try to apply bubble while is empty"

    .line 265
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    if-eqz p4, :cond_1

    const/4 p1, 0x0

    .line 267
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 272
    :cond_2
    new-instance v3, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 273
    invoke-virtual {v3}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 276
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 277
    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object v1

    .line 278
    iget v2, p1, Lcom/narvii/model/ChatBubble;->type:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    const/4 v4, -0x2

    if-ne v2, v4, :cond_4

    :cond_3
    const/4 v1, 0x0

    :cond_4
    const-string v2, "bubbleId"

    .line 282
    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v1, "applyToAll"

    .line 283
    invoke-virtual {v0, v1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez p2, :cond_5

    const-string v1, "threadId"

    .line 285
    invoke-virtual {v0, v1, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 287
    :cond_5
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 288
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "chat/thread/apply-bubble"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v8

    .line 289
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/narvii/util/http/ApiService;

    .line 290
    new-instance v10, Lcom/narvii/monetization/bubble/BubbleHelper$9;

    const-class v2, Lcom/narvii/model/api/ApiResponse;

    move-object v0, v10

    move-object v1, p0

    move-object v4, p4

    move v5, p2

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/narvii/monetization/bubble/BubbleHelper$9;-><init>(Lcom/narvii/monetization/bubble/BubbleHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/util/Callback;ZLcom/narvii/model/ChatBubble;Ljava/lang/String;)V

    invoke-virtual {v9, v8, v10}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public sendBubbleNotification(Lcom/narvii/model/ChatBubble;ZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/monetization/bubble/BubbleHelper;->sendBubbleNotification(Lcom/narvii/model/ChatBubble;ZLjava/lang/String;Z)V

    return-void
.end method

.method public sendBubbleNotification(Lcom/narvii/model/ChatBubble;ZLjava/lang/String;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "notification"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 76
    new-instance v1, Lcom/narvii/model/ChatBubbleNotificationWrapper;

    invoke-direct {v1}, Lcom/narvii/model/ChatBubbleNotificationWrapper;-><init>()V

    .line 77
    iput-object p1, v1, Lcom/narvii/model/ChatBubbleNotificationWrapper;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 78
    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/narvii/model/ChatBubbleNotificationWrapper;->id:Ljava/lang/String;

    .line 79
    iput-object p3, v1, Lcom/narvii/model/ChatBubbleNotificationWrapper;->threadId:Ljava/lang/String;

    .line 80
    iput-boolean p4, v1, Lcom/narvii/model/ChatBubbleNotificationWrapper;->applyForAll:Z

    .line 81
    iput p2, v1, Lcom/narvii/model/ChatBubbleNotificationWrapper;->action:I

    .line 82
    new-instance p1, Lcom/narvii/notification/Notification;

    const-string p2, "update"

    invoke-direct {p1, p2, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 83
    invoke-virtual {v0, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public showBubbleEditActionDialog(Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V
    .locals 3

    .line 146
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f03d6

    const/4 v2, 0x0

    .line 147
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    const v1, 0x7f0f034e

    const/4 v2, 0x1

    .line 148
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 149
    new-instance v1, Lcom/narvii/monetization/bubble/BubbleHelper$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleHelper$4;-><init>(Lcom/narvii/monetization/bubble/BubbleHelper;Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V

    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 166
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return-void
.end method

.method public showRemoveBubbleDialogInHistory(Lcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 109
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public showRemoveCurBubbleDialog(Lcom/narvii/util/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0ebd

    .line 116
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 117
    new-instance v1, Lcom/narvii/monetization/bubble/BubbleHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/monetization/bubble/BubbleHelper$1;-><init>(Lcom/narvii/monetization/bubble/BubbleHelper;Lcom/narvii/util/Callback;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 125
    new-instance v1, Lcom/narvii/monetization/bubble/BubbleHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/narvii/monetization/bubble/BubbleHelper$2;-><init>(Lcom/narvii/monetization/bubble/BubbleHelper;Lcom/narvii/util/Callback;)V

    const v2, 0x7f0f0c29

    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 133
    new-instance v1, Lcom/narvii/monetization/bubble/BubbleHelper$3;

    invoke-direct {v1, p0, p1}, Lcom/narvii/monetization/bubble/BubbleHelper$3;-><init>(Lcom/narvii/monetization/bubble/BubbleHelper;Lcom/narvii/util/Callback;)V

    const p1, 0x7f0f119f

    invoke-virtual {v0, p1, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 141
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method
