.class Lcom/narvii/widget/BackgroundPickerView$1;
.super Ljava/lang/Object;
.source "BackgroundPickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/BackgroundPickerView;->setMediaPicker(Lcom/narvii/media/MediaPickerFragment;Ljava/io/File;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/BackgroundPickerView;

.field final synthetic val$draftDir:Ljava/io/File;

.field final synthetic val$flag:I

.field final synthetic val$mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;


# direct methods
.method constructor <init>(Lcom/narvii/widget/BackgroundPickerView;Lcom/narvii/media/MediaPickerFragment;ILjava/io/File;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/narvii/widget/BackgroundPickerView$1;->this$0:Lcom/narvii/widget/BackgroundPickerView;

    iput-object p2, p0, Lcom/narvii/widget/BackgroundPickerView$1;->val$mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    iput p3, p0, Lcom/narvii/widget/BackgroundPickerView$1;->val$flag:I

    iput-object p4, p0, Lcom/narvii/widget/BackgroundPickerView$1;->val$draftDir:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/narvii/widget/BackgroundPickerView$1;->this$0:Lcom/narvii/widget/BackgroundPickerView;

    invoke-static {v0}, Lcom/narvii/widget/BackgroundPickerView;->access$000(Lcom/narvii/widget/BackgroundPickerView;)Lcom/narvii/widget/BackgroundPickerView$OnPrePickCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/narvii/widget/BackgroundPickerView$1;->this$0:Lcom/narvii/widget/BackgroundPickerView;

    invoke-static {v0}, Lcom/narvii/widget/BackgroundPickerView;->access$000(Lcom/narvii/widget/BackgroundPickerView;)Lcom/narvii/widget/BackgroundPickerView$OnPrePickCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/narvii/widget/BackgroundPickerView$OnPrePickCallback;->onPrePick(Landroid/view/View;)V

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/BackgroundPickerView$1;->this$0:Lcom/narvii/widget/BackgroundPickerView;

    iget-object p1, p1, Lcom/narvii/widget/BackgroundPickerView;->backgroundPost:Lcom/narvii/image/BackgroundSource;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/narvii/widget/BackgroundPickerView$1;->val$mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    if-nez p1, :cond_1

    goto :goto_0

    .line 156
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/16 v0, 0x2710

    const-string v1, "type"

    .line 157
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    iget v0, p0, Lcom/narvii/widget/BackgroundPickerView$1;->val$flag:I

    if-nez v0, :cond_2

    const/16 v0, 0x8e

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/narvii/widget/BackgroundPickerView$1;->this$0:Lcom/narvii/widget/BackgroundPickerView;

    iget-object v1, v1, Lcom/narvii/widget/BackgroundPickerView;->backgroundPost:Lcom/narvii/image/BackgroundSource;

    invoke-interface {v1}, Lcom/narvii/image/BackgroundSource;->hasBackground()Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x40

    .line 166
    iget-object v1, p0, Lcom/narvii/widget/BackgroundPickerView$1;->val$mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    const v2, 0x7f0f0ebb

    iput v2, v1, Lcom/narvii/media/MediaPickerFragment;->deleteStringId:I

    .line 168
    :cond_3
    iget-object v1, p0, Lcom/narvii/widget/BackgroundPickerView$1;->val$mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    const v2, 0x7f0f0d57

    iput v2, v1, Lcom/narvii/media/MediaPickerFragment;->pickColorStringId:I

    .line 169
    iget-object v2, p0, Lcom/narvii/widget/BackgroundPickerView$1;->this$0:Lcom/narvii/widget/BackgroundPickerView;

    iget-object v2, v2, Lcom/narvii/widget/BackgroundPickerView;->backgroundPost:Lcom/narvii/image/BackgroundSource;

    invoke-interface {v2}, Lcom/narvii/image/BackgroundSource;->getBackgroundColor()I

    move-result v2

    iput v2, v1, Lcom/narvii/media/MediaPickerFragment;->oldColor:I

    .line 170
    iget-object v1, p0, Lcom/narvii/widget/BackgroundPickerView$1;->val$mediaPickerFragment:Lcom/narvii/media/MediaPickerFragment;

    iget-object v2, p0, Lcom/narvii/widget/BackgroundPickerView$1;->val$draftDir:Ljava/io/File;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;II)V

    :cond_4
    :goto_0
    return-void
.end method
