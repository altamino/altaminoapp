.class public Lcom/narvii/pushservice/PushPayloadSet;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public append(Lcom/narvii/pushservice/PushPayload;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pushservice/PushPayloadSet;->list:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/pushservice/PushPayloadSet;->list:Ljava/util/List;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/pushservice/PushPayloadSet;->list:Ljava/util/List;

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v1

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    check-cast v1, Lcom/narvii/pushservice/PushPayload;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v2, p1, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    move-result v1

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Lcom/narvii/pushservice/PushPayloadSet;->list:Ljava/util/List;

    .line 50
    .line 51
    .line 52
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public removeThread(Ljava/lang/String;)I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pushservice/PushPayloadSet;->list:Ljava/util/List;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v2

    .line 15
    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    check-cast v2, Lcom/narvii/pushservice/PushPayload;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/narvii/pushservice/PushPayload;->threadId:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-static {v2, p1}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    move-result v2

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return v1
.end method

.method public setNotificationContent(Lcom/narvii/app/NVContext;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pushservice/PushPayloadSet;->list:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    goto :goto_1

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/pushservice/PushPayloadSet;->list:Ljava/util/List;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x1

    .line 20
    .line 21
    if-le v0, v2, :cond_3

    .line 22
    .line 23
    new-instance v0, Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    .line 27
    .line 28
    iget-object v2, p0, Lcom/narvii/pushservice/PushPayloadSet;->list:Ljava/util/List;

    .line 29
    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 32
    move-result v3

    .line 33
    .line 34
    .line 35
    invoke-interface {v2, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 40
    move-result v3

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    add-int/lit8 v3, v1, 0x1

    .line 45
    const/4 v4, 0x5

    .line 46
    .line 47
    if-ge v1, v4, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    check-cast v1, Lcom/narvii/pushservice/PushPayload;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p1}, Lcom/narvii/pushservice/PushPayload;->message(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$InboxStyle;->x(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    .line 63
    :cond_1
    move v1, v3

    .line 64
    goto :goto_0

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->f0(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 68
    goto :goto_1

    .line 69
    .line 70
    :cond_3
    iget-object v0, p0, Lcom/narvii/pushservice/PushPayloadSet;->list:Ljava/util/List;

    .line 71
    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 74
    move-result v0

    .line 75
    .line 76
    if-ne v0, v2, :cond_5

    .line 77
    .line 78
    new-instance v0, Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 79
    .line 80
    .line 81
    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 82
    .line 83
    iget-object v2, p0, Lcom/narvii/pushservice/PushPayloadSet;->list:Ljava/util/List;

    .line 84
    .line 85
    .line 86
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    check-cast v1, Lcom/narvii/pushservice/PushPayload;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, p1}, Lcom/narvii/pushservice/PushPayload;->message(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    .line 93
    move-result-object p1

    .line 94
    .line 95
    if-eqz p1, :cond_4

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->x(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 99
    .line 100
    .line 101
    :cond_4
    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->f0(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 102
    :cond_5
    :goto_1
    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pushservice/PushPayloadSet;->list:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method
