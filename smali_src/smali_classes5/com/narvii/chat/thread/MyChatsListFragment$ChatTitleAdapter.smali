.class Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;
.super Lcom/narvii/list/NVSectionHeaderAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/NVSectionHeaderAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVSectionHeaderAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 9
    .line 10
    .line 11
    const p2, 0x7f0a0cdf

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    :cond_0
    return-object p1
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0d046a

    return v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p5, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0a0cdf

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 14
    .line 15
    new-instance v1, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter$1;

    .line 16
    const/4 v2, 0x1

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, p0, p5, v2}, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter$1;-><init>(Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;Landroid/view/View;Z)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/narvii/chat/thread/MyChatsListFragment;->D(Lcom/narvii/chat/thread/MyChatsListFragment;Lcom/narvii/chat/thread/MyChatManagePopUp;)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/chat/thread/MyChatsListFragment$ChatTitleAdapter;->this$0:Lcom/narvii/chat/thread/MyChatsListFragment;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/narvii/chat/thread/MyChatsListFragment;->A(Lcom/narvii/chat/thread/MyChatsListFragment;)Lcom/narvii/chat/thread/MyChatManagePopUp;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/narvii/chat/thread/MyChatManagePopUp;->show()V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 35
    move-result p1

    .line 36
    return p1
.end method
