.class Lcom/narvii/chat/video/RtcChatManager$4$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/RtcChatManager$4;->onAudioVolumeIndication([Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/video/RtcChatManager$4;

.field final synthetic val$infos:[Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;

.field final synthetic val$totalVolume:I


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/RtcChatManager$4;[Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$4$9;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/video/RtcChatManager$4$9;->val$infos:[Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/chat/video/RtcChatManager$4$9;->val$totalVolume:I

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$9;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->i(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$9;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->i(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$9;->val$infos:[Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;

    .line 21
    .line 22
    iget v2, p0, Lcom/narvii/chat/video/RtcChatManager$4$9;->val$totalVolume:I

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1, v2}, Lcom/narvii/video/model/RtcEventHandler;->onAudioVolumeIndication([Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;I)V

    .line 26
    :cond_0
    return-void
.end method
