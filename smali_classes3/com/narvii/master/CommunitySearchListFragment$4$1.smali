.class Lcom/narvii/master/CommunitySearchListFragment$4$1;
.super Ljava/lang/Object;
.source "CommunitySearchListFragment.java"

# interfaces
.implements Lcom/narvii/incubator/LanguageChooseDialog$ItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/CommunitySearchListFragment$4;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/explorer/SupportLanguageResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/master/CommunitySearchListFragment$4;

.field final synthetic val$dlg:Lcom/narvii/incubator/LanguageChooseDialog;


# direct methods
.method constructor <init>(Lcom/narvii/master/CommunitySearchListFragment$4;Lcom/narvii/incubator/LanguageChooseDialog;)V
    .locals 0

    .line 784
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$4$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$4;

    iput-object p2, p0, Lcom/narvii/master/CommunitySearchListFragment$4$1;->val$dlg:Lcom/narvii/incubator/LanguageChooseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/narvii/language/LanguageSpec;)V
    .locals 2

    .line 787
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$4$1;->val$dlg:Lcom/narvii/incubator/LanguageChooseDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$4$1;->val$dlg:Lcom/narvii/incubator/LanguageChooseDialog;

    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$4$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$4;

    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment$4;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->languageUserSelected()Ljava/lang/String;

    move-result-object v0

    .line 792
    iget-object v1, p1, Lcom/narvii/language/LanguageSpec;->code:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 793
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$4$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$4;

    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment$4;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object p1, p1, Lcom/narvii/language/LanguageSpec;->code:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/narvii/master/CommunitySearchListFragment;->access$2302(Lcom/narvii/master/CommunitySearchListFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 794
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$4$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$4;

    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment$4;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object v0, p1, Lcom/narvii/master/CommunitySearchListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    invoke-static {p1}, Lcom/narvii/master/CommunitySearchListFragment;->access$2400(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/language/ContentLanguageService;->saveLanguageCode(Ljava/lang/String;)V

    .line 796
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$4$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$4;

    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment$4;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment;->trendingCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterTrendingCommunityAdapter;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 797
    invoke-virtual {p1, v1, v0}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 800
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$4$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$4;

    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment$4;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    invoke-static {p1}, Lcom/narvii/master/CommunitySearchListFragment;->access$2500(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 801
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$4$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$4;

    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment$4;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment;->mergeAdapter:Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;

    if-eqz p1, :cond_2

    .line 802
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 803
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$4$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$4;

    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment$4;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment;->mergeAdapter:Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;

    invoke-virtual {p1, v1, v0}, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->refresh(ILcom/narvii/util/Callback;)V

    :cond_2
    return-void
.end method
