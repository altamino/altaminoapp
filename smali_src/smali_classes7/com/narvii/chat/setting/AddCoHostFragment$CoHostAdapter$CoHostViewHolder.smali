.class public final Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CoHostViewHolder"
.end annotation


# instance fields
.field private final binding:Lcom/narvii/amino/databinding/ItemThreadMemberBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;Lcom/narvii/amino/databinding/ItemThreadMemberBinding;)V
    .locals 2
    .param p1    # Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/amino/databinding/ItemThreadMemberBinding;",
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
    iput-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostViewHolder;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/narvii/amino/databinding/ItemThreadMemberBinding;->getRoot()Lcom/github/mmin18/widget/FlexLayout;

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
    iput-object p2, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostViewHolder;->binding:Lcom/narvii/amino/databinding/ItemThreadMemberBinding;

    .line 22
    .line 23
    iget-object v0, p2, Lcom/narvii/amino/databinding/ItemThreadMemberBinding;->chatMemberInvited:Landroid/widget/TextView;

    .line 24
    .line 25
    const/16 v1, 0x8

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/narvii/amino/databinding/ItemThreadMemberBinding;->getRoot()Lcom/github/mmin18/widget/FlexLayout;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    iget-object v1, p1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/narvii/amino/databinding/ItemThreadMemberBinding;->getRoot()Lcom/github/mmin18/widget/FlexLayout;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    iget-object p1, p1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 47
    return-void
.end method


# virtual methods
.method public final bind(Lcom/narvii/model/User;)V
    .locals 1
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
    iget-object v0, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostViewHolder;->binding:Lcom/narvii/amino/databinding/ItemThreadMemberBinding;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/narvii/amino/databinding/ItemThreadMemberBinding;->userAvatarLayout:Lcom/narvii/amino/databinding/UserAvatarLayoutMiniBinding;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/narvii/amino/databinding/UserAvatarLayoutMiniBinding;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostViewHolder;->binding:Lcom/narvii/amino/databinding/ItemThreadMemberBinding;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/narvii/amino/databinding/ItemThreadMemberBinding;->nickname:Lcom/narvii/widget/NicknameView;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 22
    return-void
.end method
