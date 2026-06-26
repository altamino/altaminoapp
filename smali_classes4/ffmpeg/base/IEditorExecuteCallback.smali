.class public interface abstract Lffmpeg/base/IEditorExecuteCallback;
.super Ljava/lang/Object;
.source "IEditorExecuteCallback.kt"

# interfaces
.implements Lffmpeg/base/IEditorBaseCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lffmpeg/base/IEditorExecuteCallback$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onProgress(F)V
.end method
