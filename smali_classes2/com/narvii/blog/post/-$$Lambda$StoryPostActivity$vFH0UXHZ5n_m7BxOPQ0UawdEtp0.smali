.class public final synthetic Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$vFH0UXHZ5n_m7BxOPQ0UawdEtp0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field private final synthetic f$0:Lcom/narvii/blog/post/StoryPostActivity;

.field private final synthetic f$1:Lcom/narvii/blog/post/BlogPost;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/blog/post/StoryPostActivity;Lcom/narvii/blog/post/BlogPost;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$vFH0UXHZ5n_m7BxOPQ0UawdEtp0;->f$0:Lcom/narvii/blog/post/StoryPostActivity;

    iput-object p2, p0, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$vFH0UXHZ5n_m7BxOPQ0UawdEtp0;->f$1:Lcom/narvii/blog/post/BlogPost;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$vFH0UXHZ5n_m7BxOPQ0UawdEtp0;->f$0:Lcom/narvii/blog/post/StoryPostActivity;

    iget-object v1, p0, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$vFH0UXHZ5n_m7BxOPQ0UawdEtp0;->f$1:Lcom/narvii/blog/post/BlogPost;

    check-cast p1, Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {v0, v1, p1}, Lcom/narvii/blog/post/StoryPostActivity;->lambda$onNotification$12$StoryPostActivity(Lcom/narvii/blog/post/BlogPost;Lcom/narvii/scene/model/SceneDraft;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
