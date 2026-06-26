.class Lcom/narvii/media/MediaRecordManager$3;
.super Ljava/lang/Object;
.source "MediaRecordManager.java"

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

    .line 94
    iput-object p1, p0, Lcom/narvii/media/MediaRecordManager$3;->this$0:Lcom/narvii/media/MediaRecordManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 0

    const/16 p1, 0x320

    if-ne p2, p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/narvii/media/MediaRecordManager$3;->this$0:Lcom/narvii/media/MediaRecordManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/media/MediaRecordManager;->finishRecord(Z)V

    :cond_0
    return-void
.end method
