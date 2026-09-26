.class public final synthetic Lcom/narvii/post/entry/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/narvii/post/entry/PostEntryDialog$4;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/post/entry/PostEntryDialog$4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/post/entry/j;->a:Lcom/narvii/post/entry/PostEntryDialog$4;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/post/entry/j;->a:Lcom/narvii/post/entry/PostEntryDialog$4;

    invoke-static {v0, p1}, Lcom/narvii/post/entry/PostEntryDialog$4;->a(Lcom/narvii/post/entry/PostEntryDialog$4;Landroid/content/DialogInterface;)V

    return-void
.end method
