.class Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$3;
.super Lcom/narvii/sharedfolder/SharedPhotosAdapter;
.source "SharedPhotoSelectFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;Lcom/narvii/app/NVContext;Ljava/lang/String;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$3;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    invoke-direct {p0, p2, p3}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 214
    instance-of v0, p3, Lcom/narvii/model/SharedFile;

    if-eqz v0, :cond_1

    .line 215
    move-object v0, p3

    check-cast v0, Lcom/narvii/model/SharedFile;

    if-eqz p5, :cond_1

    .line 216
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0909fe

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$3;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    invoke-static {v1}, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->access$000(Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    instance-of p1, p5, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 218
    check-cast p5, Landroid/widget/ImageView;

    const p1, 0x7f0803d7

    invoke-virtual {p5, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 220
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 221
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "photo"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$3;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    const/4 p3, -0x1

    invoke-virtual {p2, p3, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 223
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$3;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    const/4 p1, 0x1

    return p1

    .line 227
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected onSelectedCountChanged(I)V
    .locals 4

    .line 232
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$3;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->rightTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$3;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    invoke-virtual {v2}, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->getRightActionStringId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$3;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->rightTextView:Landroid/widget/TextView;

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2
    return-void
.end method
