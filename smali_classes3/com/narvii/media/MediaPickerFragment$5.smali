.class Lcom/narvii/media/MediaPickerFragment$5;
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

    .line 779
    iput-object p1, p0, Lcom/narvii/media/MediaPickerFragment$5;->this$0:Lcom/narvii/media/MediaPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 782
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment$5;->this$0:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 783
    sget v0, Lcom/narvii/lib/R$string;->media_image_youtube:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 784
    invoke-virtual {p1}, Lcom/narvii/util/dialog/AlertDialog;->setEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x5

    .line 785
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLines(I)V

    const/4 v1, 0x0

    .line 786
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 787
    sget v2, Lcom/narvii/lib/R$string;->media_image_input_youtube_hint:I

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(I)V

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    .line 788
    invoke-virtual {p1, v2, v1, v3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 789
    sget v1, Lcom/narvii/lib/R$string;->next:I

    new-instance v2, Lcom/narvii/media/MediaPickerFragment$5$1;

    invoke-direct {v2, p0, p1}, Lcom/narvii/media/MediaPickerFragment$5$1;-><init>(Lcom/narvii/media/MediaPickerFragment$5;Lcom/narvii/util/dialog/AlertDialog;)V

    const/4 v3, 0x4

    invoke-virtual {p1, v1, v3, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 831
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 832
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment$5;->this$0:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {v2, v1}, Lcom/narvii/media/MediaPickerFragment;->enableView(Landroid/widget/TextView;)V

    goto :goto_0

    .line 834
    :cond_0
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment$5;->this$0:Lcom/narvii/media/MediaPickerFragment;

    invoke-virtual {v2, v1}, Lcom/narvii/media/MediaPickerFragment;->disableView(Landroid/widget/TextView;)V

    .line 837
    :goto_0
    new-instance v2, Lcom/narvii/media/MediaPickerFragment$5$2;

    invoke-direct {v2, p0, v1}, Lcom/narvii/media/MediaPickerFragment$5$2;-><init>(Lcom/narvii/media/MediaPickerFragment$5;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 857
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    return-void
.end method
