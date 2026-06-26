.class Lcom/narvii/feed/BaseFeedListAdapter$2;
.super Ljava/lang/Object;
.source "BaseFeedListAdapter.java"

# interfaces
.implements Lcom/narvii/nvplayerview/listener/VideoViewClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/BaseFeedListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/BaseFeedListAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/feed/BaseFeedListAdapter;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter$2;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interceptClickEvent(Lcom/narvii/model/NVObject;)Z
    .locals 1

    .line 197
    instance-of v0, p1, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/narvii/model/Blog;

    iget p1, p1, Lcom/narvii/model/Blog;->type:I

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onVideoViewClicked(Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;)V
    .locals 2

    .line 174
    iget-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter$2;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    invoke-static {p1}, Lcom/narvii/feed/BaseFeedListAdapter;->access$000(Lcom/narvii/feed/BaseFeedListAdapter;)Lcom/narvii/app/NVContext;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/nvplayerview/delegate/NVVideoPlayHost;

    if-eqz p1, :cond_0

    .line 175
    iget-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter$2;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    invoke-static {p1}, Lcom/narvii/feed/BaseFeedListAdapter;->access$100(Lcom/narvii/feed/BaseFeedListAdapter;)Lcom/narvii/app/NVContext;

    move-result-object p1

    check-cast p1, Lcom/narvii/nvplayerview/delegate/NVVideoPlayHost;

    invoke-interface {p1}, Lcom/narvii/nvplayerview/delegate/NVVideoPlayHost;->getVideoDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    move-result-object p1

    .line 176
    invoke-interface {p1}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->getVideoView()Lcom/narvii/nvplayerview/NVVideoView;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/narvii/feed/BaseFeedListAdapter$2;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    check-cast p2, Lcom/narvii/model/Blog;

    invoke-virtual {v0, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->getStoryDetailPageIntent(Lcom/narvii/model/Blog;)Landroid/content/Intent;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/narvii/feed/BaseFeedListAdapter$2;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    invoke-virtual {v1, p2}, Lcom/narvii/feed/BaseFeedListAdapter;->logFeedClickEvent(Lcom/narvii/model/Feed;)V

    if-eqz p1, :cond_2

    .line 180
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p2, v1, :cond_2

    iget-object p2, p0, Lcom/narvii/feed/BaseFeedListAdapter$2;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    .line 182
    invoke-static {p2}, Lcom/narvii/feed/BaseFeedListAdapter;->access$200(Lcom/narvii/feed/BaseFeedListAdapter;)Lcom/narvii/app/NVContext;

    move-result-object p2

    instance-of p2, p2, Lcom/narvii/app/NVFragment;

    if-eqz p2, :cond_2

    .line 183
    iget-object p2, p0, Lcom/narvii/feed/BaseFeedListAdapter$2;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    invoke-static {p2}, Lcom/narvii/feed/BaseFeedListAdapter;->access$300(Lcom/narvii/feed/BaseFeedListAdapter;)Lcom/narvii/app/NVContext;

    move-result-object p2

    check-cast p2, Lcom/narvii/app/NVFragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    .line 184
    invoke-virtual {p1}, Lcom/narvii/nvplayerview/NVVideoView;->getRenderView()Lcom/narvii/nvplayerview/IRenderView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const-string v1, "renderView"

    invoke-static {p2, p1, v1}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 186
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_1

    .line 188
    :cond_1
    iget-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter$2;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 191
    :cond_2
    iget-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter$2;->this$0:Lcom/narvii/feed/BaseFeedListAdapter;

    invoke-virtual {p1, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method
