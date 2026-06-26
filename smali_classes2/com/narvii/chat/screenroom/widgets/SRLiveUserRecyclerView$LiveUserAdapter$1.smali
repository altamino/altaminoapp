.class Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter$1;
.super Ljava/lang/Object;
.source "SRLiveUserRecyclerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter$1;->this$1:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 243
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter$1;->this$1:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Landroid/view/View;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "InviteButton"

    .line 244
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    .line 245
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 246
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter$1;->this$1:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$LiveUserAdapter;->this$0:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView;->itemClickListener:Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;

    if-eqz p1, :cond_0

    .line 247
    invoke-interface {p1}, Lcom/narvii/chat/screenroom/widgets/SRLiveUserRecyclerView$ParticipantItemClickListener;->onInviteButtonClicked()V

    :cond_0
    return-void
.end method
