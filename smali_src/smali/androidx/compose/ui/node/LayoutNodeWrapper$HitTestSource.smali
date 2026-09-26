.class public interface abstract Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/node/LayoutNodeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HitTestSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/compose/ui/node/LayoutNodeEntity<",
        "TT;TM;>;C:",
        "Ljava/lang/Object;",
        "M::",
        "Landroidx/compose/ui/Modifier;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(Landroidx/compose/ui/node/LayoutNodeEntity;)Ljava/lang/Object;
    .param p1    # Landroidx/compose/ui/node/LayoutNodeEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TC;"
        }
    .end annotation
.end method

.method public abstract c(Landroidx/compose/ui/node/LayoutNodeEntity;)Z
    .param p1    # Landroidx/compose/ui/node/LayoutNodeEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public abstract d(Landroidx/compose/ui/node/LayoutNode;JLandroidx/compose/ui/node/HitTestResult;ZZ)V
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/node/HitTestResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "J",
            "Landroidx/compose/ui/node/HitTestResult<",
            "TC;>;ZZ)V"
        }
    .end annotation
.end method

.method public abstract e(Landroidx/compose/ui/node/LayoutNode;)Z
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
