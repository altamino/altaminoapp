.class Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1$1;
.super Ljava/lang/Object;
.source "ExplorerCommunityListFragment.java"

# interfaces
.implements Lcom/narvii/incubator/LanguageChooseDialog$ItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/explorer/SupportLanguageResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;

.field final synthetic val$dlg:Lcom/narvii/incubator/LanguageChooseDialog;


# direct methods
.method constructor <init>(Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;Lcom/narvii/incubator/LanguageChooseDialog;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1$1;->this$1:Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;

    iput-object p2, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1$1;->val$dlg:Lcom/narvii/incubator/LanguageChooseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/narvii/language/LanguageSpec;)V
    .locals 2

    .line 483
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1$1;->val$dlg:Lcom/narvii/incubator/LanguageChooseDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1$1;->val$dlg:Lcom/narvii/incubator/LanguageChooseDialog;

    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1$1;->this$1:Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;

    iget-object v0, v0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;->this$0:Lcom/narvii/master/explorer/ExplorerCommunityListFragment;

    invoke-static {v0}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->access$300(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;)Lcom/narvii/language/ContentLanguageService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->languageUserSelected()Ljava/lang/String;

    move-result-object v0

    .line 488
    iget-object v1, p1, Lcom/narvii/language/LanguageSpec;->code:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1$1;->this$1:Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;

    iget-object v0, v0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;->this$0:Lcom/narvii/master/explorer/ExplorerCommunityListFragment;

    iget-object v0, v0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/util/PreferencesHelper;->explorerLanguageChanged(Z)V

    .line 490
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1$1;->this$1:Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;

    iget-object v0, v0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;->this$0:Lcom/narvii/master/explorer/ExplorerCommunityListFragment;

    invoke-static {v0}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->access$300(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;)Lcom/narvii/language/ContentLanguageService;

    move-result-object v0

    iget-object v1, p1, Lcom/narvii/language/LanguageSpec;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/narvii/language/ContentLanguageService;->saveLanguageCode(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
