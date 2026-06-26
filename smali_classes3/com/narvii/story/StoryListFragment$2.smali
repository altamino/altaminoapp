.class Lcom/narvii/story/StoryListFragment$2;
.super Ljava/lang/Object;
.source "StoryListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/StoryListFragment;
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

    .line 444
    iput-object p1, p0, Lcom/narvii/story/StoryListFragment$2;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(Lcom/narvii/story/StoryListVisibleChangeListener;)V
    .locals 0

    .line 447
    invoke-interface {p0}, Lcom/narvii/story/StoryListVisibleChangeListener;->onStoryListShown()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/narvii/story/StoryListFragment$2;->this$0:Lcom/narvii/story/StoryListFragment;

    invoke-static {v0}, Lcom/narvii/story/StoryListFragment;->access$300(Lcom/narvii/story/StoryListFragment;)Lcom/narvii/util/EventDispatcher;

    move-result-object v0

    sget-object v1, Lcom/narvii/story/-$$Lambda$StoryListFragment$2$XLg0TnpqRpm0Fss4VGU2AltvwEk;->INSTANCE:Lcom/narvii/story/-$$Lambda$StoryListFragment$2$XLg0TnpqRpm0Fss4VGU2AltvwEk;

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method
