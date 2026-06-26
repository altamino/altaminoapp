.class Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$2;
.super Ljava/lang/Object;
.source "SROverlayMainFragment.java"

# interfaces
.implements Lcom/narvii/chat/video/overlay/AvChatMessageListView$ItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$2;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(Lcom/narvii/model/ChatMessage;)V
    .locals 4

    .line 99
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->isStickerMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-class v0, Lcom/narvii/monetization/sticker/StickerDetailFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$2;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    invoke-static {v1}, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;->access$000(Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "threadId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    iget-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$2;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 106
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->hasMedia()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    iget v0, p1, Lcom/narvii/model/ChatMessage;->mediaType:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 108
    new-instance v0, Lcom/narvii/model/Media;

    invoke-direct {v0}, Lcom/narvii/model/Media;-><init>()V

    .line 109
    iget v1, p1, Lcom/narvii/model/ChatMessage;->mediaType:I

    iput v1, v0, Lcom/narvii/model/Media;->type:I

    .line 110
    iget-object v1, p1, Lcom/narvii/model/ChatMessage;->mediaValue:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$2;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/narvii/media/MediaGalleryActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "list"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 116
    invoke-virtual {p1, v1}, Lcom/narvii/model/NVObject;->isAccessibleByUser(Lcom/narvii/model/User;)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    const-string p1, "hideShareBar"

    .line 117
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    const-string p1, "showCheckHD"

    .line 119
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    iget-object p1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$2;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/Media;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    iget-object v0, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$2;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->media()Lcom/narvii/model/Media;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/video/NVFullScreenVideoActivity;->intent(Lcom/narvii/model/Media;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 124
    :cond_3
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->content:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x5a

    if-le v0, v1, :cond_4

    .line 125
    new-instance v0, Lcom/narvii/chat/ChatDetailDialog;

    iget-object v1, p0, Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment$2;->this$0:Lcom/narvii/chat/screenroom/overlay/SROverlayMainFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/chat/ChatDetailDialog;-><init>(Landroid/content/Context;)V

    .line 126
    invoke-virtual {v0, p1}, Lcom/narvii/chat/ChatDetailDialog;->setChatMessage(Lcom/narvii/model/ChatMessage;)V

    .line 127
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    :cond_4
    :goto_0
    return-void
.end method
