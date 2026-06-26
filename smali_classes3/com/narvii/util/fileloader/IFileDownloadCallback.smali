.class public interface abstract Lcom/narvii/util/fileloader/IFileDownloadCallback;
.super Ljava/lang/Object;
.source "IFileDownloadCallback.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/fileloader/IFileDownloadCallback$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getRealCallback()Ljava/lang/Object;
.end method

.method public abstract getTag()Ljava/lang/Object;
.end method

.method public abstract onError(Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract onPostExecute(Ljava/io/File;)V
.end method

.method public abstract onProgressUpdate(II)V
.end method
