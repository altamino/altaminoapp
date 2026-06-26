.class Lcom/narvii/sharedfolder/MyUploadsSelectFragment$1;
.super Ljava/lang/Object;
.source "MyUploadsSelectFragment.java"

# interfaces
.implements Lcom/narvii/sharedfolder/SharedPhotosAdapter$OnSelectedCountChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/MyUploadsSelectFragment;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$1;->this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectedChanged(I)V
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$1;->this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

    iget-object v0, v0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->rightTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$1;->this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

    invoke-virtual {v2}, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->getRightActionStringId()I

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

    .line 76
    iget-object v0, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$1;->this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

    iget-object v0, v0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->rightTextView:Landroid/widget/TextView;

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
