.class Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1$1;->this$1:Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1$1;->val$dlg:Lcom/narvii/incubator/LanguageChooseDialog;

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
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1$1;->val$dlg:Lcom/narvii/incubator/LanguageChooseDialog;

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
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1$1;->val$dlg:Lcom/narvii/incubator/LanguageChooseDialog;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1$1;->this$1:Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;->this$0:Lcom/narvii/master/explorer/ExplorerCommunityListFragment;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->w(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;)Lcom/narvii/language/ContentLanguageService;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->languageUserSelected()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iget-object v1, p1, Lcom/narvii/language/LanguageSpec;->code:Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1$1;->this$1:Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;->this$0:Lcom/narvii/master/explorer/ExplorerCommunityListFragment;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    .line 40
    const/4 v1, 0x1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/narvii/util/PreferencesHelper;->explorerLanguageChanged(Z)V

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1$1;->this$1:Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;->this$0:Lcom/narvii/master/explorer/ExplorerCommunityListFragment;

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Lcom/narvii/master/explorer/ExplorerCommunityListFragment;->w(Lcom/narvii/master/explorer/ExplorerCommunityListFragment;)Lcom/narvii/language/ContentLanguageService;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    iget-object v1, p1, Lcom/narvii/language/LanguageSpec;->code:Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/narvii/language/ContentLanguageService;->saveLanguageCode(Ljava/lang/String;)V

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1$1;->this$1:Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/narvii/master/explorer/ExplorerCommunityListFragment$1;->this$0:Lcom/narvii/master/explorer/ExplorerCommunityListFragment;

    .line 61
    .line 62
    const-string v1, "statistics"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    move-result-object v0

    .line 67
    .line 68
    check-cast v0, Lcom/narvii/util/statistics/StatisticsService;

    .line 69
    .line 70
    const-string v1, "Explore Page Language Switched"

    .line 71
    .line 72
    .line 73
    invoke-interface {v0, v1}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    const-string v1, "Lang"

    .line 77
    .line 78
    iget-object p1, p1, Lcom/narvii/language/LanguageSpec;->code:Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    const-string v0, "Explore Page Language Switched Total"

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 88
    :cond_1
    return-void
.end method
