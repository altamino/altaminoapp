.class final Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor$doInBackground$1;
.super Ljava/lang/Object;
.source "FFMpegEditorDelegate.kt"

# interfaces
.implements Lcom/narvii/editors/ffmpeg/FFmpegJni$IFFMpegExecProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;


# direct methods
.method constructor <init>(Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;)V
    .locals 0

    iput-object p1, p0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor$doInBackground$1;->this$0:Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgress(F)V
    .locals 1

    .line 526
    new-instance v0, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor$doInBackground$1$1;

    invoke-direct {v0, p0, p1}, Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor$doInBackground$1$1;-><init>(Lffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor$doInBackground$1;F)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method
