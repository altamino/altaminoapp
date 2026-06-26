.class public Lcom/narvii/prompt/AccountNoticePromptHelper;
.super Lcom/narvii/prompt/PromptHelper;
.source "AccountNoticePromptHelper.java"

# interfaces
.implements Lcom/narvii/master/BottomDrawerViewHelper$BottomDismissListener;


# instance fields
.field bottomDrawerViewHelper:Lcom/narvii/master/BottomDrawerViewHelper;

.field dismissed:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/narvii/prompt/PromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    .line 19
    new-instance p2, Lcom/narvii/master/BottomDrawerViewHelper;

    invoke-direct {p2, p1}, Lcom/narvii/master/BottomDrawerViewHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/prompt/AccountNoticePromptHelper;->bottomDrawerViewHelper:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 20
    iget-object p1, p0, Lcom/narvii/prompt/AccountNoticePromptHelper;->bottomDrawerViewHelper:Lcom/narvii/master/BottomDrawerViewHelper;

    invoke-virtual {p1, p0}, Lcom/narvii/master/BottomDrawerViewHelper;->setBottomDismissListener(Lcom/narvii/master/BottomDrawerViewHelper$BottomDismissListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/prompt/AccountNoticePromptHelper;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/narvii/prompt/AccountNoticePromptHelper;->showImportantNoticeView()V

    return-void
.end method

.method private showImportantNoticeView()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/narvii/prompt/AccountNoticePromptHelper;->bottomDrawerViewHelper:Lcom/narvii/master/BottomDrawerViewHelper;

    invoke-virtual {v0}, Lcom/narvii/master/BottomDrawerViewHelper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/narvii/prompt/AccountNoticePromptHelper;->bottomDrawerViewHelper:Lcom/narvii/master/BottomDrawerViewHelper;

    invoke-virtual {v0}, Lcom/narvii/master/BottomDrawerViewHelper;->showImportNotice()V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    :goto_0
    return-void
.end method


# virtual methods
.method public doTryShow()V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getNoticeCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 26
    new-instance v0, Lcom/narvii/prompt/AccountNoticePromptHelper$1;

    invoke-direct {v0, p0}, Lcom/narvii/prompt/AccountNoticePromptHelper$1;-><init>(Lcom/narvii/prompt/AccountNoticePromptHelper;)V

    invoke-virtual {p0, v0}, Lcom/narvii/prompt/PromptHelper;->dispatchShowPromptRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    :goto_0
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/narvii/prompt/AccountNoticePromptHelper;->dismissed:Z

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/narvii/prompt/AccountNoticePromptHelper;->dismissed:Z

    :cond_0
    return-void
.end method

.method public onPostShow()V
    .locals 0

    return-void
.end method
