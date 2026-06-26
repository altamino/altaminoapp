.class public interface abstract Lcom/narvii/util/fileloader/INVFileCache;
.super Ljava/lang/Object;
.source "INVFileCache.kt"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract get(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract put(Ljava/lang/String;Ljava/io/File;)V
.end method

.method public abstract remove(Ljava/lang/String;)Z
.end method

.method public abstract touch(Ljava/io/File;)V
.end method

.method public abstract trimAndFlush(IJ)V
.end method
