.class Lcom/narvii/media/GiphyPickerFragment$3$3;
.super Ljava/lang/Object;
.source "GiphyPickerFragment.java"

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

    .line 317
    iput-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$3$3;->this$1:Lcom/narvii/media/GiphyPickerFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment$3$3;->this$1:Lcom/narvii/media/GiphyPickerFragment$3;

    iget-object v0, v0, Lcom/narvii/media/GiphyPickerFragment$3;->val$dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 321
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment$3$3;->this$1:Lcom/narvii/media/GiphyPickerFragment$3;

    iget-object v0, v0, Lcom/narvii/media/GiphyPickerFragment$3;->this$0:Lcom/narvii/media/GiphyPickerFragment;

    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$string;->normal_error:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method
