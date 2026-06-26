.class Lcom/narvii/post/entry/PostEntryDialog$11;
.super Ljava/lang/Object;
.source "PostEntryDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/post/entry/PostEntryDialog;->checkActivation()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/post/entry/PostEntryDialog;


# direct methods
.method constructor <init>(Lcom/narvii/post/entry/PostEntryDialog;)V
    .locals 0

    .line 735
    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$11;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 738
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 739
    new-instance p1, Landroid/content/Intent;

    const-string p2, "ndc://activation"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 740
    iget-object p2, p0, Lcom/narvii/post/entry/PostEntryDialog$11;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    invoke-static {p2}, Lcom/narvii/post/entry/PostEntryDialog;->access$300(Lcom/narvii/post/entry/PostEntryDialog;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
