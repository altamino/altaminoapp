.class Lcom/narvii/master/search/GlobalSearchTabFragment$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/search/GlobalSearchTabFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/master/search/GlobalSearchTabFragment$3;


# direct methods
.method constructor <init>(Lcom/narvii/master/search/GlobalSearchTabFragment$3;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/search/GlobalSearchTabFragment$3$1;->this$1:Lcom/narvii/master/search/GlobalSearchTabFragment$3;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/search/GlobalSearchTabFragment$3$1;->this$1:Lcom/narvii/master/search/GlobalSearchTabFragment$3;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/master/search/GlobalSearchTabFragment$3;->this$0:Lcom/narvii/master/search/GlobalSearchTabFragment;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/narvii/master/search/GlobalSearchTabFragment;->o(Lcom/narvii/master/search/GlobalSearchTabFragment;)Lcom/narvii/widget/SearchBar;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/util/SoftKeyboard;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 16
    return-void
.end method
