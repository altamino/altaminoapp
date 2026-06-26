.class Lcom/narvii/media/MediaPickerFragment$4;
.super Ljava/lang/Object;
.source "MediaPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/MediaPickerFragment;->showYoutubeDialogue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/MediaPickerFragment;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaPickerFragment;)V
    .locals 0

    .line 765
    iput-object p1, p0, Lcom/narvii/media/MediaPickerFragment$4;->this$0:Lcom/narvii/media/MediaPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 768
    new-instance p1, Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ndc://fragment/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/narvii/media/YoutubeVideoPicker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 769
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment$4;->this$0:Lcom/narvii/media/MediaPickerFragment;

    iget-object v0, v0, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    const-string v1, "pickCallback"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment$4;->this$0:Lcom/narvii/media/MediaPickerFragment;

    iget-object v0, v0, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    const-string v1, "pickCallbackParams"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 771
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment$4;->this$0:Lcom/narvii/media/MediaPickerFragment;

    iget-object v0, v0, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "needDuration"

    .line 772
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment$4;->this$0:Lcom/narvii/media/MediaPickerFragment;

    const v1, 0xfd05

    invoke-virtual {v0, p1, v1}, Lcom/narvii/media/MediaPickerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
