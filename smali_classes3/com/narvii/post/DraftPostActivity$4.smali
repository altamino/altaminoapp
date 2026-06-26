.class Lcom/narvii/post/DraftPostActivity$4;
.super Ljava/lang/Object;
.source "DraftPostActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/post/DraftPostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/post/DraftPostActivity;


# direct methods
.method constructor <init>(Lcom/narvii/post/DraftPostActivity;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/narvii/post/DraftPostActivity$4;->this$0:Lcom/narvii/post/DraftPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity$4;->this$0:Lcom/narvii/post/DraftPostActivity;

    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity$4;->this$0:Lcom/narvii/post/DraftPostActivity;

    invoke-virtual {v0}, Lcom/narvii/post/DraftPostActivity;->saveDraft()V

    .line 314
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity$4;->this$0:Lcom/narvii/post/DraftPostActivity;

    invoke-virtual {v0}, Lcom/narvii/post/DraftPostActivity;->autoSaveDraftInterval()I

    move-result v0

    if-lez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity$4;->this$0:Lcom/narvii/post/DraftPostActivity;

    invoke-virtual {v0}, Lcom/narvii/post/DraftPostActivity;->autoSaveDraftInterval()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
