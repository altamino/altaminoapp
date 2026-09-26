.class Lcom/narvii/chat/video/RtcChatManager$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$3$1;->this$1:Lcom/narvii/chat/video/RtcChatManager$3;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/chat/video/RtcChatManager$3$1;->val$trackStatus:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$3$1;->this$1:Lcom/narvii/chat/video/RtcChatManager$3;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$3;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager;->faceTrackStatusChange:Lcom/narvii/chat/rtc/FaceTrackStatusChangeListener;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v1, p0, Lcom/narvii/chat/video/RtcChatManager$3$1;->val$trackStatus:I

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Lcom/narvii/chat/rtc/FaceTrackStatusChangeListener;->onFaceStatusChange(I)V

    .line 14
    :cond_0
    return-void
.end method
