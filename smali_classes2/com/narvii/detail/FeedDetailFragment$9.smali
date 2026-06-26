.class Lcom/narvii/detail/FeedDetailFragment$9;
.super Ljava/lang/Object;
.source "FeedDetailFragment.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/detail/FeedDetailFragment;->requestOnlineMembersOnThisPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/UserListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/detail/FeedDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/detail/FeedDetailFragment;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$9;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/UserListResponse;)V
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$9;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$9;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    iget-object v0, v0, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    new-instance v1, Lcom/narvii/detail/FeedDetailFragment$9$1;

    invoke-direct {v1, p0}, Lcom/narvii/detail/FeedDetailFragment$9$1;-><init>(Lcom/narvii/detail/FeedDetailFragment$9;)V

    invoke-virtual {v0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setOnAvatarShownChangeListener(Lcom/narvii/livelayer/LiveLayerOnlineBar$OnAvatarShownChangeListener;)V

    .line 486
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$9;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    iget-object v0, v0, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    new-instance v1, Lcom/narvii/detail/FeedDetailFragment$9$2;

    invoke-direct {v1, p0}, Lcom/narvii/detail/FeedDetailFragment$9$2;-><init>(Lcom/narvii/detail/FeedDetailFragment$9;)V

    invoke-virtual {v0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setOnFoldChangedListener(Lcom/narvii/livelayer/LiveLayerOnlineBar$OnFoldChangedListener;)V

    .line 504
    iget-object v0, p0, Lcom/narvii/detail/FeedDetailFragment$9;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    iget-object v0, v0, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v1, p1, Lcom/narvii/model/api/UserListResponse;->userList:Ljava/util/List;

    iget p1, p1, Lcom/narvii/model/api/UserListResponse;->userProfileCount:I

    invoke-virtual {v0, v1, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setUserList(Ljava/util/List;I)V

    .line 505
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$9;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    iget-object v0, p1, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object p1, p1, Lcom/narvii/detail/FeedDetailFragment;->pageClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->setOnBarClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    iget-object p1, p0, Lcom/narvii/detail/FeedDetailFragment$9;->this$0:Lcom/narvii/detail/FeedDetailFragment;

    iget-object v0, p1, Lcom/narvii/detail/FeedDetailFragment;->onlineMemberBar:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object p1, p1, Lcom/narvii/detail/FeedDetailFragment;->topic:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->subscribeTopic(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 453
    check-cast p1, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/detail/FeedDetailFragment$9;->call(Lcom/narvii/model/api/UserListResponse;)V

    return-void
.end method
