.class Lcom/narvii/master/CommunitySearchListFragment$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$4$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$4;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/master/CommunitySearchListFragment$4$1;->val$dlg:Lcom/narvii/incubator/LanguageChooseDialog;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/narvii/language/LanguageSpec;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$4$1;->val$dlg:Lcom/narvii/incubator/LanguageChooseDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$4$1;->val$dlg:Lcom/narvii/incubator/LanguageChooseDialog;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$4$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$4;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment$4;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->languageUserSelected()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget-object v1, p1, Lcom/narvii/language/LanguageSpec;->code:Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$4$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$4;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment$4;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/narvii/language/LanguageSpec;->code:Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-static {v0, p1}, Lcom/narvii/master/CommunitySearchListFragment;->access$1402(Lcom/narvii/master/CommunitySearchListFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$4$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$4;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment$4;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 45
    .line 46
    iget-object v0, p1, Lcom/narvii/master/CommunitySearchListFragment;->languageService:Lcom/narvii/language/ContentLanguageService;

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lcom/narvii/master/CommunitySearchListFragment;->access$1500(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Lcom/narvii/language/ContentLanguageService;->saveLanguageCode(Ljava/lang/String;)V

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$4$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$4;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment$4;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment;->trendingCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterTrendingCommunityAdapter;

    .line 60
    const/4 v0, 0x0

    .line 61
    const/4 v1, 0x0

    .line 62
    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v1, v0}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 67
    .line 68
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$4$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$4;

    .line 69
    .line 70
    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment$4;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lcom/narvii/master/CommunitySearchListFragment;->access$1600(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    move-result p1

    .line 79
    .line 80
    if-nez p1, :cond_2

    .line 81
    .line 82
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$4$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$4;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment$4;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 85
    .line 86
    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment;->mergeAdapter:Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;

    .line 87
    .line 88
    if-eqz p1, :cond_2

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 92
    .line 93
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$4$1;->this$1:Lcom/narvii/master/CommunitySearchListFragment$4;

    .line 94
    .line 95
    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment$4;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 96
    .line 97
    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment;->mergeAdapter:Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v1, v0}, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 101
    :cond_2
    return-void
.end method
