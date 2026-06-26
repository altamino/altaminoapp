.class Lcom/narvii/chat/video/overlay/ParticipantsListFragment$FooterAdapter;
.super Lcom/narvii/list/NVAdapter;
.source "ParticipantsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/overlay/ParticipantsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FooterAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 655
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$FooterAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    .line 656
    invoke-direct {p0, p2}, Lcom/narvii/list/NVAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "ViewMoreGuest"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 661
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$FooterAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$1400(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$FooterAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$1400(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const p1, 0x7f0b02f8

    .line 676
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0904eb

    .line 677
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f0904ec

    .line 678
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 p3, 0x0

    .line 679
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 680
    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$FooterAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$1400(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$FooterAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$1400(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 682
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0ff7

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, p3

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const p3, 0x7f0f0cd1

    .line 684
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 686
    :goto_1
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 697
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$FooterAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-virtual {p1}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 699
    sget-object p2, Lcom/narvii/logging/ActSemantic;->listViewEnter:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 700
    const-class p2, Lcom/narvii/chat/video/overlay/ChatGuestListFragment;

    invoke-static {p2}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    .line 701
    iget-object p3, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$FooterAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {p3}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$1400(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string/jumbo p4, "uidList"

    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 702
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "thread"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 703
    iget-object p1, p0, Lcom/narvii/chat/video/overlay/ParticipantsListFragment$FooterAdapter;->this$0:Lcom/narvii/chat/video/overlay/ParticipantsListFragment;

    invoke-static {p1}, Lcom/narvii/chat/video/overlay/ParticipantsListFragment;->access$000(Lcom/narvii/chat/video/overlay/ParticipantsListFragment;)I

    move-result p1

    const-string p3, "channelType"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x0

    const-string p3, "__communityId"

    .line 704
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 705
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
