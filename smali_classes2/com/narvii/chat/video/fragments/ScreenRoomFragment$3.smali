.class Lcom/narvii/chat/video/fragments/ScreenRoomFragment$3;
.super Ljava/lang/Object;
.source "ScreenRoomFragment.java"

# interfaces
.implements Lcom/narvii/chat/screenroom/widgets/SRLiveUserLayout$OnUserCountClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/fragments/ScreenRoomFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/fragments/ScreenRoomFragment;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$3;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 188
    iget-object p1, p0, Lcom/narvii/chat/video/fragments/ScreenRoomFragment$3;->this$0:Lcom/narvii/chat/video/fragments/ScreenRoomFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/video/fragments/LiveChannelFragment;->openParticipants()V

    return-void
.end method
