.class Lcom/narvii/story/detail/StoryFeedHelper$4;
.super Ljava/lang/Object;
.source "StoryFeedHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/detail/StoryFeedHelper;->delete(Lcom/narvii/model/Feed;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/story/detail/StoryFeedHelper;

.field final synthetic val$feed:Lcom/narvii/model/Feed;


# direct methods
.method constructor <init>(Lcom/narvii/story/detail/StoryFeedHelper;Lcom/narvii/model/Feed;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/narvii/story/detail/StoryFeedHelper$4;->this$0:Lcom/narvii/story/detail/StoryFeedHelper;

    iput-object p2, p0, Lcom/narvii/story/detail/StoryFeedHelper$4;->val$feed:Lcom/narvii/model/Feed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 261
    iget-object p1, p0, Lcom/narvii/story/detail/StoryFeedHelper$4;->this$0:Lcom/narvii/story/detail/StoryFeedHelper;

    iget-object p2, p0, Lcom/narvii/story/detail/StoryFeedHelper$4;->val$feed:Lcom/narvii/model/Feed;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/narvii/story/detail/StoryFeedHelper;->delete(Lcom/narvii/model/Feed;Z)V

    return-void
.end method
