.class public final synthetic Lcom/narvii/story/-$$Lambda$StoryListFragment$1$LZnvsQWT0bz7vqfBFUiPDb8pbAU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field private final synthetic f$0:Lcom/narvii/story/StoryListFragment$1;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/story/StoryListFragment$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/story/-$$Lambda$StoryListFragment$1$LZnvsQWT0bz7vqfBFUiPDb8pbAU;->f$0:Lcom/narvii/story/StoryListFragment$1;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/story/-$$Lambda$StoryListFragment$1$LZnvsQWT0bz7vqfBFUiPDb8pbAU;->f$0:Lcom/narvii/story/StoryListFragment$1;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/narvii/story/StoryListFragment$1;->lambda$onClickWithPermissionGranted$0$StoryListFragment$1(Ljava/lang/Boolean;)V

    return-void
.end method
