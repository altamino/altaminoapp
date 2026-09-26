.class public final synthetic Lcom/narvii/prefs/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/narvii/prefs/DevSettingsFragment$Adapter;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/prefs/DevSettingsFragment$Adapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/prefs/f;->a:Lcom/narvii/prefs/DevSettingsFragment$Adapter;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/prefs/f;->a:Lcom/narvii/prefs/DevSettingsFragment$Adapter;

    invoke-static {v0, p1}, Lcom/narvii/prefs/DevSettingsFragment;->t(Lcom/narvii/prefs/DevSettingsFragment$Adapter;Landroid/content/DialogInterface;)V

    return-void
.end method
