.class public Lcom/narvii/prompt/GlobalNoticePromptHelper;
.super Lcom/narvii/prompt/PromptHelper;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/master/BottomDrawerViewHelper$BottomDismissListener;


# instance fields
.field bottomDrawerViewHelper:Lcom/narvii/master/BottomDrawerViewHelper;

.field dismissed:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/prompt/PromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    .line 4
    .line 5
    new-instance p2, Lcom/narvii/prompt/GlobalNoticePromptHelper$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {p2, p0, p1}, Lcom/narvii/prompt/GlobalNoticePromptHelper$1;-><init>(Lcom/narvii/prompt/GlobalNoticePromptHelper;Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    iput-object p2, p0, Lcom/narvii/prompt/GlobalNoticePromptHelper;->bottomDrawerViewHelper:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p0}, Lcom/narvii/master/BottomDrawerViewHelper;->setBottomDismissListener(Lcom/narvii/master/BottomDrawerViewHelper$BottomDismissListener;)V

    .line 14
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/prompt/GlobalNoticePromptHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/prompt/GlobalNoticePromptHelper;->showImportantNoticeView()V

    return-void
.end method

.method private showImportantNoticeView()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prompt/GlobalNoticePromptHelper;->bottomDrawerViewHelper:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/master/BottomDrawerViewHelper;->getActivity()Landroid/app/Activity;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/prompt/GlobalNoticePromptHelper;->bottomDrawerViewHelper:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/master/BottomDrawerViewHelper;->showImportNotice()V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    .line 18
    :goto_0
    return-void
.end method


# virtual methods
.method public doTryShow()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getNoticeCount()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/narvii/prompt/GlobalNoticePromptHelper$2;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/narvii/prompt/GlobalNoticePromptHelper$2;-><init>(Lcom/narvii/prompt/GlobalNoticePromptHelper;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/prompt/PromptHelper;->dispatchShowPromptRunnable(Ljava/lang/Runnable;)V

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    .line 21
    :goto_0
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/prompt/GlobalNoticePromptHelper;->dismissed:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    .line 8
    const/4 v0, 0x1

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/narvii/prompt/GlobalNoticePromptHelper;->dismissed:Z

    .line 11
    :cond_0
    return-void
.end method

.method public onPostShow()V
    .locals 0

    return-void
.end method
