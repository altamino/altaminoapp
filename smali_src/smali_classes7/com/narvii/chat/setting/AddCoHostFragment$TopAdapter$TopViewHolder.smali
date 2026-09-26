.class public final Lcom/narvii/chat/setting/AddCoHostFragment$TopAdapter$TopViewHolder;
.super Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/setting/AddCoHostFragment$TopAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TopViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/setting/AddCoHostFragment$TopAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/setting/AddCoHostFragment$TopAdapter;Lcom/narvii/amino/databinding/CoHostTopViewBinding;)V
    .locals 1
    .param p1    # Lcom/narvii/chat/setting/AddCoHostFragment$TopAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/amino/databinding/CoHostTopViewBinding;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "itemBinding"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$TopAdapter$TopViewHolder;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment$TopAdapter;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/narvii/amino/databinding/CoHostTopViewBinding;->getRoot()Landroid/widget/LinearLayout;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    const-string p2, "getRoot(...)"

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/narvii/widget/recycleview/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 20
    return-void
.end method
