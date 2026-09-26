.class public final Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$4;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$4;->this$0:Lcom/narvii/master/search/GlobalSearchBaseFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/narvii/widget/SearchBar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$4;->this$0:Lcom/narvii/master/search/GlobalSearchBaseFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p2}, Lcom/narvii/master/search/SearchLog;->builder(Lcom/narvii/app/NVContext;Ljava/lang/String;)Lcom/narvii/master/search/SearchLog$Builder;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/narvii/master/search/SearchLog$Builder;->build()Lcom/narvii/master/search/SearchLog;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->access$logSearchEvent(Lcom/narvii/master/search/GlobalSearchBaseFragment;Lcom/narvii/master/search/SearchLog;)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$4;->this$0:Lcom/narvii/master/search/GlobalSearchBaseFragment;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->access$getCurrentFragment$p(Lcom/narvii/master/search/GlobalSearchBaseFragment;)Landroidx/fragment/app/Fragment;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    instance-of v0, v0, Lcom/narvii/widget/SearchBar$OnSearchListener;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$4;->this$0:Lcom/narvii/master/search/GlobalSearchBaseFragment;

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->access$getCurrentFragment$p(Lcom/narvii/master/search/GlobalSearchBaseFragment;)Landroidx/fragment/app/Fragment;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    const-string v1, "null cannot be cast to non-null type com.narvii.widget.SearchBar.OnSearchListener"

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    check-cast v0, Lcom/narvii/widget/SearchBar$OnSearchListener;

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, p1, p2}, Lcom/narvii/widget/SearchBar$OnSearchListener;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 40
    .line 41
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$4;->this$0:Lcom/narvii/master/search/GlobalSearchBaseFragment;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 45
    move-result-object p1

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/narvii/widget/SearchBar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$4;->this$0:Lcom/narvii/master/search/GlobalSearchBaseFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->access$getCurrentFragment$p(Lcom/narvii/master/search/GlobalSearchBaseFragment;)Landroidx/fragment/app/Fragment;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    instance-of v0, v0, Lcom/narvii/widget/SearchBar$OnSearchListener;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$4;->this$0:Lcom/narvii/master/search/GlobalSearchBaseFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->access$getCurrentFragment$p(Lcom/narvii/master/search/GlobalSearchBaseFragment;)Landroidx/fragment/app/Fragment;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "null cannot be cast to non-null type com.narvii.widget.SearchBar.OnSearchListener"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/widget/SearchBar$OnSearchListener;

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, p1, p2}, Lcom/narvii/widget/SearchBar$OnSearchListener;->onTextChanged(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    .line 27
    :cond_0
    return-void
.end method
