.class public final synthetic Lcom/narvii/post/entry/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/narvii/post/entry/PostEntryDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/post/entry/PostEntryDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/post/entry/b;->a:Lcom/narvii/post/entry/PostEntryDialog;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/post/entry/b;->a:Lcom/narvii/post/entry/PostEntryDialog;

    invoke-static {v0, p1}, Lcom/narvii/post/entry/PostEntryDialog;->c(Lcom/narvii/post/entry/PostEntryDialog;Landroid/content/DialogInterface;)V

    return-void
.end method
