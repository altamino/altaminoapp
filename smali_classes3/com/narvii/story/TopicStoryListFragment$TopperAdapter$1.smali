.class Lcom/narvii/story/TopicStoryListFragment$TopperAdapter$1;
.super Ljava/lang/Object;
.source "TopicStoryListFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter$1;->this$1:Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    if-eqz p2, :cond_1

    .line 184
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    iget-object p1, p0, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter$1;->this$1:Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/list/NVListFragment;

    if-eqz p1, :cond_1

    .line 188
    iget-object p1, p0, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter$1;->this$1:Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object p1

    check-cast p1, Lcom/narvii/list/NVListFragment;

    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->logImpressionQuit()V

    .line 189
    iget-object p1, p0, Lcom/narvii/story/TopicStoryListFragment$TopperAdapter$1;->this$1:Lcom/narvii/story/TopicStoryListFragment$TopperAdapter;

    invoke-virtual {p1}, Lcom/narvii/list/NVAdapter;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object p1

    check-cast p1, Lcom/narvii/list/NVListFragment;

    invoke-virtual {p1}, Lcom/narvii/list/NVListFragment;->logImpression()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
