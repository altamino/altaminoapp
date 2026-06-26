.class public final synthetic Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$KX2QXLBTZQURJK18xwomE8Y_4Fc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field private final synthetic f$0:Lcom/narvii/blog/post/StoryPostActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/blog/post/StoryPostActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$KX2QXLBTZQURJK18xwomE8Y_4Fc;->f$0:Lcom/narvii/blog/post/StoryPostActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/narvii/blog/post/-$$Lambda$StoryPostActivity$KX2QXLBTZQURJK18xwomE8Y_4Fc;->f$0:Lcom/narvii/blog/post/StoryPostActivity;

    check-cast p1, Lcom/narvii/scene/model/SceneDraft;

    invoke-virtual {v0, p1}, Lcom/narvii/blog/post/StoryPostActivity;->lambda$onActivityResult$0$StoryPostActivity(Lcom/narvii/scene/model/SceneDraft;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
