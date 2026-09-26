.class Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter$1;
.super Lcom/narvii/list/NVArrayAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter$1;->this$1:Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lcom/narvii/list/NVArrayAdapter;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0d03b7

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    iget-object p3, p0, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter$1;->this$1:Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;

    .line 10
    .line 11
    iget-object p3, p3, Lcom/narvii/chat/thread/MyChatsListFragment$AllMembersAdapter;->users:Ljava/util/List;

    .line 12
    .line 13
    if-nez p3, :cond_0

    .line 14
    const/4 p1, 0x0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/model/User;

    .line 22
    .line 23
    .line 24
    :goto_0
    const p3, 0x7f0a0f36

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object p3

    .line 29
    .line 30
    check-cast p3, Lcom/narvii/widget/UserAvatarLayout;

    .line 31
    const/4 v0, 0x1

    .line 32
    .line 33
    iput-boolean v0, p3, Lcom/narvii/widget/UserAvatarLayout;->disableFullAvatarFrame:Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 37
    return-object p2
.end method
