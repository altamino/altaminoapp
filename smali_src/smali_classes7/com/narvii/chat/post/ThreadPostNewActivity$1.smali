.class Lcom/narvii/chat/post/ThreadPostNewActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity$1;->this$0:Lcom/narvii/chat/post/ThreadPostNewActivity;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onSelectBackground(Lcom/narvii/model/Media;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostNewActivity$1;->this$0:Lcom/narvii/chat/post/ThreadPostNewActivity;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/post/ThreadPostNewActivity;->F(Lcom/narvii/chat/post/ThreadPostNewActivity;)Lcom/narvii/chat/ChatBackgroundFragment;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/post/ThreadPostNewActivity$1;->this$0:Lcom/narvii/chat/post/ThreadPostNewActivity;

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/narvii/chat/post/ThreadPostNewActivity;->H(Lcom/narvii/chat/post/ThreadPostNewActivity;Lcom/narvii/model/Media;)V

    .line 14
    :cond_0
    return-void
.end method

.method public onStartPick()V
    .locals 5

    .line 1
    .line 2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    const-string v1, "MediaRequestType"

    .line 8
    const/4 v2, 0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/chat/post/ThreadPostNewActivity$1;->this$0:Lcom/narvii/chat/post/ThreadPostNewActivity;

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lcom/narvii/chat/post/ThreadPostNewActivity;->access$200(Lcom/narvii/chat/post/ThreadPostNewActivity;)Lcom/narvii/media/MediaPickerFragment;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    iget-object v2, p0, Lcom/narvii/chat/post/ThreadPostNewActivity$1;->this$0:Lcom/narvii/chat/post/ThreadPostNewActivity;

    .line 20
    .line 21
    .line 22
    invoke-static {v2}, Lcom/narvii/chat/post/ThreadPostNewActivity;->access$100(Lcom/narvii/chat/post/ThreadPostNewActivity;)Lcom/narvii/post/DraftManager;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    iget-object v3, p0, Lcom/narvii/chat/post/ThreadPostNewActivity$1;->this$0:Lcom/narvii/chat/post/ThreadPostNewActivity;

    .line 26
    .line 27
    .line 28
    invoke-static {v3}, Lcom/narvii/chat/post/ThreadPostNewActivity;->access$000(Lcom/narvii/chat/post/ThreadPostNewActivity;)Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    .line 33
    move-result-object v2

    .line 34
    const/4 v3, 0x6

    .line 35
    const/4 v4, 0x0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    .line 39
    return-void
.end method
