.class Lcom/narvii/monetization/bubble/PickChatThreadListFragment$TitleAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "PickChatThreadListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/bubble/PickChatThreadListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TitleAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/PickChatThreadListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/bubble/PickChatThreadListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$TitleAdapter;->this$0:Lcom/narvii/monetization/bubble/PickChatThreadListFragment;

    .line 147
    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$TitleAdapter;->this$0:Lcom/narvii/monetization/bubble/PickChatThreadListFragment;

    invoke-static {v0}, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->access$000(Lcom/narvii/monetization/bubble/PickChatThreadListFragment;)Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$TitleAdapter;->this$0:Lcom/narvii/monetization/bubble/PickChatThreadListFragment;

    .line 158
    invoke-static {v0}, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->access$000(Lcom/narvii/monetization/bubble/PickChatThreadListFragment;)Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$TitleAdapter;->this$0:Lcom/narvii/monetization/bubble/PickChatThreadListFragment;

    invoke-static {v0}, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->access$000(Lcom/narvii/monetization/bubble/PickChatThreadListFragment;)Lcom/narvii/monetization/bubble/PickChatThreadListFragment$MyChatListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b0416

    .line 152
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
