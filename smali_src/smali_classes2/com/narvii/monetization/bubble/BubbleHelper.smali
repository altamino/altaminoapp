.class public Lcom/narvii/monetization/bubble/BubbleHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field activeBubbleRequest:Lcom/narvii/util/http/ApiRequest;

.field bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

.field context:Lcom/narvii/app/NVContext;

.field private deleteBubbleRequest:Lcom/narvii/util/http/ApiRequest;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    const-string v0, "bubble"

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/monetization/bubble/BubbleService;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 16
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/monetization/bubble/BubbleHelper;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->deleteBubbleRequest:Lcom/narvii/util/http/ApiRequest;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/monetization/bubble/BubbleHelper;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->deleteBubbleRequest:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method public static getChatMessageBubbleId(ZLcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatBubble;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    :cond_0
    if-nez p0, :cond_1

    .line 7
    .line 8
    iget-object p0, p1, Lcom/narvii/model/ChatMessage;->chatBubbleId:Ljava/lang/String;

    .line 9
    return-object p0

    .line 10
    .line 11
    :cond_1
    if-eqz p2, :cond_3

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    if-eqz p0, :cond_3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    const-string p1, "default"

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    move-result p0

    .line 28
    .line 29
    if-eqz p0, :cond_2

    .line 30
    return-object v0

    .line 31
    .line 32
    .line 33
    :cond_2
    invoke-virtual {p2}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    .line 37
    :cond_3
    iget-object p0, p1, Lcom/narvii/model/ChatMessage;->chatBubbleId:Ljava/lang/String;

    .line 38
    return-object p0
.end method

.method public static getChatMessageBubbleVersion(ZLcom/narvii/model/ChatMessage;Lcom/narvii/model/ChatBubble;)I
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    .line 6
    :cond_0
    if-nez p0, :cond_1

    .line 7
    .line 8
    iget p0, p1, Lcom/narvii/model/ChatMessage;->chatBubbleVersion:I

    .line 9
    return p0

    .line 10
    .line 11
    :cond_1
    if-eqz p2, :cond_2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    const-string v0, "default"

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    move-result p0

    .line 22
    .line 23
    if-nez p0, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    .line 29
    if-eqz p0, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/narvii/model/ChatBubble;->version()I

    .line 33
    move-result p0

    .line 34
    return p0

    .line 35
    .line 36
    :cond_2
    iget p0, p1, Lcom/narvii/model/ChatMessage;->chatBubbleVersion:I

    .line 37
    return p0
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

    .line 1
    .line 2
    new-instance v6, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-direct {v6, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v6}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 15
    .line 16
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleHelper$7;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/narvii/monetization/bubble/BubbleHelper$7;-><init>(Lcom/narvii/monetization/bubble/BubbleHelper;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    .line 25
    .line 26
    const-string v1, "api"

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    move-object v7, v0

    .line 32
    .line 33
    check-cast v7, Lcom/narvii/util/http/ApiService;

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    const-string v1, "chat/chat-bubble/"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    if-eqz p2, :cond_0

    .line 53
    .line 54
    const-string v1, "/activate"

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_0
    const-string v1, "/deactivate"

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 67
    .line 68
    .line 69
    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 81
    move-result-object v8

    .line 82
    .line 83
    iput-object v8, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->activeBubbleRequest:Lcom/narvii/util/http/ApiRequest;

    .line 84
    .line 85
    new-instance v9, Lcom/narvii/monetization/bubble/BubbleHelper$8;

    .line 86
    .line 87
    const-class v2, Lcom/narvii/model/api/ApiResponse;

    .line 88
    move-object v0, v9

    .line 89
    move-object v1, p0

    .line 90
    move-object v3, p3

    .line 91
    move-object v4, p1

    .line 92
    move v5, p2

    .line 93
    .line 94
    .line 95
    invoke-direct/range {v0 .. v6}, Lcom/narvii/monetization/bubble/BubbleHelper$8;-><init>(Lcom/narvii/monetization/bubble/BubbleHelper;Ljava/lang/Class;Lcom/narvii/util/Callback;Lcom/narvii/model/ChatBubble;ZLcom/narvii/util/dialog/ProgressDialog;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v7, v8, v9}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 99
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

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 15
    .line 16
    new-instance v1, Lcom/narvii/monetization/bubble/BubbleHelper$10;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/narvii/monetization/bubble/BubbleHelper$10;-><init>(Lcom/narvii/monetization/bubble/BubbleHelper;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 23
    .line 24
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    .line 25
    .line 26
    const-string v2, "api"

    .line 27
    .line 28
    .line 29
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    const-string v3, "chat/chat-bubble/"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    new-instance v2, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 52
    .line 53
    .line 54
    invoke-direct {v2}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    iput-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->deleteBubbleRequest:Lcom/narvii/util/http/ApiRequest;

    .line 69
    .line 70
    new-instance v2, Lcom/narvii/monetization/bubble/BubbleHelper$11;

    .line 71
    .line 72
    const-class v3, Lcom/narvii/model/api/ApiResponse;

    .line 73
    .line 74
    .line 75
    invoke-direct {v2, p0, v3, p2, v0}, Lcom/narvii/monetization/bubble/BubbleHelper$11;-><init>(Lcom/narvii/monetization/bubble/BubbleHelper;Ljava/lang/Class;Lcom/narvii/util/Callback;Lcom/narvii/util/dialog/ProgressDialog;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, p1, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 79
    return-void
.end method

.method public editChatBubble(Lcom/narvii/model/ChatBubble;)V
    .locals 2

    .line 1
    .line 2
    const-class v0, Lcom/narvii/monetization/bubble/BubbleEditFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "key_chat_bubble"

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v0}, Lcom/narvii/monetization/bubble/BubbleHelper;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 25
    return-void
.end method

.method public getSlotLayParams(IIIIIIIIIIZ)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4

    .line 2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 p2, 0x1

    const/4 p3, 0x6

    const/16 v1, 0x12

    const/16 v2, 0x13

    const/4 v3, 0x0

    if-eq p4, p2, :cond_12

    const/4 p2, 0x2

    if-eq p4, p2, :cond_c

    const/4 p2, 0x3

    const/16 p3, 0x8

    if-eq p4, p2, :cond_6

    const/4 p2, 0x4

    if-eq p4, p2, :cond_0

    goto/16 :goto_10

    :cond_0
    if-eqz p11, :cond_1

    move v1, v2

    .line 3
    :cond_1
    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4
    invoke-virtual {v0, p3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-eqz p11, :cond_2

    move p1, v3

    goto :goto_0

    :cond_2
    neg-int p1, p7

    sub-int/2addr p1, p9

    :goto_0
    if-eqz p11, :cond_3

    neg-int p2, p7

    sub-int/2addr p2, p9

    goto :goto_1

    :cond_3
    move p2, v3

    .line 5
    :goto_1
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p3

    if-eqz p3, :cond_4

    move p3, p2

    goto :goto_2

    :cond_4
    move p3, p1

    :goto_2
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 6
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_3

    :cond_5
    move p1, p2

    :goto_3
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    neg-int p1, p8

    add-int/2addr p1, p10

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_10

    :cond_6
    if-eqz p11, :cond_7

    goto :goto_4

    :cond_7
    move v1, v2

    .line 7
    :goto_4
    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 8
    invoke-virtual {v0, p3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-eqz p11, :cond_8

    neg-int p1, p5

    add-int/2addr p1, p9

    goto :goto_5

    :cond_8
    move p1, v3

    :goto_5
    if-eqz p11, :cond_9

    move p2, v3

    goto :goto_6

    :cond_9
    neg-int p2, p5

    add-int/2addr p2, p9

    .line 9
    :goto_6
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p3

    if-eqz p3, :cond_a

    move p3, p2

    goto :goto_7

    :cond_a
    move p3, p1

    :goto_7
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 10
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p3

    if-eqz p3, :cond_b

    goto :goto_8

    :cond_b
    move p1, p2

    :goto_8
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    neg-int p1, p8

    add-int/2addr p1, p10

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_10

    :cond_c
    if-eqz p11, :cond_d

    move v1, v2

    .line 11
    :cond_d
    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 12
    invoke-virtual {v0, p3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-eqz p11, :cond_e

    neg-int p1, p7

    sub-int/2addr p1, p9

    goto :goto_9

    :cond_e
    move p1, v3

    :goto_9
    if-eqz p11, :cond_f

    move p2, v3

    goto :goto_a

    :cond_f
    neg-int p2, p7

    sub-int/2addr p2, p9

    .line 13
    :goto_a
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p3

    if-eqz p3, :cond_10

    move p3, p1

    goto :goto_b

    :cond_10
    move p3, p2

    :goto_b
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    neg-int p3, p6

    sub-int/2addr p3, p10

    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 14
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p3

    if-eqz p3, :cond_11

    move p1, p2

    :cond_11
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_10

    :cond_12
    if-eqz p11, :cond_13

    goto :goto_c

    :cond_13
    move v1, v2

    .line 15
    :goto_c
    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 16
    invoke-virtual {v0, p3, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-eqz p11, :cond_14

    move p1, v3

    goto :goto_d

    :cond_14
    neg-int p1, p5

    add-int/2addr p1, p9

    :goto_d
    if-eqz p11, :cond_15

    neg-int p2, p5

    add-int/2addr p2, p9

    goto :goto_e

    :cond_15
    move p2, v3

    :goto_e
    neg-int p3, p6

    sub-int/2addr p3, p10

    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 17
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p3

    if-eqz p3, :cond_16

    move p3, p1

    goto :goto_f

    :cond_16
    move p3, p2

    :goto_f
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 18
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p3

    if-eqz p3, :cond_17

    move p1, p2

    :cond_17
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    :goto_10
    return-object v0
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

    .line 1
    invoke-virtual/range {v0 .. v11}, Lcom/narvii/monetization/bubble/BubbleHelper;->getSlotLayParams(IIIIIIIIIIZ)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getSlotPadding(IILcom/narvii/model/BubbleInfo;)I
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/monetization/bubble/BubbleHelper;->getSlotPadding(IILcom/narvii/model/BubbleInfo;F)I

    move-result p1

    return p1
.end method

.method public getSlotPadding(IILcom/narvii/model/BubbleInfo;F)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p3, :cond_d

    .line 2
    iget-object v1, p3, Lcom/narvii/model/BubbleInfo;->slots:Ljava/util/List;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    iget-object p3, p3, Lcom/narvii/model/BubbleInfo;->slots:Ljava/util/List;

    int-to-float p2, p2

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p2, v1

    float-to-int p2, p2

    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    .line 4
    iget v1, v1, Lcom/narvii/monetization/bubble/BubbleService;->scaleXY:F

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 5
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

    .line 6
    iget v3, p3, Lcom/narvii/model/BubbleSlot;->align:I

    if-eq v3, v1, :cond_2

    if-ne v3, v2, :cond_1

    :cond_2
    neg-int v3, p2

    int-to-float v3, v3

    .line 7
    iget p3, p3, Lcom/narvii/model/BubbleSlot;->y:I

    int-to-float p3, p3

    iget-object v4, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    iget v4, v4, Lcom/narvii/monetization/bubble/BubbleService;->scaleXY:F

    mul-float/2addr p3, v4

    mul-float/2addr p3, p4

    sub-float/2addr v3, p3

    float-to-int p3, v3

    if-ge p3, v0, :cond_1

    move v0, p3

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    if-ne p1, v1, :cond_6

    .line 8
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

    .line 9
    iget v1, p3, Lcom/narvii/model/BubbleSlot;->align:I

    if-eq v1, v2, :cond_5

    if-ne v1, v3, :cond_4

    :cond_5
    neg-int v1, p2

    int-to-float v1, v1

    .line 10
    iget p3, p3, Lcom/narvii/model/BubbleSlot;->x:I

    int-to-float p3, p3

    iget-object v4, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    iget v4, v4, Lcom/narvii/monetization/bubble/BubbleService;->scaleXY:F

    mul-float/2addr p3, v4

    mul-float/2addr p3, p4

    add-float/2addr v1, p3

    float-to-int p3, v1

    if-ge p3, v0, :cond_4

    move v0, p3

    goto :goto_1

    :cond_6
    const/4 v2, 0x4

    if-ne p1, v2, :cond_9

    .line 11
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

    .line 12
    iget v1, p3, Lcom/narvii/model/BubbleSlot;->align:I

    if-eq v1, v3, :cond_8

    if-ne v1, v2, :cond_7

    :cond_8
    neg-int v1, p2

    int-to-float v1, v1

    .line 13
    iget p3, p3, Lcom/narvii/model/BubbleSlot;->y:I

    int-to-float p3, p3

    iget-object v4, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    iget v4, v4, Lcom/narvii/monetization/bubble/BubbleService;->scaleXY:F

    mul-float/2addr p3, v4

    mul-float/2addr p3, p4

    add-float/2addr v1, p3

    float-to-int p3, v1

    if-ge p3, v0, :cond_7

    move v0, p3

    goto :goto_2

    :cond_9
    if-ne p1, v3, :cond_c

    .line 14
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

    .line 15
    iget v3, p3, Lcom/narvii/model/BubbleSlot;->align:I

    if-eq v3, v2, :cond_b

    if-ne v3, v1, :cond_a

    :cond_b
    neg-int v3, p2

    int-to-float v3, v3

    .line 16
    iget p3, p3, Lcom/narvii/model/BubbleSlot;->x:I

    int-to-float p3, p3

    iget-object v4, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->bubbleService:Lcom/narvii/monetization/bubble/BubbleService;

    iget v4, v4, Lcom/narvii/monetization/bubble/BubbleService;->scaleXY:F

    mul-float/2addr p3, v4

    mul-float/2addr p3, p4

    sub-float/2addr v3, p3

    float-to-int p3, v3

    if-ge p3, v0, :cond_a

    move v0, p3

    goto :goto_3

    .line 17
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

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;

    .line 5
    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    check-cast v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;

    .line 12
    .line 13
    const-string v1, "update"

    .line 14
    .line 15
    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result p1

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iget p1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->action:I

    .line 24
    const/4 v1, 0x1

    .line 25
    .line 26
    if-ne v1, p1, :cond_2

    .line 27
    .line 28
    new-instance p1, Lcom/narvii/notification/Notification;

    .line 29
    .line 30
    .line 31
    invoke-direct {p1}, Lcom/narvii/notification/Notification;-><init>()V

    .line 32
    .line 33
    iget-object v1, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 34
    .line 35
    iput-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/narvii/model/ChatBubbleNotificationWrapper;->id()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    iput-object v1, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/narvii/model/ChatBubbleNotificationWrapper;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 44
    .line 45
    iget-boolean v0, v0, Lcom/narvii/model/StoreItemBaseObject;->isActivated:Z

    .line 46
    const/4 v1, 0x0

    .line 47
    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    const-string v0, "delete"

    .line 51
    .line 52
    iput-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p1, v1}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-virtual {p2}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 60
    move-result-object v0

    .line 61
    .line 62
    iget-object v2, p1, Lcom/narvii/notification/Notification;->id:Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->containsId(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 66
    move-result v0

    .line 67
    .line 68
    if-nez v0, :cond_2

    .line 69
    .line 70
    const-string v0, "new"

    .line 71
    .line 72
    iput-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p1, v1}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 76
    :cond_2
    :goto_0
    return-void
.end method

.method public onClickEditBubbleButton(Lcom/narvii/model/ChatBubble;)V
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iget v0, p1, Lcom/narvii/model/ChatBubble;->type:I

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    return-void

    .line 10
    .line 11
    :cond_1
    new-instance v0, Lcom/narvii/monetization/bubble/BubbleHelper$5;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p0, p1}, Lcom/narvii/monetization/bubble/BubbleHelper$5;-><init>(Lcom/narvii/monetization/bubble/BubbleHelper;Lcom/narvii/model/ChatBubble;)V

    .line 15
    .line 16
    new-instance v1, Lcom/narvii/monetization/bubble/BubbleHelper$6;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p0, p1}, Lcom/narvii/monetization/bubble/BubbleHelper$6;-><init>(Lcom/narvii/monetization/bubble/BubbleHelper;Lcom/narvii/model/ChatBubble;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0, v1}, Lcom/narvii/monetization/bubble/BubbleHelper;->showBubbleEditActionDialog(Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V

    .line 23
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

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    if-nez p1, :cond_2

    .line 8
    .line 9
    const-string p1, "try to apply bubble while is empty"

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 13
    .line 14
    if-eqz p4, :cond_1

    .line 15
    .line 16
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    invoke-interface {p4, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 20
    :cond_1
    return-void

    .line 21
    .line 22
    :cond_2
    new-instance v3, Lcom/narvii/util/dialog/ProgressDialog;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-direct {v3, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    iget v2, p1, Lcom/narvii/model/ChatBubble;->type:I

    .line 45
    const/4 v4, -0x1

    .line 46
    .line 47
    if-eq v2, v4, :cond_3

    .line 48
    const/4 v4, -0x2

    .line 49
    .line 50
    if-ne v2, v4, :cond_4

    .line 51
    :cond_3
    const/4 v1, 0x0

    .line 52
    .line 53
    :cond_4
    const-string v2, "bubbleId"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 57
    .line 58
    const-string v1, "applyToAll"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 62
    .line 63
    if-nez p2, :cond_5

    .line 64
    .line 65
    const-string v1, "threadId"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 69
    .line 70
    :cond_5
    new-instance v1, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 71
    .line 72
    .line 73
    invoke-direct {v1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    const-string v2, "chat/thread/apply-bubble"

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 91
    move-result-object v8

    .line 92
    .line 93
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    .line 94
    .line 95
    const-string v1, "api"

    .line 96
    .line 97
    .line 98
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    move-result-object v0

    .line 100
    move-object v9, v0

    .line 101
    .line 102
    check-cast v9, Lcom/narvii/util/http/ApiService;

    .line 103
    .line 104
    new-instance v10, Lcom/narvii/monetization/bubble/BubbleHelper$9;

    .line 105
    .line 106
    const-class v2, Lcom/narvii/model/api/ApiResponse;

    .line 107
    move-object v0, v10

    .line 108
    move-object v1, p0

    .line 109
    move-object v4, p4

    .line 110
    move v5, p2

    .line 111
    move-object v6, p1

    .line 112
    move-object v7, p3

    .line 113
    .line 114
    .line 115
    invoke-direct/range {v0 .. v7}, Lcom/narvii/monetization/bubble/BubbleHelper$9;-><init>(Lcom/narvii/monetization/bubble/BubbleHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/util/Callback;ZLcom/narvii/model/ChatBubble;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v9, v8, v10}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 119
    return-void
.end method

.method public sendBubbleNotification(Lcom/narvii/model/ChatBubble;ZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/narvii/monetization/bubble/BubbleHelper;->sendBubbleNotification(Lcom/narvii/model/ChatBubble;ZLjava/lang/String;Z)V

    return-void
.end method

.method public sendBubbleNotification(Lcom/narvii/model/ChatBubble;ZLjava/lang/String;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "notification"

    .line 2
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 3
    new-instance v1, Lcom/narvii/model/ChatBubbleNotificationWrapper;

    invoke-direct {v1}, Lcom/narvii/model/ChatBubbleNotificationWrapper;-><init>()V

    iput-object p1, v1, Lcom/narvii/model/ChatBubbleNotificationWrapper;->chatBubble:Lcom/narvii/model/ChatBubble;

    .line 4
    invoke-virtual {p1}, Lcom/narvii/model/ChatBubble;->id()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/narvii/model/ChatBubbleNotificationWrapper;->id:Ljava/lang/String;

    iput-object p3, v1, Lcom/narvii/model/ChatBubbleNotificationWrapper;->threadId:Ljava/lang/String;

    iput-boolean p4, v1, Lcom/narvii/model/ChatBubbleNotificationWrapper;->applyForAll:Z

    iput p2, v1, Lcom/narvii/model/ChatBubbleNotificationWrapper;->action:I

    .line 5
    new-instance p1, Lcom/narvii/notification/Notification;

    const-string p2, "update"

    invoke-direct {p1, p2, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public showBubbleEditActionDialog(Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ActionSheetDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const v1, 0x7f120441

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 19
    .line 20
    .line 21
    const v1, 0x7f1203a6

    .line 22
    const/4 v2, 0x1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 26
    .line 27
    new-instance v1, Lcom/narvii/monetization/bubble/BubbleHelper$4;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/monetization/bubble/BubbleHelper$4;-><init>(Lcom/narvii/monetization/bubble/BubbleHelper;Lcom/narvii/util/Callback;Lcom/narvii/util/Callback;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    .line 37
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

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 12
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

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/widget/ACMAlertDialog;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/monetization/bubble/BubbleHelper;->context:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const v1, 0x7f120fdc

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    .line 18
    .line 19
    new-instance v1, Lcom/narvii/monetization/bubble/BubbleHelper$1;

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, p0, p1}, Lcom/narvii/monetization/bubble/BubbleHelper$1;-><init>(Lcom/narvii/monetization/bubble/BubbleHelper;Lcom/narvii/util/Callback;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 26
    .line 27
    new-instance v1, Lcom/narvii/monetization/bubble/BubbleHelper$2;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, p0, p1}, Lcom/narvii/monetization/bubble/BubbleHelper$2;-><init>(Lcom/narvii/monetization/bubble/BubbleHelper;Lcom/narvii/util/Callback;)V

    .line 31
    .line 32
    .line 33
    const v2, 0x7f120d57

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 37
    .line 38
    new-instance v1, Lcom/narvii/monetization/bubble/BubbleHelper$3;

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, p0, p1}, Lcom/narvii/monetization/bubble/BubbleHelper$3;-><init>(Lcom/narvii/monetization/bubble/BubbleHelper;Lcom/narvii/util/Callback;)V

    .line 42
    .line 43
    .line 44
    const p1, 0x7f1212a7

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1, v1}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 51
    return-void
.end method
