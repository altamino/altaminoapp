.class final Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "CommunityChatFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/global/chat/CommunityChatFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $c:Lcom/narvii/model/Community;

.field final synthetic this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/global/chat/CommunityChatFragment;Lcom/narvii/model/Community;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    iput-object p2, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$1;->$c:Lcom/narvii/model/Community;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 196
    iget-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$1;->$c:Lcom/narvii/model/Community;

    if-eqz p1, :cond_0

    .line 197
    iget-object p1, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->aminoEnter:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$1;->$c:Lcom/narvii/model/Community;

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->object(Lcom/narvii/model/NVObject;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "CommunityBar"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 198
    new-instance p1, Lcom/narvii/community/CommunityLaunchHelper;

    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$1;->this$0:Lcom/narvii/chat/global/chat/CommunityChatFragment;

    invoke-direct {p1, v0}, Lcom/narvii/community/CommunityLaunchHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p1, Lcom/narvii/community/CommunityLaunchHelper;->needUpdateCommunity:Z

    .line 200
    iget-object v0, p0, Lcom/narvii/chat/global/chat/CommunityChatFragment$onViewCreated$1;->$c:Lcom/narvii/model/Community;

    iget v1, v0, Lcom/narvii/model/Community;->id:I

    invoke-virtual {p1, v1, v0}, Lcom/narvii/community/CommunityLaunchHelper;->launch(ILcom/narvii/model/Community;)V

    :cond_0
    return-void
.end method
