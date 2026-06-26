.class Lcom/narvii/chat/post/ThreadPostNewActivity$1;
.super Ljava/lang/Object;
.source "ThreadPostNewActivity.java"

# interfaces
.implements Lcom/narvii/chat/ChatBackgroundPickerRecycler$OnSelectBackgroundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/post/ThreadPostNewActivity;->updateView(Lcom/narvii/chat/post/ThreadPost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/post/ThreadPostNewActivity;


# direct methods
.method constructor <init>(Lcom/narvii/chat/post/ThreadPostNewActivity;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity$1;->this$0:Lcom/narvii/chat/post/ThreadPostNewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectBackground(Lcom/narvii/model/Media;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostNewActivity$1;->this$0:Lcom/narvii/chat/post/ThreadPostNewActivity;

    invoke-static {v0}, Lcom/narvii/chat/post/ThreadPostNewActivity;->access$000(Lcom/narvii/chat/post/ThreadPostNewActivity;)Lcom/narvii/chat/ChatBackgroundFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostNewActivity$1;->this$0:Lcom/narvii/chat/post/ThreadPostNewActivity;

    invoke-static {v0, p1}, Lcom/narvii/chat/post/ThreadPostNewActivity;->access$100(Lcom/narvii/chat/post/ThreadPostNewActivity;Lcom/narvii/model/Media;)V

    :cond_0
    return-void
.end method

.method public onStartPick()V
    .locals 5

    .line 153
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "MediaRequestType"

    const/4 v2, 0x1

    .line 154
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    iget-object v1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity$1;->this$0:Lcom/narvii/chat/post/ThreadPostNewActivity;

    invoke-static {v1}, Lcom/narvii/chat/post/ThreadPostNewActivity;->access$400(Lcom/narvii/chat/post/ThreadPostNewActivity;)Lcom/narvii/media/MediaPickerFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/chat/post/ThreadPostNewActivity$1;->this$0:Lcom/narvii/chat/post/ThreadPostNewActivity;

    invoke-static {v2}, Lcom/narvii/chat/post/ThreadPostNewActivity;->access$300(Lcom/narvii/chat/post/ThreadPostNewActivity;)Lcom/narvii/post/DraftManager;

    move-result-object v2

    iget-object v3, p0, Lcom/narvii/chat/post/ThreadPostNewActivity$1;->this$0:Lcom/narvii/chat/post/ThreadPostNewActivity;

    invoke-static {v3}, Lcom/narvii/chat/post/ThreadPostNewActivity;->access$200(Lcom/narvii/chat/post/ThreadPostNewActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    return-void
.end method
