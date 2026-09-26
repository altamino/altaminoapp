.class public final synthetic Lcom/narvii/scene/service/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/scene/service/ChooseSceneTemplateService;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/scene/service/ChooseSceneTemplateService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/scene/service/b;->a:Lcom/narvii/scene/service/ChooseSceneTemplateService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/scene/service/b;->a:Lcom/narvii/scene/service/ChooseSceneTemplateService;

    invoke-static {v0}, Lcom/narvii/scene/service/ChooseSceneTemplateService;->b(Lcom/narvii/scene/service/ChooseSceneTemplateService;)V

    return-void
.end method
