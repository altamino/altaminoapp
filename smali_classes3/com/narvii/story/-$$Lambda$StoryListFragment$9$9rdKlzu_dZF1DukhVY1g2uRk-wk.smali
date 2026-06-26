.class public final synthetic Lcom/narvii/story/-$$Lambda$StoryListFragment$9$9rdKlzu_dZF1DukhVY1g2uRk-wk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/paging/source/PageRequestCallback;


# instance fields
.field private final synthetic f$0:Lcom/narvii/story/StoryListFragment$9;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/story/StoryListFragment$9;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/story/-$$Lambda$StoryListFragment$9$9rdKlzu_dZF1DukhVY1g2uRk-wk;->f$0:Lcom/narvii/story/StoryListFragment$9;

    iput p2, p0, Lcom/narvii/story/-$$Lambda$StoryListFragment$9$9rdKlzu_dZF1DukhVY1g2uRk-wk;->f$1:I

    return-void
.end method


# virtual methods
.method public final onPageRequestFinished(I)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/story/-$$Lambda$StoryListFragment$9$9rdKlzu_dZF1DukhVY1g2uRk-wk;->f$0:Lcom/narvii/story/StoryListFragment$9;

    iget v1, p0, Lcom/narvii/story/-$$Lambda$StoryListFragment$9$9rdKlzu_dZF1DukhVY1g2uRk-wk;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/narvii/story/StoryListFragment$9;->lambda$onNextDirectionClicked$0$StoryListFragment$9(II)V

    return-void
.end method
