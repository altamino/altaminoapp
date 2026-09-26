.class public final Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$AddCoHostViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AddCoHostViewHolder"
.end annotation


# instance fields
.field private final binding:Lcom/narvii/amino/databinding/ItemThreadMemberInviteBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;Lcom/narvii/amino/databinding/ItemThreadMemberInviteBinding;)V
    .locals 2
    .param p1    # Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/amino/databinding/ItemThreadMemberInviteBinding;",
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
    iput-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$AddCoHostViewHolder;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/narvii/amino/databinding/ItemThreadMemberInviteBinding;->getRoot()Lcom/github/mmin18/widget/FlexLayout;

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
    iput-object p2, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$AddCoHostViewHolder;->binding:Lcom/narvii/amino/databinding/ItemThreadMemberInviteBinding;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/narvii/amino/databinding/ItemThreadMemberInviteBinding;->getRoot()Lcom/github/mmin18/widget/FlexLayout;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    iget-object p1, p1, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-void
.end method


# virtual methods
.method public final bind(Lcom/narvii/model/User;)V
    .locals 2
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
    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$AddCoHostViewHolder;->binding:Lcom/narvii/amino/databinding/ItemThreadMemberInviteBinding;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/narvii/amino/databinding/ItemThreadMemberInviteBinding;->text:Landroid/widget/TextView;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$AddCoHostViewHolder;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    const v1, 0x7f120071

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    return-void
.end method
