.class final Lcom/narvii/master/search/GlobalSearchOthersResultFragment$onCreate$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Ljava/lang/String;",
        "Lw7/l0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$onCreate$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$onCreate$1;->invoke(Ljava/lang/String;)V

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$onCreate$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    .line 2
    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->access$getChangeSearchTextListener$p(Lcom/narvii/master/search/GlobalSearchOthersResultFragment;)Lcom/narvii/master/search/ChangeSearchTextListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/narvii/master/search/ChangeSearchTextListener;->changeSearchText(Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchOthersResultFragment$onCreate$1;->this$0:Lcom/narvii/master/search/GlobalSearchOthersResultFragment;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1, p1}, Lcom/narvii/master/search/GlobalSearchOthersResultFragment;->onSearch(Lcom/narvii/widget/SearchBar;Ljava/lang/String;)V

    return-void
.end method
