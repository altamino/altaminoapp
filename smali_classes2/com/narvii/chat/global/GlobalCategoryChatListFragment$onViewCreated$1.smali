.class final Lcom/narvii/chat/global/GlobalCategoryChatListFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "GlobalCategoryChatListFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/global/GlobalCategoryChatListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/global/GlobalCategoryChatListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/global/GlobalCategoryChatListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/global/GlobalCategoryChatListFragment$onViewCreated$1;->this$0:Lcom/narvii/chat/global/GlobalCategoryChatListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 68
    new-instance p1, Lcom/narvii/community/search/MasterThemeHelper;

    iget-object v0, p0, Lcom/narvii/chat/global/GlobalCategoryChatListFragment$onViewCreated$1;->this$0:Lcom/narvii/chat/global/GlobalCategoryChatListFragment;

    invoke-direct {p1, v0}, Lcom/narvii/community/search/MasterThemeHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v0, p0, Lcom/narvii/chat/global/GlobalCategoryChatListFragment$onViewCreated$1;->this$0:Lcom/narvii/chat/global/GlobalCategoryChatListFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/community/search/MasterThemeHelper;->saveDynamicThemeBg(Landroid/app/Activity;)V

    .line 69
    const-class p1, Lcom/narvii/master/search/GlobalSearchTabFragment;

    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Source"

    const-string v1, "Global Chats"

    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalCategoryChatListFragment$onViewCreated$1;->this$0:Lcom/narvii/chat/global/GlobalCategoryChatListFragment;

    invoke-static {v0}, Lcom/narvii/chat/global/GlobalCategoryChatListFragment;->access$getLanguageService$p(Lcom/narvii/chat/global/GlobalCategoryChatListFragment;)Lcom/narvii/language/ContentLanguageService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "tab"

    const-string v1, "chat"

    .line 72
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget-object v0, p0, Lcom/narvii/chat/global/GlobalCategoryChatListFragment$onViewCreated$1;->this$0:Lcom/narvii/chat/global/GlobalCategoryChatListFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 74
    iget-object p1, p0, Lcom/narvii/chat/global/GlobalCategoryChatListFragment$onViewCreated$1;->this$0:Lcom/narvii/chat/global/GlobalCategoryChatListFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x7f010029

    const v1, 0x7f01002a

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method
