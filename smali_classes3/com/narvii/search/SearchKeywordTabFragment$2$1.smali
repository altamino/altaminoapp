.class Lcom/narvii/search/SearchKeywordTabFragment$2$1;
.super Ljava/lang/Object;
.source "SearchKeywordTabFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/search/SearchKeywordTabFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/search/SearchKeywordTabFragment$2;


# direct methods
.method constructor <init>(Lcom/narvii/search/SearchKeywordTabFragment$2;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/narvii/search/SearchKeywordTabFragment$2$1;->this$1:Lcom/narvii/search/SearchKeywordTabFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/narvii/search/SearchKeywordTabFragment$2$1;->this$1:Lcom/narvii/search/SearchKeywordTabFragment$2;

    iget-object v0, v0, Lcom/narvii/search/SearchKeywordTabFragment$2;->this$0:Lcom/narvii/search/SearchKeywordTabFragment;

    invoke-static {v0}, Lcom/narvii/search/SearchKeywordTabFragment;->access$000(Lcom/narvii/search/SearchKeywordTabFragment;)Lcom/narvii/widget/SearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    return-void
.end method
