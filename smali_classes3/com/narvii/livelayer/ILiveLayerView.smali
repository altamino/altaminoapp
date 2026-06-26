.class interface abstract Lcom/narvii/livelayer/ILiveLayerView;
.super Ljava/lang/Object;
.source "ILiveLayerView.java"


# virtual methods
.method public abstract disallowNewUserCome()Z
.end method

.method public abstract getAvatarCount()I
.end method

.method public abstract getMinAvatarCount()I
.end method

.method public abstract onMembersCountChanged(I)V
.end method

.method public abstract onUserJoined(Lcom/narvii/model/User;)V
.end method

.method public abstract setUserList(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;I)V"
        }
    .end annotation
.end method
