.class public Lcom/narvii/app/NVDialogFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/narvii/logging/LogProxyNVContext;


# static fields
.field private static final SAVED_CANCELABLE:Ljava/lang/String; = "android:cancelable"

.field private static final SAVED_DIALOG_STATE_TAG:Ljava/lang/String; = "android:savedDialogState"

.field private static final SAVED_THEME:Ljava/lang/String; = "android:theme"


# instance fields
.field initDialog:Lcom/narvii/app/NVDialog;

.field mCancelable:Z

.field mDialog:Lcom/narvii/app/NVDialog;

.field mDismissed:Z

.field mShownByMe:Z

.field mTheme:I

.field mViewDestroyed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/app/NVDialogFragment;->mTheme:I

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/narvii/app/NVDialogFragment;->mCancelable:Z

    .line 10
    return-void
.end method


# virtual methods
.method protected canSendActiveLog(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public dismiss()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVDialogFragment;->dismissInternal()V

    .line 4
    return-void
.end method

.method dismissInternal()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/app/NVDialogFragment;->mDismissed:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/app/NVDialogFragment;->mDismissed:Z

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    iput-boolean v1, p0, Lcom/narvii/app/NVDialogFragment;->mShownByMe:Z

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 19
    .line 20
    :cond_1
    iput-boolean v0, p0, Lcom/narvii/app/NVDialogFragment;->mViewDestroyed:Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->t(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 35
    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    return-object v0
.end method

.method public getLogNVContext()Lcom/narvii/app/NVContext;
    .locals 1

    iget-object v0, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    return-object v0
.end method

.method public getTheme()I
    .locals 1
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation

    iget v0, p0, Lcom/narvii/app/NVDialogFragment;->mTheme:I

    return v0
.end method

.method public isCancelable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/app/NVDialogFragment;->mCancelable:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v0, "DialogFragment can not be attached to a container view"

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p1

    .line 35
    .line 36
    .line 37
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    iget-object v1, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 46
    .line 47
    :cond_3
    iget-object v0, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    .line 48
    .line 49
    iget-boolean v1, p0, Lcom/narvii/app/NVDialogFragment;->mCancelable:Z

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 58
    .line 59
    iget-object v0, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 63
    .line 64
    if-eqz p1, :cond_4

    .line 65
    .line 66
    const-string v0, "android:savedDialogState"

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    iget-object v0, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 78
    :cond_4
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onAttach(Landroid/content/Context;)V

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/narvii/app/NVDialogFragment;->mShownByMe:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    const/4 p1, 0x0

    .line 9
    .line 10
    iput-boolean p1, p0, Lcom/narvii/app/NVDialogFragment;->mDismissed:Z

    .line 11
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/app/NVDialogFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p1

    .line 11
    .line 12
    const-string v0, "dialog fragment"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    :cond_0
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Lcom/narvii/app/NVDialog;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/app/NVDialogFragment;->initDialog:Lcom/narvii/app/NVDialog;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    return-object p1

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    new-instance p1, Lcom/narvii/app/NVDialogFragment$2;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    sget v1, Lcom/narvii/lib/R$style;->CustomDialog:I

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p0, v0, v1}, Lcom/narvii/app/NVDialogFragment$2;-><init>(Lcom/narvii/app/NVDialogFragment;Landroid/content/Context;I)V

    .line 23
    return-object p1

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    iput-boolean v1, p0, Lcom/narvii/app/NVDialogFragment;->mViewDestroyed:Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    .line 17
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/narvii/app/NVDialogFragment;->mShownByMe:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/narvii/app/NVDialogFragment;->mDismissed:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/narvii/app/NVDialogFragment;->mDismissed:Z

    .line 15
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/app/NVDialogFragment;->mViewDestroyed:Z

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/app/NVDialogFragment;->dismissInternal()V

    .line 8
    :cond_0
    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Lcom/narvii/app/NVDialog;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iput-object p1, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    .line 7
    .line 8
    const-string v0, "layout_inflater"

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lcom/narvii/util/statusbar/StatusBarUtils;->addTranslucentFlags(Landroid/view/Window;)V

    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Landroid/view/LayoutInflater;

    .line 32
    return-object p1

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    check-cast p1, Landroid/view/LayoutInflater;

    .line 43
    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v1, "android:savedDialogState"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 19
    .line 20
    :cond_0
    iget v0, p0, Lcom/narvii/app/NVDialogFragment;->mTheme:I

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const-string v1, "android:theme"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 28
    .line 29
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/app/NVDialogFragment;->mCancelable:Z

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    const-string v1, "android:cancelable"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 37
    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStart()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    iput-boolean v1, p0, Lcom/narvii/app/NVDialogFragment;->mViewDestroyed:Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 14
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStop()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 11
    :cond_0
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/app/NVDialogFragment;->mCancelable:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 10
    :cond_0
    return-void
.end method

.method public setStyle(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iput p1, p0, Lcom/narvii/app/NVDialogFragment;->mTheme:I

    :cond_0
    return-void
.end method

.method public show(Landroid/app/Activity;Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/app/NVDialogFragment;->mDismissed:Z

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/app/NVDialogFragment;->mShownByMe:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/narvii/app/NVDialogFragment$1;

    .line 11
    .line 12
    sget v1, Lcom/narvii/lib/R$style;->CustomDialog:I

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0, p1, v1}, Lcom/narvii/app/NVDialogFragment$1;-><init>(Lcom/narvii/app/NVDialogFragment;Landroid/content/Context;I)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/app/NVDialogFragment;->initDialog:Lcom/narvii/app/NVDialog;

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p0, p3}, Landroidx/fragment/app/FragmentTransaction;->e(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->k()I

    .line 28
    return-void
.end method
