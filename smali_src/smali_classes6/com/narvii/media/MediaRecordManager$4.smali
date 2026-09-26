.class Lcom/narvii/media/MediaRecordManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/MediaRecordManager$4;->this$0:Lcom/narvii/media/MediaRecordManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/media/MediaRecordManager$4;->this$0:Lcom/narvii/media/MediaRecordManager;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/media/MediaRecordManager;->b(Lcom/narvii/media/MediaRecordManager;)Landroid/content/Context;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    const p2, 0x7f12072b

    .line 10
    const/4 p3, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2, p3}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/media/MediaRecordManager$4;->this$0:Lcom/narvii/media/MediaRecordManager;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/narvii/media/MediaRecordManager;->e(Lcom/narvii/media/MediaRecordManager;)V

    .line 23
    return-void
.end method
