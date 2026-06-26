.class public Lcom/narvii/account/SignUpAccountCreatedFragment;
.super Lcom/narvii/account/AccountBaseFragment;
.source "SignUpAccountCreatedFragment.java"

# interfaces
.implements Lcom/narvii/app/FragmentOnBackListener;


# static fields
.field public static final FINISH_DELAY:I = 0x3e8


# instance fields
.field tintButton:Lcom/narvii/widget/TintButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/narvii/account/AccountBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed(Lcom/narvii/app/NVActivity;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 41
    invoke-super {p0, p1}, Lcom/narvii/account/AccountBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/SoftKeyboard;->hideSoftKeyboard(Landroid/content/Context;)V

    .line 43
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/narvii/account/SignUpAccountCreatedFragment$1;

    invoke-direct {v0, p0}, Lcom/narvii/account/SignUpAccountCreatedFragment$1;-><init>(Lcom/narvii/account/SignUpAccountCreatedFragment;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b02e2

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 34
    invoke-super {p0, p1, p2}, Lcom/narvii/account/AccountBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f090b26

    .line 35
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/TintButton;

    iput-object p1, p0, Lcom/narvii/account/SignUpAccountCreatedFragment;->tintButton:Lcom/narvii/widget/TintButton;

    .line 36
    iget-object p1, p0, Lcom/narvii/account/SignUpAccountCreatedFragment;->tintButton:Lcom/narvii/widget/TintButton;

    new-instance p2, Lcom/narvii/account/AccountUtils;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/account/AccountUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/narvii/account/AccountUtils;->getAccountForegroundColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/widget/TintButton;->setTintColor(I)V

    return-void
.end method
