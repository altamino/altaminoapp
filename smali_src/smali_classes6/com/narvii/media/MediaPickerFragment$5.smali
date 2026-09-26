.class Lcom/narvii/media/MediaPickerFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/MediaPickerFragment$5;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/media/MediaPickerFragment$5;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    sget v0, Lcom/narvii/lib/R$string;->media_image_youtube:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/util/dialog/AlertDialog;->setEditText()Landroid/widget/EditText;

    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x5

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 25
    const/4 v1, 0x0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 29
    .line 30
    sget v2, Lcom/narvii/lib/R$string;->media_image_input_youtube_hint:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 34
    .line 35
    const/high16 v2, 0x1040000

    .line 36
    const/4 v3, 0x0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v2, v1, v3}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 40
    .line 41
    sget v1, Lcom/narvii/lib/R$string;->next:I

    .line 42
    .line 43
    new-instance v2, Lcom/narvii/media/MediaPickerFragment$5$1;

    .line 44
    .line 45
    .line 46
    invoke-direct {v2, p0, p1}, Lcom/narvii/media/MediaPickerFragment$5$1;-><init>(Lcom/narvii/media/MediaPickerFragment$5;Lcom/narvii/util/dialog/AlertDialog;)V

    .line 47
    const/4 v3, 0x4

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1, v3, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    check-cast v1, Landroid/widget/TextView;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 57
    move-result-object v2

    .line 58
    .line 59
    .line 60
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    move-result v2

    .line 62
    .line 63
    if-nez v2, :cond_0

    .line 64
    .line 65
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment$5;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v1}, Lcom/narvii/media/MediaPickerFragment;->enableView(Landroid/widget/TextView;)V

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :cond_0
    iget-object v2, p0, Lcom/narvii/media/MediaPickerFragment$5;->this$0:Lcom/narvii/media/MediaPickerFragment;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v1}, Lcom/narvii/media/MediaPickerFragment;->disableView(Landroid/widget/TextView;)V

    .line 75
    .line 76
    :goto_0
    new-instance v2, Lcom/narvii/media/MediaPickerFragment$5$2;

    .line 77
    .line 78
    .line 79
    invoke-direct {v2, p0, v1}, Lcom/narvii/media/MediaPickerFragment$5$2;-><init>(Lcom/narvii/media/MediaPickerFragment$5;Landroid/widget/TextView;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 86
    return-void
.end method
