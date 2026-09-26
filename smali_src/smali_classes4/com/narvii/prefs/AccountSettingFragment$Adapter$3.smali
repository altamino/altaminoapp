.class Lcom/narvii/prefs/AccountSettingFragment$Adapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter$3;->this$1:Lcom/narvii/prefs/AccountSettingFragment$Adapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter$3;->val$prefsToggle:Lcom/narvii/list/prefs/PrefsToggle;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    goto :goto_0

    .line 4
    .line 5
    :cond_0
    iget-object p1, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter$3;->this$1:Lcom/narvii/prefs/AccountSettingFragment$Adapter;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->this$0:Lcom/narvii/prefs/AccountSettingFragment;

    .line 8
    .line 9
    iget-object p2, p0, Lcom/narvii/prefs/AccountSettingFragment$Adapter$3;->val$prefsToggle:Lcom/narvii/list/prefs/PrefsToggle;

    .line 10
    const/4 v0, 0x2

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2, v0}, Lcom/narvii/prefs/AccountSettingFragment;->t(Lcom/narvii/prefs/AccountSettingFragment;Lcom/narvii/list/prefs/PrefsToggle;I)V

    .line 14
    :goto_0
    return-void
.end method
