.class public interface abstract Lcom/narvii/chat/input/ChatMentionUserListFragment$MentionRelatedUsersCallback;
.super Ljava/lang/Object;
.source "ChatMentionUserListFragment.kt"


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
.end method
