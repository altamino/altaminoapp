.class Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersAdapter;
.super Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;
.source "ParticipantsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/overlay/ParticipantsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewersAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)V
    .locals 1

    .line 469
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 470
    const-class v0, Lcom/narvii/model/User;

    invoke-direct {p0, p1, p1, v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ChannelUserListAdapter;-><init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "Audience"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$300(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$300(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Lcom/narvii/model/User;
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$300(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 467
    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$ViewersAdapter;->getItem(I)Lcom/narvii/model/User;

    move-result-object p1

    return-object p1
.end method
