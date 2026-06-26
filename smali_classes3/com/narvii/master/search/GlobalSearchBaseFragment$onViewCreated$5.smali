.class final Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$5;
.super Ljava/lang/Object;
.source "GlobalSearchBaseFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/search/GlobalSearchBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalSearchBaseFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/search/GlobalSearchBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$5;->this$0:Lcom/narvii/master/search/GlobalSearchBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$5;->this$0:Lcom/narvii/master/search/GlobalSearchBaseFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->access$getSearchBar$p(Lcom/narvii/master/search/GlobalSearchBaseFragment;)Lcom/narvii/widget/SearchBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/widget/SearchBar;->showKeyboard()V

    :cond_0
    return-void
.end method
