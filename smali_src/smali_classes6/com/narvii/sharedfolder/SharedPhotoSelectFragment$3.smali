.class Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$3;
.super Lcom/narvii/sharedfolder/SharedPhotosAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$3;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/SharedFile;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/model/SharedFile;

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 13
    move-result v1

    .line 14
    .line 15
    .line 16
    const v2, 0x7f0a0cc5

    .line 17
    .line 18
    if-ne v1, v2, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$3;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->t(Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;)Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    instance-of p1, p5, Landroid/widget/ImageView;

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    check-cast p5, Landroid/widget/ImageView;

    .line 33
    .line 34
    .line 35
    const p1, 0x7f0804fa

    .line 36
    .line 37
    .line 38
    invoke-virtual {p5, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 39
    .line 40
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 44
    .line 45
    const-string p2, "photo"

    .line 46
    .line 47
    .line 48
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    move-result-object p3

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    .line 54
    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$3;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    .line 55
    const/4 p3, -0x1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p3, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 59
    .line 60
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$3;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 64
    const/4 p1, 0x1

    .line 65
    return p1

    .line 66
    .line 67
    .line 68
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/sharedfolder/SharedPhotosAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 69
    move-result p1

    .line 70
    return p1
.end method

.method protected onSelectedCountChanged(I)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$3;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->rightTextView:Landroid/widget/TextView;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    iget-object v2, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$3;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->getRightActionStringId()I

    .line 17
    move-result v3

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    if-lez p1, :cond_0

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    const-string v3, "("

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v3, ")"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_0
    const-string v2, ""

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment$3;->this$0:Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedPhotoSelectFragment;->rightTextView:Landroid/widget/TextView;

    .line 66
    .line 67
    if-lez p1, :cond_1

    .line 68
    const/4 p1, 0x1

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    const/4 p1, 0x0

    .line 71
    .line 72
    .line 73
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 74
    :cond_2
    return-void
.end method
