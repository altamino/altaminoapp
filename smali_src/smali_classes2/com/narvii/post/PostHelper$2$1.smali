.class Lcom/narvii/post/PostHelper$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/post/PostHelper$2$1;->this$1:Lcom/narvii/post/PostHelper$2;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/post/PostHelper$2$1;->this$1:Lcom/narvii/post/PostHelper$2;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/post/PostHelper$2;->this$0:Lcom/narvii/post/PostHelper;

    .line 5
    .line 6
    iget-boolean v1, v0, Lcom/narvii/post/PostHelper;->canceled:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    iget-object v1, v0, Lcom/narvii/post/PostHelper;->listener:Lcom/narvii/post/PostListener;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/post/PostHelper;->getProgress()I

    .line 16
    move-result v2

    .line 17
    .line 18
    iget-object v3, p0, Lcom/narvii/post/PostHelper$2$1;->this$1:Lcom/narvii/post/PostHelper$2;

    .line 19
    .line 20
    iget-object v3, v3, Lcom/narvii/post/PostHelper$2;->this$0:Lcom/narvii/post/PostHelper;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/narvii/post/PostHelper;->getProgressTotal()I

    .line 24
    move-result v3

    .line 25
    .line 26
    .line 27
    invoke-interface {v1, v0, v2, v3}, Lcom/narvii/post/PostListener;->onPostProgress(Lcom/narvii/post/PostHelper;II)V

    .line 28
    :cond_0
    return-void
.end method
