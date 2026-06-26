.class public Lcom/narvii/chat/signalling/SignallingUtils;
.super Ljava/lang/Object;
.source "SignallingUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sortChannelUser(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;)V"
        }
    .end annotation

    .line 16
    new-instance v0, Lcom/narvii/chat/signalling/SignallingUtils$1;

    invoke-direct {v0}, Lcom/narvii/chat/signalling/SignallingUtils$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public static sortChannelUserWithLatestAtFirst(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/chat/signalling/ChannelUser;",
            ">;)V"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/narvii/chat/signalling/SignallingUtils$2;

    invoke-direct {v0}, Lcom/narvii/chat/signalling/SignallingUtils$2;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public static sortChannelUserWrapper(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;)V"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/narvii/chat/signalling/SignallingUtils$3;

    invoke-direct {v0}, Lcom/narvii/chat/signalling/SignallingUtils$3;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
