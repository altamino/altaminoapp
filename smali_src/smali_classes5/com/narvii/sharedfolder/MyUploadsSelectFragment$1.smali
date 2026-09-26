.class Lcom/narvii/sharedfolder/MyUploadsSelectFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$1;->this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onSelectedChanged(I)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$1;->this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->rightTextView:Landroid/widget/TextView;

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
    iget-object v2, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$1;->this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->getRightActionStringId()I

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
    iget-object v0, p0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment$1;->this$0:Lcom/narvii/sharedfolder/MyUploadsSelectFragment;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/narvii/sharedfolder/MyUploadsSelectFragment;->rightTextView:Landroid/widget/TextView;

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
