.class public final synthetic Lcom/narvii/blog/post/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/narvii/blog/post/LinkPostActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/blog/post/LinkPostActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/blog/post/b;->a:Lcom/narvii/blog/post/LinkPostActivity;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/blog/post/b;->a:Lcom/narvii/blog/post/LinkPostActivity;

    invoke-static {v0, p1}, Lcom/narvii/blog/post/LinkPostActivity;->z(Lcom/narvii/blog/post/LinkPostActivity;Landroid/content/DialogInterface;)V

    return-void
.end method
