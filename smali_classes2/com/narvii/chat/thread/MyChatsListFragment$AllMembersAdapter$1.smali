.class Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter$1;
.super Lcom/narvii/list/NVArrayAdapter;
.source "MyChatsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVArrayAdapter<",
        "Lcom/narvii/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;Lcom/narvii/app/NVContext;Ljava/lang/Class;)V
    .locals 0

    .line 893
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter$1;->this$1:Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;

    invoke-direct {p0, p2, p3}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const v0, 0x7f0b037c

    .line 896
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 897
    iget-object p3, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter$1;->this$1:Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;

    iget-object p3, p3, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->users:Ljava/util/List;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    :goto_0
    const p3, 0x7f090c10

    .line 898
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/UserAvatarLayout;

    const/4 v0, 0x1

    .line 899
    iput-boolean v0, p3, Lcom/narvii/widget/UserAvatarLayout;->disableFullAvatarFrame:Z

    .line 900
    invoke-virtual {p3, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    return-object p2
.end method
