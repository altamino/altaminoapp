.class public interface abstract Landroidx/work/impl/model/WorkProgressDao;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
    .end annotation
.end method

.method public abstract b()V
    .annotation build Landroidx/room/Query;
    .end annotation
.end method

.method public abstract c(Landroidx/work/impl/model/WorkProgress;)V
    .param p1    # Landroidx/work/impl/model/WorkProgress;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Insert;
    .end annotation
.end method
