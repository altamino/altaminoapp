.class Lcom/narvii/blog/post/StoryPostActivity$3;
.super Ljava/lang/Object;
.source "StoryPostActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/blog/post/StoryPostActivity;->onDraftDeleted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/blog/post/StoryPostActivity;

.field final synthetic val$draftId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/blog/post/StoryPostActivity;Ljava/lang/String;)V
    .locals 0

    .line 1310
    iput-object p1, p0, Lcom/narvii/blog/post/StoryPostActivity$3;->this$0:Lcom/narvii/blog/post/StoryPostActivity;

    iput-object p2, p0, Lcom/narvii/blog/post/StoryPostActivity$3;->val$draftId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1313
    invoke-static {}, Lcom/narvii/post/StoryEditSessionManager;->getInstance()Lcom/narvii/post/StoryEditSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/blog/post/StoryPostActivity$3;->val$draftId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/post/StoryEditSessionManager;->removeSession(Ljava/lang/String;)V

    return-void
.end method
