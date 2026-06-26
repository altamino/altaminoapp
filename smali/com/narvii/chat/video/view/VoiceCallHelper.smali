.class public Lcom/narvii/chat/video/view/VoiceCallHelper;
.super Ljava/lang/Object;
.source "VoiceCallHelper.java"


# static fields
.field public static final CALL_VIEW_FINISH_DELAY:I = 0x5dc

.field public static final HINT_AUTO_DISMISS_TIME:I = 0x1388

.field public static final PRIVATE_CALL_PRESENTER_LIMIT:F = 2.0f

.field public static final RADIUS_RATIO_OF_SCREEN:F = 0.11f


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/narvii/chat/video/view/VoiceCallHelper;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public buildRequest(ILjava/lang/String;I)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 76
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x36

    if-eq p3, v0, :cond_0

    const/16 v0, 0x35

    if-eq p3, v0, :cond_0

    const/16 v0, 0x34

    if-eq p3, v0, :cond_0

    const/16 v0, 0x38

    if-eq p3, v0, :cond_0

    const/16 v0, 0x39

    if-eq p3, v0, :cond_0

    const/16 v0, 0x37

    if-eq p3, v0, :cond_0

    const/16 v0, 0x3b

    if-eq p3, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p3, v0, :cond_0

    const/16 v0, 0x3c

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/narvii/chat/video/view/VoiceCallHelper;->getCallChatMessage(Ljava/lang/String;I)Lcom/narvii/model/ChatMessage;

    move-result-object p2

    .line 90
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p3

    .line 91
    iget v0, p2, Lcom/narvii/model/ChatMessage;->type:I

    const-string/jumbo v1, "type"

    invoke-virtual {p3, v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 92
    iget v0, p2, Lcom/narvii/model/ChatMessage;->clientRefId:I

    const-string v1, "clientRefId"

    invoke-virtual {p3, v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/chat/thread/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    iget-object p2, p2, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/message"

    .line 95
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p2

    .line 97
    invoke-virtual {p2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 99
    invoke-virtual {p1, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCallChatMessage(Ljava/lang/String;I)Lcom/narvii/model/ChatMessage;
    .locals 3

    .line 106
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 107
    new-instance v1, Lcom/narvii/model/ChatMessage;

    invoke-direct {v1}, Lcom/narvii/model/ChatMessage;-><init>()V

    .line 108
    sget-object v2, Lcom/narvii/chat/core/ChatService;->Companion:Lcom/narvii/chat/core/ChatService$Companion;

    invoke-virtual {v2}, Lcom/narvii/chat/core/ChatService$Companion;->generateClientRefId()I

    move-result v2

    iput v2, v1, Lcom/narvii/model/ChatMessage;->clientRefId:I

    .line 109
    iput-object v0, v1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 110
    iput p2, v1, Lcom/narvii/model/ChatMessage;->type:I

    .line 111
    iput-object p1, v1, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    return-object v1
.end method

.method public getPresenterCount(Ljava/util/Collection;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 66
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/signalling/ChannelUser;

    .line 67
    iget v2, v1, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v1, v1, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public getRadiusForVoiceCircle(II)I
    .locals 1

    .line 56
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p2, p0, Lcom/narvii/chat/video/view/VoiceCallHelper;->context:Landroid/content/Context;

    .line 57
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070319

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const p2, 0x3de147ae    # 0.11f

    mul-float p1, p1, p2

    float-to-int p1, p1

    return p1
.end method

.method public isPrivateCall(Lcom/narvii/model/ChatThread;I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 118
    iget p1, p1, Lcom/narvii/model/ChatThread;->type:I

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public translate(Landroid/view/View;IIIIIIII)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p8, p8

    int-to-float p4, p4

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p4, p4, v0

    div-float/2addr p8, p4

    int-to-float p4, p9

    int-to-float p5, p5

    mul-float p5, p5, v0

    div-float/2addr p4, p5

    sub-int/2addr p6, p2

    int-to-float p2, p6

    sub-int/2addr p7, p3

    int-to-float p3, p7

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 48
    invoke-virtual {p1, p8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 49
    invoke-virtual {p1, p4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 50
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 51
    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method
