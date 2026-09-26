.class public final synthetic Lcom/narvii/scene/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/scene/BaseSceneListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/scene/BaseSceneListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/b;->a:Lcom/narvii/scene/BaseSceneListFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/scene/b;->a:Lcom/narvii/scene/BaseSceneListFragment;

    invoke-static {v0, p1, p2}, Lcom/narvii/scene/BaseSceneListFragment;->q(Lcom/narvii/scene/BaseSceneListFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method
