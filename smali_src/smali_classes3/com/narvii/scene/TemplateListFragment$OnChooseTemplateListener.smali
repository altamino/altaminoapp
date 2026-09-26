.class public interface abstract Lcom/narvii/scene/TemplateListFragment$OnChooseTemplateListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/scene/TemplateListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnChooseTemplateListener"
.end annotation


# virtual methods
.method public abstract onChoose(Lcom/narvii/scene/model/TemplateConfig;)V
    .param p1    # Lcom/narvii/scene/model/TemplateConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onDismiss()V
.end method
