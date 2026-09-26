.class public final synthetic Lcom/narvii/story/widgets/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/story/widgets/StoryTopicView;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/story/widgets/StoryTopicView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/story/widgets/b;->a:Lcom/narvii/story/widgets/StoryTopicView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/story/widgets/b;->a:Lcom/narvii/story/widgets/StoryTopicView;

    invoke-static {v0}, Lcom/narvii/story/widgets/StoryTopicView;->a(Lcom/narvii/story/widgets/StoryTopicView;)V

    return-void
.end method
