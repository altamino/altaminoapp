.class Lcom/narvii/chat/video/RtcChatManager$4$9;
.super Ljava/lang/Object;
.source "RtcChatManager.java"

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

    .line 655
    iput-object p1, p0, Lcom/narvii/chat/video/RtcChatManager$4$9;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iput-object p2, p0, Lcom/narvii/chat/video/RtcChatManager$4$9;->val$infos:[Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;

    iput p3, p0, Lcom/narvii/chat/video/RtcChatManager$4$9;->val$totalVolume:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 658
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$9;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$300(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/narvii/chat/video/RtcChatManager$4$9;->this$1:Lcom/narvii/chat/video/RtcChatManager$4;

    iget-object v0, v0, Lcom/narvii/chat/video/RtcChatManager$4;->this$0:Lcom/narvii/chat/video/RtcChatManager;

    invoke-static {v0}, Lcom/narvii/chat/video/RtcChatManager;->access$300(Lcom/narvii/chat/video/RtcChatManager;)Lcom/narvii/video/model/RtcEventHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/video/RtcChatManager$4$9;->val$infos:[Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;

    iget v2, p0, Lcom/narvii/chat/video/RtcChatManager$4$9;->val$totalVolume:I

    invoke-interface {v0, v1, v2}, Lcom/narvii/video/model/RtcEventHandler;->onAudioVolumeIndication([Lio/agora/rtc/IRtcEngineEventHandler$AudioVolumeInfo;I)V

    :cond_0
    return-void
.end method
