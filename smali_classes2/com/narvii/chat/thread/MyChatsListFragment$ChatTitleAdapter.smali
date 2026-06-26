.class Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;
.super Lcom/narvii/list/NVSectionHeaderAdapter;
.source "MyChatsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/thread/MyChatsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChatTitleAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/thread/MyChatsListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/thread/MyChatsListFragment;)V
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 573
    invoke-direct {p0, p1}, Lcom/narvii/list/NVSectionHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 578
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVSectionHeaderAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    .line 579
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    const p2, 0x7f090a17

    .line 580
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 582
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object p1
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0b0434

    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    if-eqz p5, :cond_0

    .line 594
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090a17

    if-ne v0, v1, :cond_0

    .line 595
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    new-instance v1, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p5, v2}, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter$1;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;Landroid/view/View;Z)V

    invoke-static {v0, v1}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$502(Lcom/narvii/chat/thread/MyChatsListFragment;Lcom/narvii/chat/thread/MyChatManagePopUp;)Lcom/narvii/chat/thread/MyChatManagePopUp;

    .line 617
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->access$500(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/thread/MyChatManagePopUp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/chat/thread/MyChatManagePopUp;->show()V

    .line 619
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
