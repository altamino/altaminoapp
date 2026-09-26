.class public final synthetic Lcom/narvii/scene/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/narvii/scene/BaseSceneListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/scene/BaseSceneListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/c;->a:Lcom/narvii/scene/BaseSceneListFragment;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/scene/c;->a:Lcom/narvii/scene/BaseSceneListFragment;

    invoke-static {v0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->t(Lcom/narvii/scene/BaseSceneListFragment;Landroid/content/DialogInterface;)V

    return-void
.end method
