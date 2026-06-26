.class Lcom/narvii/prefs/SettingsFragment$7;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$linkDialog:Lcom/narvii/util/dialog/AlertDialog;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/SettingsFragment;Lcom/narvii/util/dialog/AlertDialog;)V
    .locals 0

    .line 703
    iput-object p1, p0, Lcom/narvii/prefs/SettingsFragment$7;->this$0:Lcom/narvii/prefs/SettingsFragment;

    iput-object p2, p0, Lcom/narvii/prefs/SettingsFragment$7;->val$linkDialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 706
    iget-object p1, p0, Lcom/narvii/prefs/SettingsFragment$7;->val$linkDialog:Lcom/narvii/util/dialog/AlertDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    return-void
.end method
