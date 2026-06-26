.class interface abstract Lcom/narvii/media/MediaLoader$OnMediaLoadListener;
.super Ljava/lang/Object;
.source "MediaLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/MediaLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "OnMediaLoadListener"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onLoading(Ljava/lang/String;)V
.end method

.method public abstract onLocalReady(Ljava/lang/String;Ljava/io/FileDescriptor;)V
.end method
