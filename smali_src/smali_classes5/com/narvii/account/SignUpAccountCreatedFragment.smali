.class public Lcom/narvii/account/SignUpAccountCreatedFragment;
.super Lcom/narvii/account/AccountBaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/app/FragmentOnBackListener;


# static fields
.field private static final FINISH_DELAY:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/account/AccountBaseFragment;-><init>()V

    .line 4
    return-void
.end method

.method private synthetic lambda$onCreate$0()V
    .locals 3

    .line 1
    .line 2
    const-string v0, "newAccount"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v2, v0, v1}, Lcom/narvii/account/AccountBaseFragment;->finishWithResult(ZILjava/lang/String;)V

    .line 12
    return-void
.end method

.method public static synthetic q(Lcom/narvii/account/SignUpAccountCreatedFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/narvii/account/SignUpAccountCreatedFragment;->lambda$onCreate$0()V

    return-void
.end method


# virtual methods
.method protected addStatusBarMargin()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 11
    .line 12
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/account/o0;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/narvii/account/o0;-><init>(Lcom/narvii/account/SignUpAccountCreatedFragment;)V

    .line 18
    .line 19
    const-wide/16 v1, 0x3e8

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 23
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d0319

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/account/AccountBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a0e09

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/widget/TintButton;

    .line 13
    .line 14
    new-instance p2, Lcom/narvii/account/AccountUtils;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-direct {p2, v0}, Lcom/narvii/account/AccountUtils;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/narvii/account/AccountUtils;->getAccountForegroundColor()I

    .line 25
    move-result p2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    .line 29
    return-void
.end method
