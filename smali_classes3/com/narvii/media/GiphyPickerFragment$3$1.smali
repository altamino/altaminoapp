.class Lcom/narvii/media/GiphyPickerFragment$3$1;
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

    .line 213
    iput-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$3$1;->this$1:Lcom/narvii/media/GiphyPickerFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment$3$1;->this$1:Lcom/narvii/media/GiphyPickerFragment$3;

    iget-object v1, v0, Lcom/narvii/media/GiphyPickerFragment$3;->val$dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    iget v0, v0, Lcom/narvii/media/GiphyPickerFragment$3;->p:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/narvii/util/dialog/ProgressHorizontalDialog;->setProgress(I)V

    return-void
.end method
