.class public final synthetic Lcom/narvii/master/home/profile/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/narvii/master/home/profile/EditAminoIdFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/home/profile/EditAminoIdFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/profile/c;->a:Lcom/narvii/master/home/profile/EditAminoIdFragment;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/master/home/profile/c;->a:Lcom/narvii/master/home/profile/EditAminoIdFragment;

    invoke-static {v0, p1}, Lcom/narvii/master/home/profile/EditAminoIdFragment;->n(Lcom/narvii/master/home/profile/EditAminoIdFragment;Landroid/content/DialogInterface;)V

    return-void
.end method
