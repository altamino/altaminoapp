.class public final Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$4;
.super Ljava/lang/Object;
.source "GlobalSearchBaseFragment.kt"

# interfaces
.implements Lcom/narvii/widget/SearchBar$OnSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/search/GlobalSearchBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalSearchBaseFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/search/GlobalSearchBaseFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$4;->this$0:Lcom/narvii/master/search/GlobalSearchBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$4;->this$0:Lcom/narvii/master/search/GlobalSearchBaseFragment;

    invoke-static {v0, p2}, Lcom/narvii/master/search/SearchLog;->builder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/master/search/SearchLog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/master/search/SearchLog$Builder;->build()Lcom/narvii/master/search/SearchLog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->access$logSearchEvent(Lcom/narvii/master/search/GlobalSearchBaseFragment;Lcom/narvii/master/search/SearchLog;)V

    .line 93
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$4;->this$0:Lcom/narvii/master/search/GlobalSearchBaseFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->access$getCurrentFragment$p(Lcom/narvii/master/search/GlobalSearchBaseFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/widget/SearchBar$OnSearchListener;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$4;->this$0:Lcom/narvii/master/search/GlobalSearchBaseFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->access$getCurrentFragment$p(Lcom/narvii/master/search/GlobalSearchBaseFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/narvii/widget/SearchBar$OnSearchListener;

    invoke-interface {v0, p1, p2}, Lcom/narvii/widget/SearchBar$OnSearchListener;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.widget.SearchBar.OnSearchListener"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$4;->this$0:Lcom/narvii/master/search/GlobalSearchBaseFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$4;->this$0:Lcom/narvii/master/search/GlobalSearchBaseFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->access$getCurrentFragment$p(Lcom/narvii/master/search/GlobalSearchBaseFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/widget/SearchBar$OnSearchListener;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$4;->this$0:Lcom/narvii/master/search/GlobalSearchBaseFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->access$getCurrentFragment$p(Lcom/narvii/master/search/GlobalSearchBaseFragment;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/narvii/widget/SearchBar$OnSearchListener;

    invoke-interface {v0, p1, p2}, Lcom/narvii/widget/SearchBar$OnSearchListener;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.widget.SearchBar.OnSearchListener"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
