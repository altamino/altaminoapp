.class Lcom/narvii/story/widgets/StoryGuideViewDoubleTap$1;
.super Ljava/lang/Object;
.source "StoryGuideViewDoubleTap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/widgets/StoryGuideViewDoubleTap;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/widgets/StoryGuideViewDoubleTap;


# direct methods
.method constructor <init>(Lcom/narvii/story/widgets/StoryGuideViewDoubleTap;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/narvii/story/widgets/StoryGuideViewDoubleTap$1;->this$0:Lcom/narvii/story/widgets/StoryGuideViewDoubleTap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/narvii/story/widgets/StoryGuideViewDoubleTap$1;->this$0:Lcom/narvii/story/widgets/StoryGuideViewDoubleTap;

    invoke-virtual {v0}, Lcom/narvii/story/widgets/GuideViewHelper$BaseGuideView;->hideGuide()V

    return-void
.end method
