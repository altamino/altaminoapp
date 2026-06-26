.class public Lcom/narvii/app/NVDialogFragment;
.super Lcom/narvii/app/NVFragment;
.source "NVDialogFragment.java"

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

    .line 38
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/narvii/app/NVDialogFragment;->mTheme:I

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/narvii/app/NVDialogFragment;->mCancelable:Z

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

    .line 69
    invoke-virtual {p0}, Lcom/narvii/app/NVDialogFragment;->dismissInternal()V

    return-void
.end method

.method dismissInternal()V
    .locals 2

    .line 73
    iget-boolean v0, p0, Lcom/narvii/app/NVDialogFragment;->mDismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/narvii/app/NVDialogFragment;->mDismissed:Z

    const/4 v1, 0x0

    .line 77
    iput-boolean v1, p0, Lcom/narvii/app/NVDialogFragment;->mShownByMe:Z

    .line 78
    iget-object v1, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {v1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 81
    :cond_1
    iput-boolean v0, p0, Lcom/narvii/app/NVDialogFragment;->mViewDestroyed:Z

    .line 83
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 84
    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 85
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    return-object v0
.end method

.method public getLogNVContext()Lcom/narvii/app/NVContext;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    return-object v0
.end method

.method public getTheme()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/narvii/app/NVDialogFragment;->mTheme:I

    return v0
.end method

.method public isCancelable()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/narvii/app/NVDialogFragment;->mCancelable:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 187
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 189
    iget-object v0, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    if-nez v0, :cond_0

    return-void

    .line 192
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 194
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 195
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DialogFragment can not be attached to a container view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 200
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 202
    iget-object v1, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 204
    :cond_3
    iget-object v0, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    iget-boolean v1, p0, Lcom/narvii/app/NVDialogFragment;->mCancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 205
    iget-object v0, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 206
    iget-object v0, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-eqz p1, :cond_4

    const-string v0, "android:savedDialogState"

    .line 208
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 210
    iget-object v0, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_4
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 108
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onAttach(Landroid/content/Context;)V

    .line 109
    iget-boolean p1, p0, Lcom/narvii/app/NVDialogFragment;->mShownByMe:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 112
    iput-boolean p1, p0, Lcom/narvii/app/NVDialogFragment;->mDismissed:Z

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 129
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 132
    :try_start_0
    invoke-virtual {p0}, Lcom/narvii/app/NVDialogFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "dialog fragment"

    .line 134
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Lcom/narvii/app/NVDialog;
    .locals 2

    .line 157
    iget-object p1, p0, Lcom/narvii/app/NVDialogFragment;->initDialog:Lcom/narvii/app/NVDialog;

    if-eqz p1, :cond_0

    return-object p1

    .line 159
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 160
    new-instance p1, Lcom/narvii/app/NVDialogFragment$2;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$style;->CustomDialog:I

    invoke-direct {p1, p0, v0, v1}, Lcom/narvii/app/NVDialogFragment$2;-><init>(Lcom/narvii/app/NVDialogFragment;Landroid/content/Context;I)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 252
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onDestroyView()V

    .line 253
    iget-object v0, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 257
    iput-boolean v1, p0, Lcom/narvii/app/NVDialogFragment;->mViewDestroyed:Z

    .line 258
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    const/4 v0, 0x0

    .line 259
    iput-object v0, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 118
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 119
    iget-boolean v0, p0, Lcom/narvii/app/NVDialogFragment;->mShownByMe:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/narvii/app/NVDialogFragment;->mDismissed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/narvii/app/NVDialogFragment;->mDismissed:Z

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 176
    iget-boolean p1, p0, Lcom/narvii/app/NVDialogFragment;->mViewDestroyed:Z

    if-nez p1, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/narvii/app/NVDialogFragment;->dismissInternal()V

    :cond_0
    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    .line 141
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Lcom/narvii/app/NVDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    .line 143
    iget-object p1, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    const-string v0, "layout_inflater"

    if-eqz p1, :cond_1

    .line 144
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 146
    invoke-static {p1}, Lcom/narvii/util/statusbar/StatusBarUtils;->addTranslucentFlags(Landroid/view/Window;)V

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    return-object p1

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 227
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 228
    iget-object v0, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:savedDialogState"

    .line 231
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 234
    :cond_0
    iget v0, p0, Lcom/narvii/app/NVDialogFragment;->mTheme:I

    if-eqz v0, :cond_1

    const-string v1, "android:theme"

    .line 235
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    :cond_1
    iget-boolean v0, p0, Lcom/narvii/app/NVDialogFragment;->mCancelable:Z

    if-nez v0, :cond_2

    const-string v1, "android:cancelable"

    .line 238
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 217
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStart()V

    .line 219
    iget-object v0, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 220
    iput-boolean v1, p0, Lcom/narvii/app/NVDialogFragment;->mViewDestroyed:Z

    .line 221
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 244
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onStop()V

    .line 245
    iget-object v0, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1

    .line 98
    iput-boolean p1, p0, Lcom/narvii/app/NVDialogFragment;->mCancelable:Z

    .line 99
    iget-object v0, p0, Lcom/narvii/app/NVDialogFragment;->mDialog:Lcom/narvii/app/NVDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method public setStyle(I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 43
    iput p1, p0, Lcom/narvii/app/NVDialogFragment;->mTheme:I

    :cond_0
    return-void
.end method

.method public show(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/narvii/app/NVDialogFragment;->mDismissed:Z

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/narvii/app/NVDialogFragment;->mShownByMe:Z

    if-eqz p1, :cond_0

    .line 51
    new-instance v0, Lcom/narvii/app/NVDialogFragment$1;

    sget v1, Lcom/narvii/lib/R$style;->CustomDialog:I

    invoke-direct {v0, p0, p1, v1}, Lcom/narvii/app/NVDialogFragment$1;-><init>(Lcom/narvii/app/NVDialogFragment;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/narvii/app/NVDialogFragment;->initDialog:Lcom/narvii/app/NVDialog;

    .line 58
    :cond_0
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 59
    invoke-virtual {p1, p0, p3}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 60
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
