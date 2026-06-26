.class public Lcom/narvii/prompt/BottomDrawerPromptHelper;
.super Lcom/narvii/prompt/PromptHelper;
.source "BottomDrawerPromptHelper.java"

# interfaces
.implements Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;
.implements Lcom/narvii/master/BottomDrawerViewHelper$BottomDismissListener;


# instance fields
.field bottomDrawerHelper:Lcom/narvii/master/BottomDrawerHelper;

.field bottomDrawerViewHelper:Lcom/narvii/master/BottomDrawerViewHelper;

.field dismissed:Z

.field sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/narvii/prompt/PromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    .line 25
    new-instance p2, Lcom/narvii/master/BottomDrawerHelper;

    invoke-direct {p2, p1, p0}, Lcom/narvii/master/BottomDrawerHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;)V

    iput-object p2, p0, Lcom/narvii/prompt/BottomDrawerPromptHelper;->bottomDrawerHelper:Lcom/narvii/master/BottomDrawerHelper;

    .line 26
    new-instance p2, Lcom/narvii/master/BottomDrawerViewHelper;

    invoke-direct {p2, p1}, Lcom/narvii/master/BottomDrawerViewHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/prompt/BottomDrawerPromptHelper;->bottomDrawerViewHelper:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 27
    iget-object p2, p0, Lcom/narvii/prompt/BottomDrawerPromptHelper;->bottomDrawerViewHelper:Lcom/narvii/master/BottomDrawerViewHelper;

    invoke-virtual {p2, p0}, Lcom/narvii/master/BottomDrawerViewHelper;->setBottomDismissListener(Lcom/narvii/master/BottomDrawerViewHelper$BottomDismissListener;)V

    .line 28
    new-instance p2, Lcom/narvii/util/PreferencesHelper;

    invoke-direct {p2, p1}, Lcom/narvii/util/PreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/prompt/BottomDrawerPromptHelper;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    return-void
.end method


# virtual methods
.method public doTryShow()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/narvii/prompt/BottomDrawerPromptHelper;->bottomDrawerHelper:Lcom/narvii/master/BottomDrawerHelper;

    invoke-virtual {v0}, Lcom/narvii/master/BottomDrawerHelper;->beginToCheckSuggestCommunity()V

    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/narvii/prompt/BottomDrawerPromptHelper;->bottomDrawerViewHelper:Lcom/narvii/master/BottomDrawerViewHelper;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0, p1}, Lcom/narvii/master/BottomDrawerViewHelper;->onActiveChanged(Z)V

    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/narvii/prompt/BottomDrawerPromptHelper;->dismissed:Z

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/narvii/prompt/BottomDrawerPromptHelper;->dismissed:Z

    :cond_0
    return-void
.end method

.method public onPostShow()V
    .locals 0

    return-void
.end method

.method public onStatusChanged(ILjava/lang/Object;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/narvii/prompt/BottomDrawerPromptHelper;->bottomDrawerViewHelper:Lcom/narvii/master/BottomDrawerViewHelper;

    invoke-virtual {v0}, Lcom/narvii/master/BottomDrawerViewHelper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 56
    instance-of p1, p2, Lcom/narvii/community/MyCommunityListResponse;

    if-eqz p1, :cond_2

    .line 58
    new-instance p1, Lcom/narvii/prompt/BottomDrawerPromptHelper$1;

    invoke-direct {p1, p0, p2}, Lcom/narvii/prompt/BottomDrawerPromptHelper$1;-><init>(Lcom/narvii/prompt/BottomDrawerPromptHelper;Ljava/lang/Object;)V

    const-wide/16 v0, 0x3a98

    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/prompt/PromptHelper;->dispatchShowPromptRunnable(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    .line 74
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    :cond_2
    :goto_0
    return-void
.end method
