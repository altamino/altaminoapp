.class Lcom/narvii/media/GiphyPickerFragment$3$1;
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
    iput-object p1, p0, Lcom/narvii/media/GiphyPickerFragment$3$1;->this$1:Lcom/narvii/media/GiphyPickerFragment$3;

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
    iget-object v0, p0, Lcom/narvii/media/GiphyPickerFragment$3$1;->this$1:Lcom/narvii/media/GiphyPickerFragment$3;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/media/GiphyPickerFragment$3;->val$dlg:Lcom/narvii/util/dialog/ProgressHorizontalDialog;

    .line 5
    .line 6
    iget v0, v0, Lcom/narvii/media/GiphyPickerFragment$3;->p:F

    .line 7
    .line 8
    const/high16 v2, 0x42c80000    # 100.0f

    .line 9
    mul-float/2addr v0, v2

    .line 10
    float-to-int v0, v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lcom/narvii/util/dialog/ProgressHorizontalDialog;->setProgress(I)V

    .line 14
    return-void
.end method
