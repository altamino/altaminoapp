.class Lcom/narvii/monetization/bubble/PickChatThreadListFragment$CreateNewChatAdapter;
.super Lcom/narvii/list/AdriftAdapter;
.source "PickChatThreadListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/monetization/bubble/PickChatThreadListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CreateNewChatAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/monetization/bubble/PickChatThreadListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/monetization/bubble/PickChatThreadListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$CreateNewChatAdapter;->this$0:Lcom/narvii/monetization/bubble/PickChatThreadListFragment;

    .line 122
    invoke-direct {p0, p2}, Lcom/narvii/list/AdriftAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const p1, 0x7f0b0417

    .line 127
    invoke-virtual {p0, p1, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 128
    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/narvii/monetization/bubble/PickChatThreadListFragment$CreateNewChatAdapter;->this$0:Lcom/narvii/monetization/bubble/PickChatThreadListFragment;

    invoke-virtual {v0}, Lcom/narvii/monetization/bubble/PickChatThreadListFragment;->onCreateChatClicked()V

    .line 136
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
