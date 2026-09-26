.class public final synthetic Lcom/narvii/pre_editing/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/narvii/pre_editing/MediaPreEditingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/pre_editing/MediaPreEditingActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/pre_editing/b;->a:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/pre_editing/b;->a:Lcom/narvii/pre_editing/MediaPreEditingActivity;

    invoke-static {v0, p1}, Lcom/narvii/pre_editing/MediaPreEditingActivity$dialog$2;->a(Lcom/narvii/pre_editing/MediaPreEditingActivity;Landroid/content/DialogInterface;)V

    return-void
.end method
