.class Lcom/narvii/story/detail/StoryUserView$2;
.super Ljava/lang/Object;
.source "StoryUserView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/story/detail/StoryUserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/detail/StoryUserView;


# direct methods
.method constructor <init>(Lcom/narvii/story/detail/StoryUserView;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/narvii/story/detail/StoryUserView$2;->this$0:Lcom/narvii/story/detail/StoryUserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/narvii/story/detail/StoryUserView$2;->this$0:Lcom/narvii/story/detail/StoryUserView;

    invoke-static {v0}, Lcom/narvii/story/detail/StoryUserView;->access$300(Lcom/narvii/story/detail/StoryUserView;)V

    return-void
.end method
