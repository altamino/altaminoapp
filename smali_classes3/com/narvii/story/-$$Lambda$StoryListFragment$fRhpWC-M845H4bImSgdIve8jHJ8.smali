.class public final synthetic Lcom/narvii/story/-$$Lambda$StoryListFragment$fRhpWC-M845H4bImSgdIve8jHJ8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/narvii/story/StoryListFragment;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/story/StoryListFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/story/-$$Lambda$StoryListFragment$fRhpWC-M845H4bImSgdIve8jHJ8;->f$0:Lcom/narvii/story/StoryListFragment;

    iput p2, p0, Lcom/narvii/story/-$$Lambda$StoryListFragment$fRhpWC-M845H4bImSgdIve8jHJ8;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/narvii/story/-$$Lambda$StoryListFragment$fRhpWC-M845H4bImSgdIve8jHJ8;->f$0:Lcom/narvii/story/StoryListFragment;

    iget v1, p0, Lcom/narvii/story/-$$Lambda$StoryListFragment$fRhpWC-M845H4bImSgdIve8jHJ8;->f$1:I

    invoke-virtual {v0, v1}, Lcom/narvii/story/StoryListFragment;->lambda$notifyItemChange$9$StoryListFragment(I)V

    return-void
.end method
