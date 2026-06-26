.class final Lcom/narvii/chat/signalling/SignallingUtils$2;
.super Ljava/lang/Object;
.source "SignallingUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/signalling/SignallingUtils;->sortChannelUserWithLatestAtFirst(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/narvii/chat/signalling/ChannelUser;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/narvii/chat/signalling/ChannelUser;Lcom/narvii/chat/signalling/ChannelUser;)I
    .locals 3

    const/4 v0, -0x1

    if-eqz p1, :cond_3

    .line 35
    iget-object v1, p1, Lcom/narvii/chat/signalling/ChannelUser;->joinedTime:Ljava/util/Date;

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    iget-object v2, p2, Lcom/narvii/chat/signalling/ChannelUser;->joinedTime:Ljava/util/Date;

    if-nez v2, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 40
    :cond_1
    iget-object p1, p1, Lcom/narvii/chat/signalling/ChannelUser;->joinedTime:Ljava/util/Date;

    iget-object p2, p2, Lcom/narvii/chat/signalling/ChannelUser;->joinedTime:Ljava/util/Date;

    invoke-virtual {p1, p2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 32
    check-cast p1, Lcom/narvii/chat/signalling/ChannelUser;

    check-cast p2, Lcom/narvii/chat/signalling/ChannelUser;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/signalling/SignallingUtils$2;->compare(Lcom/narvii/chat/signalling/ChannelUser;Lcom/narvii/chat/signalling/ChannelUser;)I

    move-result p1

    return p1
.end method
