.class Lcom/narvii/media/YoutubeVideoPicker$4$1;
.super Ljava/lang/Object;
.source "YoutubeVideoPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/YoutubeVideoPicker$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/media/YoutubeVideoPicker$4;


# direct methods
.method constructor <init>(Lcom/narvii/media/YoutubeVideoPicker$4;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/narvii/media/YoutubeVideoPicker$4$1;->this$1:Lcom/narvii/media/YoutubeVideoPicker$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 274
    iget-object v0, p0, Lcom/narvii/media/YoutubeVideoPicker$4$1;->this$1:Lcom/narvii/media/YoutubeVideoPicker$4;

    iget-object v1, v0, Lcom/narvii/media/YoutubeVideoPicker$4;->this$0:Lcom/narvii/media/YoutubeVideoPicker;

    iget-object v0, v0, Lcom/narvii/media/YoutubeVideoPicker$4;->val$media:Lcom/narvii/model/Media;

    invoke-static {v1, v0}, Lcom/narvii/media/YoutubeVideoPicker;->access$200(Lcom/narvii/media/YoutubeVideoPicker;Lcom/narvii/model/Media;)V

    .line 275
    iget-object v0, p0, Lcom/narvii/media/YoutubeVideoPicker$4$1;->this$1:Lcom/narvii/media/YoutubeVideoPicker$4;

    iget v1, v0, Lcom/narvii/media/YoutubeVideoPicker$4;->errorCode:I

    return-void
.end method
