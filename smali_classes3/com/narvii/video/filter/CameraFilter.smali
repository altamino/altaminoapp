.class public interface abstract Lcom/narvii/video/filter/CameraFilter;
.super Ljava/lang/Object;
.source "CameraFilter.java"


# virtual methods
.method public abstract customFilterCamera([BILjavax/microedition/khronos/egl/EGLContext;II)I
.end method

.method public abstract initCustomFilter()V
.end method

.method public abstract initFilterResource(Ljava/lang/String;Ljava/util/List;Lcom/narvii/video/filter/FilterCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lcom/narvii/video/filter/FilterCallBack;",
            ")V"
        }
    .end annotation
.end method

.method public abstract isInitSuccessful()Z
.end method

.method public abstract needFilter()Z
.end method

.method public abstract onCameraChanged()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract updateFilter(Ljava/lang/Object;)V
.end method
