.class final Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$2;
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

    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$2;->this$0:Lcom/narvii/master/search/GlobalSearchBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$2;->this$0:Lcom/narvii/master/search/GlobalSearchBaseFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->access$getSearchText$p(Lcom/narvii/master/search/GlobalSearchBaseFragment;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$2;->this$0:Lcom/narvii/master/search/GlobalSearchBaseFragment;

    invoke-static {v1}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->access$getSearchKey$p(Lcom/narvii/master/search/GlobalSearchBaseFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$2;->this$0:Lcom/narvii/master/search/GlobalSearchBaseFragment;

    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->access$getSearchText$p(Lcom/narvii/master/search/GlobalSearchBaseFragment;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/narvii/master/search/GlobalSearchBaseFragment$onViewCreated$2;->this$0:Lcom/narvii/master/search/GlobalSearchBaseFragment;

    invoke-static {v1}, Lcom/narvii/master/search/GlobalSearchBaseFragment;->access$getSearchKey$p(Lcom/narvii/master/search/GlobalSearchBaseFragment;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    return-void
.end method
