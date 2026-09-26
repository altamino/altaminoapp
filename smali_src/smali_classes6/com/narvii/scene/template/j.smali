.class public final synthetic Lcom/narvii/scene/template/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/scene/template/SceneTemplateHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/scene/template/SceneTemplateHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/template/j;->a:Lcom/narvii/scene/template/SceneTemplateHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/scene/template/j;->a:Lcom/narvii/scene/template/SceneTemplateHelper;

    invoke-static {v0}, Lcom/narvii/scene/template/SceneTemplateHelper;->a(Lcom/narvii/scene/template/SceneTemplateHelper;)V

    return-void
.end method
