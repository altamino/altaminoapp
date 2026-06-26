.class Lcom/narvii/chat/video/fragments/VVChatMainFragment$18;
.super Ljava/lang/Object;
.source "VVChatMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/fragments/VVChatMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)V
    .locals 0

    .line 1336
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$18;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1339
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$18;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$1300(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/video/ui/floating/FloatingPermissionUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;->canDrawOverlays()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1340
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$18;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$1800(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1341
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$18;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$100(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->showAudiFloatingWindow()V

    goto :goto_0

    .line 1342
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$18;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$1900(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1343
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$18;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$100(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->showVideoFloatingWindow()V

    goto :goto_0

    .line 1344
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$18;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$2000(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1345
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$18;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->access$100(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->showSRFloatingWindow()V

    :cond_2
    :goto_0
    return-void
.end method
