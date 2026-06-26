.class Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment$1;
.super Ljava/lang/Object;
.source "ChatMessageDetailFlagModeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;

.field final synthetic val$fMedia:Lcom/narvii/model/Media;


# direct methods
.method constructor <init>(Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;Lcom/narvii/model/Media;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment$1;->this$0:Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;

    iput-object p2, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment$1;->val$fMedia:Lcom/narvii/model/Media;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 62
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    iget-object v0, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment$1;->val$fMedia:Lcom/narvii/model/Media;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment$1;->this$0:Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/media/MediaGalleryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "list"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    iget-object p1, p0, Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment$1;->this$0:Lcom/narvii/flag/resolve/ChatMessageDetailFlagModeFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
