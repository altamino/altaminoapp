.class Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$1;
.super Ljava/lang/Object;
.source "SRLiveUserRecyclerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$1;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 85
    check-cast p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 86
    :goto_0
    iget-object v1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$1;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    invoke-static {v1}, Lcom/narvii/logging/LogUtils;->getPageContext(Landroid/view/View;)Lcom/narvii/app/NVContext;

    move-result-object v1

    sget-object v2, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-static {v1, v2}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    const-string v2, "LiveParticipants"

    .line 87
    invoke-virtual {v1, v2}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v1

    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v2, :cond_1

    iget-object v0, v2, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    .line 88
    :cond_1
    invoke-virtual {v1, v0}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    if-eqz p1, :cond_2

    .line 90
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$1;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    iget-object v0, v0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemClickListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;

    if-eqz v0, :cond_2

    .line 91
    invoke-interface {v0, p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;->onParticipantItemClicked(Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    :cond_2
    return-void
.end method
