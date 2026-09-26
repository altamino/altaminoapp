.class public final synthetic Lcom/narvii/prefs/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/prefs/SettingsFragment;

.field public final synthetic b:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/prefs/SettingsFragment;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/prefs/o;->a:Lcom/narvii/prefs/SettingsFragment;

    iput-object p2, p0, Lcom/narvii/prefs/o;->b:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/prefs/o;->a:Lcom/narvii/prefs/SettingsFragment;

    iget-object v1, p0, Lcom/narvii/prefs/o;->b:Landroid/widget/EditText;

    invoke-static {v0, v1, p1}, Lcom/narvii/prefs/SettingsFragment;->x(Lcom/narvii/prefs/SettingsFragment;Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method
