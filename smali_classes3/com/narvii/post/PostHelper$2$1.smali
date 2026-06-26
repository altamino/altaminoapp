.class Lcom/narvii/post/PostHelper$2$1;
.super Ljava/lang/Object;
.source "PostHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/post/PostHelper$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/post/PostHelper$2;


# direct methods
.method constructor <init>(Lcom/narvii/post/PostHelper$2;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/narvii/post/PostHelper$2$1;->this$1:Lcom/narvii/post/PostHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/narvii/post/PostHelper$2$1;->this$1:Lcom/narvii/post/PostHelper$2;

    iget-object v0, v0, Lcom/narvii/post/PostHelper$2;->this$0:Lcom/narvii/post/PostHelper;

    iget-boolean v1, v0, Lcom/narvii/post/PostHelper;->canceled:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/narvii/post/PostHelper;->listener:Lcom/narvii/post/PostListener;

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {v0}, Lcom/narvii/post/PostHelper;->getProgress()I

    move-result v2

    iget-object v3, p0, Lcom/narvii/post/PostHelper$2$1;->this$1:Lcom/narvii/post/PostHelper$2;

    iget-object v3, v3, Lcom/narvii/post/PostHelper$2;->this$0:Lcom/narvii/post/PostHelper;

    invoke-virtual {v3}, Lcom/narvii/post/PostHelper;->getProgressTotal()I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/narvii/post/PostListener;->onPostProgress(Lcom/narvii/post/PostHelper;II)V

    :cond_0
    return-void
.end method
