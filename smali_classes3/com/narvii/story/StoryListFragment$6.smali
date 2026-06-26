.class Lcom/narvii/story/StoryListFragment$6;
.super Ljava/lang/Object;
.source "StoryListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/StoryListFragment;->onCachedBytesRead(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/StoryListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/story/StoryListFragment;)V
    .locals 0

    .line 1214
    iput-object p1, p0, Lcom/narvii/story/StoryListFragment$6;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1217
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$6;->this$0:Lcom/narvii/story/StoryListFragment;

    iget-object v0, v0, Lcom/narvii/story/StoryListFragment;->videoDebugView:Lcom/narvii/nvplayerview/NVVideoDebugView;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setHitCacheText(Ljava/lang/String;)V

    return-void
.end method
