.class Lcom/narvii/media/GiphyPickerFragment$3$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/GiphyPickerFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/media/GiphyPickerFragment$3;


# direct methods
.method constructor <init>(Lcom/narvii/media/GiphyPickerFragment$3;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$3$3;->this$1:Lcom/narvii/media/GiphyPickerFragment$3;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment$3$3;->this$1:Lcom/narvii/media/GiphyPickerFragment$3;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/media/GiphyPickerFragment$3;->val$dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment$3$3;->this$1:Lcom/narvii/media/GiphyPickerFragment$3;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/narvii/media/GiphyPickerFragment$3;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    sget v1, Lcom/narvii/lib/R$string;->normal_error:I

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    .line 26
    return-void
.end method
