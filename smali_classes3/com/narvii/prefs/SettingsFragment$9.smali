.class Lcom/narvii/prefs/SettingsFragment$9;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prefs/SettingsFragment;->showLinkPasteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prefs/SettingsFragment;

.field final synthetic val$btnCrawler:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/SettingsFragment;Landroid/widget/TextView;)V
    .locals 0

    .line 733
    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment$9;->this$0:Lcom/narvii/prefs/SettingsFragment;

    iput-object p2, p0, Lcom/narvii/prefs/SettingsFragment$9;->val$btnCrawler:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 741
    iget-object p2, p0, Lcom/narvii/prefs/SettingsFragment$9;->val$btnCrawler:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 742
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 743
    iget-object p1, p0, Lcom/narvii/prefs/SettingsFragment$9;->this$0:Lcom/narvii/prefs/SettingsFragment;

    iget-object p2, p0, Lcom/narvii/prefs/SettingsFragment$9;->val$btnCrawler:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Lcom/narvii/prefs/SettingsFragment;->enableView(Landroid/widget/TextView;)V

    goto :goto_0

    .line 745
    :cond_0
    iget-object p1, p0, Lcom/narvii/prefs/SettingsFragment$9;->this$0:Lcom/narvii/prefs/SettingsFragment;

    iget-object p2, p0, Lcom/narvii/prefs/SettingsFragment$9;->val$btnCrawler:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Lcom/narvii/prefs/SettingsFragment;->disableView(Landroid/widget/TextView;)V

    :cond_1
    :goto_0
    return-void
.end method
