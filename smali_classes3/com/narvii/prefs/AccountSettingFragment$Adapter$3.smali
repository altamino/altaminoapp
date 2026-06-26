.class Lcom/narvii/prefs/AccountSettingFragment$Adapter$3;
.super Ljava/lang/Object;
.source "AccountSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prefs/AccountSettingFragment$Adapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/prefs/AccountSettingFragment$Adapter;

.field final synthetic val$prefsToggle:Lcom/narvii/list/prefs/PrefsToggle;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/AccountSettingFragment$Adapter;Lcom/narvii/list/prefs/PrefsToggle;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter$3;->this$1:Lcom/narvii/prefs/AccountSettingFragment$Adapter;

    iput-object p2, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter$3;->val$prefsToggle:Lcom/narvii/list/prefs/PrefsToggle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 494
    :cond_0
    iget-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter$3;->this$1:Lcom/narvii/prefs/AccountSettingFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    iget-object p2, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter$3;->val$prefsToggle:Lcom/narvii/list/prefs/PrefsToggle;

    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Lcom/narvii/prefs/AccountSettingFragment;->access$000(Lcom/narvii/prefs/AccountSettingFragment;Lcom/narvii/list/prefs/PrefsToggle;I)V

    :goto_0
    return-void
.end method
