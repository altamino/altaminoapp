.class public interface abstract Lcom/narvii/permisson/PermissionListener;
.super Ljava/lang/Object;
.source "PermissionListener.java"


# virtual methods
.method public abstract onPermissionDenied(IZLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPermissionGranted(I)V
.end method
