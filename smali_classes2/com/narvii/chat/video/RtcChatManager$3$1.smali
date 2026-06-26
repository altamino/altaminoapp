.class Lcom/narvii/chat/video/RtcChatManager$3$1;
.super Ljava/lang/Object;
.source "RtcChatManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/RtcChatManager$3;->onTrackStatusChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/video/RtcChatManager$3;

.field final synthetic val$trackStatus:I


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/RtcChatManager$3;I)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$3$1;->this$1:Lcom/narvii/chat/video/RtcChatManager$3;

    iput p2, p0, Lcom/narvii/chat/video/RtcChatManager$3$1;->val$trackStatus:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$3$1;->this$1:Lcom/narvii/chat/video/RtcChatManager$3;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$3;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager;->faceTrackStatusChange:Lcom/narvii/chat/rtc/FaceTrackStatusChangeListener;

    if-eqz v0, :cond_0

    .line 328
    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager$3$1;->val$trackStatus:I

    invoke-interface {v0, v1}, Lcom/narvii/chat/rtc/FaceTrackStatusChangeListener;->onFaceStatusChange(I)V

    :cond_0
    return-void
.end method
