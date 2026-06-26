.class final Lcom/narvii/master/search/GlobalStorySearchListFragment$onCreate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "GlobalStorySearchListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/search/GlobalStorySearchListFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalStorySearchListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/search/GlobalStorySearchListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment$onCreate$1;->this$0:Lcom/narvii/master/search/GlobalStorySearchListFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/master/search/GlobalStorySearchListFragment$onCreate$1;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment$onCreate$1;->this$0:Lcom/narvii/master/search/GlobalStorySearchListFragment;

    invoke-virtual {v0}, Lcom/narvii/master/search/GlobalStorySearchListFragment;->getChangeSearchTextListener$Amino_bundle()Lcom/narvii/master/search/ChangeSearchTextListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/narvii/master/search/ChangeSearchTextListener;->changeSearchText(Ljava/lang/String;Z)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment$onCreate$1;->this$0:Lcom/narvii/master/search/GlobalStorySearchListFragment;

    invoke-virtual {v0}, Lcom/narvii/master/search/GlobalStorySearchListFragment;->getSEARCH_SOURCE$Amino_bundle()Lcom/narvii/util/statistics/TmpValue;

    move-result-object v0

    const-string v1, "Recent Searches"

    invoke-virtual {v0, v1}, Lcom/narvii/util/statistics/TmpValue;->set(Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/narvii/master/search/GlobalStorySearchListFragment$onCreate$1;->this$0:Lcom/narvii/master/search/GlobalStorySearchListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/narvii/master/search/GlobalStorySearchListFragment;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    return-void
.end method
