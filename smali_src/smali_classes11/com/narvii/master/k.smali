.class public final synthetic Lcom/narvii/master/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/narvii/master/MasterActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/MasterActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/k;->a:Lcom/narvii/master/MasterActivity;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/master/k;->a:Lcom/narvii/master/MasterActivity;

    invoke-static {v0, p1}, Lcom/narvii/master/MasterActivity;->v(Lcom/narvii/master/MasterActivity;Landroid/content/DialogInterface;)V

    return-void
.end method
