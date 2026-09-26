.class public final Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$WaitingViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WaitingViewHolder"
.end annotation


# instance fields
.field private final binding:Lcom/narvii/amino/databinding/LiveWaitingItemBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;Lcom/narvii/amino/databinding/LiveWaitingItemBinding;)V
    .locals 2
    .param p1    # Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/amino/databinding/LiveWaitingItemBinding;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "binding"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$WaitingViewHolder;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/narvii/amino/databinding/LiveWaitingItemBinding;->getRoot()Landroid/widget/RelativeLayout;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-string v1, "getRoot(...)"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0}, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 20
    .line 21
    iput-object p2, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$WaitingViewHolder;->binding:Lcom/narvii/amino/databinding/LiveWaitingItemBinding;

    .line 22
    .line 23
    iget-object v0, p2, Lcom/narvii/amino/databinding/LiveWaitingItemBinding;->acceptView:Lcom/narvii/chat/setting/widget/WaitListAcceptView;

    .line 24
    .line 25
    iget-object v1, p1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    iget-object v0, p2, Lcom/narvii/amino/databinding/LiveWaitingItemBinding;->avatar:Lcom/narvii/amino/databinding/UserAvatarLayoutMiniBinding;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/narvii/amino/databinding/UserAvatarLayoutMiniBinding;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 33
    .line 34
    iget-object v1, p1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    iget-object p2, p2, Lcom/narvii/amino/databinding/LiveWaitingItemBinding;->nickname:Lcom/narvii/widget/NicknameView;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method


# virtual methods
.method public final bind(Lcom/narvii/model/User;I)V
    .locals 4
    .param p1    # Lcom/narvii/model/User;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "user"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$WaitingViewHolder;->binding:Lcom/narvii/amino/databinding/LiveWaitingItemBinding;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter$WaitingViewHolder;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->this$0:Lcom/narvii/chat/setting/LiveWaitingListFragment;

    .line 12
    .line 13
    iget-object v3, v0, Lcom/narvii/amino/databinding/LiveWaitingItemBinding;->avatar:Lcom/narvii/amino/databinding/UserAvatarLayoutMiniBinding;

    .line 14
    .line 15
    iget-object v3, v3, Lcom/narvii/amino/databinding/UserAvatarLayoutMiniBinding;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 19
    .line 20
    iget-object v3, v0, Lcom/narvii/amino/databinding/LiveWaitingItemBinding;->nickname:Lcom/narvii/widget/NicknameView;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, p1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 24
    .line 25
    iget-object v3, v0, Lcom/narvii/amino/databinding/LiveWaitingItemBinding;->index:Landroid/widget/TextView;

    .line 26
    .line 27
    add-int/lit8 p2, p2, 0x1

    .line 28
    .line 29
    .line 30
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;->access$getRequestedIdSet$p(Lcom/narvii/chat/setting/LiveWaitingListFragment$Adapter;)Ljava/util/Set;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    iget-object v1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 44
    move-result p2

    .line 45
    .line 46
    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-static {v2}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$getCurrentUser$p(Lcom/narvii/chat/setting/LiveWaitingListFragment;)Lcom/narvii/model/User;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    if-nez v1, :cond_0

    .line 53
    .line 54
    const-string v1, "currentUser"

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 58
    const/4 v1, 0x0

    .line 59
    .line 60
    :cond_0
    iget-object v1, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    move-result p1

    .line 65
    .line 66
    iget-object v1, v0, Lcom/narvii/amino/databinding/LiveWaitingItemBinding;->acceptView:Lcom/narvii/chat/setting/widget/WaitListAcceptView;

    .line 67
    .line 68
    .line 69
    invoke-static {v2}, Lcom/narvii/chat/setting/LiveWaitingListFragment;->access$isHostOrCoHost$p(Lcom/narvii/chat/setting/LiveWaitingListFragment;)Z

    .line 70
    move-result v2

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p2, v2, p1}, Lcom/narvii/chat/setting/widget/WaitListAcceptView;->updateState(ZZZ)V

    .line 74
    .line 75
    if-eqz p1, :cond_1

    .line 76
    .line 77
    iget-object p1, v0, Lcom/narvii/amino/databinding/LiveWaitingItemBinding;->nickname:Lcom/narvii/widget/NicknameView;

    .line 78
    .line 79
    .line 80
    const p2, 0x7f120c2a

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NicknameView;->setText(I)V

    .line 84
    :cond_1
    return-void
.end method
