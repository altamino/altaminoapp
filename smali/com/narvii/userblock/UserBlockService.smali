.class public interface abstract Lcom/narvii/userblock/UserBlockService;
.super Ljava/lang/Object;
.source "UserBlockService.java"


# virtual methods
.method public abstract isBlocked(Ljava/lang/String;)Z
.end method

.method public abstract isInBlockedList(Ljava/lang/String;)Z
.end method

.method public abstract refresh(Z)V
.end method

.method public abstract updateBlockList(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
