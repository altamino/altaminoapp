.class public Lcom/narvii/prompt/BottomDrawerPromptHelper;
.super Lcom/narvii/prompt/PromptHelper;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/prompt/PromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    .line 4
    .line 5
    new-instance p2, Lcom/narvii/master/BottomDrawerHelper;

    .line 6
    .line 7
    .line 8
    invoke-direct {p2, p1, p0}, Lcom/narvii/master/BottomDrawerHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/master/BottomDrawerHelper$OnStatusChangeListener;)V

    .line 9
    .line 10
    iput-object p2, p0, Lcom/narvii/prompt/BottomDrawerPromptHelper;->bottomDrawerHelper:Lcom/narvii/master/BottomDrawerHelper;

    .line 11
    .line 12
    new-instance p2, Lcom/narvii/master/BottomDrawerViewHelper;

    .line 13
    .line 14
    .line 15
    invoke-direct {p2, p1}, Lcom/narvii/master/BottomDrawerViewHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 16
    .line 17
    iput-object p2, p0, Lcom/narvii/prompt/BottomDrawerPromptHelper;->bottomDrawerViewHelper:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p0}, Lcom/narvii/master/BottomDrawerViewHelper;->setBottomDismissListener(Lcom/narvii/master/BottomDrawerViewHelper$BottomDismissListener;)V

    .line 21
    .line 22
    new-instance p2, Lcom/narvii/util/PreferencesHelper;

    .line 23
    .line 24
    .line 25
    invoke-direct {p2, p1}, Lcom/narvii/util/PreferencesHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 26
    .line 27
    iput-object p2, p0, Lcom/narvii/prompt/BottomDrawerPromptHelper;->sharedPreferencesHelper:Lcom/narvii/util/PreferencesHelper;

    .line 28
    return-void
.end method


# virtual methods
.method public doTryShow()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prompt/BottomDrawerPromptHelper;->bottomDrawerHelper:Lcom/narvii/master/BottomDrawerHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/master/BottomDrawerHelper;->beginToCheckSuggestCommunity()V

    .line 6
    return-void
.end method

.method public onActiveChanged(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prompt/BottomDrawerPromptHelper;->bottomDrawerViewHelper:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/master/BottomDrawerViewHelper;->onActiveChanged(Z)V

    .line 8
    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/prompt/BottomDrawerPromptHelper;->dismissed:Z

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
    iput-boolean v0, p0, Lcom/narvii/prompt/BottomDrawerPromptHelper;->dismissed:Z

    .line 11
    :cond_0
    return-void
.end method

.method public onPostShow()V
    .locals 0

    return-void
.end method

.method public onStatusChanged(ILjava/lang/Object;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prompt/BottomDrawerPromptHelper;->bottomDrawerViewHelper:Lcom/narvii/master/BottomDrawerViewHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/master/BottomDrawerViewHelper;->getActivity()Landroid/app/Activity;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x2

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    instance-of p1, p2, Lcom/narvii/community/MyCommunityListResponse;

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    new-instance p1, Lcom/narvii/prompt/BottomDrawerPromptHelper$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p0, p2}, Lcom/narvii/prompt/BottomDrawerPromptHelper$1;-><init>(Lcom/narvii/prompt/BottomDrawerPromptHelper;Ljava/lang/Object;)V

    .line 25
    .line 26
    const-wide/16 v0, 0x3a98

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1, v0, v1}, Lcom/narvii/prompt/PromptHelper;->dispatchShowPromptRunnable(Ljava/lang/Runnable;J)V

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p2, -0x1

    .line 32
    .line 33
    if-ne p1, p2, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    .line 37
    :cond_2
    :goto_0
    return-void
.end method
