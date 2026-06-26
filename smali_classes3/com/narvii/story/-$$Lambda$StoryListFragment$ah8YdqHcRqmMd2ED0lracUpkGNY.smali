.class public final synthetic Lcom/narvii/story/-$$Lambda$StoryListFragment$ah8YdqHcRqmMd2ED0lracUpkGNY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/narvii/story/StoryListFragment;

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/story/StoryListFragment;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/story/-$$Lambda$StoryListFragment$ah8YdqHcRqmMd2ED0lracUpkGNY;->f$0:Lcom/narvii/story/StoryListFragment;

    iput p2, p0, Lcom/narvii/story/-$$Lambda$StoryListFragment$ah8YdqHcRqmMd2ED0lracUpkGNY;->f$1:I

    iput-object p3, p0, Lcom/narvii/story/-$$Lambda$StoryListFragment$ah8YdqHcRqmMd2ED0lracUpkGNY;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/narvii/story/-$$Lambda$StoryListFragment$ah8YdqHcRqmMd2ED0lracUpkGNY;->f$0:Lcom/narvii/story/StoryListFragment;

    iget v1, p0, Lcom/narvii/story/-$$Lambda$StoryListFragment$ah8YdqHcRqmMd2ED0lracUpkGNY;->f$1:I

    iget-object v2, p0, Lcom/narvii/story/-$$Lambda$StoryListFragment$ah8YdqHcRqmMd2ED0lracUpkGNY;->f$2:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/story/StoryListFragment;->lambda$onPlayerViewChanged$1$StoryListFragment(ILandroid/view/View;Landroid/view/View;)V

    return-void
.end method
