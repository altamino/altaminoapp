.class public Lcom/narvii/photos/CancelablePhotoUploadListener;
.super Ljava/lang/Object;
.source "CancelablePhotoUploadListener.java"

# interfaces
.implements Lcom/narvii/photos/PhotoUploadListener;


# instance fields
.field protected canceled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProgress(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public setCanceled(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/narvii/photos/CancelablePhotoUploadListener;->canceled:Z

    return-void
.end method
