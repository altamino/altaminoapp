.class Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1$1;
.super Ljava/lang/Object;
.source "ParticipantsListFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1;->onPostJoinCommunity(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1;)V
    .locals 0

    .line 631
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1$1;->this$2:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1

    .line 634
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1$1;->this$2:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1;

    iget-object v0, p1, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1;->this$1:Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;

    iget-object p1, p1, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter$1;->val$item:Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;->access$1300(Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;Ljava/lang/Object;)V

    return-void
.end method
