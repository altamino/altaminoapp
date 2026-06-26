.class final Lcom/narvii/chat/video/fragments/MiniVVContentFragment$onViewCreated$1$2;
.super Ljava/lang/Object;
.source "MiniVVContentFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/fragments/MiniVVContentFragment$onViewCreated$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/fragments/MiniVVContentFragment$onViewCreated$1;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/MiniVVContentFragment$onViewCreated$1;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment$onViewCreated$1$2;->this$0:Lcom/narvii/chat/video/fragments/MiniVVContentFragment$onViewCreated$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 98
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment$onViewCreated$1$2;->this$0:Lcom/narvii/chat/video/fragments/MiniVVContentFragment$onViewCreated$1;

    iget-object p1, p1, Lcom/narvii/chat/video/fragments/MiniVVContentFragment$onViewCreated$1;->this$0:Lcom/narvii/chat/video/fragments/MiniVVContentFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->toggleAllMute()V

    .line 99
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/MiniVVContentFragment$onViewCreated$1$2;->this$0:Lcom/narvii/chat/video/fragments/MiniVVContentFragment$onViewCreated$1;

    iget-object p1, p1, Lcom/narvii/chat/video/fragments/MiniVVContentFragment$onViewCreated$1;->this$0:Lcom/narvii/chat/video/fragments/MiniVVContentFragment;

    invoke-static {p1}, Lcom/narvii/chat/video/fragments/MiniVVContentFragment;->access$getRtcService$p(Lcom/narvii/chat/video/fragments/MiniVVContentFragment;)Lcom/narvii/chat/rtc/RtcService;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/narvii/chat/rtc/RtcService;->toggleLocalSteam()V

    :cond_0
    return-void
.end method
