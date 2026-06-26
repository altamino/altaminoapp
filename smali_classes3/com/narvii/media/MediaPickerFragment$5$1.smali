.class Lcom/narvii/media/MediaPickerFragment$5$1;
.super Ljava/lang/Object;
.source "MediaPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/MediaPickerFragment$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/media/MediaPickerFragment$5;

.field final synthetic val$pastDlg:Lcom/narvii/util/dialog/AlertDialog;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaPickerFragment$5;Lcom/narvii/util/dialog/AlertDialog;)V
    .locals 0

    .line 790
    iput-object p1, p0, Lcom/narvii/media/MediaPickerFragment$5$1;->this$1:Lcom/narvii/media/MediaPickerFragment$5;

    iput-object p2, p0, Lcom/narvii/media/MediaPickerFragment$5$1;->val$pastDlg:Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onClick$0$MediaPickerFragment$5$1(Lcom/narvii/app/NVDialog;Ljava/util/List;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 811
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment$5$1;->this$1:Lcom/narvii/media/MediaPickerFragment$5;

    iget-object v0, v0, Lcom/narvii/media/MediaPickerFragment$5;->this$0:Lcom/narvii/media/MediaPickerFragment;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/narvii/media/MediaPickerFragment;->access$800(Lcom/narvii/media/MediaPickerFragment;Ljava/util/List;Z)V

    .line 814
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 793
    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment$5$1;->val$pastDlg:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/AlertDialog;->getEditText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 794
    invoke-static {p1}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 795
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ndc://fragment/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/narvii/media/YoutubeVideoPicker;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "url"

    .line 796
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string v1, "confirmUrl"

    .line 797
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 798
    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment$5$1;->this$1:Lcom/narvii/media/MediaPickerFragment$5;

    iget-object p1, p1, Lcom/narvii/media/MediaPickerFragment$5;->this$0:Lcom/narvii/media/MediaPickerFragment;

    iget-object p1, p1, Lcom/narvii/media/MediaPickerFragment;->pickCallback:Ljava/lang/String;

    const-string v1, "pickCallback"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 799
    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment$5$1;->this$1:Lcom/narvii/media/MediaPickerFragment$5;

    iget-object p1, p1, Lcom/narvii/media/MediaPickerFragment$5;->this$0:Lcom/narvii/media/MediaPickerFragment;

    iget-object p1, p1, Lcom/narvii/media/MediaPickerFragment;->pickCallbackParams:Ljava/util/HashMap;

    const-string v1, "pickCallbackParams"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 800
    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment$5$1;->this$1:Lcom/narvii/media/MediaPickerFragment$5;

    iget-object p1, p1, Lcom/narvii/media/MediaPickerFragment$5;->this$0:Lcom/narvii/media/MediaPickerFragment;

    iget-object p1, p1, Lcom/narvii/media/MediaPickerFragment;->info:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string v1, "needDuration"

    .line 801
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 803
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment$5$1;->this$1:Lcom/narvii/media/MediaPickerFragment$5;

    iget-object p1, p1, Lcom/narvii/media/MediaPickerFragment$5;->this$0:Lcom/narvii/media/MediaPickerFragment;

    const v1, 0xfd05

    invoke-virtual {p1, v0, v1}, Lcom/narvii/media/MediaPickerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 804
    :cond_1
    invoke-static {p1}, Lcom/narvii/util/YoutubeUtils;->getYoutubePlaylistIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 805
    new-instance v0, Lcom/narvii/app/NVDialog;

    iget-object v1, p0, Lcom/narvii/media/MediaPickerFragment$5$1;->this$1:Lcom/narvii/media/MediaPickerFragment$5;

    iget-object v1, v1, Lcom/narvii/media/MediaPickerFragment$5;->this$0:Lcom/narvii/media/MediaPickerFragment;

    sget v2, Lcom/narvii/lib/R$style;->CustomDialogWithAnimation:I

    invoke-direct {v0, v1, v2}, Lcom/narvii/app/NVDialog;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 806
    new-instance v1, Lcom/narvii/media/YoutubePlaylistLayout;

    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment$5$1;->this$1:Lcom/narvii/media/MediaPickerFragment$5;

    iget-object v2, v2, Lcom/narvii/media/MediaPickerFragment$5;->this$0:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {v2}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/media/YoutubePlaylistLayout;-><init>(Landroid/content/Context;)V

    .line 807
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment$5$1;->this$1:Lcom/narvii/media/MediaPickerFragment$5;

    iget-object v2, v2, Lcom/narvii/media/MediaPickerFragment$5;->this$0:Lcom/narvii/media/MediaPickerFragment;

    invoke-static {v2}, Lcom/narvii/media/MediaPickerFragment;->access$700(Lcom/narvii/media/MediaPickerFragment;)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/narvii/media/YoutubePlaylistLayout;->setData(Ljava/lang/String;I)V

    .line 808
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 810
    new-instance p1, Lcom/narvii/media/-$$Lambda$MediaPickerFragment$5$1$gNQFGeZYnv725IPW1YD3bplg018;

    invoke-direct {p1, p0, v0}, Lcom/narvii/media/-$$Lambda$MediaPickerFragment$5$1$gNQFGeZYnv725IPW1YD3bplg018;-><init>(Lcom/narvii/media/MediaPickerFragment$5$1;Lcom/narvii/app/NVDialog;)V

    invoke-virtual {v1, p1}, Lcom/narvii/media/YoutubePlaylistLayout;->setPlaylistPickerListener(Lcom/narvii/media/YoutubePlaylistLayout$PlaylistPickerListener;)V

    .line 816
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_0

    .line 818
    :cond_2
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment$5$1;->this$1:Lcom/narvii/media/MediaPickerFragment$5;

    iget-object v0, v0, Lcom/narvii/media/MediaPickerFragment$5;->this$0:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    .line 819
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment$5$1;->this$1:Lcom/narvii/media/MediaPickerFragment$5;

    iget-object v0, v0, Lcom/narvii/media/MediaPickerFragment$5;->this$0:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$string;->invalid_link_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 820
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment$5$1;->this$1:Lcom/narvii/media/MediaPickerFragment$5;

    iget-object v0, v0, Lcom/narvii/media/MediaPickerFragment$5;->this$0:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, -0x444445

    new-instance v2, Lcom/narvii/media/MediaPickerFragment$5$1$1;

    invoke-direct {v2, p0, p1}, Lcom/narvii/media/MediaPickerFragment$5$1$1;-><init>(Lcom/narvii/media/MediaPickerFragment$5$1;Lcom/narvii/widget/ACMAlertDialog;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/widget/ACMAlertDialog;->addButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 826
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    :goto_0
    return-void
.end method
