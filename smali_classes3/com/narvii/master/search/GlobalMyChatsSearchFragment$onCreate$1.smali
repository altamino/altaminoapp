.class final Lcom/narvii/master/search/GlobalMyChatsSearchFragment$onCreate$1;
.super Ljava/lang/Object;
.source "GlobalMyChatsSearchFragment.kt"

# interfaces
.implements Lcom/narvii/search/InstantSearchListener$RefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/search/GlobalMyChatsSearchFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalMyChatsSearchFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/search/GlobalMyChatsSearchFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$onCreate$1;->this$0:Lcom/narvii/master/search/GlobalMyChatsSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRefresh(Ljava/lang/String;Z)V
    .locals 1

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 38
    iget-object p2, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$onCreate$1;->this$0:Lcom/narvii/master/search/GlobalMyChatsSearchFragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p2

    instance-of p2, p2, Lcom/narvii/search/ISearchBarHost;

    if-eqz p2, :cond_1

    .line 39
    iget-object p2, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$onCreate$1;->this$0:Lcom/narvii/master/search/GlobalMyChatsSearchFragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Lcom/narvii/search/ISearchBarHost;

    iget-object v0, p0, Lcom/narvii/master/search/GlobalMyChatsSearchFragment$onCreate$1;->this$0:Lcom/narvii/master/search/GlobalMyChatsSearchFragment;

    invoke-interface {p2, v0, p1}, Lcom/narvii/search/ISearchBarHost;->onChildFragmentRealtimeSearch(Lcom/narvii/app/NVFragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.search.ISearchBarHost"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
