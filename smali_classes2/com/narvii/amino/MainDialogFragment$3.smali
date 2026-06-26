.class Lcom/narvii/amino/MainDialogFragment$3;
.super Ljava/lang/Object;
.source "MainDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/amino/MainDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/MainDialogFragment;


# direct methods
.method constructor <init>(Lcom/narvii/amino/MainDialogFragment;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 186
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    iget-boolean v1, v0, Lcom/narvii/amino/MainDialogFragment;->disabled:Z

    if-eqz v1, :cond_0

    return-void

    .line 190
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/app/NVFragment;->isDestoryed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    invoke-static {v0}, Lcom/narvii/amino/MainDialogFragment;->access$200(Lcom/narvii/amino/MainDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    iget-boolean v1, v0, Lcom/narvii/amino/MainDialogFragment;->blocking:Z

    if-eqz v1, :cond_3

    return-void

    .line 202
    :cond_3
    invoke-static {v0}, Lcom/narvii/amino/MainDialogFragment;->access$000(Lcom/narvii/amino/MainDialogFragment;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 206
    :cond_4
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    const-string v1, "flag"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v0

    .line 208
    iget-object v1, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    const-string v2, "account"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_0

    .line 209
    :cond_5
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    .line 211
    :goto_0
    iget-object v2, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    invoke-static {v2}, Lcom/narvii/amino/MainDialogFragment;->access$400(Lcom/narvii/amino/MainDialogFragment;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    invoke-static {v2}, Lcom/narvii/amino/MainDialogFragment;->access$500(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/prompt/DeprecatedStandalonePromptHelper;

    move-result-object v2

    if-nez v2, :cond_6

    .line 212
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    new-instance v1, Lcom/narvii/prompt/DeprecatedStandalonePromptHelper;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/narvii/app/NVContext;

    iget-object v3, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    invoke-static {v3}, Lcom/narvii/amino/MainDialogFragment;->access$600(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/amino/PromptShowListener;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/narvii/prompt/DeprecatedStandalonePromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;Z)V

    invoke-static {v0, v1}, Lcom/narvii/amino/MainDialogFragment;->access$502(Lcom/narvii/amino/MainDialogFragment;Lcom/narvii/prompt/DeprecatedStandalonePromptHelper;)Lcom/narvii/prompt/DeprecatedStandalonePromptHelper;

    .line 213
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    invoke-static {v0}, Lcom/narvii/amino/MainDialogFragment;->access$500(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/prompt/DeprecatedStandalonePromptHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/prompt/PromptHelper;->tryShow()V

    return-void

    :cond_6
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_7

    .line 218
    iget-object v2, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    iget-object v3, v2, Lcom/narvii/amino/MainDialogFragment;->upgradePromptHelper:Lcom/narvii/prompt/UpgradePromptHelper;

    if-nez v3, :cond_7

    .line 219
    new-instance v0, Lcom/narvii/prompt/UpgradePromptHelper;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/narvii/app/NVContext;

    iget-object v3, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    invoke-static {v3}, Lcom/narvii/amino/MainDialogFragment;->access$600(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/amino/PromptShowListener;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/narvii/prompt/UpgradePromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    iput-object v0, v2, Lcom/narvii/amino/MainDialogFragment;->upgradePromptHelper:Lcom/narvii/prompt/UpgradePromptHelper;

    .line 220
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    iget-object v0, v0, Lcom/narvii/amino/MainDialogFragment;->upgradePromptHelper:Lcom/narvii/prompt/UpgradePromptHelper;

    invoke-virtual {v0}, Lcom/narvii/prompt/PromptHelper;->tryShow()V

    return-void

    :cond_7
    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_8

    .line 224
    iget-object v2, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    iget-object v3, v2, Lcom/narvii/amino/MainDialogFragment;->globalNoticePromptHelper:Lcom/narvii/prompt/GlobalNoticePromptHelper;

    if-nez v3, :cond_8

    .line 225
    new-instance v0, Lcom/narvii/prompt/GlobalNoticePromptHelper;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/narvii/app/NVContext;

    iget-object v3, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    invoke-static {v3}, Lcom/narvii/amino/MainDialogFragment;->access$600(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/amino/PromptShowListener;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/narvii/prompt/GlobalNoticePromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    iput-object v0, v2, Lcom/narvii/amino/MainDialogFragment;->globalNoticePromptHelper:Lcom/narvii/prompt/GlobalNoticePromptHelper;

    .line 226
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    iget-object v0, v0, Lcom/narvii/amino/MainDialogFragment;->globalNoticePromptHelper:Lcom/narvii/prompt/GlobalNoticePromptHelper;

    invoke-virtual {v0}, Lcom/narvii/prompt/PromptHelper;->tryShow()V

    return-void

    :cond_8
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_9

    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_9

    .line 230
    iget-object v2, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    iget-object v3, v2, Lcom/narvii/amino/MainDialogFragment;->onBoardingPromptHelper:Lcom/narvii/prompt/OnBoardingPromptHelper;

    if-nez v3, :cond_9

    .line 231
    new-instance v0, Lcom/narvii/prompt/OnBoardingPromptHelper;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/narvii/app/NVContext;

    iget-object v3, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    invoke-static {v3}, Lcom/narvii/amino/MainDialogFragment;->access$700(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/amino/PromptShowListener;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/narvii/prompt/OnBoardingPromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    iput-object v0, v2, Lcom/narvii/amino/MainDialogFragment;->onBoardingPromptHelper:Lcom/narvii/prompt/OnBoardingPromptHelper;

    .line 232
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    iget-object v0, v0, Lcom/narvii/amino/MainDialogFragment;->onBoardingPromptHelper:Lcom/narvii/prompt/OnBoardingPromptHelper;

    invoke-virtual {v0}, Lcom/narvii/prompt/PromptHelper;->tryShow()V

    return-void

    :cond_9
    if-eqz v1, :cond_a

    .line 237
    iget-object v1, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/narvii/amino/MainActivity;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    invoke-static {v1}, Lcom/narvii/amino/MainDialogFragment;->access$800(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/prompt/AccountNoticePromptHelper;

    move-result-object v1

    if-nez v1, :cond_a

    .line 238
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    new-instance v1, Lcom/narvii/prompt/AccountNoticePromptHelper;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/narvii/app/NVContext;

    iget-object v3, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    invoke-static {v3}, Lcom/narvii/amino/MainDialogFragment;->access$600(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/amino/PromptShowListener;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/narvii/prompt/AccountNoticePromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    invoke-static {v0, v1}, Lcom/narvii/amino/MainDialogFragment;->access$802(Lcom/narvii/amino/MainDialogFragment;Lcom/narvii/prompt/AccountNoticePromptHelper;)Lcom/narvii/prompt/AccountNoticePromptHelper;

    .line 239
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    invoke-static {v0}, Lcom/narvii/amino/MainDialogFragment;->access$800(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/prompt/AccountNoticePromptHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/prompt/PromptHelper;->tryShow()V

    return-void

    .line 244
    :cond_a
    iget-object v1, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    invoke-static {v1}, Lcom/narvii/amino/MainDialogFragment;->access$900(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/prompt/AnnouncementPromptHelper;

    move-result-object v1

    if-nez v1, :cond_b

    .line 245
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    new-instance v1, Lcom/narvii/prompt/AnnouncementPromptHelper;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/narvii/app/NVContext;

    iget-object v3, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    invoke-static {v3}, Lcom/narvii/amino/MainDialogFragment;->access$600(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/amino/PromptShowListener;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/narvii/prompt/AnnouncementPromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    invoke-static {v0, v1}, Lcom/narvii/amino/MainDialogFragment;->access$902(Lcom/narvii/amino/MainDialogFragment;Lcom/narvii/prompt/AnnouncementPromptHelper;)Lcom/narvii/prompt/AnnouncementPromptHelper;

    .line 246
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    invoke-static {v0}, Lcom/narvii/amino/MainDialogFragment;->access$900(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/prompt/AnnouncementPromptHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/prompt/PromptHelper;->tryShow()V

    return-void

    :cond_b
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_c

    .line 251
    iget-object v1, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    invoke-static {v1}, Lcom/narvii/amino/MainDialogFragment;->access$1000(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/prompt/BottomDrawerPromptHelper;

    move-result-object v1

    if-nez v1, :cond_c

    .line 252
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    new-instance v1, Lcom/narvii/prompt/BottomDrawerPromptHelper;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/narvii/app/NVContext;

    iget-object v3, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    invoke-static {v3}, Lcom/narvii/amino/MainDialogFragment;->access$600(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/amino/PromptShowListener;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/narvii/prompt/BottomDrawerPromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    invoke-static {v0, v1}, Lcom/narvii/amino/MainDialogFragment;->access$1002(Lcom/narvii/amino/MainDialogFragment;Lcom/narvii/prompt/BottomDrawerPromptHelper;)Lcom/narvii/prompt/BottomDrawerPromptHelper;

    .line 253
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    invoke-static {v0}, Lcom/narvii/amino/MainDialogFragment;->access$1000(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/prompt/BottomDrawerPromptHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/prompt/PromptHelper;->tryShow()V

    return-void

    :cond_c
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_d

    .line 258
    iget-object v1, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    iget-object v2, v1, Lcom/narvii/amino/MainDialogFragment;->probationPromptHelper:Lcom/narvii/prompt/ProbationPromptHelper;

    if-nez v2, :cond_d

    .line 259
    new-instance v0, Lcom/narvii/prompt/ProbationPromptHelper;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/narvii/app/NVContext;

    iget-object v3, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    invoke-static {v3}, Lcom/narvii/amino/MainDialogFragment;->access$600(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/amino/PromptShowListener;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/narvii/prompt/ProbationPromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    iput-object v0, v1, Lcom/narvii/amino/MainDialogFragment;->probationPromptHelper:Lcom/narvii/prompt/ProbationPromptHelper;

    .line 260
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    iget-object v0, v0, Lcom/narvii/amino/MainDialogFragment;->probationPromptHelper:Lcom/narvii/prompt/ProbationPromptHelper;

    invoke-virtual {v0}, Lcom/narvii/prompt/PromptHelper;->tryShow()V

    return-void

    :cond_d
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_e

    .line 265
    iget-object v1, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    iget-object v2, v1, Lcom/narvii/amino/MainDialogFragment;->ratePromptHelper:Lcom/narvii/prompt/RatePromptHelper;

    if-nez v2, :cond_e

    .line 266
    new-instance v0, Lcom/narvii/prompt/RatePromptHelper;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/narvii/app/NVContext;

    iget-object v3, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    invoke-static {v3}, Lcom/narvii/amino/MainDialogFragment;->access$600(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/amino/PromptShowListener;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/narvii/prompt/RatePromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    iput-object v0, v1, Lcom/narvii/amino/MainDialogFragment;->ratePromptHelper:Lcom/narvii/prompt/RatePromptHelper;

    .line 267
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    iget-object v0, v0, Lcom/narvii/amino/MainDialogFragment;->ratePromptHelper:Lcom/narvii/prompt/RatePromptHelper;

    invoke-virtual {v0}, Lcom/narvii/prompt/PromptHelper;->tryShow()V

    return-void

    :cond_e
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_f

    .line 272
    iget-object v1, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    iget-object v2, v1, Lcom/narvii/amino/MainDialogFragment;->reputationPromptHelper:Lcom/narvii/prompt/ReputationPromptHelper;

    if-nez v2, :cond_f

    .line 273
    new-instance v0, Lcom/narvii/prompt/ReputationPromptHelper;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/narvii/app/NVContext;

    iget-object v3, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    invoke-static {v3}, Lcom/narvii/amino/MainDialogFragment;->access$600(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/amino/PromptShowListener;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/narvii/prompt/ReputationPromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    iput-object v0, v1, Lcom/narvii/amino/MainDialogFragment;->reputationPromptHelper:Lcom/narvii/prompt/ReputationPromptHelper;

    .line 274
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    iget-object v0, v0, Lcom/narvii/amino/MainDialogFragment;->reputationPromptHelper:Lcom/narvii/prompt/ReputationPromptHelper;

    invoke-virtual {v0}, Lcom/narvii/prompt/PromptHelper;->tryShow()V

    return-void

    :cond_f
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_10

    .line 278
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    iget-object v1, v0, Lcom/narvii/amino/MainDialogFragment;->optinAdsPromptHelper:Lcom/narvii/prompt/OptinAdsPromptHelper;

    if-nez v1, :cond_10

    .line 279
    new-instance v1, Lcom/narvii/prompt/OptinAdsPromptHelper;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/narvii/app/NVContext;

    iget-object v3, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    invoke-static {v3}, Lcom/narvii/amino/MainDialogFragment;->access$600(Lcom/narvii/amino/MainDialogFragment;)Lcom/narvii/amino/PromptShowListener;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/narvii/prompt/OptinAdsPromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    iput-object v1, v0, Lcom/narvii/amino/MainDialogFragment;->optinAdsPromptHelper:Lcom/narvii/prompt/OptinAdsPromptHelper;

    .line 280
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    iget-object v0, v0, Lcom/narvii/amino/MainDialogFragment;->optinAdsPromptHelper:Lcom/narvii/prompt/OptinAdsPromptHelper;

    invoke-virtual {v0}, Lcom/narvii/prompt/PromptHelper;->tryShow()V

    return-void

    .line 284
    :cond_10
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/narvii/amino/MainDialogFragment;->access$202(Lcom/narvii/amino/MainDialogFragment;Z)Z

    .line 285
    iget-object v0, p0, Lcom/narvii/amino/MainDialogFragment$3;->this$0:Lcom/narvii/amino/MainDialogFragment;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/narvii/amino/MainDialogFragment;->lastLoopFinishTime:J

    return-void
.end method
