.class public Lcom/narvii/wallet/optinads/OptinAdsPopupDialog;
.super Lcom/narvii/app/NVDialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x7f13015c

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Lcom/narvii/app/NVDialog;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    const p1, 0x7f0d0614

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 13
    .line 14
    .line 15
    const p1, 0x7f0a023b

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    const p1, 0x7f0a0321

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    .line 34
    .line 35
    const p1, 0x7f0a00b3

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    check-cast p1, Landroid/widget/TextView;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    .line 48
    move-result v0

    .line 49
    .line 50
    or-int/lit8 v0, v0, 0x8

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 54
    .line 55
    .line 56
    const p1, 0x7f0a00b4

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    check-cast p1, Landroid/widget/TextView;

    .line 63
    .line 64
    new-instance v0, Landroid/text/method/ScrollingMovementMethod;

    .line 65
    .line 66
    .line 67
    invoke-direct {v0}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 71
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "earn_free_coins_with_ads"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0a00b3

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a023b

    .line 13
    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0321

    .line 18
    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-static {p0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    const-string v0, "GotIt"

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-static {p0}, Lcom/narvii/logging/LogEvent;->clickWildcardBuilder(Lcom/narvii/app/NVContext;)Lcom/narvii/logging/LogEvent$Builder;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    const-string v0, "ViewAdsSetting"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    .line 47
    move-result-object p1

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 54
    .line 55
    const-class p1, Lcom/narvii/wallet/optinads/OptinAdsManageFragment;

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    .line 66
    invoke-static {v0, p1}, Lcom/narvii/wallet/optinads/OptinAdsPopupDialog;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 67
    :goto_0
    return-void
.end method
