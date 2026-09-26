.class public final synthetic Lcom/narvii/account/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/narvii/account/PushSettingListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/PushSettingListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/g0;->a:Lcom/narvii/account/PushSettingListFragment;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/account/g0;->a:Lcom/narvii/account/PushSettingListFragment;

    invoke-static {v0, p1}, Lcom/narvii/account/PushSettingListFragment;->t(Lcom/narvii/account/PushSettingListFragment;Landroid/content/DialogInterface;)V

    return-void
.end method
