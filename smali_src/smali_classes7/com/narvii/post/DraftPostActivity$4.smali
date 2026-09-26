.class Lcom/narvii/post/DraftPostActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/post/DraftPostActivity$4;->this$0:Lcom/narvii/post/DraftPostActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity$4;->this$0:Lcom/narvii/post/DraftPostActivity;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->isDestoryed()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity$4;->this$0:Lcom/narvii/post/DraftPostActivity;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/post/DraftPostActivity;->saveDraft()V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity$4;->this$0:Lcom/narvii/post/DraftPostActivity;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/post/DraftPostActivity;->autoSaveDraftInterval()I

    .line 19
    move-result v0

    .line 20
    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/post/DraftPostActivity$4;->this$0:Lcom/narvii/post/DraftPostActivity;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/post/DraftPostActivity;->autoSaveDraftInterval()I

    .line 27
    move-result v0

    .line 28
    int-to-long v0, v0

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 32
    :cond_0
    return-void
.end method
