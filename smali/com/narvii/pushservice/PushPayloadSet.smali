.class public Lcom/narvii/pushservice/PushPayloadSet;
.super Ljava/lang/Object;
.source "PushPayloadSet.java"


# instance fields
.field public list:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;
        contentAs = Lcom/narvii/pushservice/PushPayload;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/pushservice/PushPayload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public append(Lcom/narvii/pushservice/PushPayload;)V
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/narvii/pushservice/PushPayloadSet;->list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/pushservice/PushPayloadSet;->list:Ljava/util/List;

    .line 28
    :cond_0
    iget-object v0, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 29
    iget-object v0, p0, Lcom/narvii/pushservice/PushPayloadSet;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 30
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/pushservice/PushPayload;

    .line 32
    iget-object v1, v1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    iget-object v2, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/narvii/pushservice/PushPayloadSet;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeThread(Ljava/lang/String;)I
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/narvii/pushservice/PushPayloadSet;->list:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 44
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 45
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/pushservice/PushPayload;

    .line 47
    iget-object v2, v2, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public setNotificationContent(Lcom/narvii/app/NVContext;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 5

    .line 56
    iget-object v0, p0, Lcom/narvii/pushservice/PushPayloadSet;->list:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 57
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 58
    iget-object v0, p0, Lcom/narvii/pushservice/PushPayloadSet;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/pushservice/PushPayload;

    .line 59
    invoke-virtual {v0, p1}, Lcom/narvii/pushservice/PushPayload;->message(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 61
    invoke-virtual {p2, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/narvii/pushservice/PushPayloadSet;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-le v0, v2, :cond_4

    .line 64
    new-instance v0, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 65
    iget-object v2, p0, Lcom/narvii/pushservice/PushPayloadSet;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 67
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x5

    if-ge v1, v4, :cond_3

    .line 68
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/pushservice/PushPayload;

    .line 69
    invoke-virtual {v1, p1}, Lcom/narvii/pushservice/PushPayload;->message(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 71
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    :cond_2
    move v1, v3

    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {p2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1

    .line 75
    :cond_4
    iget-object v0, p0, Lcom/narvii/pushservice/PushPayloadSet;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 76
    new-instance v0, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 77
    iget-object v2, p0, Lcom/narvii/pushservice/PushPayloadSet;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/pushservice/PushPayload;

    invoke-virtual {v1, p1}, Lcom/narvii/pushservice/PushPayload;->message(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 79
    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 81
    :cond_5
    invoke-virtual {p2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_6
    :goto_1
    return-void
.end method

.method public size()I
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/narvii/pushservice/PushPayloadSet;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method
