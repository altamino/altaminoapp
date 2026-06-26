.class Lcom/narvii/media/MediaPickerGalleryFragment$2;
.super Ljava/lang/Object;
.source "MediaPickerGalleryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/MediaPickerGalleryFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/MediaPickerGalleryFragment;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaPickerGalleryFragment;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 199
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    invoke-virtual {p1}, Lcom/narvii/media/MediaPickerGalleryFragment;->getCurrentMediaItem()Lcom/narvii/media/MediaSelectItem;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 201
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    const-string v1, "single"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    invoke-static {v0, p1}, Lcom/narvii/media/MediaPickerGalleryFragment;->access$000(Lcom/narvii/media/MediaPickerGalleryFragment;Lcom/narvii/media/MediaSelectItem;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    invoke-static {v0, v1}, Lcom/narvii/media/MediaPickerGalleryFragment;->access$100(Lcom/narvii/media/MediaPickerGalleryFragment;Z)V

    .line 206
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 207
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "mediaItem"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 209
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    goto/16 :goto_1

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    iget-object v0, v0, Lcom/narvii/media/MediaPickerGalleryFragment;->selectedItemList:Ljava/util/List;

    invoke-interface {p1}, Lcom/narvii/media/MediaSelectItem;->getUniqueKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    iget-object v0, v0, Lcom/narvii/media/MediaPickerGalleryFragment;->selectedItemList:Ljava/util/List;

    invoke-interface {p1}, Lcom/narvii/media/MediaSelectItem;->getUniqueKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 213
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    invoke-static {p1, v2}, Lcom/narvii/media/MediaPickerGalleryFragment;->access$100(Lcom/narvii/media/MediaPickerGalleryFragment;Z)V

    goto :goto_1

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    invoke-static {v0, p1}, Lcom/narvii/media/MediaPickerGalleryFragment;->access$000(Lcom/narvii/media/MediaPickerGalleryFragment;Lcom/narvii/media/MediaSelectItem;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    invoke-static {v0}, Lcom/narvii/media/MediaPickerGalleryFragment;->access$200(Lcom/narvii/media/MediaPickerGalleryFragment;)I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    iget-object v0, v0, Lcom/narvii/media/MediaPickerGalleryFragment;->selectedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    invoke-static {v3}, Lcom/narvii/media/MediaPickerGalleryFragment;->access$200(Lcom/narvii/media/MediaPickerGalleryFragment;)I

    move-result v3

    if-lt v0, v3, :cond_5

    .line 219
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    const-string v0, "maxStr"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 220
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 221
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    sget v3, Lcom/narvii/lib/R$string;->media_image_picker_hit_max_count:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/narvii/media/MediaPickerGalleryFragment;->access$200(Lcom/narvii/media/MediaPickerGalleryFragment;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    goto :goto_0

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :goto_0
    return-void

    .line 227
    :cond_5
    iget-object v0, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    iget-object v0, v0, Lcom/narvii/media/MediaPickerGalleryFragment;->selectedItemList:Ljava/util/List;

    invoke-interface {p1}, Lcom/narvii/media/MediaSelectItem;->getUniqueKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    invoke-static {p1, v1}, Lcom/narvii/media/MediaPickerGalleryFragment;->access$100(Lcom/narvii/media/MediaPickerGalleryFragment;Z)V

    .line 229
    iget-object p1, p0, Lcom/narvii/media/MediaPickerGalleryFragment$2;->this$0:Lcom/narvii/media/MediaPickerGalleryFragment;

    invoke-static {p1}, Lcom/narvii/media/MediaPickerGalleryFragment;->access$300(Lcom/narvii/media/MediaPickerGalleryFragment;)V

    :cond_6
    :goto_1
    return-void
.end method
