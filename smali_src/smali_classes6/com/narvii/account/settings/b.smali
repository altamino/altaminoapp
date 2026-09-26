.class public final synthetic Lcom/narvii/account/settings/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/account/settings/UpdateEmailSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/settings/UpdateEmailSettingsFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/settings/b;->a:Lcom/narvii/account/settings/UpdateEmailSettingsFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/account/settings/b;->a:Lcom/narvii/account/settings/UpdateEmailSettingsFragment;

    invoke-static {v0, p1}, Lcom/narvii/account/settings/UpdateEmailSettingsFragment;->o(Lcom/narvii/account/settings/UpdateEmailSettingsFragment;Landroid/view/View;)V

    return-void
.end method
