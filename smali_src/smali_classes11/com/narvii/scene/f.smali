.class public final synthetic Lcom/narvii/scene/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/scene/BaseSceneListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/scene/BaseSceneListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/f;->a:Lcom/narvii/scene/BaseSceneListFragment;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/scene/f;->a:Lcom/narvii/scene/BaseSceneListFragment;

    invoke-static {v0, p1}, Lcom/narvii/scene/BaseSceneListFragment;->s(Lcom/narvii/scene/BaseSceneListFragment;Ljava/lang/Object;)V

    return-void
.end method
