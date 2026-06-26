.class Lcom/narvii/chat/video/view/LiveChannelEntryView$1;
.super Ljava/lang/Object;
.source "LiveChannelEntryView.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/view/LiveChannelEntryView;->launchChannel(IZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/view/LiveChannelEntryView;

.field final synthetic val$channelType:I

.field final synthetic val$extra:Landroid/os/Bundle;

.field final synthetic val$isCreator:Z


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/view/LiveChannelEntryView;IZLandroid/os/Bundle;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView$1;->this$0:Lcom/narvii/chat/video/view/LiveChannelEntryView;

    iput p2, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView$1;->val$channelType:I

    iput-boolean p3, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView$1;->val$isCreator:Z

    iput-object p4, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView$1;->val$extra:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView$1;->this$0:Lcom/narvii/chat/video/view/LiveChannelEntryView;

    invoke-static {p1}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->access$000(Lcom/narvii/chat/video/view/LiveChannelEntryView;)Lcom/narvii/chat/video/view/LiveChannelEntryView$ChannelEntryClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 169
    iget-object p1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView$1;->this$0:Lcom/narvii/chat/video/view/LiveChannelEntryView;

    invoke-static {p1}, Lcom/narvii/chat/video/view/LiveChannelEntryView;->access$000(Lcom/narvii/chat/video/view/LiveChannelEntryView;)Lcom/narvii/chat/video/view/LiveChannelEntryView$ChannelEntryClickListener;

    move-result-object p1

    iget v0, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView$1;->val$channelType:I

    iget-boolean v1, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView$1;->val$isCreator:Z

    iget-object v2, p0, Lcom/narvii/chat/video/view/LiveChannelEntryView$1;->val$extra:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1, v2}, Lcom/narvii/chat/video/view/LiveChannelEntryView$ChannelEntryClickListener;->onChannelEntryClicked(IZLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 164
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/video/view/LiveChannelEntryView$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
