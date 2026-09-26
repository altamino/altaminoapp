.class public final synthetic Lcom/narvii/media/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/narvii/media/SaveImageFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/media/SaveImageFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/media/d;->a:Lcom/narvii/media/SaveImageFragment;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/media/d;->a:Lcom/narvii/media/SaveImageFragment;

    invoke-static {v0, p1}, Lcom/narvii/media/SaveImageFragment;->p(Lcom/narvii/media/SaveImageFragment;Landroid/content/DialogInterface;)V

    return-void
.end method
