.class Lcom/narvii/media/MediaPickerFragment$5$2;
.super Ljava/lang/Object;
.source "MediaPickerFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

.field final synthetic val$nextButton:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaPickerFragment$5;Landroid/widget/TextView;)V
    .locals 0

    .line 837
    iput-object p1, p0, Lcom/narvii/media/MediaPickerFragment$5$2;->this$1:Lcom/narvii/media/MediaPickerFragment$5;

    iput-object p2, p0, Lcom/narvii/media/MediaPickerFragment$5$2;->val$nextButton:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 844
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 845
    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment$5$2;->this$1:Lcom/narvii/media/MediaPickerFragment$5;

    iget-object p1, p1, Lcom/narvii/media/MediaPickerFragment$5;->this$0:Lcom/narvii/media/MediaPickerFragment;

    iget-object p2, p0, Lcom/narvii/media/MediaPickerFragment$5$2;->val$nextButton:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Lcom/narvii/media/MediaPickerFragment;->enableView(Landroid/widget/TextView;)V

    goto :goto_0

    .line 847
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/MediaPickerFragment$5$2;->this$1:Lcom/narvii/media/MediaPickerFragment$5;

    iget-object p1, p1, Lcom/narvii/media/MediaPickerFragment$5;->this$0:Lcom/narvii/media/MediaPickerFragment;

    iget-object p2, p0, Lcom/narvii/media/MediaPickerFragment$5$2;->val$nextButton:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Lcom/narvii/media/MediaPickerFragment;->disableView(Landroid/widget/TextView;)V

    :goto_0
    return-void
.end method
