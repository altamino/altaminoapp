.class public Lcom/narvii/chat/video/view/VoiceCallHelper;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/chat/video/view/VoiceCallHelper;->context:Landroid/content/Context;

    .line 6
    return-void
.end method


# virtual methods
.method public buildRequest(ILjava/lang/String;I)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x36

    .line 9
    .line 10
    if-eq p3, v0, :cond_0

    .line 11
    .line 12
    const/16 v0, 0x35

    .line 13
    .line 14
    if-eq p3, v0, :cond_0

    .line 15
    .line 16
    const/16 v0, 0x34

    .line 17
    .line 18
    if-eq p3, v0, :cond_0

    .line 19
    .line 20
    const/16 v0, 0x38

    .line 21
    .line 22
    if-eq p3, v0, :cond_0

    .line 23
    .line 24
    const/16 v0, 0x39

    .line 25
    .line 26
    if-eq p3, v0, :cond_0

    .line 27
    .line 28
    const/16 v0, 0x37

    .line 29
    .line 30
    if-eq p3, v0, :cond_0

    .line 31
    .line 32
    const/16 v0, 0x3b

    .line 33
    .line 34
    if-eq p3, v0, :cond_0

    .line 35
    .line 36
    const/16 v0, 0x3a

    .line 37
    .line 38
    if-eq p3, v0, :cond_0

    .line 39
    .line 40
    const/16 v0, 0x3c

    .line 41
    .line 42
    if-eq p3, v0, :cond_0

    .line 43
    goto :goto_0

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/narvii/chat/video/view/VoiceCallHelper;->getCallChatMessage(Ljava/lang/String;I)Lcom/narvii/model/ChatMessage;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 51
    move-result-object p3

    .line 52
    .line 53
    iget v0, p2, Lcom/narvii/model/ChatMessage;->type:I

    .line 54
    .line 55
    const-string v1, "type"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 59
    .line 60
    const-string v0, "clientRefId"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/narvii/model/ChatMessage;->getClientRefIdTmp()I

    .line 64
    move-result v1

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 68
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v1, "/chat/thread/"

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    iget-object p2, p2, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string p2, "/message"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 88
    move-result-object p2

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 92
    move-result-object p1

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->chatServer()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 96
    move-result-object p1

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p3}, Lcom/narvii/util/http/ApiRequest$Builder;->body(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object p2

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 112
    move-result-object p1

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 116
    move-result-object p1

    .line 117
    return-object p1

    .line 118
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 119
    return-object p1
.end method

.method public getCallChatMessage(Ljava/lang/String;I)Lcom/narvii/model/ChatMessage;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/util/Date;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/narvii/util/http/ApiService;->timestamp()J

    .line 6
    move-result-wide v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 10
    .line 11
    new-instance v1, Lcom/narvii/model/ChatMessage;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1}, Lcom/narvii/model/ChatMessage;-><init>()V

    .line 15
    .line 16
    sget-object v2, Lcom/narvii/chat/core/ChatService;->Companion:Lcom/narvii/chat/core/ChatService$Companion;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/narvii/chat/core/ChatService$Companion;->generateClientRefId()I

    .line 20
    move-result v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/narvii/model/ChatMessage;->setClientRefIdTmp(I)V

    .line 24
    .line 25
    iput-object v0, v1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 26
    .line 27
    iput p2, v1, Lcom/narvii/model/ChatMessage;->type:I

    .line 28
    .line 29
    iput-object p1, v1, Lcom/narvii/model/ChatMessage;->threadId:Ljava/lang/String;

    .line 30
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

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/chat/signalling/ChannelUser;

    .line 21
    .line 22
    iget v2, v1, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    .line 23
    const/4 v3, 0x1

    .line 24
    .line 25
    if-ne v2, v3, :cond_1

    .line 26
    .line 27
    iget-object v1, v1, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    return v0
.end method

.method public getRadiusForVoiceCircle(II)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 4
    move-result p1

    .line 5
    .line 6
    iget-object p2, p0, Lcom/narvii/chat/video/view/VoiceCallHelper;->context:Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    .line 13
    const v0, 0x7f070551

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 17
    move-result p2

    .line 18
    .line 19
    mul-int/lit8 p2, p2, 0x2

    .line 20
    sub-int/2addr p1, p2

    .line 21
    int-to-float p1, p1

    .line 22
    .line 23
    .line 24
    const p2, 0x3de147ae    # 0.11f

    .line 25
    mul-float/2addr p1, p2

    .line 26
    float-to-int p1, p1

    .line 27
    return p1
.end method

.method public isPrivateCall(Lcom/narvii/model/ChatThread;I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    if-eq p2, v1, :cond_1

    .line 5
    const/4 v2, 0x4

    .line 6
    .line 7
    if-ne p2, v2, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move p2, v0

    .line 10
    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    move p2, v1

    .line 12
    .line 13
    :goto_1
    if-eqz p1, :cond_2

    .line 14
    .line 15
    iget p1, p1, Lcom/narvii/model/ChatThread;->type:I

    .line 16
    .line 17
    if-nez p1, :cond_2

    .line 18
    .line 19
    if-eqz p2, :cond_2

    .line 20
    move v0, v1

    .line 21
    :cond_2
    return v0
.end method

.method public translate(Landroid/view/View;IIIIIIII)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    if-eqz p4, :cond_1

    .line 5
    .line 6
    if-nez p5, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    int-to-float p8, p8

    .line 9
    int-to-float p4, p4

    .line 10
    .line 11
    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    mul-float/2addr p4, v0

    .line 13
    div-float/2addr p8, p4

    .line 14
    int-to-float p4, p9

    .line 15
    int-to-float p5, p5

    .line 16
    mul-float/2addr p5, v0

    .line 17
    div-float/2addr p4, p5

    .line 18
    sub-int/2addr p6, p2

    .line 19
    int-to-float p2, p6

    .line 20
    sub-int/2addr p7, p3

    .line 21
    int-to-float p3, p7

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 45
    :cond_1
    :goto_0
    return-void
.end method
