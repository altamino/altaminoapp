.class Lcom/narvii/chat/video/fragments/VVChatMainFragment$18;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$18;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$18;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->t(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/video/ui/floating/FloatingPermissionUtils;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/video/ui/floating/FloatingPermissionUtils;->canDrawOverlays()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$18;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->H(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$18;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->v(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/rtc/RtcService;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->showAudiFloatingWindow()V

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$18;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->G(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$18;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->v(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/rtc/RtcService;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->showVideoFloatingWindow()V

    .line 48
    goto :goto_0

    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$18;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->F(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Z

    .line 54
    move-result v0

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/chat/video/fragments/VVChatMainFragment$18;->this$0:Lcom/narvii/chat/video/fragments/VVChatMainFragment;

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Lcom/narvii/chat/video/fragments/VVChatMainFragment;->v(Lcom/narvii/chat/video/fragments/VVChatMainFragment;)Lcom/narvii/chat/rtc/RtcService;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->showSRFloatingWindow()V

    .line 66
    :cond_2
    :goto_0
    return-void
.end method
