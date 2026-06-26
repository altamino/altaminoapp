.class final Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor$doInBackground$1$1;
.super Ljava/lang/Object;
.source "FFMpegEditorDelegate.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor$doInBackground$1;->onProgress(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $it:F

.field final synthetic this$0:Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor$doInBackground$1;


# direct methods
.method constructor <init>(Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor$doInBackground$1;F)V
    .locals 0

    iput-object p1, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor$doInBackground$1$1;->this$0:Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor$doInBackground$1;

    iput p2, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor$doInBackground$1$1;->$it:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 526
    iget-object v0, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor$doInBackground$1$1;->this$0:Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor$doInBackground$1;

    iget-object v0, v0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor$doInBackground$1;->this$0:Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;

    invoke-virtual {v0}, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->getCallback()Lffmpeg/base/IEditorExecuteCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor$doInBackground$1$1;->$it:F

    invoke-interface {v0, v1}, Lffmpeg/base/IEditorExecuteCallback;->onProgress(F)V

    :cond_0
    return-void
.end method
