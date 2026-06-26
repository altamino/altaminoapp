.class final Lcom/narvii/chat/signalling/SignallingUtils$3;
.super Ljava/lang/Object;
.source "SignallingUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/signalling/SignallingUtils;->sortChannelUserWrapper(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/narvii/chat/rtc/ChannelUserWrapper;Lcom/narvii/chat/rtc/ChannelUserWrapper;)I
    .locals 3

    .line 51
    iget-object v0, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    iget-object v2, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-nez v2, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->joinedTime:Ljava/util/Date;

    iget-object v2, v2, Lcom/narvii/chat/signalling/ChannelUser;->joinedTime:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 56
    :cond_1
    iget-object p1, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    iget-object p1, p1, Lcom/narvii/chat/signalling/ChannelUser;->joinedTime:Ljava/util/Date;

    iget-object p2, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    iget-object p2, p2, Lcom/narvii/chat/signalling/ChannelUser;->joinedTime:Ljava/util/Date;

    invoke-virtual {p1, p2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 48
    check-cast p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    check-cast p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/chat/signalling/SignallingUtils$3;->compare(Lcom/narvii/chat/rtc/ChannelUserWrapper;Lcom/narvii/chat/rtc/ChannelUserWrapper;)I

    move-result p1

    return p1
.end method
