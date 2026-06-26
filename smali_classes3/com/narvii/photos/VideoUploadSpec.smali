.class public Lcom/narvii/photos/VideoUploadSpec;
.super Ljava/lang/Object;
.source "VideoUploadSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/photos/VideoUploadSpec$Builder;
    }
.end annotation


# instance fields
.field public headers:[Ljava/lang/String;

.field public target:Ljava/lang/String;

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/narvii/photos/VideoUploadSpec;->uri:Ljava/lang/String;

    return-void
.end method

.method public static builder(Ljava/lang/String;)Lcom/narvii/photos/VideoUploadSpec$Builder;
    .locals 1

    .line 13
    new-instance v0, Lcom/narvii/photos/VideoUploadSpec$Builder;

    invoke-direct {v0, p0}, Lcom/narvii/photos/VideoUploadSpec$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
