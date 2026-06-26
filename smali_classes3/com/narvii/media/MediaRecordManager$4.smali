.class Lcom/narvii/media/MediaRecordManager$4;
.super Ljava/lang/Object;
.source "MediaRecordManager.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/media/MediaRecordManager;->startRecord(Lcom/narvii/media/IMediaRecordListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/MediaRecordManager;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaRecordManager;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/narvii/media/MediaRecordManager$4;->this$0:Lcom/narvii/media/MediaRecordManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 0

    .line 105
    iget-object p1, p0, Lcom/narvii/media/MediaRecordManager$4;->this$0:Lcom/narvii/media/MediaRecordManager;

    invoke-static {p1}, Lcom/narvii/media/MediaRecordManager;->access$300(Lcom/narvii/media/MediaRecordManager;)Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0f0680

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 106
    iget-object p1, p0, Lcom/narvii/media/MediaRecordManager$4;->this$0:Lcom/narvii/media/MediaRecordManager;

    invoke-static {p1}, Lcom/narvii/media/MediaRecordManager;->access$400(Lcom/narvii/media/MediaRecordManager;)V

    return-void
.end method
