.class Lcom/narvii/sharedfolder/SharedFolderHelper$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedFolderHelper;->showAddAlbumDialog(Ljava/util/List;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$fileIdList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedFolderHelper;Ljava/util/List;Lcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$7;->this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$7;->val$fileIdList:Ljava/util/List;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$7;->val$callback:Lcom/narvii/util/Callback;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 3

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/sharedfolder/SharedFolderHelper$7$1;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$7;->this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/sharedfolder/SharedFolderHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, p0, v0}, Lcom/narvii/sharedfolder/SharedFolderHelper$7$1;-><init>(Lcom/narvii/sharedfolder/SharedFolderHelper$7;Landroid/content/Context;)V

    .line 14
    .line 15
    const/16 v0, 0x1e

    .line 16
    .line 17
    iput v0, p1, Lcom/narvii/widget/InputDialog;->editLimit:I

    .line 18
    .line 19
    .line 20
    const v0, 0x7f120d43

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 24
    .line 25
    iget-object v0, p1, Lcom/narvii/widget/InputDialog;->edit:Landroid/widget/EditText;

    .line 26
    .line 27
    .line 28
    const v1, 0x7f1211c0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 32
    .line 33
    .line 34
    const v0, 0x7f1201e2

    .line 35
    const/4 v1, 0x0

    .line 36
    const/4 v2, 0x0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    const v0, 0x7f120352

    .line 43
    const/4 v1, 0x4

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0, v1, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    new-instance v1, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, p0, p1}, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;-><init>(Lcom/narvii/sharedfolder/SharedFolderHelper$7;Lcom/narvii/widget/InputDialog;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    .line 59
    return-void
.end method
