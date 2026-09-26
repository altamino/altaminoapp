.class public interface abstract Lcom/narvii/chat/input/ChatMentionUserListFragment$MentionRelatedUsersCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/input/ChatMentionUserListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MentionRelatedUsersCallback"
.end annotation


# virtual methods
.method public abstract onMentionedUserListUpdated(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMentionedUserSelected(Lcom/narvii/model/User;)V
    .param p1    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
