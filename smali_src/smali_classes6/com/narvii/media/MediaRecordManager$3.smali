.class Lcom/narvii/media/MediaRecordManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


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
    iput-object p1, p0, Lcom/narvii/media/MediaRecordManager$3;->this$0:Lcom/narvii/media/MediaRecordManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 0

    .line 1
    .line 2
    const/16 p1, 0x320

    .line 3
    .line 4
    if-ne p2, p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/media/MediaRecordManager$3;->this$0:Lcom/narvii/media/MediaRecordManager;

    .line 7
    const/4 p2, 0x1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lcom/narvii/media/MediaRecordManager;->finishRecord(Z)V

    .line 11
    :cond_0
    return-void
.end method
