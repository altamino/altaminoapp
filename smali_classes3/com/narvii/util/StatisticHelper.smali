.class public Lcom/narvii/util/StatisticHelper;
.super Ljava/lang/Object;
.source "StatisticHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChatThreadType(Lcom/narvii/model/ChatThread;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    .line 75
    iget p0, p0, Lcom/narvii/model/ChatThread;->type:I

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Public Chat"

    return-object p0

    :cond_1
    const-string p0, "Group Chat"

    return-object p0

    :cond_2
    const-string p0, "1-1"

    return-object p0

    :cond_3
    :goto_0
    return-object p1
.end method

.method public static getStatisticSource(Lcom/narvii/app/NVContext;Lcom/narvii/model/NVObject;I)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->objectType()I

    move-result p2

    :goto_0
    if-eqz p2, :cond_10

    const/4 p0, 0x1

    if-eq p2, p0, :cond_e

    const/4 p0, 0x2

    if-eq p2, p0, :cond_c

    const/4 p0, 0x3

    if-eq p2, p0, :cond_b

    const/4 p0, 0x7

    if-eq p2, p0, :cond_a

    const/16 p0, 0xc

    if-eq p2, p0, :cond_9

    const/16 p0, 0x10

    if-eq p2, p0, :cond_8

    const/16 p0, 0x17

    if-eq p2, p0, :cond_7

    const/16 p0, 0x6a

    if-eq p2, p0, :cond_6

    const/16 p0, 0x6d

    if-eq p2, p0, :cond_5

    const/16 p0, 0x74

    if-eq p2, p0, :cond_4

    const/16 p0, 0x7a

    if-eq p2, p0, :cond_3

    const/16 p0, 0x83

    if-eq p2, p0, :cond_2

    const/16 p0, 0x71

    if-eq p2, p0, :cond_1

    const/16 p0, 0x72

    if-eq p2, p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string p0, "sticker"

    return-object p0

    :cond_2
    const-string p0, "global announcement"

    return-object p0

    :cond_3
    const-string p0, "avatar frame"

    return-object p0

    :cond_4
    const-string p0, "chat bubble"

    return-object p0

    :cond_5
    const-string p0, "shared folder media"

    return-object p0

    :cond_6
    const-string p0, "album"

    return-object p0

    :cond_7
    const-string p0, "quiz question"

    return-object p0

    :cond_8
    const-string p0, "community"

    return-object p0

    :cond_9
    const-string p0, "chat"

    return-object p0

    :cond_a
    const-string p0, "chat message"

    return-object p0

    :cond_b
    const-string p0, "comment"

    return-object p0

    .line 40
    :cond_c
    instance-of p0, p1, Lcom/narvii/model/Item;

    if-eqz p0, :cond_d

    check-cast p1, Lcom/narvii/model/Item;

    iget-object p0, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    if-eqz p0, :cond_d

    .line 42
    invoke-virtual {p0}, Lcom/narvii/model/User;->isSystem()Z

    move-result p0

    if-eqz p0, :cond_d

    const-string p0, "official favorite"

    return-object p0

    :cond_d
    const-string p0, "favorite"

    return-object p0

    .line 20
    :cond_e
    instance-of p0, p1, Lcom/narvii/model/Blog;

    if-eqz p0, :cond_f

    .line 21
    check-cast p1, Lcom/narvii/model/Blog;

    iget p0, p1, Lcom/narvii/model/Blog;->type:I

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p0, "external content"

    return-object p0

    :pswitch_1
    const-string p0, "image"

    return-object p0

    :pswitch_2
    const-string p0, "quiz"

    return-object p0

    :pswitch_3
    const-string p0, "link"

    return-object p0

    :pswitch_4
    const-string p0, "poll"

    return-object p0

    :pswitch_5
    const-string p0, "Q&A"

    return-object p0

    :pswitch_6
    const-string p0, "repost"

    return-object p0

    :cond_f
    :goto_1
    const-string p0, "blog"

    return-object p0

    :cond_10
    const-string p0, "profile"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
